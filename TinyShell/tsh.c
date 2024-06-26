/* 
 * tsh - A tiny shell program with job control
 * 
 * <Put your name and login ID here>
 * 
 * 学号：210110424
 * 姓名：wzx
 */
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <ctype.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <errno.h>
// #include <csapp.h>

/* Misc manifest constants */
#define MAXLINE    1024   /* max line size */
#define MAXARGS     128   /* max args on a command line */
#define MAXJOBS      16   /* max jobs at any point in time */
#define MAXJID    1<<16   /* max job ID */

/* Job states */
#define UNDEF 0 /* undefined */
#define FG 1    /* running in foreground */
#define BG 2    /* running in background */
#define ST 3    /* stopped */

/* 
 * Jobs states: FG (foreground), BG (background), ST (stopped)
 * Job state transitions and enabling actions:
 *     FG -> ST  : ctrl-z
 *     ST -> FG  : fg command
 *     ST -> BG  : bg command
 *     BG -> FG  : fg command
 * At most 1 job can be in the FG state.
 */

/* Global variables */
extern char **environ;      /* defined in libc */
char prompt[] = "tsh> ";    /* command line prompt (DO NOT CHANGE) */
int verbose = 0;            /* if true, print additional output */
int nextjid = 1;            /* next job ID to allocate */
char sbuf[MAXLINE];         /* for composing sprintf messages */

struct job_t {              /* The job struct */
    pid_t pid;              /* job PID */
    int jid;                /* job ID [1, 2, ...] */
    int state;              /* UNDEF, BG, FG, or ST */
    char cmdline[MAXLINE];  /* command line */
};
struct job_t jobs[MAXJOBS]; /* The job list */


/* End global variables */


/* Function prototypes */

/* Here are the functions that you will implement */
void eval(char *cmdline);
int builtin_cmd(char **argv);
void do_bgfg(char **argv);
void waitfg(pid_t pid);

void sigchld_handler(int sig);
void sigtstp_handler(int sig);
void sigint_handler(int sig);

/* Here are helper routines that we've provided for you */
int parseline(const char *cmdline, char **argv); 
void sigquit_handler(int sig);

void clearjob(struct job_t *job);
void initjobs(struct job_t *jobs);
int maxjid(struct job_t *jobs); 
int addjob(struct job_t *jobs, pid_t pid, int state, char *cmdline);
int deletejob(struct job_t *jobs, pid_t pid); 
pid_t fgpid(struct job_t *jobs);
struct job_t *getjobpid(struct job_t *jobs, pid_t pid);
struct job_t *getjobjid(struct job_t *jobs, int jid); 
int pid2jid(pid_t pid); 
void listjobs(struct job_t *jobs);

void usage(void);
void unix_error(char *msg);
void app_error(char *msg);
typedef void handler_t(int);
handler_t *Signal(int signum, handler_t *handler);

/*
 * main - The shell's main routine 
 */
int main(int argc, char **argv) 
{
    char c;
    char cmdline[MAXLINE];
    int emit_prompt = 1; /* emit prompt (default) */   // 是否打印提示符

    /* Redirect stderr to stdout (so that driver will get all output
     * on the pipe connected to stdout) */
    dup2(1, 2); // 将错误信息输出到标准输出

    /* Parse the command line */
    while ((c = getopt(argc, argv, "hvp")) != EOF) { // 识别命令行参数中的选项
        switch (c) {
        case 'h':             /* print help message */
            usage();
	    break;
        case 'v':             /* emit additional diagnostic info */
            verbose = 1;
	    break;
        case 'p':             /* don't print a prompt */
            emit_prompt = 0;  /* handy for automatic testing */
	    break;
	default:
            usage();
	}
    }

    /* Install the signal handlers */

    /* These are the ones you will need to implement */
    Signal(SIGINT,  sigint_handler);   /* ctrl-c */
    Signal(SIGTSTP, sigtstp_handler);  /* ctrl-z */
    Signal(SIGCHLD, sigchld_handler);  /* Terminated or stopped child */

    /* This one provides a clean way to kill the shell */
    Signal(SIGQUIT, sigquit_handler); 

    /* Initialize the job list */
    initjobs(jobs);

    /* Execute the shell's read/eval loop */
    while (1) {

        /* Read command line */
        if (emit_prompt) {
            printf("%s", prompt);
            fflush(stdout);
        }
        if ((fgets(cmdline, MAXLINE, stdin) == NULL) && ferror(stdin))
            app_error("fgets error");
        if (feof(stdin)) { /* End of file (ctrl-d) */
            fflush(stdout);
            exit(0);
        }

        /* Evaluate the command line */
        eval(cmdline);
        fflush(stdout);
        fflush(stdout);
    } 

    exit(0); /* control never reaches here */
}
  
/* 
 * eval - Evaluate the command line that the user has just typed in
 * 
 * If the user has requested a built-in command (quit, jobs, bg or fg)
 * then execute it immediately. Otherwise, fork a child process and
 * run the job in the context of the child. If the job is running in
 * the foreground, wait for it to terminate and then return.  Note:
 * each child process must have a unique process group ID so that our
 * background children don't receive SIGINT (SIGTSTP) from the kernel
 * when we type ctrl-c (ctrl-z) at the keyboard.  
*/
void eval(char *cmdline) 
{
    char* argv[MAXARGS] = {NULL};
    int FG_BG = parseline(cmdline,argv) + 1;
    if(argv[0] == NULL)    return;
    
    if(!builtin_cmd(argv)) 
    {
        sigset_t mask_all,mask_one,prev_one;//信号集合
        sigfillset(&mask_all);
        sigemptyset(&mask_one);sigemptyset(&prev_one);
        sigaddset(&mask_one,SIGCHLD);
        
        pid_t fpid;
        sigprocmask(SIG_BLOCK,&mask_one,&prev_one); //防止子进程先被调度
        											
        fpid = fork();
        if(!fpid)	
        {
            setpgid(0, 0);				
            						     
            sigprocmask(SIG_SETMASK,&prev_one,NULL); //解开信号量阻塞
            if(execve(argv[0],argv,environ) == -1)
            {
                printf("%s: Command not found\n",argv[0]);
                exit(0);
            }
        }
        else
        {
            sigprocmask(SIG_BLOCK,&mask_all,NULL); //全屏蔽 全局变量
            addjob(jobs,fpid,FG_BG,cmdline);
            sigprocmask(SIG_SETMASK,&mask_one,NULL); //恢复
            
            if(FG_BG == FG)  waitfg(fpid); //FG 前台
            else
            {
                sigprocmask(SIG_SETMASK,&mask_all,NULL); //pid2jid 访问全局变量
                int insert_jid = pid2jid(fpid);
                if(FG_BG == BG)	printf("[%d] (%d) %s",insert_jid,fpid,cmdline); //后台运行 则输出
            }
        } 
        sigprocmask(SIG_SETMASK,&prev_one,NULL); 
    }
    return;
}

/* 
 * parseline - Parse the command line and build the argv array.
 * 
 * Characters enclosed in single quotes are treated as a single
 * argument.  Return true if the user has requested a BG job, false if
 * the user has requested a FG job.  
 */
int parseline(const char *cmdline, char **argv) 
{
    static char array[MAXLINE]; /* holds local copy of command line */
    char *buf = array;          /* ptr that traverses command line */
    char *delim;                /* points to first space delimiter */
    int argc;                   /* number of args */
    int bg;                     /* background job? */

    strcpy(buf, cmdline);
    buf[strlen(buf)-1] = ' ';  /* replace trailing '\n' with space */
    while (*buf && (*buf == ' ')) /* ignore leading spaces */
	buf++;

    /* Build the argv list */
    argc = 0;
    if (*buf == '\'') {
	buf++;
	delim = strchr(buf, '\'');
    }
    else {
	delim = strchr(buf, ' ');
    }

    while (delim) {
	argv[argc++] = buf;
	*delim = '\0';
	buf = delim + 1;
	while (*buf && (*buf == ' ')) /* ignore spaces */
	       buf++;

	if (*buf == '\'') {
	    buf++;
	    delim = strchr(buf, '\'');
	}
	else {
	    delim = strchr(buf, ' ');
	}
    }
    argv[argc] = NULL;
    
    if (argc == 0)  /* ignore blank line */
	return 1;

    /* should the job run in the background? */
    if ((bg = (*argv[argc-1] == '&')) != 0) {
	argv[--argc] = NULL;
    }
    return bg;
}

/* 
 * builtin_cmd - If the user has typed a built-in command then execute
 *    it immediately.  
 */
int builtin_cmd(char **argv) 
{
    if(!strcmp(argv[0],"quit"))    exit(0); //如果是quit 直接退出
    
    int func_jobs = !(strcmp(argv[0],"jobs"));
    int func_fg   = !(strcmp(argv[0],"fg"));
    int func_bg   = !(strcmp(argv[0],"bg"));
    
    if(!func_jobs && !func_fg && !func_bg)	return 0; /* not a builtin command */ //如果不是内置命令中的 则返回0 表示不是内置命令 则进入eval下面的处理
    
    if(func_jobs)			listjobs(jobs); //程序已经给出了listjobs 不用担心
    else if(func_fg || func_bg)	do_bgfg(argv); 
    
    return 1; //表示是内置命令   
}

/* 
 * do_bgfg - Execute the builtin bg and fg commands
 */
void do_bgfg(char **argv) 
{
    int bg_fg = (!strcmp(argv[0],"bg")) + 1; 
    
    int argv1_read = (argv[1] != NULL);
    if(!argv1_read)
    {
        printf("%s command requires PID or %%jobid argument\n",argv[0]);
        return;
    }
    
    int pid_read = (argv[1] && argv[1][0] >= '0' && argv[1][0] <= '9');
    int jid_read = (argv[1] && argv[1][0] == '%');
    
    if(!pid_read && !jid_read)
    {
        printf("%s: argument must be a PID or %%jobid\n",argv[0]);
        return;
    }
    
    struct job_t* job_ptr = NULL;
    if(pid_read)	job_ptr = getjobpid(jobs,atoi(argv[1]));
    else 	 	job_ptr = getjobjid(jobs,atoi(argv[1]+1));
    
    if(!job_ptr)
    {
        if(pid_read)	printf("(%d): No such process\n",atoi(argv[1]));
        else	     	printf("%s: No such job\n",argv[1]);
        return;
    }
    
    job_ptr->state = bg_fg; //重新设置状态
    kill(-job_ptr->pid,SIGCONT); //发送状态 重启
    if(bg_fg == BG) printf("[%d] (%d) %s",job_ptr->jid,job_ptr->pid,job_ptr->cmdline);
    if(bg_fg == FG)
    	waitfg(job_ptr->pid); 
    return;
}


/* 
 * waitfg - Block until process pid is no longer the foreground process
 */
void waitfg(pid_t pid)
{
    sigset_t mask;
    sigemptyset(&mask);  //初始化mask为空集合
    while(pid==fgpid(jobs))
    {
        sigsuspend(&mask);  //暂时挂起
    }
}

/*****************
 * Signal handlers
 *****************/

/* 
 * sigchld_handler - The kernel sends a SIGCHLD to the shell whenever
 *     a child job terminates (becomes a zombie), or stops because it
 *     received a SIGSTOP or SIGTSTP signal. The handler reaps all
 *     available zombie children, but doesn't wait for any other
 *     currently running children to terminate.  
 */
void sigchld_handler(int sig) 
{
    int olderrno = errno,status;
    pid_t pid;
    sigset_t mask_all,prev_all;
    sigemptyset(&prev_all);sigfillset(&mask_all);
    
    //尽可能回收僵死进程 但是如果没有停止或终结的进程 直接离开即可
    //trace 05 进程不止只有命令 还有/bin/echo 等进程
    //如果设置为0的话 则会一直等待 
    while((pid = waitpid(-1,&status,WNOHANG | WUNTRACED)) > 0)
    {
        //全屏蔽 有delete
        sigprocmask(SIG_BLOCK,&mask_all,&prev_all);
        struct job_t* job = getjobpid(jobs,pid);
        
        if(WIFSIGNALED(status) && WTERMSIG(status) == SIGINT && job->state != UNDEF) //外部SIGINT 处理
            printf("Job [%d] (%d) terminated by signal 2\n",job->jid,job->pid); //外部SIGTSTP 处理
        else if(WIFSTOPPED(status) && WSTOPSIG(status) == SIGTSTP && job->state != ST)
        {
            printf("Job [%d] (%d) terminated by signal 20\n",job->jid,job->pid);
            job->state = ST; //处理为STOP 
        }
        
        if(getjobpid(jobs,pid)->state != ST) deletejob(jobs,pid); //如果是STOP 则先不删除 如果后面还有 BG FG 仍可重新用
        sigprocmask(SIG_SETMASK,&prev_all,NULL);
    }                     
    
    errno = olderrno;
    return;
}

/* 
 * sigint_handler - The kernel sends a SIGINT to the shell whenver the
 *    user types ctrl-c at the keyboard.  Catch it and send it along
 *    to the foreground job.  
 */
void sigint_handler(int sig) 
{
    int fg_pid = fgpid(jobs),fg_jid = pid2jid(fg_pid);
    if(!fg_pid)    return;
    
    sigset_t mask_all,prev_all;
    sigfillset(&mask_all);sigemptyset(&prev_all);
    sigprocmask(SIG_BLOCK,&mask_all,&prev_all);
    
    struct job_t* job = getjobpid(jobs,fg_pid);
    job->state = UNDEF;
    kill(-fg_pid,2);
    printf("Job [%d] (%d) terminated by signal 2\n",fg_jid,fg_pid);
    sigprocmask(SIG_SETMASK,&prev_all,NULL);
    return;
}


/*
 * sigtstp_handler - The kernel sends a SIGTSTP to the shell whenever
 *     the user types ctrl-z at the keyboard. Catch it and suspend the
 *     foreground job by sending it a SIGTSTP.  
 */
void sigtstp_handler(int sig) 
{
    int fg_pid = fgpid(jobs),fg_jid = pid2jid(fg_pid);
    if(!fg_pid)    return;
    
    sigset_t mask_all,prev_all;
    sigfillset(&mask_all);sigemptyset(&prev_all);
    sigprocmask(SIG_BLOCK,&mask_all,&prev_all);
    
    struct job_t* job = getjobpid(jobs,fg_pid);
    job->state = ST;
    kill(-fg_pid,20);
    printf("Job [%d] (%d) terminated by signal 20\n",fg_jid,fg_pid);
    sigprocmask(SIG_SETMASK,&prev_all,NULL);
}


/*********************
 * End signal handlers
 *********************/

/***********************************************
 * Helper routines that manipulate the job list
 **********************************************/

/* clearjob - Clear the entries in a job struct */
void clearjob(struct job_t *job) {
    job->pid = 0;
    job->jid = 0;
    job->state = UNDEF;
    job->cmdline[0] = '\0';
}

/* initjobs - Initialize the job list */
void initjobs(struct job_t *jobs) {
    int i;

    for (i = 0; i < MAXJOBS; i++)
	clearjob(&jobs[i]);
}

/* maxjid - Returns largest allocated job ID */
int maxjid(struct job_t *jobs) 
{
    int i, max=0;

    for (i = 0; i < MAXJOBS; i++)
	if (jobs[i].jid > max)
	    max = jobs[i].jid;
    return max;
}

/* addjob - Add a job to the job list */
int addjob(struct job_t *jobs, pid_t pid, int state, char *cmdline) 
{
    int i;
    
    if (pid < 1)
	return 0;

    for (i = 0; i < MAXJOBS; i++) {
	if (jobs[i].pid == 0) {
	    jobs[i].pid = pid;
	    jobs[i].state = state;
	    jobs[i].jid = nextjid++;
	    if (nextjid > MAXJOBS)
		nextjid = 1;
	    strcpy(jobs[i].cmdline, cmdline);
  	    if(verbose){
	        printf("Added job [%d] %d %s\n", jobs[i].jid, jobs[i].pid, jobs[i].cmdline);
            }
            return 1;
	}
    }
    printf("Tried to create too many jobs\n");
    return 0;
}

/* deletejob - Delete a job whose PID=pid from the job list */
int deletejob(struct job_t *jobs, pid_t pid) 
{
    int i;

    if (pid < 1)
	return 0;

    for (i = 0; i < MAXJOBS; i++) {
	if (jobs[i].pid == pid) {
	    clearjob(&jobs[i]);
	    nextjid = maxjid(jobs)+1;
	    return 1;
	}
    }
    return 0;
}

/* fgpid - Return PID of current foreground job, 0 if no such job */
pid_t fgpid(struct job_t *jobs) {
    int i;

    for (i = 0; i < MAXJOBS; i++)
	if (jobs[i].state == FG)
	    return jobs[i].pid;
    return 0;
}

/* getjobpid  - Find a job (by PID) on the job list */
struct job_t *getjobpid(struct job_t *jobs, pid_t pid) {
    int i;

    if (pid < 1)
	return NULL;
    for (i = 0; i < MAXJOBS; i++)
	if (jobs[i].pid == pid)
	    return &jobs[i];
    return NULL;
}

/* getjobjid  - Find a job (by JID) on the job list */
struct job_t *getjobjid(struct job_t *jobs, int jid) 
{
    int i;

    if (jid < 1)
	return NULL;
    for (i = 0; i < MAXJOBS; i++)
	if (jobs[i].jid == jid)
	    return &jobs[i];
    return NULL;
}

/* pid2jid - Map process ID to job ID */
int pid2jid(pid_t pid) 
{
    int i;

    if (pid < 1)
	return 0;
    for (i = 0; i < MAXJOBS; i++)
	if (jobs[i].pid == pid) {
            return jobs[i].jid;
        }
    return 0;
}

/* listjobs - Print the job list */
void listjobs(struct job_t *jobs) 
{
    int i;
    
    for (i = 0; i < MAXJOBS; i++) {
	if (jobs[i].pid != 0) {
	    printf("[%d] (%d) ", jobs[i].jid, jobs[i].pid);
	    switch (jobs[i].state) {
		case BG: 
		    printf("Running ");
		    break;
		case FG: 
		    printf("Foreground ");
		    break;
		case ST: 
		    printf("Stopped ");
		    break;
	    default:
		    printf("listjobs: Internal error: job[%d].state=%d ", 
			   i, jobs[i].state);
	    }
	    printf("%s", jobs[i].cmdline);
	}
    }
}
/******************************
 * end job list helper routines
 ******************************/


/***********************
 * Other helper routines
 ***********************/

/*
 * usage - print a help message
 */
void usage(void) 
{
    printf("Usage: shell [-hvp]\n");
    printf("   -h   print this message\n");
    printf("   -v   print additional diagnostic information\n");
    printf("   -p   do not emit a command prompt\n");
    exit(1);
}

/*
 * unix_error - unix-style error routine
 */
void unix_error(char *msg)
{
    fprintf(stdout, "%s: %s\n", msg, strerror(errno));
    exit(1);
}

/*
 * app_error - application-style error routine
 */
void app_error(char *msg)
{
    fprintf(stdout, "%s\n", msg);
    exit(1);
}

/*
 * Signal - wrapper for the sigaction function
 */
handler_t *Signal(int signum, handler_t *handler) 
{
    struct sigaction action, old_action;

    action.sa_handler = handler;  
    sigemptyset(&action.sa_mask); /* block sigs of type being handled */
    action.sa_flags = SA_RESTART; /* restart syscalls if possible */

    if (sigaction(signum, &action, &old_action) < 0)
	unix_error("Signal error");
    return (old_action.sa_handler);
}

/*
 * sigquit_handler - The driver program can gracefully terminate the
 *    child shell by sending it a SIGQUIT signal.
 */
void sigquit_handler(int sig) 
{
    printf("Terminating after receipt of SIGQUIT signal\n");
    exit(1);
}



