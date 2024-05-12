
bufbomb:     file format elf32-i386


Disassembly of section .init:

08049000 <_init>:
 8049000:	f3 0f 1e fb          	endbr32 
 8049004:	53                   	push   %ebx
 8049005:	83 ec 08             	sub    $0x8,%esp
 8049008:	e8 d3 02 00 00       	call   80492e0 <__x86.get_pc_thunk.bx>
 804900d:	81 c3 f3 3f 00 00    	add    $0x3ff3,%ebx
 8049013:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8049019:	85 c0                	test   %eax,%eax
 804901b:	74 02                	je     804901f <_init+0x1f>
 804901d:	ff d0                	call   *%eax
 804901f:	83 c4 08             	add    $0x8,%esp
 8049022:	5b                   	pop    %ebx
 8049023:	c3                   	ret    

Disassembly of section .plt:

08049030 <strcmp@plt-0x10>:
 8049030:	ff 35 04 d0 04 08    	push   0x804d004
 8049036:	ff 25 08 d0 04 08    	jmp    *0x804d008
 804903c:	00 00                	add    %al,(%eax)
	...

08049040 <strcmp@plt>:
 8049040:	ff 25 0c d0 04 08    	jmp    *0x804d00c
 8049046:	68 00 00 00 00       	push   $0x0
 804904b:	e9 e0 ff ff ff       	jmp    8049030 <_init+0x30>

08049050 <__libc_start_main@plt>:
 8049050:	ff 25 10 d0 04 08    	jmp    *0x804d010
 8049056:	68 08 00 00 00       	push   $0x8
 804905b:	e9 d0 ff ff ff       	jmp    8049030 <_init+0x30>

08049060 <read@plt>:
 8049060:	ff 25 14 d0 04 08    	jmp    *0x804d014
 8049066:	68 10 00 00 00       	push   $0x10
 804906b:	e9 c0 ff ff ff       	jmp    8049030 <_init+0x30>

08049070 <srandom@plt>:
 8049070:	ff 25 18 d0 04 08    	jmp    *0x804d018
 8049076:	68 18 00 00 00       	push   $0x18
 804907b:	e9 b0 ff ff ff       	jmp    8049030 <_init+0x30>

08049080 <printf@plt>:
 8049080:	ff 25 1c d0 04 08    	jmp    *0x804d01c
 8049086:	68 20 00 00 00       	push   $0x20
 804908b:	e9 a0 ff ff ff       	jmp    8049030 <_init+0x30>

08049090 <memmove@plt>:
 8049090:	ff 25 20 d0 04 08    	jmp    *0x804d020
 8049096:	68 28 00 00 00       	push   $0x28
 804909b:	e9 90 ff ff ff       	jmp    8049030 <_init+0x30>

080490a0 <strdup@plt>:
 80490a0:	ff 25 24 d0 04 08    	jmp    *0x804d024
 80490a6:	68 30 00 00 00       	push   $0x30
 80490ab:	e9 80 ff ff ff       	jmp    8049030 <_init+0x30>

080490b0 <memcpy@plt>:
 80490b0:	ff 25 28 d0 04 08    	jmp    *0x804d028
 80490b6:	68 38 00 00 00       	push   $0x38
 80490bb:	e9 70 ff ff ff       	jmp    8049030 <_init+0x30>

080490c0 <signal@plt>:
 80490c0:	ff 25 2c d0 04 08    	jmp    *0x804d02c
 80490c6:	68 40 00 00 00       	push   $0x40
 80490cb:	e9 60 ff ff ff       	jmp    8049030 <_init+0x30>

080490d0 <alarm@plt>:
 80490d0:	ff 25 30 d0 04 08    	jmp    *0x804d030
 80490d6:	68 48 00 00 00       	push   $0x48
 80490db:	e9 50 ff ff ff       	jmp    8049030 <_init+0x30>

080490e0 <__stack_chk_fail@plt>:
 80490e0:	ff 25 34 d0 04 08    	jmp    *0x804d034
 80490e6:	68 50 00 00 00       	push   $0x50
 80490eb:	e9 40 ff ff ff       	jmp    8049030 <_init+0x30>

080490f0 <htons@plt>:
 80490f0:	ff 25 38 d0 04 08    	jmp    *0x804d038
 80490f6:	68 58 00 00 00       	push   $0x58
 80490fb:	e9 30 ff ff ff       	jmp    8049030 <_init+0x30>

08049100 <fwrite@plt>:
 8049100:	ff 25 3c d0 04 08    	jmp    *0x804d03c
 8049106:	68 60 00 00 00       	push   $0x60
 804910b:	e9 20 ff ff ff       	jmp    8049030 <_init+0x30>

08049110 <strcpy@plt>:
 8049110:	ff 25 40 d0 04 08    	jmp    *0x804d040
 8049116:	68 68 00 00 00       	push   $0x68
 804911b:	e9 10 ff ff ff       	jmp    8049030 <_init+0x30>

08049120 <getpid@plt>:
 8049120:	ff 25 44 d0 04 08    	jmp    *0x804d044
 8049126:	68 70 00 00 00       	push   $0x70
 804912b:	e9 00 ff ff ff       	jmp    8049030 <_init+0x30>

08049130 <gethostname@plt>:
 8049130:	ff 25 48 d0 04 08    	jmp    *0x804d048
 8049136:	68 78 00 00 00       	push   $0x78
 804913b:	e9 f0 fe ff ff       	jmp    8049030 <_init+0x30>

08049140 <puts@plt>:
 8049140:	ff 25 4c d0 04 08    	jmp    *0x804d04c
 8049146:	68 80 00 00 00       	push   $0x80
 804914b:	e9 e0 fe ff ff       	jmp    8049030 <_init+0x30>

08049150 <exit@plt>:
 8049150:	ff 25 50 d0 04 08    	jmp    *0x804d050
 8049156:	68 88 00 00 00       	push   $0x88
 804915b:	e9 d0 fe ff ff       	jmp    8049030 <_init+0x30>

08049160 <srand@plt>:
 8049160:	ff 25 54 d0 04 08    	jmp    *0x804d054
 8049166:	68 90 00 00 00       	push   $0x90
 804916b:	e9 c0 fe ff ff       	jmp    8049030 <_init+0x30>

08049170 <mmap@plt>:
 8049170:	ff 25 58 d0 04 08    	jmp    *0x804d058
 8049176:	68 98 00 00 00       	push   $0x98
 804917b:	e9 b0 fe ff ff       	jmp    8049030 <_init+0x30>

08049180 <strlen@plt>:
 8049180:	ff 25 5c d0 04 08    	jmp    *0x804d05c
 8049186:	68 a0 00 00 00       	push   $0xa0
 804918b:	e9 a0 fe ff ff       	jmp    8049030 <_init+0x30>

08049190 <write@plt>:
 8049190:	ff 25 60 d0 04 08    	jmp    *0x804d060
 8049196:	68 a8 00 00 00       	push   $0xa8
 804919b:	e9 90 fe ff ff       	jmp    8049030 <_init+0x30>

080491a0 <getopt@plt>:
 80491a0:	ff 25 64 d0 04 08    	jmp    *0x804d064
 80491a6:	68 b0 00 00 00       	push   $0xb0
 80491ab:	e9 80 fe ff ff       	jmp    8049030 <_init+0x30>

080491b0 <strcasecmp@plt>:
 80491b0:	ff 25 68 d0 04 08    	jmp    *0x804d068
 80491b6:	68 b8 00 00 00       	push   $0xb8
 80491bb:	e9 70 fe ff ff       	jmp    8049030 <_init+0x30>

080491c0 <__isoc99_sscanf@plt>:
 80491c0:	ff 25 6c d0 04 08    	jmp    *0x804d06c
 80491c6:	68 c0 00 00 00       	push   $0xc0
 80491cb:	e9 60 fe ff ff       	jmp    8049030 <_init+0x30>

080491d0 <memset@plt>:
 80491d0:	ff 25 70 d0 04 08    	jmp    *0x804d070
 80491d6:	68 c8 00 00 00       	push   $0xc8
 80491db:	e9 50 fe ff ff       	jmp    8049030 <_init+0x30>

080491e0 <__errno_location@plt>:
 80491e0:	ff 25 74 d0 04 08    	jmp    *0x804d074
 80491e6:	68 d0 00 00 00       	push   $0xd0
 80491eb:	e9 40 fe ff ff       	jmp    8049030 <_init+0x30>

080491f0 <rand@plt>:
 80491f0:	ff 25 78 d0 04 08    	jmp    *0x804d078
 80491f6:	68 d8 00 00 00       	push   $0xd8
 80491fb:	e9 30 fe ff ff       	jmp    8049030 <_init+0x30>

08049200 <munmap@plt>:
 8049200:	ff 25 7c d0 04 08    	jmp    *0x804d07c
 8049206:	68 e0 00 00 00       	push   $0xe0
 804920b:	e9 20 fe ff ff       	jmp    8049030 <_init+0x30>

08049210 <sprintf@plt>:
 8049210:	ff 25 80 d0 04 08    	jmp    *0x804d080
 8049216:	68 e8 00 00 00       	push   $0xe8
 804921b:	e9 10 fe ff ff       	jmp    8049030 <_init+0x30>

08049220 <socket@plt>:
 8049220:	ff 25 84 d0 04 08    	jmp    *0x804d084
 8049226:	68 f0 00 00 00       	push   $0xf0
 804922b:	e9 00 fe ff ff       	jmp    8049030 <_init+0x30>

08049230 <getc@plt>:
 8049230:	ff 25 88 d0 04 08    	jmp    *0x804d088
 8049236:	68 f8 00 00 00       	push   $0xf8
 804923b:	e9 f0 fd ff ff       	jmp    8049030 <_init+0x30>

08049240 <random@plt>:
 8049240:	ff 25 8c d0 04 08    	jmp    *0x804d08c
 8049246:	68 00 01 00 00       	push   $0x100
 804924b:	e9 e0 fd ff ff       	jmp    8049030 <_init+0x30>

08049250 <gethostbyname@plt>:
 8049250:	ff 25 90 d0 04 08    	jmp    *0x804d090
 8049256:	68 08 01 00 00       	push   $0x108
 804925b:	e9 d0 fd ff ff       	jmp    8049030 <_init+0x30>

08049260 <connect@plt>:
 8049260:	ff 25 94 d0 04 08    	jmp    *0x804d094
 8049266:	68 10 01 00 00       	push   $0x110
 804926b:	e9 c0 fd ff ff       	jmp    8049030 <_init+0x30>

08049270 <close@plt>:
 8049270:	ff 25 98 d0 04 08    	jmp    *0x804d098
 8049276:	68 18 01 00 00       	push   $0x118
 804927b:	e9 b0 fd ff ff       	jmp    8049030 <_init+0x30>

08049280 <calloc@plt>:
 8049280:	ff 25 9c d0 04 08    	jmp    *0x804d09c
 8049286:	68 20 01 00 00       	push   $0x120
 804928b:	e9 a0 fd ff ff       	jmp    8049030 <_init+0x30>

Disassembly of section .text:

08049290 <_start>:
 8049290:	f3 0f 1e fb          	endbr32 
 8049294:	31 ed                	xor    %ebp,%ebp
 8049296:	5e                   	pop    %esi
 8049297:	89 e1                	mov    %esp,%ecx
 8049299:	83 e4 f0             	and    $0xfffffff0,%esp
 804929c:	50                   	push   %eax
 804929d:	54                   	push   %esp
 804929e:	52                   	push   %edx
 804929f:	e8 19 00 00 00       	call   80492bd <_start+0x2d>
 80492a4:	81 c3 5c 3d 00 00    	add    $0x3d5c,%ebx
 80492aa:	6a 00                	push   $0x0
 80492ac:	6a 00                	push   $0x0
 80492ae:	51                   	push   %ecx
 80492af:	56                   	push   %esi
 80492b0:	c7 c0 be 99 04 08    	mov    $0x80499be,%eax
 80492b6:	50                   	push   %eax
 80492b7:	e8 94 fd ff ff       	call   8049050 <__libc_start_main@plt>
 80492bc:	f4                   	hlt    
 80492bd:	8b 1c 24             	mov    (%esp),%ebx
 80492c0:	c3                   	ret    
 80492c1:	66 90                	xchg   %ax,%ax
 80492c3:	66 90                	xchg   %ax,%ax
 80492c5:	66 90                	xchg   %ax,%ax
 80492c7:	66 90                	xchg   %ax,%ax
 80492c9:	66 90                	xchg   %ax,%ax
 80492cb:	66 90                	xchg   %ax,%ax
 80492cd:	66 90                	xchg   %ax,%ax
 80492cf:	90                   	nop

080492d0 <_dl_relocate_static_pie>:
 80492d0:	f3 0f 1e fb          	endbr32 
 80492d4:	c3                   	ret    
 80492d5:	66 90                	xchg   %ax,%ax
 80492d7:	66 90                	xchg   %ax,%ax
 80492d9:	66 90                	xchg   %ax,%ax
 80492db:	66 90                	xchg   %ax,%ax
 80492dd:	66 90                	xchg   %ax,%ax
 80492df:	90                   	nop

080492e0 <__x86.get_pc_thunk.bx>:
 80492e0:	8b 1c 24             	mov    (%esp),%ebx
 80492e3:	c3                   	ret    
 80492e4:	66 90                	xchg   %ax,%ax
 80492e6:	66 90                	xchg   %ax,%ax
 80492e8:	66 90                	xchg   %ax,%ax
 80492ea:	66 90                	xchg   %ax,%ax
 80492ec:	66 90                	xchg   %ax,%ax
 80492ee:	66 90                	xchg   %ax,%ax

080492f0 <deregister_tm_clones>:
 80492f0:	b8 0c d1 04 08       	mov    $0x804d10c,%eax
 80492f5:	3d 0c d1 04 08       	cmp    $0x804d10c,%eax
 80492fa:	74 24                	je     8049320 <deregister_tm_clones+0x30>
 80492fc:	b8 00 00 00 00       	mov    $0x0,%eax
 8049301:	85 c0                	test   %eax,%eax
 8049303:	74 1b                	je     8049320 <deregister_tm_clones+0x30>
 8049305:	55                   	push   %ebp
 8049306:	89 e5                	mov    %esp,%ebp
 8049308:	83 ec 14             	sub    $0x14,%esp
 804930b:	68 0c d1 04 08       	push   $0x804d10c
 8049310:	ff d0                	call   *%eax
 8049312:	83 c4 10             	add    $0x10,%esp
 8049315:	c9                   	leave  
 8049316:	c3                   	ret    
 8049317:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804931e:	66 90                	xchg   %ax,%ax
 8049320:	c3                   	ret    
 8049321:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049328:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804932f:	90                   	nop

08049330 <register_tm_clones>:
 8049330:	b8 0c d1 04 08       	mov    $0x804d10c,%eax
 8049335:	2d 0c d1 04 08       	sub    $0x804d10c,%eax
 804933a:	89 c2                	mov    %eax,%edx
 804933c:	c1 e8 1f             	shr    $0x1f,%eax
 804933f:	c1 fa 02             	sar    $0x2,%edx
 8049342:	01 d0                	add    %edx,%eax
 8049344:	d1 f8                	sar    %eax
 8049346:	74 20                	je     8049368 <register_tm_clones+0x38>
 8049348:	ba 00 00 00 00       	mov    $0x0,%edx
 804934d:	85 d2                	test   %edx,%edx
 804934f:	74 17                	je     8049368 <register_tm_clones+0x38>
 8049351:	55                   	push   %ebp
 8049352:	89 e5                	mov    %esp,%ebp
 8049354:	83 ec 10             	sub    $0x10,%esp
 8049357:	50                   	push   %eax
 8049358:	68 0c d1 04 08       	push   $0x804d10c
 804935d:	ff d2                	call   *%edx
 804935f:	83 c4 10             	add    $0x10,%esp
 8049362:	c9                   	leave  
 8049363:	c3                   	ret    
 8049364:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049368:	c3                   	ret    
 8049369:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08049370 <__do_global_dtors_aux>:
 8049370:	f3 0f 1e fb          	endbr32 
 8049374:	80 3d 64 d1 04 08 00 	cmpb   $0x0,0x804d164
 804937b:	75 1b                	jne    8049398 <__do_global_dtors_aux+0x28>
 804937d:	55                   	push   %ebp
 804937e:	89 e5                	mov    %esp,%ebp
 8049380:	83 ec 08             	sub    $0x8,%esp
 8049383:	e8 68 ff ff ff       	call   80492f0 <deregister_tm_clones>
 8049388:	c6 05 64 d1 04 08 01 	movb   $0x1,0x804d164
 804938f:	c9                   	leave  
 8049390:	c3                   	ret    
 8049391:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049398:	c3                   	ret    
 8049399:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

080493a0 <frame_dummy>:
 80493a0:	f3 0f 1e fb          	endbr32 
 80493a4:	eb 8a                	jmp    8049330 <register_tm_clones>

080493a6 <RAND_FUNC>:
 80493a6:	55                   	push   %ebp
 80493a7:	89 e5                	mov    %esp,%ebp
 80493a9:	83 ec 38             	sub    $0x38,%esp
 80493ac:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80493b2:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80493b5:	31 c0                	xor    %eax,%eax
 80493b7:	c7 45 ce 41 6c 6c 20 	movl   $0x206c6c41,-0x32(%ebp)
 80493be:	c7 45 d2 49 2f 4f 20 	movl   $0x204f2f49,-0x2e(%ebp)
 80493c5:	c7 45 d6 64 65 76 69 	movl   $0x69766564,-0x2a(%ebp)
 80493cc:	c7 45 da 63 65 73 20 	movl   $0x20736563,-0x26(%ebp)
 80493d3:	c7 45 de 61 72 65 20 	movl   $0x20657261,-0x22(%ebp)
 80493da:	c7 45 e2 6d 6f 64 65 	movl   $0x65646f6d,-0x1e(%ebp)
 80493e1:	c7 45 e6 6c 65 64 20 	movl   $0x2064656c,-0x1a(%ebp)
 80493e8:	c7 45 ea 61 73 20 66 	movl   $0x66207361,-0x16(%ebp)
 80493ef:	c7 45 ee 69 6c 65 73 	movl   $0x73656c69,-0x12(%ebp)
 80493f6:	66 c7 45 f2 2e 00    	movw   $0x2e,-0xe(%ebp)
 80493fc:	0f b6 45 f4          	movzbl -0xc(%ebp),%eax
 8049400:	88 45 ce             	mov    %al,-0x32(%ebp)
 8049403:	90                   	nop
 8049404:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049407:	65 2b 05 14 00 00 00 	sub    %gs:0x14,%eax
 804940e:	74 05                	je     8049415 <RAND_FUNC+0x6f>
 8049410:	e8 cb fc ff ff       	call   80490e0 <__stack_chk_fail@plt>
 8049415:	c9                   	leave  
 8049416:	c3                   	ret    

08049417 <smoke>:
 8049417:	55                   	push   %ebp
 8049418:	89 e5                	mov    %esp,%ebp
 804941a:	83 ec 08             	sub    $0x8,%esp
 804941d:	83 ec 0c             	sub    $0xc,%esp
 8049420:	68 08 b0 04 08       	push   $0x804b008
 8049425:	e8 16 fd ff ff       	call   8049140 <puts@plt>
 804942a:	83 c4 10             	add    $0x10,%esp
 804942d:	83 ec 0c             	sub    $0xc,%esp
 8049430:	6a 00                	push   $0x0
 8049432:	e8 ab 09 00 00       	call   8049de2 <validate>
 8049437:	83 c4 10             	add    $0x10,%esp
 804943a:	83 ec 0c             	sub    $0xc,%esp
 804943d:	6a 00                	push   $0x0
 804943f:	e8 0c fd ff ff       	call   8049150 <exit@plt>

08049444 <fizz>:
 8049444:	55                   	push   %ebp
 8049445:	89 e5                	mov    %esp,%ebp
 8049447:	83 ec 08             	sub    $0x8,%esp
 804944a:	8b 55 08             	mov    0x8(%ebp),%edx
 804944d:	a1 90 d1 04 08       	mov    0x804d190,%eax
 8049452:	39 c2                	cmp    %eax,%edx
 8049454:	75 22                	jne    8049478 <fizz+0x34>
 8049456:	83 ec 08             	sub    $0x8,%esp
 8049459:	ff 75 08             	push   0x8(%ebp)
 804945c:	68 23 b0 04 08       	push   $0x804b023
 8049461:	e8 1a fc ff ff       	call   8049080 <printf@plt>
 8049466:	83 c4 10             	add    $0x10,%esp
 8049469:	83 ec 0c             	sub    $0xc,%esp
 804946c:	6a 01                	push   $0x1
 804946e:	e8 6f 09 00 00       	call   8049de2 <validate>
 8049473:	83 c4 10             	add    $0x10,%esp
 8049476:	eb 13                	jmp    804948b <fizz+0x47>
 8049478:	83 ec 08             	sub    $0x8,%esp
 804947b:	ff 75 08             	push   0x8(%ebp)
 804947e:	68 44 b0 04 08       	push   $0x804b044
 8049483:	e8 f8 fb ff ff       	call   8049080 <printf@plt>
 8049488:	83 c4 10             	add    $0x10,%esp
 804948b:	83 ec 0c             	sub    $0xc,%esp
 804948e:	6a 00                	push   $0x0
 8049490:	e8 bb fc ff ff       	call   8049150 <exit@plt>

08049495 <bang>:
 8049495:	55                   	push   %ebp
 8049496:	89 e5                	mov    %esp,%ebp
 8049498:	83 ec 08             	sub    $0x8,%esp
 804949b:	a1 98 d1 04 08       	mov    0x804d198,%eax
 80494a0:	89 c2                	mov    %eax,%edx
 80494a2:	a1 90 d1 04 08       	mov    0x804d190,%eax
 80494a7:	39 c2                	cmp    %eax,%edx
 80494a9:	75 25                	jne    80494d0 <bang+0x3b>
 80494ab:	a1 98 d1 04 08       	mov    0x804d198,%eax
 80494b0:	83 ec 08             	sub    $0x8,%esp
 80494b3:	50                   	push   %eax
 80494b4:	68 64 b0 04 08       	push   $0x804b064
 80494b9:	e8 c2 fb ff ff       	call   8049080 <printf@plt>
 80494be:	83 c4 10             	add    $0x10,%esp
 80494c1:	83 ec 0c             	sub    $0xc,%esp
 80494c4:	6a 02                	push   $0x2
 80494c6:	e8 17 09 00 00       	call   8049de2 <validate>
 80494cb:	83 c4 10             	add    $0x10,%esp
 80494ce:	eb 16                	jmp    80494e6 <bang+0x51>
 80494d0:	a1 98 d1 04 08       	mov    0x804d198,%eax
 80494d5:	83 ec 08             	sub    $0x8,%esp
 80494d8:	50                   	push   %eax
 80494d9:	68 89 b0 04 08       	push   $0x804b089
 80494de:	e8 9d fb ff ff       	call   8049080 <printf@plt>
 80494e3:	83 c4 10             	add    $0x10,%esp
 80494e6:	83 ec 0c             	sub    $0xc,%esp
 80494e9:	6a 00                	push   $0x0
 80494eb:	e8 60 fc ff ff       	call   8049150 <exit@plt>

080494f0 <test>:
 80494f0:	55                   	push   %ebp
 80494f1:	89 e5                	mov    %esp,%ebp
 80494f3:	83 ec 18             	sub    $0x18,%esp
 80494f6:	e8 a5 04 00 00       	call   80499a0 <uniqueval>
 80494fb:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80494fe:	e8 11 07 00 00       	call   8049c14 <getbuf>
 8049503:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049506:	e8 95 04 00 00       	call   80499a0 <uniqueval>
 804950b:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804950e:	39 d0                	cmp    %edx,%eax
 8049510:	74 12                	je     8049524 <test+0x34>
 8049512:	83 ec 0c             	sub    $0xc,%esp
 8049515:	68 a8 b0 04 08       	push   $0x804b0a8
 804951a:	e8 21 fc ff ff       	call   8049140 <puts@plt>
 804951f:	83 c4 10             	add    $0x10,%esp
 8049522:	eb 41                	jmp    8049565 <test+0x75>
 8049524:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8049527:	a1 90 d1 04 08       	mov    0x804d190,%eax
 804952c:	39 c2                	cmp    %eax,%edx
 804952e:	75 22                	jne    8049552 <test+0x62>
 8049530:	83 ec 08             	sub    $0x8,%esp
 8049533:	ff 75 f4             	push   -0xc(%ebp)
 8049536:	68 d1 b0 04 08       	push   $0x804b0d1
 804953b:	e8 40 fb ff ff       	call   8049080 <printf@plt>
 8049540:	83 c4 10             	add    $0x10,%esp
 8049543:	83 ec 0c             	sub    $0xc,%esp
 8049546:	6a 03                	push   $0x3
 8049548:	e8 95 08 00 00       	call   8049de2 <validate>
 804954d:	83 c4 10             	add    $0x10,%esp
 8049550:	eb 13                	jmp    8049565 <test+0x75>
 8049552:	83 ec 08             	sub    $0x8,%esp
 8049555:	ff 75 f4             	push   -0xc(%ebp)
 8049558:	68 ee b0 04 08       	push   $0x804b0ee
 804955d:	e8 1e fb ff ff       	call   8049080 <printf@plt>
 8049562:	83 c4 10             	add    $0x10,%esp
 8049565:	90                   	nop
 8049566:	c9                   	leave  
 8049567:	c3                   	ret    

08049568 <testn>:
 8049568:	55                   	push   %ebp
 8049569:	89 e5                	mov    %esp,%ebp
 804956b:	83 ec 18             	sub    $0x18,%esp
 804956e:	e8 2d 04 00 00       	call   80499a0 <uniqueval>
 8049573:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049576:	e8 b5 06 00 00       	call   8049c30 <getbufn>
 804957b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804957e:	e8 1d 04 00 00       	call   80499a0 <uniqueval>
 8049583:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8049586:	39 d0                	cmp    %edx,%eax
 8049588:	74 12                	je     804959c <testn+0x34>
 804958a:	83 ec 0c             	sub    $0xc,%esp
 804958d:	68 a8 b0 04 08       	push   $0x804b0a8
 8049592:	e8 a9 fb ff ff       	call   8049140 <puts@plt>
 8049597:	83 c4 10             	add    $0x10,%esp
 804959a:	eb 41                	jmp    80495dd <testn+0x75>
 804959c:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804959f:	a1 90 d1 04 08       	mov    0x804d190,%eax
 80495a4:	39 c2                	cmp    %eax,%edx
 80495a6:	75 22                	jne    80495ca <testn+0x62>
 80495a8:	83 ec 08             	sub    $0x8,%esp
 80495ab:	ff 75 f4             	push   -0xc(%ebp)
 80495ae:	68 0c b1 04 08       	push   $0x804b10c
 80495b3:	e8 c8 fa ff ff       	call   8049080 <printf@plt>
 80495b8:	83 c4 10             	add    $0x10,%esp
 80495bb:	83 ec 0c             	sub    $0xc,%esp
 80495be:	6a 04                	push   $0x4
 80495c0:	e8 1d 08 00 00       	call   8049de2 <validate>
 80495c5:	83 c4 10             	add    $0x10,%esp
 80495c8:	eb 13                	jmp    80495dd <testn+0x75>
 80495ca:	83 ec 08             	sub    $0x8,%esp
 80495cd:	ff 75 f4             	push   -0xc(%ebp)
 80495d0:	68 2c b1 04 08       	push   $0x804b12c
 80495d5:	e8 a6 fa ff ff       	call   8049080 <printf@plt>
 80495da:	83 c4 10             	add    $0x10,%esp
 80495dd:	90                   	nop
 80495de:	c9                   	leave  
 80495df:	c3                   	ret    

080495e0 <save_char>:
 80495e0:	55                   	push   %ebp
 80495e1:	89 e5                	mov    %esp,%ebp
 80495e3:	83 ec 04             	sub    $0x4,%esp
 80495e6:	8b 45 08             	mov    0x8(%ebp),%eax
 80495e9:	88 45 fc             	mov    %al,-0x4(%ebp)
 80495ec:	a1 9c d1 04 08       	mov    0x804d19c,%eax
 80495f1:	3d ff 03 00 00       	cmp    $0x3ff,%eax
 80495f6:	7f 70                	jg     8049668 <save_char+0x88>
 80495f8:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
 80495fc:	c0 f8 04             	sar    $0x4,%al
 80495ff:	0f be c0             	movsbl %al,%eax
 8049602:	83 e0 0f             	and    $0xf,%eax
 8049605:	89 c1                	mov    %eax,%ecx
 8049607:	8b 15 9c d1 04 08    	mov    0x804d19c,%edx
 804960d:	89 d0                	mov    %edx,%eax
 804960f:	01 c0                	add    %eax,%eax
 8049611:	01 c2                	add    %eax,%edx
 8049613:	0f b6 81 e8 d0 04 08 	movzbl 0x804d0e8(%ecx),%eax
 804961a:	88 82 a0 d1 04 08    	mov    %al,0x804d1a0(%edx)
 8049620:	0f be 45 fc          	movsbl -0x4(%ebp),%eax
 8049624:	83 e0 0f             	and    $0xf,%eax
 8049627:	89 c1                	mov    %eax,%ecx
 8049629:	8b 15 9c d1 04 08    	mov    0x804d19c,%edx
 804962f:	89 d0                	mov    %edx,%eax
 8049631:	01 c0                	add    %eax,%eax
 8049633:	01 d0                	add    %edx,%eax
 8049635:	8d 50 01             	lea    0x1(%eax),%edx
 8049638:	0f b6 81 e8 d0 04 08 	movzbl 0x804d0e8(%ecx),%eax
 804963f:	88 82 a0 d1 04 08    	mov    %al,0x804d1a0(%edx)
 8049645:	8b 15 9c d1 04 08    	mov    0x804d19c,%edx
 804964b:	89 d0                	mov    %edx,%eax
 804964d:	01 c0                	add    %eax,%eax
 804964f:	01 d0                	add    %edx,%eax
 8049651:	83 c0 02             	add    $0x2,%eax
 8049654:	c6 80 a0 d1 04 08 20 	movb   $0x20,0x804d1a0(%eax)
 804965b:	a1 9c d1 04 08       	mov    0x804d19c,%eax
 8049660:	83 c0 01             	add    $0x1,%eax
 8049663:	a3 9c d1 04 08       	mov    %eax,0x804d19c
 8049668:	90                   	nop
 8049669:	c9                   	leave  
 804966a:	c3                   	ret    

0804966b <save_term>:
 804966b:	55                   	push   %ebp
 804966c:	89 e5                	mov    %esp,%ebp
 804966e:	8b 15 9c d1 04 08    	mov    0x804d19c,%edx
 8049674:	89 d0                	mov    %edx,%eax
 8049676:	01 c0                	add    %eax,%eax
 8049678:	01 d0                	add    %edx,%eax
 804967a:	c6 80 a0 d1 04 08 00 	movb   $0x0,0x804d1a0(%eax)
 8049681:	90                   	nop
 8049682:	5d                   	pop    %ebp
 8049683:	c3                   	ret    

08049684 <Gets>:
 8049684:	55                   	push   %ebp
 8049685:	89 e5                	mov    %esp,%ebp
 8049687:	83 ec 18             	sub    $0x18,%esp
 804968a:	8b 45 08             	mov    0x8(%ebp),%eax
 804968d:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049690:	c7 05 9c d1 04 08 00 	movl   $0x0,0x804d19c
 8049697:	00 00 00 
 804969a:	eb 1d                	jmp    80496b9 <Gets+0x35>
 804969c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804969f:	8d 50 01             	lea    0x1(%eax),%edx
 80496a2:	89 55 f0             	mov    %edx,-0x10(%ebp)
 80496a5:	8b 55 f4             	mov    -0xc(%ebp),%edx
 80496a8:	88 10                	mov    %dl,(%eax)
 80496aa:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80496ad:	0f be c0             	movsbl %al,%eax
 80496b0:	50                   	push   %eax
 80496b1:	e8 2a ff ff ff       	call   80495e0 <save_char>
 80496b6:	83 c4 04             	add    $0x4,%esp
 80496b9:	a1 8c d1 04 08       	mov    0x804d18c,%eax
 80496be:	83 ec 0c             	sub    $0xc,%esp
 80496c1:	50                   	push   %eax
 80496c2:	e8 69 fb ff ff       	call   8049230 <getc@plt>
 80496c7:	83 c4 10             	add    $0x10,%esp
 80496ca:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80496cd:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%ebp)
 80496d1:	74 06                	je     80496d9 <Gets+0x55>
 80496d3:	83 7d f4 0a          	cmpl   $0xa,-0xc(%ebp)
 80496d7:	75 c3                	jne    804969c <Gets+0x18>
 80496d9:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80496dc:	8d 50 01             	lea    0x1(%eax),%edx
 80496df:	89 55 f0             	mov    %edx,-0x10(%ebp)
 80496e2:	c6 00 00             	movb   $0x0,(%eax)
 80496e5:	e8 81 ff ff ff       	call   804966b <save_term>
 80496ea:	8b 45 08             	mov    0x8(%ebp),%eax
 80496ed:	c9                   	leave  
 80496ee:	c3                   	ret    

080496ef <usage>:
 80496ef:	55                   	push   %ebp
 80496f0:	89 e5                	mov    %esp,%ebp
 80496f2:	83 ec 08             	sub    $0x8,%esp
 80496f5:	83 ec 08             	sub    $0x8,%esp
 80496f8:	ff 75 08             	push   0x8(%ebp)
 80496fb:	68 48 b1 04 08       	push   $0x804b148
 8049700:	e8 7b f9 ff ff       	call   8049080 <printf@plt>
 8049705:	83 c4 10             	add    $0x10,%esp
 8049708:	83 ec 0c             	sub    $0xc,%esp
 804970b:	68 66 b1 04 08       	push   $0x804b166
 8049710:	e8 2b fa ff ff       	call   8049140 <puts@plt>
 8049715:	83 c4 10             	add    $0x10,%esp
 8049718:	83 ec 0c             	sub    $0xc,%esp
 804971b:	68 7c b1 04 08       	push   $0x804b17c
 8049720:	e8 1b fa ff ff       	call   8049140 <puts@plt>
 8049725:	83 c4 10             	add    $0x10,%esp
 8049728:	83 ec 0c             	sub    $0xc,%esp
 804972b:	68 98 b1 04 08       	push   $0x804b198
 8049730:	e8 0b fa ff ff       	call   8049140 <puts@plt>
 8049735:	83 c4 10             	add    $0x10,%esp
 8049738:	83 ec 0c             	sub    $0xc,%esp
 804973b:	68 d4 b1 04 08       	push   $0x804b1d4
 8049740:	e8 fb f9 ff ff       	call   8049140 <puts@plt>
 8049745:	83 c4 10             	add    $0x10,%esp
 8049748:	83 ec 0c             	sub    $0xc,%esp
 804974b:	6a 00                	push   $0x0
 804974d:	e8 fe f9 ff ff       	call   8049150 <exit@plt>

08049752 <bushandler>:
 8049752:	55                   	push   %ebp
 8049753:	89 e5                	mov    %esp,%ebp
 8049755:	83 ec 08             	sub    $0x8,%esp
 8049758:	83 ec 0c             	sub    $0xc,%esp
 804975b:	68 fc b1 04 08       	push   $0x804b1fc
 8049760:	e8 db f9 ff ff       	call   8049140 <puts@plt>
 8049765:	83 c4 10             	add    $0x10,%esp
 8049768:	83 ec 0c             	sub    $0xc,%esp
 804976b:	68 1c b2 04 08       	push   $0x804b21c
 8049770:	e8 cb f9 ff ff       	call   8049140 <puts@plt>
 8049775:	83 c4 10             	add    $0x10,%esp
 8049778:	83 ec 0c             	sub    $0xc,%esp
 804977b:	6a 00                	push   $0x0
 804977d:	e8 ce f9 ff ff       	call   8049150 <exit@plt>

08049782 <seghandler>:
 8049782:	55                   	push   %ebp
 8049783:	89 e5                	mov    %esp,%ebp
 8049785:	83 ec 08             	sub    $0x8,%esp
 8049788:	83 ec 0c             	sub    $0xc,%esp
 804978b:	68 34 b2 04 08       	push   $0x804b234
 8049790:	e8 ab f9 ff ff       	call   8049140 <puts@plt>
 8049795:	83 c4 10             	add    $0x10,%esp
 8049798:	83 ec 0c             	sub    $0xc,%esp
 804979b:	68 1c b2 04 08       	push   $0x804b21c
 80497a0:	e8 9b f9 ff ff       	call   8049140 <puts@plt>
 80497a5:	83 c4 10             	add    $0x10,%esp
 80497a8:	83 ec 0c             	sub    $0xc,%esp
 80497ab:	6a 00                	push   $0x0
 80497ad:	e8 9e f9 ff ff       	call   8049150 <exit@plt>

080497b2 <illegalhandler>:
 80497b2:	55                   	push   %ebp
 80497b3:	89 e5                	mov    %esp,%ebp
 80497b5:	83 ec 08             	sub    $0x8,%esp
 80497b8:	83 ec 0c             	sub    $0xc,%esp
 80497bb:	68 5c b2 04 08       	push   $0x804b25c
 80497c0:	e8 7b f9 ff ff       	call   8049140 <puts@plt>
 80497c5:	83 c4 10             	add    $0x10,%esp
 80497c8:	83 ec 0c             	sub    $0xc,%esp
 80497cb:	68 1c b2 04 08       	push   $0x804b21c
 80497d0:	e8 6b f9 ff ff       	call   8049140 <puts@plt>
 80497d5:	83 c4 10             	add    $0x10,%esp
 80497d8:	83 ec 0c             	sub    $0xc,%esp
 80497db:	6a 00                	push   $0x0
 80497dd:	e8 6e f9 ff ff       	call   8049150 <exit@plt>

080497e2 <launch>:
 80497e2:	55                   	push   %ebp
 80497e3:	89 e5                	mov    %esp,%ebp
 80497e5:	83 ec 58             	sub    $0x58,%esp
 80497e8:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80497ee:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80497f1:	31 c0                	xor    %eax,%eax
 80497f3:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
 80497fa:	8d 45 b4             	lea    -0x4c(%ebp),%eax
 80497fd:	25 f0 3f 00 00       	and    $0x3ff0,%eax
 8049802:	89 45 ac             	mov    %eax,-0x54(%ebp)
 8049805:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049808:	8b 45 ac             	mov    -0x54(%ebp),%eax
 804980b:	01 d0                	add    %edx,%eax
 804980d:	8d 50 0c             	lea    0xc(%eax),%edx
 8049810:	b8 10 00 00 00       	mov    $0x10,%eax
 8049815:	83 e8 01             	sub    $0x1,%eax
 8049818:	01 d0                	add    %edx,%eax
 804981a:	b9 10 00 00 00       	mov    $0x10,%ecx
 804981f:	ba 00 00 00 00       	mov    $0x0,%edx
 8049824:	f7 f1                	div    %ecx
 8049826:	6b c0 10             	imul   $0x10,%eax,%eax
 8049829:	89 c1                	mov    %eax,%ecx
 804982b:	81 e1 00 f0 ff ff    	and    $0xfffff000,%ecx
 8049831:	89 e2                	mov    %esp,%edx
 8049833:	29 ca                	sub    %ecx,%edx
 8049835:	39 d4                	cmp    %edx,%esp
 8049837:	74 10                	je     8049849 <launch+0x67>
 8049839:	81 ec 00 10 00 00    	sub    $0x1000,%esp
 804983f:	83 8c 24 fc 0f 00 00 	orl    $0x0,0xffc(%esp)
 8049846:	00 
 8049847:	eb ec                	jmp    8049835 <launch+0x53>
 8049849:	89 c2                	mov    %eax,%edx
 804984b:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 8049851:	29 d4                	sub    %edx,%esp
 8049853:	89 c2                	mov    %eax,%edx
 8049855:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 804985b:	85 d2                	test   %edx,%edx
 804985d:	74 0d                	je     804986c <launch+0x8a>
 804985f:	25 ff 0f 00 00       	and    $0xfff,%eax
 8049864:	83 e8 04             	sub    $0x4,%eax
 8049867:	01 e0                	add    %esp,%eax
 8049869:	83 08 00             	orl    $0x0,(%eax)
 804986c:	89 e0                	mov    %esp,%eax
 804986e:	83 c0 0f             	add    $0xf,%eax
 8049871:	c1 e8 04             	shr    $0x4,%eax
 8049874:	c1 e0 04             	shl    $0x4,%eax
 8049877:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804987a:	83 ec 04             	sub    $0x4,%esp
 804987d:	ff 75 ac             	push   -0x54(%ebp)
 8049880:	68 f4 00 00 00       	push   $0xf4
 8049885:	ff 75 b0             	push   -0x50(%ebp)
 8049888:	e8 43 f9 ff ff       	call   80491d0 <memset@plt>
 804988d:	83 c4 10             	add    $0x10,%esp
 8049890:	83 ec 0c             	sub    $0xc,%esp
 8049893:	68 87 b2 04 08       	push   $0x804b287
 8049898:	e8 e3 f7 ff ff       	call   8049080 <printf@plt>
 804989d:	83 c4 10             	add    $0x10,%esp
 80498a0:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80498a4:	74 07                	je     80498ad <launch+0xcb>
 80498a6:	e8 bd fc ff ff       	call   8049568 <testn>
 80498ab:	eb 05                	jmp    80498b2 <launch+0xd0>
 80498ad:	e8 3e fc ff ff       	call   80494f0 <test>
 80498b2:	a1 94 d1 04 08       	mov    0x804d194,%eax
 80498b7:	85 c0                	test   %eax,%eax
 80498b9:	75 1a                	jne    80498d5 <launch+0xf3>
 80498bb:	83 ec 0c             	sub    $0xc,%esp
 80498be:	68 1c b2 04 08       	push   $0x804b21c
 80498c3:	e8 78 f8 ff ff       	call   8049140 <puts@plt>
 80498c8:	83 c4 10             	add    $0x10,%esp
 80498cb:	c7 05 94 d1 04 08 00 	movl   $0x0,0x804d194
 80498d2:	00 00 00 
 80498d5:	90                   	nop
 80498d6:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80498d9:	65 2b 05 14 00 00 00 	sub    %gs:0x14,%eax
 80498e0:	74 05                	je     80498e7 <launch+0x105>
 80498e2:	e8 f9 f7 ff ff       	call   80490e0 <__stack_chk_fail@plt>
 80498e7:	c9                   	leave  
 80498e8:	c3                   	ret    

080498e9 <launcher>:
 80498e9:	55                   	push   %ebp
 80498ea:	89 e5                	mov    %esp,%ebp
 80498ec:	83 ec 18             	sub    $0x18,%esp
 80498ef:	8b 45 08             	mov    0x8(%ebp),%eax
 80498f2:	a3 a4 dd 04 08       	mov    %eax,0x804dda4
 80498f7:	8b 45 0c             	mov    0xc(%ebp),%eax
 80498fa:	a3 a8 dd 04 08       	mov    %eax,0x804dda8
 80498ff:	83 ec 08             	sub    $0x8,%esp
 8049902:	6a 00                	push   $0x0
 8049904:	6a 00                	push   $0x0
 8049906:	68 32 01 00 00       	push   $0x132
 804990b:	6a 07                	push   $0x7
 804990d:	68 00 00 10 00       	push   $0x100000
 8049912:	68 00 c0 58 55       	push   $0x5558c000
 8049917:	e8 54 f8 ff ff       	call   8049170 <mmap@plt>
 804991c:	83 c4 20             	add    $0x20,%esp
 804991f:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049922:	81 7d f4 00 c0 58 55 	cmpl   $0x5558c000,-0xc(%ebp)
 8049929:	74 21                	je     804994c <launcher+0x63>
 804992b:	a1 20 d1 04 08       	mov    0x804d120,%eax
 8049930:	50                   	push   %eax
 8049931:	6a 47                	push   $0x47
 8049933:	6a 01                	push   $0x1
 8049935:	68 94 b2 04 08       	push   $0x804b294
 804993a:	e8 c1 f7 ff ff       	call   8049100 <fwrite@plt>
 804993f:	83 c4 10             	add    $0x10,%esp
 8049942:	83 ec 0c             	sub    $0xc,%esp
 8049945:	6a 01                	push   $0x1
 8049947:	e8 04 f8 ff ff       	call   8049150 <exit@plt>
 804994c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804994f:	05 f8 ff 0f 00       	add    $0xffff8,%eax
 8049954:	a3 ac dd 04 08       	mov    %eax,0x804ddac
 8049959:	8b 15 ac dd 04 08    	mov    0x804ddac,%edx
 804995f:	89 e0                	mov    %esp,%eax
 8049961:	89 d4                	mov    %edx,%esp
 8049963:	89 c2                	mov    %eax,%edx
 8049965:	89 15 b0 dd 04 08    	mov    %edx,0x804ddb0
 804996b:	8b 15 a8 dd 04 08    	mov    0x804dda8,%edx
 8049971:	a1 a4 dd 04 08       	mov    0x804dda4,%eax
 8049976:	83 ec 08             	sub    $0x8,%esp
 8049979:	52                   	push   %edx
 804997a:	50                   	push   %eax
 804997b:	e8 62 fe ff ff       	call   80497e2 <launch>
 8049980:	83 c4 10             	add    $0x10,%esp
 8049983:	a1 b0 dd 04 08       	mov    0x804ddb0,%eax
 8049988:	89 c4                	mov    %eax,%esp
 804998a:	83 ec 08             	sub    $0x8,%esp
 804998d:	68 00 00 10 00       	push   $0x100000
 8049992:	ff 75 f4             	push   -0xc(%ebp)
 8049995:	e8 66 f8 ff ff       	call   8049200 <munmap@plt>
 804999a:	83 c4 10             	add    $0x10,%esp
 804999d:	90                   	nop
 804999e:	c9                   	leave  
 804999f:	c3                   	ret    

080499a0 <uniqueval>:
 80499a0:	55                   	push   %ebp
 80499a1:	89 e5                	mov    %esp,%ebp
 80499a3:	83 ec 08             	sub    $0x8,%esp
 80499a6:	e8 75 f7 ff ff       	call   8049120 <getpid@plt>
 80499ab:	83 ec 0c             	sub    $0xc,%esp
 80499ae:	50                   	push   %eax
 80499af:	e8 bc f6 ff ff       	call   8049070 <srandom@plt>
 80499b4:	83 c4 10             	add    $0x10,%esp
 80499b7:	e8 84 f8 ff ff       	call   8049240 <random@plt>
 80499bc:	c9                   	leave  
 80499bd:	c3                   	ret    

080499be <main>:
 80499be:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 80499c2:	83 e4 f0             	and    $0xfffffff0,%esp
 80499c5:	ff 71 fc             	push   -0x4(%ecx)
 80499c8:	55                   	push   %ebp
 80499c9:	89 e5                	mov    %esp,%ebp
 80499cb:	53                   	push   %ebx
 80499cc:	51                   	push   %ecx
 80499cd:	83 ec 20             	sub    $0x20,%esp
 80499d0:	89 cb                	mov    %ecx,%ebx
 80499d2:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 80499d9:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 80499e0:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
 80499e7:	83 ec 08             	sub    $0x8,%esp
 80499ea:	68 82 97 04 08       	push   $0x8049782
 80499ef:	6a 0b                	push   $0xb
 80499f1:	e8 ca f6 ff ff       	call   80490c0 <signal@plt>
 80499f6:	83 c4 10             	add    $0x10,%esp
 80499f9:	83 ec 08             	sub    $0x8,%esp
 80499fc:	68 52 97 04 08       	push   $0x8049752
 8049a01:	6a 07                	push   $0x7
 8049a03:	e8 b8 f6 ff ff       	call   80490c0 <signal@plt>
 8049a08:	83 c4 10             	add    $0x10,%esp
 8049a0b:	83 ec 08             	sub    $0x8,%esp
 8049a0e:	68 b2 97 04 08       	push   $0x80497b2
 8049a13:	6a 04                	push   $0x4
 8049a15:	e8 a6 f6 ff ff       	call   80490c0 <signal@plt>
 8049a1a:	83 c4 10             	add    $0x10,%esp
 8049a1d:	a1 40 d1 04 08       	mov    0x804d140,%eax
 8049a22:	a3 8c d1 04 08       	mov    %eax,0x804d18c
 8049a27:	e9 a3 00 00 00       	jmp    8049acf <main+0x111>
 8049a2c:	0f be 45 e3          	movsbl -0x1d(%ebp),%eax
 8049a30:	83 e8 67             	sub    $0x67,%eax
 8049a33:	83 f8 0e             	cmp    $0xe,%eax
 8049a36:	0f 87 82 00 00 00    	ja     8049abe <main+0x100>
 8049a3c:	8b 04 85 54 b3 04 08 	mov    0x804b354(,%eax,4),%eax
 8049a43:	ff e0                	jmp    *%eax
 8049a45:	8b 43 04             	mov    0x4(%ebx),%eax
 8049a48:	8b 00                	mov    (%eax),%eax
 8049a4a:	83 ec 0c             	sub    $0xc,%esp
 8049a4d:	50                   	push   %eax
 8049a4e:	e8 9c fc ff ff       	call   80496ef <usage>
 8049a53:	83 c4 10             	add    $0x10,%esp
 8049a56:	eb 77                	jmp    8049acf <main+0x111>
 8049a58:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
 8049a5f:	c7 45 ec 05 00 00 00 	movl   $0x5,-0x14(%ebp)
 8049a66:	eb 67                	jmp    8049acf <main+0x111>
 8049a68:	a1 60 d1 04 08       	mov    0x804d160,%eax
 8049a6d:	83 ec 0c             	sub    $0xc,%esp
 8049a70:	50                   	push   %eax
 8049a71:	e8 2a f6 ff ff       	call   80490a0 <strdup@plt>
 8049a76:	83 c4 10             	add    $0x10,%esp
 8049a79:	a3 80 d1 04 08       	mov    %eax,0x804d180
 8049a7e:	a1 80 d1 04 08       	mov    0x804d180,%eax
 8049a83:	83 ec 0c             	sub    $0xc,%esp
 8049a86:	50                   	push   %eax
 8049a87:	e8 cd 12 00 00       	call   804ad59 <gencookie>
 8049a8c:	83 c4 10             	add    $0x10,%esp
 8049a8f:	a3 90 d1 04 08       	mov    %eax,0x804d190
 8049a94:	eb 39                	jmp    8049acf <main+0x111>
 8049a96:	83 ec 0c             	sub    $0xc,%esp
 8049a99:	68 dc b2 04 08       	push   $0x804b2dc
 8049a9e:	e8 9d f6 ff ff       	call   8049140 <puts@plt>
 8049aa3:	83 c4 10             	add    $0x10,%esp
 8049aa6:	c7 05 84 d1 04 08 00 	movl   $0x0,0x804d184
 8049aad:	00 00 00 
 8049ab0:	eb 1d                	jmp    8049acf <main+0x111>
 8049ab2:	c7 05 88 d1 04 08 01 	movl   $0x1,0x804d188
 8049ab9:	00 00 00 
 8049abc:	eb 11                	jmp    8049acf <main+0x111>
 8049abe:	8b 43 04             	mov    0x4(%ebx),%eax
 8049ac1:	8b 00                	mov    (%eax),%eax
 8049ac3:	83 ec 0c             	sub    $0xc,%esp
 8049ac6:	50                   	push   %eax
 8049ac7:	e8 23 fc ff ff       	call   80496ef <usage>
 8049acc:	83 c4 10             	add    $0x10,%esp
 8049acf:	83 ec 04             	sub    $0x4,%esp
 8049ad2:	68 04 b3 04 08       	push   $0x804b304
 8049ad7:	ff 73 04             	push   0x4(%ebx)
 8049ada:	ff 33                	push   (%ebx)
 8049adc:	e8 bf f6 ff ff       	call   80491a0 <getopt@plt>
 8049ae1:	83 c4 10             	add    $0x10,%esp
 8049ae4:	88 45 e3             	mov    %al,-0x1d(%ebp)
 8049ae7:	80 7d e3 ff          	cmpb   $0xff,-0x1d(%ebp)
 8049aeb:	0f 85 3b ff ff ff    	jne    8049a2c <main+0x6e>
 8049af1:	a1 80 d1 04 08       	mov    0x804d180,%eax
 8049af6:	85 c0                	test   %eax,%eax
 8049af8:	75 27                	jne    8049b21 <main+0x163>
 8049afa:	8b 43 04             	mov    0x4(%ebx),%eax
 8049afd:	8b 00                	mov    (%eax),%eax
 8049aff:	83 ec 08             	sub    $0x8,%esp
 8049b02:	50                   	push   %eax
 8049b03:	68 0c b3 04 08       	push   $0x804b30c
 8049b08:	e8 73 f5 ff ff       	call   8049080 <printf@plt>
 8049b0d:	83 c4 10             	add    $0x10,%esp
 8049b10:	8b 43 04             	mov    0x4(%ebx),%eax
 8049b13:	8b 00                	mov    (%eax),%eax
 8049b15:	83 ec 0c             	sub    $0xc,%esp
 8049b18:	50                   	push   %eax
 8049b19:	e8 d1 fb ff ff       	call   80496ef <usage>
 8049b1e:	83 c4 10             	add    $0x10,%esp
 8049b21:	e8 2c 01 00 00       	call   8049c52 <initialize_bomb>
 8049b26:	a1 80 d1 04 08       	mov    0x804d180,%eax
 8049b2b:	83 ec 08             	sub    $0x8,%esp
 8049b2e:	50                   	push   %eax
 8049b2f:	68 38 b3 04 08       	push   $0x804b338
 8049b34:	e8 47 f5 ff ff       	call   8049080 <printf@plt>
 8049b39:	83 c4 10             	add    $0x10,%esp
 8049b3c:	a1 90 d1 04 08       	mov    0x804d190,%eax
 8049b41:	83 ec 08             	sub    $0x8,%esp
 8049b44:	50                   	push   %eax
 8049b45:	68 44 b3 04 08       	push   $0x804b344
 8049b4a:	e8 31 f5 ff ff       	call   8049080 <printf@plt>
 8049b4f:	83 c4 10             	add    $0x10,%esp
 8049b52:	a1 90 d1 04 08       	mov    0x804d190,%eax
 8049b57:	83 ec 0c             	sub    $0xc,%esp
 8049b5a:	50                   	push   %eax
 8049b5b:	e8 10 f5 ff ff       	call   8049070 <srandom@plt>
 8049b60:	83 c4 10             	add    $0x10,%esp
 8049b63:	e8 d8 f6 ff ff       	call   8049240 <random@plt>
 8049b68:	25 f0 0f 00 00       	and    $0xff0,%eax
 8049b6d:	05 00 01 00 00       	add    $0x100,%eax
 8049b72:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049b75:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049b78:	83 ec 08             	sub    $0x8,%esp
 8049b7b:	6a 04                	push   $0x4
 8049b7d:	50                   	push   %eax
 8049b7e:	e8 fd f6 ff ff       	call   8049280 <calloc@plt>
 8049b83:	83 c4 10             	add    $0x10,%esp
 8049b86:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049b89:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049b8c:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8049b92:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
 8049b99:	eb 28                	jmp    8049bc3 <main+0x205>
 8049b9b:	e8 a0 f6 ff ff       	call   8049240 <random@plt>
 8049ba0:	25 f0 00 00 00       	and    $0xf0,%eax
 8049ba5:	89 c1                	mov    %eax,%ecx
 8049ba7:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049baa:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8049bb1:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049bb4:	01 d0                	add    %edx,%eax
 8049bb6:	ba 80 00 00 00       	mov    $0x80,%edx
 8049bbb:	29 ca                	sub    %ecx,%edx
 8049bbd:	89 10                	mov    %edx,(%eax)
 8049bbf:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
 8049bc3:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049bc6:	3b 45 ec             	cmp    -0x14(%ebp),%eax
 8049bc9:	7c d0                	jl     8049b9b <main+0x1dd>
 8049bcb:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 8049bd2:	eb 29                	jmp    8049bfd <main+0x23f>
 8049bd4:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049bd7:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8049bde:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049be1:	01 d0                	add    %edx,%eax
 8049be3:	8b 10                	mov    (%eax),%edx
 8049be5:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049be8:	01 d0                	add    %edx,%eax
 8049bea:	83 ec 08             	sub    $0x8,%esp
 8049bed:	50                   	push   %eax
 8049bee:	ff 75 e4             	push   -0x1c(%ebp)
 8049bf1:	e8 f3 fc ff ff       	call   80498e9 <launcher>
 8049bf6:	83 c4 10             	add    $0x10,%esp
 8049bf9:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
 8049bfd:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049c00:	3b 45 ec             	cmp    -0x14(%ebp),%eax
 8049c03:	7c cf                	jl     8049bd4 <main+0x216>
 8049c05:	b8 00 00 00 00       	mov    $0x0,%eax
 8049c0a:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8049c0d:	59                   	pop    %ecx
 8049c0e:	5b                   	pop    %ebx
 8049c0f:	5d                   	pop    %ebp
 8049c10:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8049c13:	c3                   	ret    

08049c14 <getbuf>:
 8049c14:	55                   	push   %ebp
 8049c15:	89 e5                	mov    %esp,%ebp
 8049c17:	83 ec 38             	sub    $0x38,%esp
 8049c1a:	83 ec 0c             	sub    $0xc,%esp
 8049c1d:	8d 45 cf             	lea    -0x31(%ebp),%eax
 8049c20:	50                   	push   %eax
 8049c21:	e8 5e fa ff ff       	call   8049684 <Gets>
 8049c26:	83 c4 10             	add    $0x10,%esp
 8049c29:	b8 01 00 00 00       	mov    $0x1,%eax
 8049c2e:	c9                   	leave  
 8049c2f:	c3                   	ret    

08049c30 <getbufn>:
 8049c30:	55                   	push   %ebp
 8049c31:	89 e5                	mov    %esp,%ebp
 8049c33:	81 ec 68 02 00 00    	sub    $0x268,%esp
 8049c39:	83 ec 0c             	sub    $0xc,%esp
 8049c3c:	8d 85 9b fd ff ff    	lea    -0x265(%ebp),%eax
 8049c42:	50                   	push   %eax
 8049c43:	e8 3c fa ff ff       	call   8049684 <Gets>
 8049c48:	83 c4 10             	add    $0x10,%esp
 8049c4b:	b8 01 00 00 00       	mov    $0x1,%eax
 8049c50:	c9                   	leave  
 8049c51:	c3                   	ret    

08049c52 <initialize_bomb>:
 8049c52:	55                   	push   %ebp
 8049c53:	89 e5                	mov    %esp,%ebp
 8049c55:	81 ec 00 10 00 00    	sub    $0x1000,%esp
 8049c5b:	83 0c 24 00          	orl    $0x0,(%esp)
 8049c5f:	81 ec 00 10 00 00    	sub    $0x1000,%esp
 8049c65:	83 0c 24 00          	orl    $0x0,(%esp)
 8049c69:	81 ec 18 04 00 00    	sub    $0x418,%esp
 8049c6f:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8049c75:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049c78:	31 c0                	xor    %eax,%eax
 8049c7a:	c7 85 f0 db ff ff 00 	movl   $0x0,-0x2410(%ebp)
 8049c81:	00 00 00 
 8049c84:	a1 88 d1 04 08       	mov    0x804d188,%eax
 8049c89:	85 c0                	test   %eax,%eax
 8049c8b:	74 0d                	je     8049c9a <initialize_bomb+0x48>
 8049c8d:	83 ec 0c             	sub    $0xc,%esp
 8049c90:	6a ff                	push   $0xffffffff
 8049c92:	e8 a2 0d 00 00       	call   804aa39 <init_timeout>
 8049c97:	83 c4 10             	add    $0x10,%esp
 8049c9a:	a1 84 d1 04 08       	mov    0x804d184,%eax
 8049c9f:	85 c0                	test   %eax,%eax
 8049ca1:	0f 84 27 01 00 00    	je     8049dce <initialize_bomb+0x17c>
 8049ca7:	83 ec 08             	sub    $0x8,%esp
 8049caa:	68 00 04 00 00       	push   $0x400
 8049caf:	8d 85 f4 db ff ff    	lea    -0x240c(%ebp),%eax
 8049cb5:	50                   	push   %eax
 8049cb6:	e8 75 f4 ff ff       	call   8049130 <gethostname@plt>
 8049cbb:	83 c4 10             	add    $0x10,%esp
 8049cbe:	85 c0                	test   %eax,%eax
 8049cc0:	74 1a                	je     8049cdc <initialize_bomb+0x8a>
 8049cc2:	83 ec 0c             	sub    $0xc,%esp
 8049cc5:	68 90 b3 04 08       	push   $0x804b390
 8049cca:	e8 71 f4 ff ff       	call   8049140 <puts@plt>
 8049ccf:	83 c4 10             	add    $0x10,%esp
 8049cd2:	83 ec 0c             	sub    $0xc,%esp
 8049cd5:	6a 08                	push   $0x8
 8049cd7:	e8 74 f4 ff ff       	call   8049150 <exit@plt>
 8049cdc:	c7 85 ec db ff ff 00 	movl   $0x0,-0x2414(%ebp)
 8049ce3:	00 00 00 
 8049ce6:	eb 37                	jmp    8049d1f <initialize_bomb+0xcd>
 8049ce8:	8b 85 ec db ff ff    	mov    -0x2414(%ebp),%eax
 8049cee:	8b 04 85 c0 dd 04 08 	mov    0x804ddc0(,%eax,4),%eax
 8049cf5:	83 ec 08             	sub    $0x8,%esp
 8049cf8:	8d 95 f4 db ff ff    	lea    -0x240c(%ebp),%edx
 8049cfe:	52                   	push   %edx
 8049cff:	50                   	push   %eax
 8049d00:	e8 ab f4 ff ff       	call   80491b0 <strcasecmp@plt>
 8049d05:	83 c4 10             	add    $0x10,%esp
 8049d08:	85 c0                	test   %eax,%eax
 8049d0a:	75 0c                	jne    8049d18 <initialize_bomb+0xc6>
 8049d0c:	c7 85 f0 db ff ff 01 	movl   $0x1,-0x2410(%ebp)
 8049d13:	00 00 00 
 8049d16:	eb 18                	jmp    8049d30 <initialize_bomb+0xde>
 8049d18:	83 85 ec db ff ff 01 	addl   $0x1,-0x2414(%ebp)
 8049d1f:	8b 85 ec db ff ff    	mov    -0x2414(%ebp),%eax
 8049d25:	8b 04 85 c0 dd 04 08 	mov    0x804ddc0(,%eax,4),%eax
 8049d2c:	85 c0                	test   %eax,%eax
 8049d2e:	75 b8                	jne    8049ce8 <initialize_bomb+0x96>
 8049d30:	83 bd f0 db ff ff 00 	cmpl   $0x0,-0x2410(%ebp)
 8049d37:	75 5e                	jne    8049d97 <initialize_bomb+0x145>
 8049d39:	83 ec 08             	sub    $0x8,%esp
 8049d3c:	8d 85 f4 db ff ff    	lea    -0x240c(%ebp),%eax
 8049d42:	50                   	push   %eax
 8049d43:	68 c8 b3 04 08       	push   $0x804b3c8
 8049d48:	e8 33 f3 ff ff       	call   8049080 <printf@plt>
 8049d4d:	83 c4 10             	add    $0x10,%esp
 8049d50:	c7 85 ec db ff ff 00 	movl   $0x0,-0x2414(%ebp)
 8049d57:	00 00 00 
 8049d5a:	eb 20                	jmp    8049d7c <initialize_bomb+0x12a>
 8049d5c:	8b 85 ec db ff ff    	mov    -0x2414(%ebp),%eax
 8049d62:	8b 04 85 c0 dd 04 08 	mov    0x804ddc0(,%eax,4),%eax
 8049d69:	83 ec 0c             	sub    $0xc,%esp
 8049d6c:	50                   	push   %eax
 8049d6d:	e8 ce f3 ff ff       	call   8049140 <puts@plt>
 8049d72:	83 c4 10             	add    $0x10,%esp
 8049d75:	83 85 ec db ff ff 01 	addl   $0x1,-0x2414(%ebp)
 8049d7c:	8b 85 ec db ff ff    	mov    -0x2414(%ebp),%eax
 8049d82:	8b 04 85 c0 dd 04 08 	mov    0x804ddc0(,%eax,4),%eax
 8049d89:	85 c0                	test   %eax,%eax
 8049d8b:	75 cf                	jne    8049d5c <initialize_bomb+0x10a>
 8049d8d:	83 ec 0c             	sub    $0xc,%esp
 8049d90:	6a 08                	push   $0x8
 8049d92:	e8 b9 f3 ff ff       	call   8049150 <exit@plt>
 8049d97:	83 ec 0c             	sub    $0xc,%esp
 8049d9a:	8d 85 f4 df ff ff    	lea    -0x200c(%ebp),%eax
 8049da0:	50                   	push   %eax
 8049da1:	e8 d2 0c 00 00       	call   804aa78 <init_driver>
 8049da6:	83 c4 10             	add    $0x10,%esp
 8049da9:	85 c0                	test   %eax,%eax
 8049dab:	79 21                	jns    8049dce <initialize_bomb+0x17c>
 8049dad:	83 ec 08             	sub    $0x8,%esp
 8049db0:	8d 85 f4 df ff ff    	lea    -0x200c(%ebp),%eax
 8049db6:	50                   	push   %eax
 8049db7:	68 03 b4 04 08       	push   $0x804b403
 8049dbc:	e8 bf f2 ff ff       	call   8049080 <printf@plt>
 8049dc1:	83 c4 10             	add    $0x10,%esp
 8049dc4:	83 ec 0c             	sub    $0xc,%esp
 8049dc7:	6a 08                	push   $0x8
 8049dc9:	e8 82 f3 ff ff       	call   8049150 <exit@plt>
 8049dce:	90                   	nop
 8049dcf:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049dd2:	65 2b 05 14 00 00 00 	sub    %gs:0x14,%eax
 8049dd9:	74 05                	je     8049de0 <initialize_bomb+0x18e>
 8049ddb:	e8 00 f3 ff ff       	call   80490e0 <__stack_chk_fail@plt>
 8049de0:	c9                   	leave  
 8049de1:	c3                   	ret    

08049de2 <validate>:
 8049de2:	55                   	push   %ebp
 8049de3:	89 e5                	mov    %esp,%ebp
 8049de5:	8d 84 24 00 c0 ff ff 	lea    -0x4000(%esp),%eax
 8049dec:	81 ec 00 10 00 00    	sub    $0x1000,%esp
 8049df2:	83 0c 24 00          	orl    $0x0,(%esp)
 8049df6:	39 c4                	cmp    %eax,%esp
 8049df8:	75 f2                	jne    8049dec <validate+0xa>
 8049dfa:	83 ec 18             	sub    $0x18,%esp
 8049dfd:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8049e03:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049e06:	31 c0                	xor    %eax,%eax
 8049e08:	a1 80 d1 04 08       	mov    0x804d180,%eax
 8049e0d:	85 c0                	test   %eax,%eax
 8049e0f:	75 15                	jne    8049e26 <validate+0x44>
 8049e11:	83 ec 0c             	sub    $0xc,%esp
 8049e14:	68 18 b4 04 08       	push   $0x804b418
 8049e19:	e8 22 f3 ff ff       	call   8049140 <puts@plt>
 8049e1e:	83 c4 10             	add    $0x10,%esp
 8049e21:	e9 3c 01 00 00       	jmp    8049f62 <validate+0x180>
 8049e26:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8049e2a:	78 06                	js     8049e32 <validate+0x50>
 8049e2c:	83 7d 08 04          	cmpl   $0x4,0x8(%ebp)
 8049e30:	7e 15                	jle    8049e47 <validate+0x65>
 8049e32:	83 ec 0c             	sub    $0xc,%esp
 8049e35:	68 44 b4 04 08       	push   $0x804b444
 8049e3a:	e8 01 f3 ff ff       	call   8049140 <puts@plt>
 8049e3f:	83 c4 10             	add    $0x10,%esp
 8049e42:	e9 1b 01 00 00       	jmp    8049f62 <validate+0x180>
 8049e47:	c7 05 94 d1 04 08 01 	movl   $0x1,0x804d194
 8049e4e:	00 00 00 
 8049e51:	8b 45 08             	mov    0x8(%ebp),%eax
 8049e54:	8b 04 85 f8 d0 04 08 	mov    0x804d0f8(,%eax,4),%eax
 8049e5b:	8d 50 ff             	lea    -0x1(%eax),%edx
 8049e5e:	8b 45 08             	mov    0x8(%ebp),%eax
 8049e61:	89 14 85 f8 d0 04 08 	mov    %edx,0x804d0f8(,%eax,4)
 8049e68:	8b 45 08             	mov    0x8(%ebp),%eax
 8049e6b:	8b 04 85 f8 d0 04 08 	mov    0x804d0f8(,%eax,4),%eax
 8049e72:	85 c0                	test   %eax,%eax
 8049e74:	7e 15                	jle    8049e8b <validate+0xa9>
 8049e76:	83 ec 0c             	sub    $0xc,%esp
 8049e79:	68 6a b4 04 08       	push   $0x804b46a
 8049e7e:	e8 bd f2 ff ff       	call   8049140 <puts@plt>
 8049e83:	83 c4 10             	add    $0x10,%esp
 8049e86:	e9 d7 00 00 00       	jmp    8049f62 <validate+0x180>
 8049e8b:	83 ec 0c             	sub    $0xc,%esp
 8049e8e:	68 75 b4 04 08       	push   $0x804b475
 8049e93:	e8 a8 f2 ff ff       	call   8049140 <puts@plt>
 8049e98:	83 c4 10             	add    $0x10,%esp
 8049e9b:	a1 84 d1 04 08       	mov    0x804d184,%eax
 8049ea0:	85 c0                	test   %eax,%eax
 8049ea2:	0f 84 aa 00 00 00    	je     8049f52 <validate+0x170>
 8049ea8:	83 ec 0c             	sub    $0xc,%esp
 8049eab:	68 a0 d1 04 08       	push   $0x804d1a0
 8049eb0:	e8 cb f2 ff ff       	call   8049180 <strlen@plt>
 8049eb5:	83 c4 10             	add    $0x10,%esp
 8049eb8:	83 c0 20             	add    $0x20,%eax
 8049ebb:	3d 00 20 00 00       	cmp    $0x2000,%eax
 8049ec0:	76 15                	jbe    8049ed7 <validate+0xf5>
 8049ec2:	83 ec 0c             	sub    $0xc,%esp
 8049ec5:	68 7c b4 04 08       	push   $0x804b47c
 8049eca:	e8 71 f2 ff ff       	call   8049140 <puts@plt>
 8049ecf:	83 c4 10             	add    $0x10,%esp
 8049ed2:	e9 8b 00 00 00       	jmp    8049f62 <validate+0x180>
 8049ed7:	a1 90 d1 04 08       	mov    0x804d190,%eax
 8049edc:	83 ec 0c             	sub    $0xc,%esp
 8049edf:	68 a0 d1 04 08       	push   $0x804d1a0
 8049ee4:	50                   	push   %eax
 8049ee5:	ff 75 08             	push   0x8(%ebp)
 8049ee8:	68 b3 b4 04 08       	push   $0x804b4b3
 8049eed:	8d 85 f4 bf ff ff    	lea    -0x400c(%ebp),%eax
 8049ef3:	50                   	push   %eax
 8049ef4:	e8 17 f3 ff ff       	call   8049210 <sprintf@plt>
 8049ef9:	83 c4 20             	add    $0x20,%esp
 8049efc:	a1 80 d1 04 08       	mov    0x804d180,%eax
 8049f01:	8d 95 f4 df ff ff    	lea    -0x200c(%ebp),%edx
 8049f07:	52                   	push   %edx
 8049f08:	6a 00                	push   $0x0
 8049f0a:	8d 95 f4 bf ff ff    	lea    -0x400c(%ebp),%edx
 8049f10:	52                   	push   %edx
 8049f11:	50                   	push   %eax
 8049f12:	e8 36 0d 00 00       	call   804ac4d <driver_post>
 8049f17:	83 c4 10             	add    $0x10,%esp
 8049f1a:	89 85 f0 bf ff ff    	mov    %eax,-0x4010(%ebp)
 8049f20:	83 bd f0 bf ff ff 00 	cmpl   $0x0,-0x4010(%ebp)
 8049f27:	75 12                	jne    8049f3b <validate+0x159>
 8049f29:	83 ec 0c             	sub    $0xc,%esp
 8049f2c:	68 bc b4 04 08       	push   $0x804b4bc
 8049f31:	e8 0a f2 ff ff       	call   8049140 <puts@plt>
 8049f36:	83 c4 10             	add    $0x10,%esp
 8049f39:	eb 17                	jmp    8049f52 <validate+0x170>
 8049f3b:	83 ec 08             	sub    $0x8,%esp
 8049f3e:	8d 85 f4 df ff ff    	lea    -0x200c(%ebp),%eax
 8049f44:	50                   	push   %eax
 8049f45:	68 ec b4 04 08       	push   $0x804b4ec
 8049f4a:	e8 31 f1 ff ff       	call   8049080 <printf@plt>
 8049f4f:	83 c4 10             	add    $0x10,%esp
 8049f52:	83 ec 0c             	sub    $0xc,%esp
 8049f55:	68 2a b5 04 08       	push   $0x804b52a
 8049f5a:	e8 e1 f1 ff ff       	call   8049140 <puts@plt>
 8049f5f:	83 c4 10             	add    $0x10,%esp
 8049f62:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049f65:	65 2b 05 14 00 00 00 	sub    %gs:0x14,%eax
 8049f6c:	74 05                	je     8049f73 <validate+0x191>
 8049f6e:	e8 6d f1 ff ff       	call   80490e0 <__stack_chk_fail@plt>
 8049f73:	c9                   	leave  
 8049f74:	c3                   	ret    

08049f75 <sigalrm_handler>:
 8049f75:	55                   	push   %ebp
 8049f76:	89 e5                	mov    %esp,%ebp
 8049f78:	83 ec 08             	sub    $0x8,%esp
 8049f7b:	83 ec 08             	sub    $0x8,%esp
 8049f7e:	6a 02                	push   $0x2
 8049f80:	68 34 b5 04 08       	push   $0x804b534
 8049f85:	e8 f6 f0 ff ff       	call   8049080 <printf@plt>
 8049f8a:	83 c4 10             	add    $0x10,%esp
 8049f8d:	83 ec 0c             	sub    $0xc,%esp
 8049f90:	6a 01                	push   $0x1
 8049f92:	e8 b9 f1 ff ff       	call   8049150 <exit@plt>

08049f97 <rio_readinitb>:
 8049f97:	55                   	push   %ebp
 8049f98:	89 e5                	mov    %esp,%ebp
 8049f9a:	8b 45 08             	mov    0x8(%ebp),%eax
 8049f9d:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049fa0:	89 10                	mov    %edx,(%eax)
 8049fa2:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fa5:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 8049fac:	8b 45 08             	mov    0x8(%ebp),%eax
 8049faf:	8d 50 0c             	lea    0xc(%eax),%edx
 8049fb2:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fb5:	89 50 08             	mov    %edx,0x8(%eax)
 8049fb8:	90                   	nop
 8049fb9:	5d                   	pop    %ebp
 8049fba:	c3                   	ret    

08049fbb <rio_read>:
 8049fbb:	55                   	push   %ebp
 8049fbc:	89 e5                	mov    %esp,%ebp
 8049fbe:	83 ec 18             	sub    $0x18,%esp
 8049fc1:	eb 5d                	jmp    804a020 <rio_read+0x65>
 8049fc3:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fc6:	8d 50 0c             	lea    0xc(%eax),%edx
 8049fc9:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fcc:	8b 00                	mov    (%eax),%eax
 8049fce:	83 ec 04             	sub    $0x4,%esp
 8049fd1:	68 00 20 00 00       	push   $0x2000
 8049fd6:	52                   	push   %edx
 8049fd7:	50                   	push   %eax
 8049fd8:	e8 83 f0 ff ff       	call   8049060 <read@plt>
 8049fdd:	83 c4 10             	add    $0x10,%esp
 8049fe0:	8b 55 08             	mov    0x8(%ebp),%edx
 8049fe3:	89 42 04             	mov    %eax,0x4(%edx)
 8049fe6:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fe9:	8b 40 04             	mov    0x4(%eax),%eax
 8049fec:	85 c0                	test   %eax,%eax
 8049fee:	79 13                	jns    804a003 <rio_read+0x48>
 8049ff0:	e8 eb f1 ff ff       	call   80491e0 <__errno_location@plt>
 8049ff5:	8b 00                	mov    (%eax),%eax
 8049ff7:	83 f8 04             	cmp    $0x4,%eax
 8049ffa:	74 24                	je     804a020 <rio_read+0x65>
 8049ffc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a001:	eb 7f                	jmp    804a082 <rio_read+0xc7>
 804a003:	8b 45 08             	mov    0x8(%ebp),%eax
 804a006:	8b 40 04             	mov    0x4(%eax),%eax
 804a009:	85 c0                	test   %eax,%eax
 804a00b:	75 07                	jne    804a014 <rio_read+0x59>
 804a00d:	b8 00 00 00 00       	mov    $0x0,%eax
 804a012:	eb 6e                	jmp    804a082 <rio_read+0xc7>
 804a014:	8b 45 08             	mov    0x8(%ebp),%eax
 804a017:	8d 50 0c             	lea    0xc(%eax),%edx
 804a01a:	8b 45 08             	mov    0x8(%ebp),%eax
 804a01d:	89 50 08             	mov    %edx,0x8(%eax)
 804a020:	8b 45 08             	mov    0x8(%ebp),%eax
 804a023:	8b 40 04             	mov    0x4(%eax),%eax
 804a026:	85 c0                	test   %eax,%eax
 804a028:	7e 99                	jle    8049fc3 <rio_read+0x8>
 804a02a:	8b 45 10             	mov    0x10(%ebp),%eax
 804a02d:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a030:	8b 45 08             	mov    0x8(%ebp),%eax
 804a033:	8b 40 04             	mov    0x4(%eax),%eax
 804a036:	39 45 10             	cmp    %eax,0x10(%ebp)
 804a039:	76 09                	jbe    804a044 <rio_read+0x89>
 804a03b:	8b 45 08             	mov    0x8(%ebp),%eax
 804a03e:	8b 40 04             	mov    0x4(%eax),%eax
 804a041:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a044:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804a047:	8b 45 08             	mov    0x8(%ebp),%eax
 804a04a:	8b 40 08             	mov    0x8(%eax),%eax
 804a04d:	83 ec 04             	sub    $0x4,%esp
 804a050:	52                   	push   %edx
 804a051:	50                   	push   %eax
 804a052:	ff 75 0c             	push   0xc(%ebp)
 804a055:	e8 56 f0 ff ff       	call   80490b0 <memcpy@plt>
 804a05a:	83 c4 10             	add    $0x10,%esp
 804a05d:	8b 45 08             	mov    0x8(%ebp),%eax
 804a060:	8b 50 08             	mov    0x8(%eax),%edx
 804a063:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a066:	01 c2                	add    %eax,%edx
 804a068:	8b 45 08             	mov    0x8(%ebp),%eax
 804a06b:	89 50 08             	mov    %edx,0x8(%eax)
 804a06e:	8b 45 08             	mov    0x8(%ebp),%eax
 804a071:	8b 40 04             	mov    0x4(%eax),%eax
 804a074:	2b 45 f4             	sub    -0xc(%ebp),%eax
 804a077:	89 c2                	mov    %eax,%edx
 804a079:	8b 45 08             	mov    0x8(%ebp),%eax
 804a07c:	89 50 04             	mov    %edx,0x4(%eax)
 804a07f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a082:	c9                   	leave  
 804a083:	c3                   	ret    

0804a084 <rio_readlineb>:
 804a084:	55                   	push   %ebp
 804a085:	89 e5                	mov    %esp,%ebp
 804a087:	83 ec 38             	sub    $0x38,%esp
 804a08a:	8b 45 08             	mov    0x8(%ebp),%eax
 804a08d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804a090:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a093:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804a096:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804a09c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a09f:	31 c0                	xor    %eax,%eax
 804a0a1:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804a0a4:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804a0a7:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
 804a0ae:	eb 54                	jmp    804a104 <rio_readlineb+0x80>
 804a0b0:	83 ec 04             	sub    $0x4,%esp
 804a0b3:	6a 01                	push   $0x1
 804a0b5:	8d 45 e7             	lea    -0x19(%ebp),%eax
 804a0b8:	50                   	push   %eax
 804a0b9:	ff 75 d4             	push   -0x2c(%ebp)
 804a0bc:	e8 fa fe ff ff       	call   8049fbb <rio_read>
 804a0c1:	83 c4 10             	add    $0x10,%esp
 804a0c4:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804a0c7:	83 7d f0 01          	cmpl   $0x1,-0x10(%ebp)
 804a0cb:	75 19                	jne    804a0e6 <rio_readlineb+0x62>
 804a0cd:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804a0d0:	8d 50 01             	lea    0x1(%eax),%edx
 804a0d3:	89 55 ec             	mov    %edx,-0x14(%ebp)
 804a0d6:	0f b6 55 e7          	movzbl -0x19(%ebp),%edx
 804a0da:	88 10                	mov    %dl,(%eax)
 804a0dc:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 804a0e0:	3c 0a                	cmp    $0xa,%al
 804a0e2:	75 1c                	jne    804a100 <rio_readlineb+0x7c>
 804a0e4:	eb 29                	jmp    804a10f <rio_readlineb+0x8b>
 804a0e6:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804a0ea:	75 0d                	jne    804a0f9 <rio_readlineb+0x75>
 804a0ec:	83 7d e8 01          	cmpl   $0x1,-0x18(%ebp)
 804a0f0:	75 1c                	jne    804a10e <rio_readlineb+0x8a>
 804a0f2:	b8 00 00 00 00       	mov    $0x0,%eax
 804a0f7:	eb 1f                	jmp    804a118 <rio_readlineb+0x94>
 804a0f9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a0fe:	eb 18                	jmp    804a118 <rio_readlineb+0x94>
 804a100:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
 804a104:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804a107:	39 45 10             	cmp    %eax,0x10(%ebp)
 804a10a:	77 a4                	ja     804a0b0 <rio_readlineb+0x2c>
 804a10c:	eb 01                	jmp    804a10f <rio_readlineb+0x8b>
 804a10e:	90                   	nop
 804a10f:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804a112:	c6 00 00             	movb   $0x0,(%eax)
 804a115:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804a118:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804a11b:	65 2b 15 14 00 00 00 	sub    %gs:0x14,%edx
 804a122:	74 05                	je     804a129 <rio_readlineb+0xa5>
 804a124:	e8 b7 ef ff ff       	call   80490e0 <__stack_chk_fail@plt>
 804a129:	c9                   	leave  
 804a12a:	c3                   	ret    

0804a12b <rio_writen>:
 804a12b:	55                   	push   %ebp
 804a12c:	89 e5                	mov    %esp,%ebp
 804a12e:	83 ec 18             	sub    $0x18,%esp
 804a131:	8b 45 10             	mov    0x10(%ebp),%eax
 804a134:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804a137:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a13a:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a13d:	eb 45                	jmp    804a184 <rio_writen+0x59>
 804a13f:	83 ec 04             	sub    $0x4,%esp
 804a142:	ff 75 ec             	push   -0x14(%ebp)
 804a145:	ff 75 f4             	push   -0xc(%ebp)
 804a148:	ff 75 08             	push   0x8(%ebp)
 804a14b:	e8 40 f0 ff ff       	call   8049190 <write@plt>
 804a150:	83 c4 10             	add    $0x10,%esp
 804a153:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804a156:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804a15a:	7f 1c                	jg     804a178 <rio_writen+0x4d>
 804a15c:	e8 7f f0 ff ff       	call   80491e0 <__errno_location@plt>
 804a161:	8b 00                	mov    (%eax),%eax
 804a163:	83 f8 04             	cmp    $0x4,%eax
 804a166:	75 09                	jne    804a171 <rio_writen+0x46>
 804a168:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804a16f:	eb 07                	jmp    804a178 <rio_writen+0x4d>
 804a171:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a176:	eb 15                	jmp    804a18d <rio_writen+0x62>
 804a178:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a17b:	29 45 ec             	sub    %eax,-0x14(%ebp)
 804a17e:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a181:	01 45 f4             	add    %eax,-0xc(%ebp)
 804a184:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 804a188:	75 b5                	jne    804a13f <rio_writen+0x14>
 804a18a:	8b 45 10             	mov    0x10(%ebp),%eax
 804a18d:	c9                   	leave  
 804a18e:	c3                   	ret    

0804a18f <urlencode>:
 804a18f:	55                   	push   %ebp
 804a190:	89 e5                	mov    %esp,%ebp
 804a192:	83 ec 28             	sub    $0x28,%esp
 804a195:	8b 45 08             	mov    0x8(%ebp),%eax
 804a198:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804a19b:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a19e:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804a1a1:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804a1a7:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a1aa:	31 c0                	xor    %eax,%eax
 804a1ac:	83 ec 0c             	sub    $0xc,%esp
 804a1af:	ff 75 e4             	push   -0x1c(%ebp)
 804a1b2:	e8 c9 ef ff ff       	call   8049180 <strlen@plt>
 804a1b7:	83 c4 10             	add    $0x10,%esp
 804a1ba:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804a1bd:	e9 0e 01 00 00       	jmp    804a2d0 <urlencode+0x141>
 804a1c2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a1c5:	0f b6 00             	movzbl (%eax),%eax
 804a1c8:	3c 2a                	cmp    $0x2a,%al
 804a1ca:	74 5a                	je     804a226 <urlencode+0x97>
 804a1cc:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a1cf:	0f b6 00             	movzbl (%eax),%eax
 804a1d2:	3c 2d                	cmp    $0x2d,%al
 804a1d4:	74 50                	je     804a226 <urlencode+0x97>
 804a1d6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a1d9:	0f b6 00             	movzbl (%eax),%eax
 804a1dc:	3c 2e                	cmp    $0x2e,%al
 804a1de:	74 46                	je     804a226 <urlencode+0x97>
 804a1e0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a1e3:	0f b6 00             	movzbl (%eax),%eax
 804a1e6:	3c 5f                	cmp    $0x5f,%al
 804a1e8:	74 3c                	je     804a226 <urlencode+0x97>
 804a1ea:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a1ed:	0f b6 00             	movzbl (%eax),%eax
 804a1f0:	3c 2f                	cmp    $0x2f,%al
 804a1f2:	76 0a                	jbe    804a1fe <urlencode+0x6f>
 804a1f4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a1f7:	0f b6 00             	movzbl (%eax),%eax
 804a1fa:	3c 39                	cmp    $0x39,%al
 804a1fc:	76 28                	jbe    804a226 <urlencode+0x97>
 804a1fe:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a201:	0f b6 00             	movzbl (%eax),%eax
 804a204:	3c 40                	cmp    $0x40,%al
 804a206:	76 0a                	jbe    804a212 <urlencode+0x83>
 804a208:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a20b:	0f b6 00             	movzbl (%eax),%eax
 804a20e:	3c 5a                	cmp    $0x5a,%al
 804a210:	76 14                	jbe    804a226 <urlencode+0x97>
 804a212:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a215:	0f b6 00             	movzbl (%eax),%eax
 804a218:	3c 60                	cmp    $0x60,%al
 804a21a:	76 20                	jbe    804a23c <urlencode+0xad>
 804a21c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a21f:	0f b6 00             	movzbl (%eax),%eax
 804a222:	3c 7a                	cmp    $0x7a,%al
 804a224:	77 16                	ja     804a23c <urlencode+0xad>
 804a226:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804a229:	8d 50 01             	lea    0x1(%eax),%edx
 804a22c:	89 55 e0             	mov    %edx,-0x20(%ebp)
 804a22f:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 804a232:	0f b6 12             	movzbl (%edx),%edx
 804a235:	88 10                	mov    %dl,(%eax)
 804a237:	e9 90 00 00 00       	jmp    804a2cc <urlencode+0x13d>
 804a23c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a23f:	0f b6 00             	movzbl (%eax),%eax
 804a242:	3c 20                	cmp    $0x20,%al
 804a244:	75 0e                	jne    804a254 <urlencode+0xc5>
 804a246:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804a249:	8d 50 01             	lea    0x1(%eax),%edx
 804a24c:	89 55 e0             	mov    %edx,-0x20(%ebp)
 804a24f:	c6 00 2b             	movb   $0x2b,(%eax)
 804a252:	eb 78                	jmp    804a2cc <urlencode+0x13d>
 804a254:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a257:	0f b6 00             	movzbl (%eax),%eax
 804a25a:	3c 1f                	cmp    $0x1f,%al
 804a25c:	76 0a                	jbe    804a268 <urlencode+0xd9>
 804a25e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a261:	0f b6 00             	movzbl (%eax),%eax
 804a264:	84 c0                	test   %al,%al
 804a266:	79 0a                	jns    804a272 <urlencode+0xe3>
 804a268:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a26b:	0f b6 00             	movzbl (%eax),%eax
 804a26e:	3c 09                	cmp    $0x9,%al
 804a270:	75 53                	jne    804a2c5 <urlencode+0x136>
 804a272:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a275:	0f b6 00             	movzbl (%eax),%eax
 804a278:	0f b6 c0             	movzbl %al,%eax
 804a27b:	83 ec 04             	sub    $0x4,%esp
 804a27e:	50                   	push   %eax
 804a27f:	68 58 b5 04 08       	push   $0x804b558
 804a284:	8d 45 ec             	lea    -0x14(%ebp),%eax
 804a287:	50                   	push   %eax
 804a288:	e8 83 ef ff ff       	call   8049210 <sprintf@plt>
 804a28d:	83 c4 10             	add    $0x10,%esp
 804a290:	0f b6 4d ec          	movzbl -0x14(%ebp),%ecx
 804a294:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804a297:	8d 50 01             	lea    0x1(%eax),%edx
 804a29a:	89 55 e0             	mov    %edx,-0x20(%ebp)
 804a29d:	89 ca                	mov    %ecx,%edx
 804a29f:	88 10                	mov    %dl,(%eax)
 804a2a1:	0f b6 4d ed          	movzbl -0x13(%ebp),%ecx
 804a2a5:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804a2a8:	8d 50 01             	lea    0x1(%eax),%edx
 804a2ab:	89 55 e0             	mov    %edx,-0x20(%ebp)
 804a2ae:	89 ca                	mov    %ecx,%edx
 804a2b0:	88 10                	mov    %dl,(%eax)
 804a2b2:	0f b6 4d ee          	movzbl -0x12(%ebp),%ecx
 804a2b6:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804a2b9:	8d 50 01             	lea    0x1(%eax),%edx
 804a2bc:	89 55 e0             	mov    %edx,-0x20(%ebp)
 804a2bf:	89 ca                	mov    %ecx,%edx
 804a2c1:	88 10                	mov    %dl,(%eax)
 804a2c3:	eb 07                	jmp    804a2cc <urlencode+0x13d>
 804a2c5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a2ca:	eb 1a                	jmp    804a2e6 <urlencode+0x157>
 804a2cc:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
 804a2d0:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804a2d3:	8d 50 ff             	lea    -0x1(%eax),%edx
 804a2d6:	89 55 e8             	mov    %edx,-0x18(%ebp)
 804a2d9:	85 c0                	test   %eax,%eax
 804a2db:	0f 85 e1 fe ff ff    	jne    804a1c2 <urlencode+0x33>
 804a2e1:	b8 00 00 00 00       	mov    $0x0,%eax
 804a2e6:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804a2e9:	65 2b 15 14 00 00 00 	sub    %gs:0x14,%edx
 804a2f0:	74 05                	je     804a2f7 <urlencode+0x168>
 804a2f2:	e8 e9 ed ff ff       	call   80490e0 <__stack_chk_fail@plt>
 804a2f7:	c9                   	leave  
 804a2f8:	c3                   	ret    

0804a2f9 <submitr>:
 804a2f9:	55                   	push   %ebp
 804a2fa:	89 e5                	mov    %esp,%ebp
 804a2fc:	57                   	push   %edi
 804a2fd:	56                   	push   %esi
 804a2fe:	53                   	push   %ebx
 804a2ff:	8d 84 24 00 60 ff ff 	lea    -0xa000(%esp),%eax
 804a306:	81 ec 00 10 00 00    	sub    $0x1000,%esp
 804a30c:	83 0c 24 00          	orl    $0x0,(%esp)
 804a310:	39 c4                	cmp    %eax,%esp
 804a312:	75 f2                	jne    804a306 <submitr+0xd>
 804a314:	83 ec 6c             	sub    $0x6c,%esp
 804a317:	8b 45 08             	mov    0x8(%ebp),%eax
 804a31a:	89 85 a4 5f ff ff    	mov    %eax,-0xa05c(%ebp)
 804a320:	8b 45 10             	mov    0x10(%ebp),%eax
 804a323:	89 85 a0 5f ff ff    	mov    %eax,-0xa060(%ebp)
 804a329:	8b 45 14             	mov    0x14(%ebp),%eax
 804a32c:	89 85 9c 5f ff ff    	mov    %eax,-0xa064(%ebp)
 804a332:	8b 45 18             	mov    0x18(%ebp),%eax
 804a335:	89 85 98 5f ff ff    	mov    %eax,-0xa068(%ebp)
 804a33b:	8b 45 1c             	mov    0x1c(%ebp),%eax
 804a33e:	89 85 94 5f ff ff    	mov    %eax,-0xa06c(%ebp)
 804a344:	8b 45 20             	mov    0x20(%ebp),%eax
 804a347:	89 85 90 5f ff ff    	mov    %eax,-0xa070(%ebp)
 804a34d:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804a353:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804a356:	31 c0                	xor    %eax,%eax
 804a358:	c7 85 b4 5f ff ff 00 	movl   $0x0,-0xa04c(%ebp)
 804a35f:	00 00 00 
 804a362:	83 ec 04             	sub    $0x4,%esp
 804a365:	6a 00                	push   $0x0
 804a367:	6a 01                	push   $0x1
 804a369:	6a 02                	push   $0x2
 804a36b:	e8 b0 ee ff ff       	call   8049220 <socket@plt>
 804a370:	83 c4 10             	add    $0x10,%esp
 804a373:	89 85 b8 5f ff ff    	mov    %eax,-0xa048(%ebp)
 804a379:	83 bd b8 5f ff ff 00 	cmpl   $0x0,-0xa048(%ebp)
 804a380:	79 54                	jns    804a3d6 <submitr+0xdd>
 804a382:	8b 85 90 5f ff ff    	mov    -0xa070(%ebp),%eax
 804a388:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804a38e:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804a395:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804a39c:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804a3a3:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804a3aa:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804a3b1:	c7 40 18 63 72 65 61 	movl   $0x61657263,0x18(%eax)
 804a3b8:	c7 40 1c 74 65 20 73 	movl   $0x73206574,0x1c(%eax)
 804a3bf:	c7 40 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%eax)
 804a3c6:	66 c7 40 24 74 00    	movw   $0x74,0x24(%eax)
 804a3cc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a3d1:	e9 4a 06 00 00       	jmp    804aa20 <submitr+0x727>
 804a3d6:	83 ec 0c             	sub    $0xc,%esp
 804a3d9:	ff b5 a4 5f ff ff    	push   -0xa05c(%ebp)
 804a3df:	e8 6c ee ff ff       	call   8049250 <gethostbyname@plt>
 804a3e4:	83 c4 10             	add    $0x10,%esp
 804a3e7:	89 85 bc 5f ff ff    	mov    %eax,-0xa044(%ebp)
 804a3ed:	83 bd bc 5f ff ff 00 	cmpl   $0x0,-0xa044(%ebp)
 804a3f4:	75 37                	jne    804a42d <submitr+0x134>
 804a3f6:	83 ec 04             	sub    $0x4,%esp
 804a3f9:	ff b5 a4 5f ff ff    	push   -0xa05c(%ebp)
 804a3ff:	68 60 b5 04 08       	push   $0x804b560
 804a404:	ff b5 90 5f ff ff    	push   -0xa070(%ebp)
 804a40a:	e8 01 ee ff ff       	call   8049210 <sprintf@plt>
 804a40f:	83 c4 10             	add    $0x10,%esp
 804a412:	83 ec 0c             	sub    $0xc,%esp
 804a415:	ff b5 b8 5f ff ff    	push   -0xa048(%ebp)
 804a41b:	e8 50 ee ff ff       	call   8049270 <close@plt>
 804a420:	83 c4 10             	add    $0x10,%esp
 804a423:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a428:	e9 f3 05 00 00       	jmp    804aa20 <submitr+0x727>
 804a42d:	8d 85 c8 5f ff ff    	lea    -0xa038(%ebp),%eax
 804a433:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804a439:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804a440:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 804a447:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
 804a44e:	66 c7 85 c8 5f ff ff 	movw   $0x2,-0xa038(%ebp)
 804a455:	02 00 
 804a457:	8b 85 bc 5f ff ff    	mov    -0xa044(%ebp),%eax
 804a45d:	8b 40 0c             	mov    0xc(%eax),%eax
 804a460:	89 c2                	mov    %eax,%edx
 804a462:	8b 85 bc 5f ff ff    	mov    -0xa044(%ebp),%eax
 804a468:	8b 40 10             	mov    0x10(%eax),%eax
 804a46b:	8b 00                	mov    (%eax),%eax
 804a46d:	83 ec 04             	sub    $0x4,%esp
 804a470:	52                   	push   %edx
 804a471:	50                   	push   %eax
 804a472:	8d 85 c8 5f ff ff    	lea    -0xa038(%ebp),%eax
 804a478:	83 c0 04             	add    $0x4,%eax
 804a47b:	50                   	push   %eax
 804a47c:	e8 0f ec ff ff       	call   8049090 <memmove@plt>
 804a481:	83 c4 10             	add    $0x10,%esp
 804a484:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a487:	0f b7 c0             	movzwl %ax,%eax
 804a48a:	83 ec 0c             	sub    $0xc,%esp
 804a48d:	50                   	push   %eax
 804a48e:	e8 5d ec ff ff       	call   80490f0 <htons@plt>
 804a493:	83 c4 10             	add    $0x10,%esp
 804a496:	66 89 85 ca 5f ff ff 	mov    %ax,-0xa036(%ebp)
 804a49d:	83 ec 04             	sub    $0x4,%esp
 804a4a0:	6a 10                	push   $0x10
 804a4a2:	8d 85 c8 5f ff ff    	lea    -0xa038(%ebp),%eax
 804a4a8:	50                   	push   %eax
 804a4a9:	ff b5 b8 5f ff ff    	push   -0xa048(%ebp)
 804a4af:	e8 ac ed ff ff       	call   8049260 <connect@plt>
 804a4b4:	83 c4 10             	add    $0x10,%esp
 804a4b7:	85 c0                	test   %eax,%eax
 804a4b9:	79 37                	jns    804a4f2 <submitr+0x1f9>
 804a4bb:	83 ec 04             	sub    $0x4,%esp
 804a4be:	ff b5 a4 5f ff ff    	push   -0xa05c(%ebp)
 804a4c4:	68 8c b5 04 08       	push   $0x804b58c
 804a4c9:	ff b5 90 5f ff ff    	push   -0xa070(%ebp)
 804a4cf:	e8 3c ed ff ff       	call   8049210 <sprintf@plt>
 804a4d4:	83 c4 10             	add    $0x10,%esp
 804a4d7:	83 ec 0c             	sub    $0xc,%esp
 804a4da:	ff b5 b8 5f ff ff    	push   -0xa048(%ebp)
 804a4e0:	e8 8b ed ff ff       	call   8049270 <close@plt>
 804a4e5:	83 c4 10             	add    $0x10,%esp
 804a4e8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a4ed:	e9 2e 05 00 00       	jmp    804aa20 <submitr+0x727>
 804a4f2:	83 ec 0c             	sub    $0xc,%esp
 804a4f5:	ff b5 94 5f ff ff    	push   -0xa06c(%ebp)
 804a4fb:	e8 80 ec ff ff       	call   8049180 <strlen@plt>
 804a500:	83 c4 10             	add    $0x10,%esp
 804a503:	89 85 c0 5f ff ff    	mov    %eax,-0xa040(%ebp)
 804a509:	83 ec 0c             	sub    $0xc,%esp
 804a50c:	ff b5 a0 5f ff ff    	push   -0xa060(%ebp)
 804a512:	e8 69 ec ff ff       	call   8049180 <strlen@plt>
 804a517:	83 c4 10             	add    $0x10,%esp
 804a51a:	89 c3                	mov    %eax,%ebx
 804a51c:	83 ec 0c             	sub    $0xc,%esp
 804a51f:	ff b5 9c 5f ff ff    	push   -0xa064(%ebp)
 804a525:	e8 56 ec ff ff       	call   8049180 <strlen@plt>
 804a52a:	83 c4 10             	add    $0x10,%esp
 804a52d:	01 c3                	add    %eax,%ebx
 804a52f:	83 ec 0c             	sub    $0xc,%esp
 804a532:	ff b5 98 5f ff ff    	push   -0xa068(%ebp)
 804a538:	e8 43 ec ff ff       	call   8049180 <strlen@plt>
 804a53d:	83 c4 10             	add    $0x10,%esp
 804a540:	8d 0c 03             	lea    (%ebx,%eax,1),%ecx
 804a543:	8b 95 c0 5f ff ff    	mov    -0xa040(%ebp),%edx
 804a549:	89 d0                	mov    %edx,%eax
 804a54b:	01 c0                	add    %eax,%eax
 804a54d:	01 d0                	add    %edx,%eax
 804a54f:	01 c8                	add    %ecx,%eax
 804a551:	83 e8 80             	sub    $0xffffff80,%eax
 804a554:	89 85 c4 5f ff ff    	mov    %eax,-0xa03c(%ebp)
 804a55a:	81 bd c4 5f ff ff 00 	cmpl   $0x2000,-0xa03c(%ebp)
 804a561:	20 00 00 
 804a564:	0f 86 82 00 00 00    	jbe    804a5ec <submitr+0x2f3>
 804a56a:	8b 85 90 5f ff ff    	mov    -0xa070(%ebp),%eax
 804a570:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804a576:	c7 40 04 72 3a 20 52 	movl   $0x52203a72,0x4(%eax)
 804a57d:	c7 40 08 65 73 75 6c 	movl   $0x6c757365,0x8(%eax)
 804a584:	c7 40 0c 74 20 73 74 	movl   $0x74732074,0xc(%eax)
 804a58b:	c7 40 10 72 69 6e 67 	movl   $0x676e6972,0x10(%eax)
 804a592:	c7 40 14 20 74 6f 6f 	movl   $0x6f6f7420,0x14(%eax)
 804a599:	c7 40 18 20 6c 61 72 	movl   $0x72616c20,0x18(%eax)
 804a5a0:	c7 40 1c 67 65 2e 20 	movl   $0x202e6567,0x1c(%eax)
 804a5a7:	c7 40 20 49 6e 63 72 	movl   $0x72636e49,0x20(%eax)
 804a5ae:	c7 40 24 65 61 73 65 	movl   $0x65736165,0x24(%eax)
 804a5b5:	c7 40 28 20 53 55 42 	movl   $0x42555320,0x28(%eax)
 804a5bc:	c7 40 2c 4d 49 54 52 	movl   $0x5254494d,0x2c(%eax)
 804a5c3:	c7 40 30 5f 4d 41 58 	movl   $0x58414d5f,0x30(%eax)
 804a5ca:	c7 40 34 42 55 46 00 	movl   $0x465542,0x34(%eax)
 804a5d1:	83 ec 0c             	sub    $0xc,%esp
 804a5d4:	ff b5 b8 5f ff ff    	push   -0xa048(%ebp)
 804a5da:	e8 91 ec ff ff       	call   8049270 <close@plt>
 804a5df:	83 c4 10             	add    $0x10,%esp
 804a5e2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a5e7:	e9 34 04 00 00       	jmp    804aa20 <submitr+0x727>
 804a5ec:	8d 85 e4 9f ff ff    	lea    -0x601c(%ebp),%eax
 804a5f2:	89 c3                	mov    %eax,%ebx
 804a5f4:	b8 00 00 00 00       	mov    $0x0,%eax
 804a5f9:	ba 00 08 00 00       	mov    $0x800,%edx
 804a5fe:	89 df                	mov    %ebx,%edi
 804a600:	89 d1                	mov    %edx,%ecx
 804a602:	f3 ab                	rep stos %eax,%es:(%edi)
 804a604:	83 ec 08             	sub    $0x8,%esp
 804a607:	8d 85 e4 9f ff ff    	lea    -0x601c(%ebp),%eax
 804a60d:	50                   	push   %eax
 804a60e:	ff b5 94 5f ff ff    	push   -0xa06c(%ebp)
 804a614:	e8 76 fb ff ff       	call   804a18f <urlencode>
 804a619:	83 c4 10             	add    $0x10,%esp
 804a61c:	85 c0                	test   %eax,%eax
 804a61e:	79 53                	jns    804a673 <submitr+0x37a>
 804a620:	8b 85 90 5f ff ff    	mov    -0xa070(%ebp),%eax
 804a626:	89 c1                	mov    %eax,%ecx
 804a628:	b8 b4 b5 04 08       	mov    $0x804b5b4,%eax
 804a62d:	ba 43 00 00 00       	mov    $0x43,%edx
 804a632:	8b 18                	mov    (%eax),%ebx
 804a634:	89 19                	mov    %ebx,(%ecx)
 804a636:	8b 5c 10 fc          	mov    -0x4(%eax,%edx,1),%ebx
 804a63a:	89 5c 11 fc          	mov    %ebx,-0x4(%ecx,%edx,1)
 804a63e:	8d 59 04             	lea    0x4(%ecx),%ebx
 804a641:	83 e3 fc             	and    $0xfffffffc,%ebx
 804a644:	29 d9                	sub    %ebx,%ecx
 804a646:	29 c8                	sub    %ecx,%eax
 804a648:	01 ca                	add    %ecx,%edx
 804a64a:	83 e2 fc             	and    $0xfffffffc,%edx
 804a64d:	c1 ea 02             	shr    $0x2,%edx
 804a650:	89 df                	mov    %ebx,%edi
 804a652:	89 c6                	mov    %eax,%esi
 804a654:	89 d1                	mov    %edx,%ecx
 804a656:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 804a658:	83 ec 0c             	sub    $0xc,%esp
 804a65b:	ff b5 b8 5f ff ff    	push   -0xa048(%ebp)
 804a661:	e8 0a ec ff ff       	call   8049270 <close@plt>
 804a666:	83 c4 10             	add    $0x10,%esp
 804a669:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a66e:	e9 ad 03 00 00       	jmp    804aa20 <submitr+0x727>
 804a673:	83 ec 08             	sub    $0x8,%esp
 804a676:	8d 85 e4 9f ff ff    	lea    -0x601c(%ebp),%eax
 804a67c:	50                   	push   %eax
 804a67d:	ff b5 98 5f ff ff    	push   -0xa068(%ebp)
 804a683:	ff b5 9c 5f ff ff    	push   -0xa064(%ebp)
 804a689:	ff b5 a0 5f ff ff    	push   -0xa060(%ebp)
 804a68f:	68 f8 b5 04 08       	push   $0x804b5f8
 804a694:	8d 85 e4 7f ff ff    	lea    -0x801c(%ebp),%eax
 804a69a:	50                   	push   %eax
 804a69b:	e8 70 eb ff ff       	call   8049210 <sprintf@plt>
 804a6a0:	83 c4 20             	add    $0x20,%esp
 804a6a3:	83 ec 0c             	sub    $0xc,%esp
 804a6a6:	8d 85 e4 7f ff ff    	lea    -0x801c(%ebp),%eax
 804a6ac:	50                   	push   %eax
 804a6ad:	e8 ce ea ff ff       	call   8049180 <strlen@plt>
 804a6b2:	83 c4 10             	add    $0x10,%esp
 804a6b5:	83 ec 04             	sub    $0x4,%esp
 804a6b8:	50                   	push   %eax
 804a6b9:	8d 85 e4 7f ff ff    	lea    -0x801c(%ebp),%eax
 804a6bf:	50                   	push   %eax
 804a6c0:	ff b5 b8 5f ff ff    	push   -0xa048(%ebp)
 804a6c6:	e8 60 fa ff ff       	call   804a12b <rio_writen>
 804a6cb:	83 c4 10             	add    $0x10,%esp
 804a6ce:	85 c0                	test   %eax,%eax
 804a6d0:	79 6d                	jns    804a73f <submitr+0x446>
 804a6d2:	8b 85 90 5f ff ff    	mov    -0xa070(%ebp),%eax
 804a6d8:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804a6de:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804a6e5:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804a6ec:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804a6f3:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804a6fa:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804a701:	c7 40 18 77 72 69 74 	movl   $0x74697277,0x18(%eax)
 804a708:	c7 40 1c 65 20 74 6f 	movl   $0x6f742065,0x1c(%eax)
 804a70f:	c7 40 20 20 74 68 65 	movl   $0x65687420,0x20(%eax)
 804a716:	c7 40 24 20 73 65 72 	movl   $0x72657320,0x24(%eax)
 804a71d:	c7 40 28 76 65 72 00 	movl   $0x726576,0x28(%eax)
 804a724:	83 ec 0c             	sub    $0xc,%esp
 804a727:	ff b5 b8 5f ff ff    	push   -0xa048(%ebp)
 804a72d:	e8 3e eb ff ff       	call   8049270 <close@plt>
 804a732:	83 c4 10             	add    $0x10,%esp
 804a735:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a73a:	e9 e1 02 00 00       	jmp    804aa20 <submitr+0x727>
 804a73f:	83 ec 08             	sub    $0x8,%esp
 804a742:	ff b5 b8 5f ff ff    	push   -0xa048(%ebp)
 804a748:	8d 85 d8 5f ff ff    	lea    -0xa028(%ebp),%eax
 804a74e:	50                   	push   %eax
 804a74f:	e8 43 f8 ff ff       	call   8049f97 <rio_readinitb>
 804a754:	83 c4 10             	add    $0x10,%esp
 804a757:	83 ec 04             	sub    $0x4,%esp
 804a75a:	68 00 20 00 00       	push   $0x2000
 804a75f:	8d 85 e4 7f ff ff    	lea    -0x801c(%ebp),%eax
 804a765:	50                   	push   %eax
 804a766:	8d 85 d8 5f ff ff    	lea    -0xa028(%ebp),%eax
 804a76c:	50                   	push   %eax
 804a76d:	e8 12 f9 ff ff       	call   804a084 <rio_readlineb>
 804a772:	83 c4 10             	add    $0x10,%esp
 804a775:	85 c0                	test   %eax,%eax
 804a777:	0f 8f 81 00 00 00    	jg     804a7fe <submitr+0x505>
 804a77d:	8b 85 90 5f ff ff    	mov    -0xa070(%ebp),%eax
 804a783:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804a789:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804a790:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804a797:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804a79e:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804a7a5:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804a7ac:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 804a7b3:	c7 40 1c 20 66 69 72 	movl   $0x72696620,0x1c(%eax)
 804a7ba:	c7 40 20 73 74 20 68 	movl   $0x68207473,0x20(%eax)
 804a7c1:	c7 40 24 65 61 64 65 	movl   $0x65646165,0x24(%eax)
 804a7c8:	c7 40 28 72 20 66 72 	movl   $0x72662072,0x28(%eax)
 804a7cf:	c7 40 2c 6f 6d 20 73 	movl   $0x73206d6f,0x2c(%eax)
 804a7d6:	c7 40 30 65 72 76 65 	movl   $0x65767265,0x30(%eax)
 804a7dd:	66 c7 40 34 72 00    	movw   $0x72,0x34(%eax)
 804a7e3:	83 ec 0c             	sub    $0xc,%esp
 804a7e6:	ff b5 b8 5f ff ff    	push   -0xa048(%ebp)
 804a7ec:	e8 7f ea ff ff       	call   8049270 <close@plt>
 804a7f1:	83 c4 10             	add    $0x10,%esp
 804a7f4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a7f9:	e9 22 02 00 00       	jmp    804aa20 <submitr+0x727>
 804a7fe:	83 ec 0c             	sub    $0xc,%esp
 804a801:	8d 85 e4 df ff ff    	lea    -0x201c(%ebp),%eax
 804a807:	50                   	push   %eax
 804a808:	8d 85 b4 5f ff ff    	lea    -0xa04c(%ebp),%eax
 804a80e:	50                   	push   %eax
 804a80f:	8d 85 e4 bf ff ff    	lea    -0x401c(%ebp),%eax
 804a815:	50                   	push   %eax
 804a816:	68 42 b6 04 08       	push   $0x804b642
 804a81b:	8d 85 e4 7f ff ff    	lea    -0x801c(%ebp),%eax
 804a821:	50                   	push   %eax
 804a822:	e8 99 e9 ff ff       	call   80491c0 <__isoc99_sscanf@plt>
 804a827:	83 c4 20             	add    $0x20,%esp
 804a82a:	8b 85 b4 5f ff ff    	mov    -0xa04c(%ebp),%eax
 804a830:	3d c8 00 00 00       	cmp    $0xc8,%eax
 804a835:	0f 84 d6 00 00 00    	je     804a911 <submitr+0x618>
 804a83b:	8b 85 b4 5f ff ff    	mov    -0xa04c(%ebp),%eax
 804a841:	8d 95 e4 df ff ff    	lea    -0x201c(%ebp),%edx
 804a847:	52                   	push   %edx
 804a848:	50                   	push   %eax
 804a849:	68 54 b6 04 08       	push   $0x804b654
 804a84e:	ff b5 90 5f ff ff    	push   -0xa070(%ebp)
 804a854:	e8 b7 e9 ff ff       	call   8049210 <sprintf@plt>
 804a859:	83 c4 10             	add    $0x10,%esp
 804a85c:	83 ec 0c             	sub    $0xc,%esp
 804a85f:	ff b5 b8 5f ff ff    	push   -0xa048(%ebp)
 804a865:	e8 06 ea ff ff       	call   8049270 <close@plt>
 804a86a:	83 c4 10             	add    $0x10,%esp
 804a86d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a872:	e9 a9 01 00 00       	jmp    804aa20 <submitr+0x727>
 804a877:	83 ec 04             	sub    $0x4,%esp
 804a87a:	68 00 20 00 00       	push   $0x2000
 804a87f:	8d 85 e4 7f ff ff    	lea    -0x801c(%ebp),%eax
 804a885:	50                   	push   %eax
 804a886:	8d 85 d8 5f ff ff    	lea    -0xa028(%ebp),%eax
 804a88c:	50                   	push   %eax
 804a88d:	e8 f2 f7 ff ff       	call   804a084 <rio_readlineb>
 804a892:	83 c4 10             	add    $0x10,%esp
 804a895:	85 c0                	test   %eax,%eax
 804a897:	7f 78                	jg     804a911 <submitr+0x618>
 804a899:	8b 85 90 5f ff ff    	mov    -0xa070(%ebp),%eax
 804a89f:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804a8a5:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804a8ac:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804a8b3:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804a8ba:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804a8c1:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804a8c8:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 804a8cf:	c7 40 1c 20 68 65 61 	movl   $0x61656820,0x1c(%eax)
 804a8d6:	c7 40 20 64 65 72 73 	movl   $0x73726564,0x20(%eax)
 804a8dd:	c7 40 24 20 66 72 6f 	movl   $0x6f726620,0x24(%eax)
 804a8e4:	c7 40 28 6d 20 73 65 	movl   $0x6573206d,0x28(%eax)
 804a8eb:	c7 40 2c 72 76 65 72 	movl   $0x72657672,0x2c(%eax)
 804a8f2:	c6 40 30 00          	movb   $0x0,0x30(%eax)
 804a8f6:	83 ec 0c             	sub    $0xc,%esp
 804a8f9:	ff b5 b8 5f ff ff    	push   -0xa048(%ebp)
 804a8ff:	e8 6c e9 ff ff       	call   8049270 <close@plt>
 804a904:	83 c4 10             	add    $0x10,%esp
 804a907:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a90c:	e9 0f 01 00 00       	jmp    804aa20 <submitr+0x727>
 804a911:	83 ec 08             	sub    $0x8,%esp
 804a914:	68 81 b6 04 08       	push   $0x804b681
 804a919:	8d 85 e4 7f ff ff    	lea    -0x801c(%ebp),%eax
 804a91f:	50                   	push   %eax
 804a920:	e8 1b e7 ff ff       	call   8049040 <strcmp@plt>
 804a925:	83 c4 10             	add    $0x10,%esp
 804a928:	85 c0                	test   %eax,%eax
 804a92a:	0f 85 47 ff ff ff    	jne    804a877 <submitr+0x57e>
 804a930:	83 ec 04             	sub    $0x4,%esp
 804a933:	68 00 20 00 00       	push   $0x2000
 804a938:	8d 85 e4 7f ff ff    	lea    -0x801c(%ebp),%eax
 804a93e:	50                   	push   %eax
 804a93f:	8d 85 d8 5f ff ff    	lea    -0xa028(%ebp),%eax
 804a945:	50                   	push   %eax
 804a946:	e8 39 f7 ff ff       	call   804a084 <rio_readlineb>
 804a94b:	83 c4 10             	add    $0x10,%esp
 804a94e:	85 c0                	test   %eax,%eax
 804a950:	7f 7f                	jg     804a9d1 <submitr+0x6d8>
 804a952:	8b 85 90 5f ff ff    	mov    -0xa070(%ebp),%eax
 804a958:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804a95e:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804a965:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804a96c:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804a973:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804a97a:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804a981:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 804a988:	c7 40 1c 20 73 74 61 	movl   $0x61747320,0x1c(%eax)
 804a98f:	c7 40 20 74 75 73 20 	movl   $0x20737574,0x20(%eax)
 804a996:	c7 40 24 6d 65 73 73 	movl   $0x7373656d,0x24(%eax)
 804a99d:	c7 40 28 61 67 65 20 	movl   $0x20656761,0x28(%eax)
 804a9a4:	c7 40 2c 66 72 6f 6d 	movl   $0x6d6f7266,0x2c(%eax)
 804a9ab:	c7 40 30 20 73 65 72 	movl   $0x72657320,0x30(%eax)
 804a9b2:	c7 40 34 76 65 72 00 	movl   $0x726576,0x34(%eax)
 804a9b9:	83 ec 0c             	sub    $0xc,%esp
 804a9bc:	ff b5 b8 5f ff ff    	push   -0xa048(%ebp)
 804a9c2:	e8 a9 e8 ff ff       	call   8049270 <close@plt>
 804a9c7:	83 c4 10             	add    $0x10,%esp
 804a9ca:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a9cf:	eb 4f                	jmp    804aa20 <submitr+0x727>
 804a9d1:	83 ec 08             	sub    $0x8,%esp
 804a9d4:	8d 85 e4 7f ff ff    	lea    -0x801c(%ebp),%eax
 804a9da:	50                   	push   %eax
 804a9db:	ff b5 90 5f ff ff    	push   -0xa070(%ebp)
 804a9e1:	e8 2a e7 ff ff       	call   8049110 <strcpy@plt>
 804a9e6:	83 c4 10             	add    $0x10,%esp
 804a9e9:	83 ec 0c             	sub    $0xc,%esp
 804a9ec:	ff b5 b8 5f ff ff    	push   -0xa048(%ebp)
 804a9f2:	e8 79 e8 ff ff       	call   8049270 <close@plt>
 804a9f7:	83 c4 10             	add    $0x10,%esp
 804a9fa:	83 ec 08             	sub    $0x8,%esp
 804a9fd:	68 84 b6 04 08       	push   $0x804b684
 804aa02:	ff b5 90 5f ff ff    	push   -0xa070(%ebp)
 804aa08:	e8 33 e6 ff ff       	call   8049040 <strcmp@plt>
 804aa0d:	83 c4 10             	add    $0x10,%esp
 804aa10:	85 c0                	test   %eax,%eax
 804aa12:	75 07                	jne    804aa1b <submitr+0x722>
 804aa14:	b8 00 00 00 00       	mov    $0x0,%eax
 804aa19:	eb 05                	jmp    804aa20 <submitr+0x727>
 804aa1b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804aa20:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 804aa23:	65 2b 15 14 00 00 00 	sub    %gs:0x14,%edx
 804aa2a:	74 05                	je     804aa31 <submitr+0x738>
 804aa2c:	e8 af e6 ff ff       	call   80490e0 <__stack_chk_fail@plt>
 804aa31:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804aa34:	5b                   	pop    %ebx
 804aa35:	5e                   	pop    %esi
 804aa36:	5f                   	pop    %edi
 804aa37:	5d                   	pop    %ebp
 804aa38:	c3                   	ret    

0804aa39 <init_timeout>:
 804aa39:	55                   	push   %ebp
 804aa3a:	89 e5                	mov    %esp,%ebp
 804aa3c:	83 ec 08             	sub    $0x8,%esp
 804aa3f:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804aa43:	74 30                	je     804aa75 <init_timeout+0x3c>
 804aa45:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804aa49:	79 07                	jns    804aa52 <init_timeout+0x19>
 804aa4b:	c7 45 08 02 00 00 00 	movl   $0x2,0x8(%ebp)
 804aa52:	83 ec 08             	sub    $0x8,%esp
 804aa55:	68 75 9f 04 08       	push   $0x8049f75
 804aa5a:	6a 0e                	push   $0xe
 804aa5c:	e8 5f e6 ff ff       	call   80490c0 <signal@plt>
 804aa61:	83 c4 10             	add    $0x10,%esp
 804aa64:	8b 45 08             	mov    0x8(%ebp),%eax
 804aa67:	83 ec 0c             	sub    $0xc,%esp
 804aa6a:	50                   	push   %eax
 804aa6b:	e8 60 e6 ff ff       	call   80490d0 <alarm@plt>
 804aa70:	83 c4 10             	add    $0x10,%esp
 804aa73:	eb 01                	jmp    804aa76 <init_timeout+0x3d>
 804aa75:	90                   	nop
 804aa76:	c9                   	leave  
 804aa77:	c3                   	ret    

0804aa78 <init_driver>:
 804aa78:	55                   	push   %ebp
 804aa79:	89 e5                	mov    %esp,%ebp
 804aa7b:	83 ec 48             	sub    $0x48,%esp
 804aa7e:	8b 45 08             	mov    0x8(%ebp),%eax
 804aa81:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804aa84:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804aa8a:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804aa8d:	31 c0                	xor    %eax,%eax
 804aa8f:	c7 45 d4 87 b6 04 08 	movl   $0x804b687,-0x2c(%ebp)
 804aa96:	c7 45 d8 03 d9 00 00 	movl   $0xd903,-0x28(%ebp)
 804aa9d:	83 ec 08             	sub    $0x8,%esp
 804aaa0:	6a 01                	push   $0x1
 804aaa2:	6a 0d                	push   $0xd
 804aaa4:	e8 17 e6 ff ff       	call   80490c0 <signal@plt>
 804aaa9:	83 c4 10             	add    $0x10,%esp
 804aaac:	83 ec 08             	sub    $0x8,%esp
 804aaaf:	6a 01                	push   $0x1
 804aab1:	6a 1d                	push   $0x1d
 804aab3:	e8 08 e6 ff ff       	call   80490c0 <signal@plt>
 804aab8:	83 c4 10             	add    $0x10,%esp
 804aabb:	83 ec 08             	sub    $0x8,%esp
 804aabe:	6a 01                	push   $0x1
 804aac0:	6a 1d                	push   $0x1d
 804aac2:	e8 f9 e5 ff ff       	call   80490c0 <signal@plt>
 804aac7:	83 c4 10             	add    $0x10,%esp
 804aaca:	83 ec 04             	sub    $0x4,%esp
 804aacd:	6a 00                	push   $0x0
 804aacf:	6a 01                	push   $0x1
 804aad1:	6a 02                	push   $0x2
 804aad3:	e8 48 e7 ff ff       	call   8049220 <socket@plt>
 804aad8:	83 c4 10             	add    $0x10,%esp
 804aadb:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804aade:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
 804aae2:	79 51                	jns    804ab35 <init_driver+0xbd>
 804aae4:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804aae7:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804aaed:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804aaf4:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804aafb:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804ab02:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804ab09:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804ab10:	c7 40 18 63 72 65 61 	movl   $0x61657263,0x18(%eax)
 804ab17:	c7 40 1c 74 65 20 73 	movl   $0x73206574,0x1c(%eax)
 804ab1e:	c7 40 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%eax)
 804ab25:	66 c7 40 24 74 00    	movw   $0x74,0x24(%eax)
 804ab2b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804ab30:	e9 05 01 00 00       	jmp    804ac3a <init_driver+0x1c2>
 804ab35:	83 ec 0c             	sub    $0xc,%esp
 804ab38:	ff 75 d4             	push   -0x2c(%ebp)
 804ab3b:	e8 10 e7 ff ff       	call   8049250 <gethostbyname@plt>
 804ab40:	83 c4 10             	add    $0x10,%esp
 804ab43:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804ab46:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
 804ab4a:	75 2e                	jne    804ab7a <init_driver+0x102>
 804ab4c:	83 ec 04             	sub    $0x4,%esp
 804ab4f:	ff 75 d4             	push   -0x2c(%ebp)
 804ab52:	68 60 b5 04 08       	push   $0x804b560
 804ab57:	ff 75 c4             	push   -0x3c(%ebp)
 804ab5a:	e8 b1 e6 ff ff       	call   8049210 <sprintf@plt>
 804ab5f:	83 c4 10             	add    $0x10,%esp
 804ab62:	83 ec 0c             	sub    $0xc,%esp
 804ab65:	ff 75 dc             	push   -0x24(%ebp)
 804ab68:	e8 03 e7 ff ff       	call   8049270 <close@plt>
 804ab6d:	83 c4 10             	add    $0x10,%esp
 804ab70:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804ab75:	e9 c0 00 00 00       	jmp    804ac3a <init_driver+0x1c2>
 804ab7a:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 804ab7d:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804ab83:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804ab8a:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 804ab91:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
 804ab98:	66 c7 45 e4 02 00    	movw   $0x2,-0x1c(%ebp)
 804ab9e:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804aba1:	8b 40 0c             	mov    0xc(%eax),%eax
 804aba4:	89 c2                	mov    %eax,%edx
 804aba6:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804aba9:	8b 40 10             	mov    0x10(%eax),%eax
 804abac:	8b 00                	mov    (%eax),%eax
 804abae:	83 ec 04             	sub    $0x4,%esp
 804abb1:	52                   	push   %edx
 804abb2:	50                   	push   %eax
 804abb3:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 804abb6:	83 c0 04             	add    $0x4,%eax
 804abb9:	50                   	push   %eax
 804abba:	e8 d1 e4 ff ff       	call   8049090 <memmove@plt>
 804abbf:	83 c4 10             	add    $0x10,%esp
 804abc2:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804abc5:	0f b7 c0             	movzwl %ax,%eax
 804abc8:	83 ec 0c             	sub    $0xc,%esp
 804abcb:	50                   	push   %eax
 804abcc:	e8 1f e5 ff ff       	call   80490f0 <htons@plt>
 804abd1:	83 c4 10             	add    $0x10,%esp
 804abd4:	66 89 45 e6          	mov    %ax,-0x1a(%ebp)
 804abd8:	83 ec 04             	sub    $0x4,%esp
 804abdb:	6a 10                	push   $0x10
 804abdd:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 804abe0:	50                   	push   %eax
 804abe1:	ff 75 dc             	push   -0x24(%ebp)
 804abe4:	e8 77 e6 ff ff       	call   8049260 <connect@plt>
 804abe9:	83 c4 10             	add    $0x10,%esp
 804abec:	85 c0                	test   %eax,%eax
 804abee:	79 2b                	jns    804ac1b <init_driver+0x1a3>
 804abf0:	ff 75 d8             	push   -0x28(%ebp)
 804abf3:	ff 75 d4             	push   -0x2c(%ebp)
 804abf6:	68 9c b6 04 08       	push   $0x804b69c
 804abfb:	ff 75 c4             	push   -0x3c(%ebp)
 804abfe:	e8 0d e6 ff ff       	call   8049210 <sprintf@plt>
 804ac03:	83 c4 10             	add    $0x10,%esp
 804ac06:	83 ec 0c             	sub    $0xc,%esp
 804ac09:	ff 75 dc             	push   -0x24(%ebp)
 804ac0c:	e8 5f e6 ff ff       	call   8049270 <close@plt>
 804ac11:	83 c4 10             	add    $0x10,%esp
 804ac14:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804ac19:	eb 1f                	jmp    804ac3a <init_driver+0x1c2>
 804ac1b:	83 ec 0c             	sub    $0xc,%esp
 804ac1e:	ff 75 dc             	push   -0x24(%ebp)
 804ac21:	e8 4a e6 ff ff       	call   8049270 <close@plt>
 804ac26:	83 c4 10             	add    $0x10,%esp
 804ac29:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804ac2c:	66 c7 00 4f 4b       	movw   $0x4b4f,(%eax)
 804ac31:	c6 40 02 00          	movb   $0x0,0x2(%eax)
 804ac35:	b8 00 00 00 00       	mov    $0x0,%eax
 804ac3a:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804ac3d:	65 2b 15 14 00 00 00 	sub    %gs:0x14,%edx
 804ac44:	74 05                	je     804ac4b <init_driver+0x1d3>
 804ac46:	e8 95 e4 ff ff       	call   80490e0 <__stack_chk_fail@plt>
 804ac4b:	c9                   	leave  
 804ac4c:	c3                   	ret    

0804ac4d <driver_post>:
 804ac4d:	55                   	push   %ebp
 804ac4e:	89 e5                	mov    %esp,%ebp
 804ac50:	83 ec 18             	sub    $0x18,%esp
 804ac53:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
 804ac57:	74 26                	je     804ac7f <driver_post+0x32>
 804ac59:	83 ec 08             	sub    $0x8,%esp
 804ac5c:	ff 75 0c             	push   0xc(%ebp)
 804ac5f:	68 c5 b6 04 08       	push   $0x804b6c5
 804ac64:	e8 17 e4 ff ff       	call   8049080 <printf@plt>
 804ac69:	83 c4 10             	add    $0x10,%esp
 804ac6c:	8b 45 14             	mov    0x14(%ebp),%eax
 804ac6f:	66 c7 00 4f 4b       	movw   $0x4b4f,(%eax)
 804ac74:	c6 40 02 00          	movb   $0x0,0x2(%eax)
 804ac78:	b8 00 00 00 00       	mov    $0x0,%eax
 804ac7d:	eb 54                	jmp    804acd3 <driver_post+0x86>
 804ac7f:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804ac83:	74 3d                	je     804acc2 <driver_post+0x75>
 804ac85:	8b 45 08             	mov    0x8(%ebp),%eax
 804ac88:	0f b6 00             	movzbl (%eax),%eax
 804ac8b:	0f b6 c0             	movzbl %al,%eax
 804ac8e:	85 c0                	test   %eax,%eax
 804ac90:	74 30                	je     804acc2 <driver_post+0x75>
 804ac92:	83 ec 04             	sub    $0x4,%esp
 804ac95:	ff 75 14             	push   0x14(%ebp)
 804ac98:	ff 75 0c             	push   0xc(%ebp)
 804ac9b:	68 dc b6 04 08       	push   $0x804b6dc
 804aca0:	ff 75 08             	push   0x8(%ebp)
 804aca3:	68 e3 b6 04 08       	push   $0x804b6e3
 804aca8:	68 03 d9 00 00       	push   $0xd903
 804acad:	68 87 b6 04 08       	push   $0x804b687
 804acb2:	e8 42 f6 ff ff       	call   804a2f9 <submitr>
 804acb7:	83 c4 20             	add    $0x20,%esp
 804acba:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804acbd:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804acc0:	eb 11                	jmp    804acd3 <driver_post+0x86>
 804acc2:	8b 45 14             	mov    0x14(%ebp),%eax
 804acc5:	66 c7 00 4f 4b       	movw   $0x4b4f,(%eax)
 804acca:	c6 40 02 00          	movb   $0x0,0x2(%eax)
 804acce:	b8 00 00 00 00       	mov    $0x0,%eax
 804acd3:	c9                   	leave  
 804acd4:	c3                   	ret    

0804acd5 <hash>:
 804acd5:	55                   	push   %ebp
 804acd6:	89 e5                	mov    %esp,%ebp
 804acd8:	83 ec 10             	sub    $0x10,%esp
 804acdb:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 804ace2:	eb 1a                	jmp    804acfe <hash+0x29>
 804ace4:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804ace7:	6b c8 67             	imul   $0x67,%eax,%ecx
 804acea:	8b 45 08             	mov    0x8(%ebp),%eax
 804aced:	8d 50 01             	lea    0x1(%eax),%edx
 804acf0:	89 55 08             	mov    %edx,0x8(%ebp)
 804acf3:	0f b6 00             	movzbl (%eax),%eax
 804acf6:	0f be c0             	movsbl %al,%eax
 804acf9:	01 c8                	add    %ecx,%eax
 804acfb:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804acfe:	8b 45 08             	mov    0x8(%ebp),%eax
 804ad01:	0f b6 00             	movzbl (%eax),%eax
 804ad04:	84 c0                	test   %al,%al
 804ad06:	75 dc                	jne    804ace4 <hash+0xf>
 804ad08:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804ad0b:	c9                   	leave  
 804ad0c:	c3                   	ret    

0804ad0d <check>:
 804ad0d:	55                   	push   %ebp
 804ad0e:	89 e5                	mov    %esp,%ebp
 804ad10:	83 ec 10             	sub    $0x10,%esp
 804ad13:	8b 45 08             	mov    0x8(%ebp),%eax
 804ad16:	c1 e8 1c             	shr    $0x1c,%eax
 804ad19:	85 c0                	test   %eax,%eax
 804ad1b:	75 07                	jne    804ad24 <check+0x17>
 804ad1d:	b8 00 00 00 00       	mov    $0x0,%eax
 804ad22:	eb 33                	jmp    804ad57 <check+0x4a>
 804ad24:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 804ad2b:	eb 1f                	jmp    804ad4c <check+0x3f>
 804ad2d:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804ad30:	8b 55 08             	mov    0x8(%ebp),%edx
 804ad33:	89 c1                	mov    %eax,%ecx
 804ad35:	d3 ea                	shr    %cl,%edx
 804ad37:	89 d0                	mov    %edx,%eax
 804ad39:	0f b6 c0             	movzbl %al,%eax
 804ad3c:	83 f8 0a             	cmp    $0xa,%eax
 804ad3f:	75 07                	jne    804ad48 <check+0x3b>
 804ad41:	b8 00 00 00 00       	mov    $0x0,%eax
 804ad46:	eb 0f                	jmp    804ad57 <check+0x4a>
 804ad48:	83 45 fc 08          	addl   $0x8,-0x4(%ebp)
 804ad4c:	83 7d fc 1f          	cmpl   $0x1f,-0x4(%ebp)
 804ad50:	7e db                	jle    804ad2d <check+0x20>
 804ad52:	b8 01 00 00 00       	mov    $0x1,%eax
 804ad57:	c9                   	leave  
 804ad58:	c3                   	ret    

0804ad59 <gencookie>:
 804ad59:	55                   	push   %ebp
 804ad5a:	89 e5                	mov    %esp,%ebp
 804ad5c:	83 ec 18             	sub    $0x18,%esp
 804ad5f:	ff 75 08             	push   0x8(%ebp)
 804ad62:	e8 6e ff ff ff       	call   804acd5 <hash>
 804ad67:	83 c4 04             	add    $0x4,%esp
 804ad6a:	83 ec 0c             	sub    $0xc,%esp
 804ad6d:	50                   	push   %eax
 804ad6e:	e8 ed e3 ff ff       	call   8049160 <srand@plt>
 804ad73:	83 c4 10             	add    $0x10,%esp
 804ad76:	e8 75 e4 ff ff       	call   80491f0 <rand@plt>
 804ad7b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804ad7e:	83 ec 0c             	sub    $0xc,%esp
 804ad81:	ff 75 f4             	push   -0xc(%ebp)
 804ad84:	e8 84 ff ff ff       	call   804ad0d <check>
 804ad89:	83 c4 10             	add    $0x10,%esp
 804ad8c:	85 c0                	test   %eax,%eax
 804ad8e:	74 e6                	je     804ad76 <gencookie+0x1d>
 804ad90:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804ad93:	c9                   	leave  
 804ad94:	c3                   	ret    

Disassembly of section .fini:

0804ad98 <_fini>:
 804ad98:	f3 0f 1e fb          	endbr32 
 804ad9c:	53                   	push   %ebx
 804ad9d:	83 ec 08             	sub    $0x8,%esp
 804ada0:	e8 3b e5 ff ff       	call   80492e0 <__x86.get_pc_thunk.bx>
 804ada5:	81 c3 5b 22 00 00    	add    $0x225b,%ebx
 804adab:	83 c4 08             	add    $0x8,%esp
 804adae:	5b                   	pop    %ebx
 804adaf:	c3                   	ret    
