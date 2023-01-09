
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000002000 <_init>:
    2000:	f3 0f 1e fa          	endbr64 
    2004:	48 83 ec 08          	sub    $0x8,%rsp
    2008:	48 8b 05 d9 5f 00 00 	mov    0x5fd9(%rip),%rax        # 7fe8 <__gmon_start__>
    200f:	48 85 c0             	test   %rax,%rax
    2012:	74 02                	je     2016 <_init+0x16>
    2014:	ff d0                	callq  *%rax
    2016:	48 83 c4 08          	add    $0x8,%rsp
    201a:	c3                   	retq   

Disassembly of section .plt:

0000000000002020 <.plt>:
    2020:	ff 35 b2 5e 00 00    	pushq  0x5eb2(%rip)        # 7ed8 <_GLOBAL_OFFSET_TABLE_+0x8>
    2026:	f2 ff 25 b3 5e 00 00 	bnd jmpq *0x5eb3(%rip)        # 7ee0 <_GLOBAL_OFFSET_TABLE_+0x10>
    202d:	0f 1f 00             	nopl   (%rax)
    2030:	f3 0f 1e fa          	endbr64 
    2034:	68 00 00 00 00       	pushq  $0x0
    2039:	f2 e9 e1 ff ff ff    	bnd jmpq 2020 <.plt>
    203f:	90                   	nop
    2040:	f3 0f 1e fa          	endbr64 
    2044:	68 01 00 00 00       	pushq  $0x1
    2049:	f2 e9 d1 ff ff ff    	bnd jmpq 2020 <.plt>
    204f:	90                   	nop
    2050:	f3 0f 1e fa          	endbr64 
    2054:	68 02 00 00 00       	pushq  $0x2
    2059:	f2 e9 c1 ff ff ff    	bnd jmpq 2020 <.plt>
    205f:	90                   	nop
    2060:	f3 0f 1e fa          	endbr64 
    2064:	68 03 00 00 00       	pushq  $0x3
    2069:	f2 e9 b1 ff ff ff    	bnd jmpq 2020 <.plt>
    206f:	90                   	nop
    2070:	f3 0f 1e fa          	endbr64 
    2074:	68 04 00 00 00       	pushq  $0x4
    2079:	f2 e9 a1 ff ff ff    	bnd jmpq 2020 <.plt>
    207f:	90                   	nop
    2080:	f3 0f 1e fa          	endbr64 
    2084:	68 05 00 00 00       	pushq  $0x5
    2089:	f2 e9 91 ff ff ff    	bnd jmpq 2020 <.plt>
    208f:	90                   	nop
    2090:	f3 0f 1e fa          	endbr64 
    2094:	68 06 00 00 00       	pushq  $0x6
    2099:	f2 e9 81 ff ff ff    	bnd jmpq 2020 <.plt>
    209f:	90                   	nop
    20a0:	f3 0f 1e fa          	endbr64 
    20a4:	68 07 00 00 00       	pushq  $0x7
    20a9:	f2 e9 71 ff ff ff    	bnd jmpq 2020 <.plt>
    20af:	90                   	nop
    20b0:	f3 0f 1e fa          	endbr64 
    20b4:	68 08 00 00 00       	pushq  $0x8
    20b9:	f2 e9 61 ff ff ff    	bnd jmpq 2020 <.plt>
    20bf:	90                   	nop
    20c0:	f3 0f 1e fa          	endbr64 
    20c4:	68 09 00 00 00       	pushq  $0x9
    20c9:	f2 e9 51 ff ff ff    	bnd jmpq 2020 <.plt>
    20cf:	90                   	nop
    20d0:	f3 0f 1e fa          	endbr64 
    20d4:	68 0a 00 00 00       	pushq  $0xa
    20d9:	f2 e9 41 ff ff ff    	bnd jmpq 2020 <.plt>
    20df:	90                   	nop
    20e0:	f3 0f 1e fa          	endbr64 
    20e4:	68 0b 00 00 00       	pushq  $0xb
    20e9:	f2 e9 31 ff ff ff    	bnd jmpq 2020 <.plt>
    20ef:	90                   	nop
    20f0:	f3 0f 1e fa          	endbr64 
    20f4:	68 0c 00 00 00       	pushq  $0xc
    20f9:	f2 e9 21 ff ff ff    	bnd jmpq 2020 <.plt>
    20ff:	90                   	nop
    2100:	f3 0f 1e fa          	endbr64 
    2104:	68 0d 00 00 00       	pushq  $0xd
    2109:	f2 e9 11 ff ff ff    	bnd jmpq 2020 <.plt>
    210f:	90                   	nop
    2110:	f3 0f 1e fa          	endbr64 
    2114:	68 0e 00 00 00       	pushq  $0xe
    2119:	f2 e9 01 ff ff ff    	bnd jmpq 2020 <.plt>
    211f:	90                   	nop
    2120:	f3 0f 1e fa          	endbr64 
    2124:	68 0f 00 00 00       	pushq  $0xf
    2129:	f2 e9 f1 fe ff ff    	bnd jmpq 2020 <.plt>
    212f:	90                   	nop
    2130:	f3 0f 1e fa          	endbr64 
    2134:	68 10 00 00 00       	pushq  $0x10
    2139:	f2 e9 e1 fe ff ff    	bnd jmpq 2020 <.plt>
    213f:	90                   	nop
    2140:	f3 0f 1e fa          	endbr64 
    2144:	68 11 00 00 00       	pushq  $0x11
    2149:	f2 e9 d1 fe ff ff    	bnd jmpq 2020 <.plt>
    214f:	90                   	nop
    2150:	f3 0f 1e fa          	endbr64 
    2154:	68 12 00 00 00       	pushq  $0x12
    2159:	f2 e9 c1 fe ff ff    	bnd jmpq 2020 <.plt>
    215f:	90                   	nop
    2160:	f3 0f 1e fa          	endbr64 
    2164:	68 13 00 00 00       	pushq  $0x13
    2169:	f2 e9 b1 fe ff ff    	bnd jmpq 2020 <.plt>
    216f:	90                   	nop
    2170:	f3 0f 1e fa          	endbr64 
    2174:	68 14 00 00 00       	pushq  $0x14
    2179:	f2 e9 a1 fe ff ff    	bnd jmpq 2020 <.plt>
    217f:	90                   	nop
    2180:	f3 0f 1e fa          	endbr64 
    2184:	68 15 00 00 00       	pushq  $0x15
    2189:	f2 e9 91 fe ff ff    	bnd jmpq 2020 <.plt>
    218f:	90                   	nop
    2190:	f3 0f 1e fa          	endbr64 
    2194:	68 16 00 00 00       	pushq  $0x16
    2199:	f2 e9 81 fe ff ff    	bnd jmpq 2020 <.plt>
    219f:	90                   	nop
    21a0:	f3 0f 1e fa          	endbr64 
    21a4:	68 17 00 00 00       	pushq  $0x17
    21a9:	f2 e9 71 fe ff ff    	bnd jmpq 2020 <.plt>
    21af:	90                   	nop
    21b0:	f3 0f 1e fa          	endbr64 
    21b4:	68 18 00 00 00       	pushq  $0x18
    21b9:	f2 e9 61 fe ff ff    	bnd jmpq 2020 <.plt>
    21bf:	90                   	nop
    21c0:	f3 0f 1e fa          	endbr64 
    21c4:	68 19 00 00 00       	pushq  $0x19
    21c9:	f2 e9 51 fe ff ff    	bnd jmpq 2020 <.plt>
    21cf:	90                   	nop
    21d0:	f3 0f 1e fa          	endbr64 
    21d4:	68 1a 00 00 00       	pushq  $0x1a
    21d9:	f2 e9 41 fe ff ff    	bnd jmpq 2020 <.plt>
    21df:	90                   	nop
    21e0:	f3 0f 1e fa          	endbr64 
    21e4:	68 1b 00 00 00       	pushq  $0x1b
    21e9:	f2 e9 31 fe ff ff    	bnd jmpq 2020 <.plt>
    21ef:	90                   	nop
    21f0:	f3 0f 1e fa          	endbr64 
    21f4:	68 1c 00 00 00       	pushq  $0x1c
    21f9:	f2 e9 21 fe ff ff    	bnd jmpq 2020 <.plt>
    21ff:	90                   	nop
    2200:	f3 0f 1e fa          	endbr64 
    2204:	68 1d 00 00 00       	pushq  $0x1d
    2209:	f2 e9 11 fe ff ff    	bnd jmpq 2020 <.plt>
    220f:	90                   	nop

Disassembly of section .plt.got:

0000000000002210 <__cxa_finalize@plt>:
    2210:	f3 0f 1e fa          	endbr64 
    2214:	f2 ff 25 dd 5d 00 00 	bnd jmpq *0x5ddd(%rip)        # 7ff8 <__cxa_finalize@GLIBC_2.2.5>
    221b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000002220 <getenv@plt>:
    2220:	f3 0f 1e fa          	endbr64 
    2224:	f2 ff 25 bd 5c 00 00 	bnd jmpq *0x5cbd(%rip)        # 7ee8 <getenv@GLIBC_2.2.5>
    222b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002230 <free@plt>:
    2230:	f3 0f 1e fa          	endbr64 
    2234:	f2 ff 25 b5 5c 00 00 	bnd jmpq *0x5cb5(%rip)        # 7ef0 <free@GLIBC_2.2.5>
    223b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002240 <strcasecmp@plt>:
    2240:	f3 0f 1e fa          	endbr64 
    2244:	f2 ff 25 ad 5c 00 00 	bnd jmpq *0x5cad(%rip)        # 7ef8 <strcasecmp@GLIBC_2.2.5>
    224b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002250 <__errno_location@plt>:
    2250:	f3 0f 1e fa          	endbr64 
    2254:	f2 ff 25 a5 5c 00 00 	bnd jmpq *0x5ca5(%rip)        # 7f00 <__errno_location@GLIBC_2.2.5>
    225b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002260 <strcpy@plt>:
    2260:	f3 0f 1e fa          	endbr64 
    2264:	f2 ff 25 9d 5c 00 00 	bnd jmpq *0x5c9d(%rip)        # 7f08 <strcpy@GLIBC_2.2.5>
    226b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002270 <puts@plt>:
    2270:	f3 0f 1e fa          	endbr64 
    2274:	f2 ff 25 95 5c 00 00 	bnd jmpq *0x5c95(%rip)        # 7f10 <puts@GLIBC_2.2.5>
    227b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002280 <write@plt>:
    2280:	f3 0f 1e fa          	endbr64 
    2284:	f2 ff 25 8d 5c 00 00 	bnd jmpq *0x5c8d(%rip)        # 7f18 <write@GLIBC_2.2.5>
    228b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002290 <__stack_chk_fail@plt>:
    2290:	f3 0f 1e fa          	endbr64 
    2294:	f2 ff 25 85 5c 00 00 	bnd jmpq *0x5c85(%rip)        # 7f20 <__stack_chk_fail@GLIBC_2.4>
    229b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022a0 <alarm@plt>:
    22a0:	f3 0f 1e fa          	endbr64 
    22a4:	f2 ff 25 7d 5c 00 00 	bnd jmpq *0x5c7d(%rip)        # 7f28 <alarm@GLIBC_2.2.5>
    22ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022b0 <close@plt>:
    22b0:	f3 0f 1e fa          	endbr64 
    22b4:	f2 ff 25 75 5c 00 00 	bnd jmpq *0x5c75(%rip)        # 7f30 <close@GLIBC_2.2.5>
    22bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022c0 <read@plt>:
    22c0:	f3 0f 1e fa          	endbr64 
    22c4:	f2 ff 25 6d 5c 00 00 	bnd jmpq *0x5c6d(%rip)        # 7f38 <read@GLIBC_2.2.5>
    22cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022d0 <fgets@plt>:
    22d0:	f3 0f 1e fa          	endbr64 
    22d4:	f2 ff 25 65 5c 00 00 	bnd jmpq *0x5c65(%rip)        # 7f40 <fgets@GLIBC_2.2.5>
    22db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022e0 <signal@plt>:
    22e0:	f3 0f 1e fa          	endbr64 
    22e4:	f2 ff 25 5d 5c 00 00 	bnd jmpq *0x5c5d(%rip)        # 7f48 <signal@GLIBC_2.2.5>
    22eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022f0 <gethostbyname@plt>:
    22f0:	f3 0f 1e fa          	endbr64 
    22f4:	f2 ff 25 55 5c 00 00 	bnd jmpq *0x5c55(%rip)        # 7f50 <gethostbyname@GLIBC_2.2.5>
    22fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002300 <__memmove_chk@plt>:
    2300:	f3 0f 1e fa          	endbr64 
    2304:	f2 ff 25 4d 5c 00 00 	bnd jmpq *0x5c4d(%rip)        # 7f58 <__memmove_chk@GLIBC_2.3.4>
    230b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002310 <strtol@plt>:
    2310:	f3 0f 1e fa          	endbr64 
    2314:	f2 ff 25 45 5c 00 00 	bnd jmpq *0x5c45(%rip)        # 7f60 <strtol@GLIBC_2.2.5>
    231b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002320 <memcpy@plt>:
    2320:	f3 0f 1e fa          	endbr64 
    2324:	f2 ff 25 3d 5c 00 00 	bnd jmpq *0x5c3d(%rip)        # 7f68 <memcpy@GLIBC_2.14>
    232b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002330 <malloc@plt>:
    2330:	f3 0f 1e fa          	endbr64 
    2334:	f2 ff 25 35 5c 00 00 	bnd jmpq *0x5c35(%rip)        # 7f70 <malloc@GLIBC_2.2.5>
    233b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002340 <fflush@plt>:
    2340:	f3 0f 1e fa          	endbr64 
    2344:	f2 ff 25 2d 5c 00 00 	bnd jmpq *0x5c2d(%rip)        # 7f78 <fflush@GLIBC_2.2.5>
    234b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002350 <__isoc99_sscanf@plt>:
    2350:	f3 0f 1e fa          	endbr64 
    2354:	f2 ff 25 25 5c 00 00 	bnd jmpq *0x5c25(%rip)        # 7f80 <__isoc99_sscanf@GLIBC_2.7>
    235b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002360 <__printf_chk@plt>:
    2360:	f3 0f 1e fa          	endbr64 
    2364:	f2 ff 25 1d 5c 00 00 	bnd jmpq *0x5c1d(%rip)        # 7f88 <__printf_chk@GLIBC_2.3.4>
    236b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002370 <fopen@plt>:
    2370:	f3 0f 1e fa          	endbr64 
    2374:	f2 ff 25 15 5c 00 00 	bnd jmpq *0x5c15(%rip)        # 7f90 <fopen@GLIBC_2.2.5>
    237b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002380 <gethostname@plt>:
    2380:	f3 0f 1e fa          	endbr64 
    2384:	f2 ff 25 0d 5c 00 00 	bnd jmpq *0x5c0d(%rip)        # 7f98 <gethostname@GLIBC_2.2.5>
    238b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002390 <exit@plt>:
    2390:	f3 0f 1e fa          	endbr64 
    2394:	f2 ff 25 05 5c 00 00 	bnd jmpq *0x5c05(%rip)        # 7fa0 <exit@GLIBC_2.2.5>
    239b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023a0 <connect@plt>:
    23a0:	f3 0f 1e fa          	endbr64 
    23a4:	f2 ff 25 fd 5b 00 00 	bnd jmpq *0x5bfd(%rip)        # 7fa8 <connect@GLIBC_2.2.5>
    23ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023b0 <__fprintf_chk@plt>:
    23b0:	f3 0f 1e fa          	endbr64 
    23b4:	f2 ff 25 f5 5b 00 00 	bnd jmpq *0x5bf5(%rip)        # 7fb0 <__fprintf_chk@GLIBC_2.3.4>
    23bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023c0 <sleep@plt>:
    23c0:	f3 0f 1e fa          	endbr64 
    23c4:	f2 ff 25 ed 5b 00 00 	bnd jmpq *0x5bed(%rip)        # 7fb8 <sleep@GLIBC_2.2.5>
    23cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023d0 <__ctype_b_loc@plt>:
    23d0:	f3 0f 1e fa          	endbr64 
    23d4:	f2 ff 25 e5 5b 00 00 	bnd jmpq *0x5be5(%rip)        # 7fc0 <__ctype_b_loc@GLIBC_2.3>
    23db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023e0 <__sprintf_chk@plt>:
    23e0:	f3 0f 1e fa          	endbr64 
    23e4:	f2 ff 25 dd 5b 00 00 	bnd jmpq *0x5bdd(%rip)        # 7fc8 <__sprintf_chk@GLIBC_2.3.4>
    23eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023f0 <socket@plt>:
    23f0:	f3 0f 1e fa          	endbr64 
    23f4:	f2 ff 25 d5 5b 00 00 	bnd jmpq *0x5bd5(%rip)        # 7fd0 <socket@GLIBC_2.2.5>
    23fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000002400 <_start>:
    2400:	f3 0f 1e fa          	endbr64 
    2404:	31 ed                	xor    %ebp,%ebp
    2406:	49 89 d1             	mov    %rdx,%r9
    2409:	5e                   	pop    %rsi
    240a:	48 89 e2             	mov    %rsp,%rdx
    240d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    2411:	50                   	push   %rax
    2412:	54                   	push   %rsp
    2413:	4c 8d 05 b6 1e 00 00 	lea    0x1eb6(%rip),%r8        # 42d0 <__libc_csu_fini>
    241a:	48 8d 0d 3f 1e 00 00 	lea    0x1e3f(%rip),%rcx        # 4260 <__libc_csu_init>
    2421:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 24e9 <main>
    2428:	ff 15 b2 5b 00 00    	callq  *0x5bb2(%rip)        # 7fe0 <__libc_start_main@GLIBC_2.2.5>
    242e:	f4                   	hlt    
    242f:	90                   	nop

0000000000002430 <deregister_tm_clones>:
    2430:	48 8d 3d 09 72 00 00 	lea    0x7209(%rip),%rdi        # 9640 <stdout@@GLIBC_2.2.5>
    2437:	48 8d 05 02 72 00 00 	lea    0x7202(%rip),%rax        # 9640 <stdout@@GLIBC_2.2.5>
    243e:	48 39 f8             	cmp    %rdi,%rax
    2441:	74 15                	je     2458 <deregister_tm_clones+0x28>
    2443:	48 8b 05 8e 5b 00 00 	mov    0x5b8e(%rip),%rax        # 7fd8 <_ITM_deregisterTMCloneTable>
    244a:	48 85 c0             	test   %rax,%rax
    244d:	74 09                	je     2458 <deregister_tm_clones+0x28>
    244f:	ff e0                	jmpq   *%rax
    2451:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2458:	c3                   	retq   
    2459:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002460 <register_tm_clones>:
    2460:	48 8d 3d d9 71 00 00 	lea    0x71d9(%rip),%rdi        # 9640 <stdout@@GLIBC_2.2.5>
    2467:	48 8d 35 d2 71 00 00 	lea    0x71d2(%rip),%rsi        # 9640 <stdout@@GLIBC_2.2.5>
    246e:	48 29 fe             	sub    %rdi,%rsi
    2471:	48 89 f0             	mov    %rsi,%rax
    2474:	48 c1 ee 3f          	shr    $0x3f,%rsi
    2478:	48 c1 f8 03          	sar    $0x3,%rax
    247c:	48 01 c6             	add    %rax,%rsi
    247f:	48 d1 fe             	sar    %rsi
    2482:	74 14                	je     2498 <register_tm_clones+0x38>
    2484:	48 8b 05 65 5b 00 00 	mov    0x5b65(%rip),%rax        # 7ff0 <_ITM_registerTMCloneTable>
    248b:	48 85 c0             	test   %rax,%rax
    248e:	74 08                	je     2498 <register_tm_clones+0x38>
    2490:	ff e0                	jmpq   *%rax
    2492:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2498:	c3                   	retq   
    2499:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000024a0 <__do_global_dtors_aux>:
    24a0:	f3 0f 1e fa          	endbr64 
    24a4:	80 3d bd 71 00 00 00 	cmpb   $0x0,0x71bd(%rip)        # 9668 <completed.8060>
    24ab:	75 2b                	jne    24d8 <__do_global_dtors_aux+0x38>
    24ad:	55                   	push   %rbp
    24ae:	48 83 3d 42 5b 00 00 	cmpq   $0x0,0x5b42(%rip)        # 7ff8 <__cxa_finalize@GLIBC_2.2.5>
    24b5:	00 
    24b6:	48 89 e5             	mov    %rsp,%rbp
    24b9:	74 0c                	je     24c7 <__do_global_dtors_aux+0x27>
    24bb:	48 8b 3d 46 5b 00 00 	mov    0x5b46(%rip),%rdi        # 8008 <__dso_handle>
    24c2:	e8 49 fd ff ff       	callq  2210 <__cxa_finalize@plt>
    24c7:	e8 64 ff ff ff       	callq  2430 <deregister_tm_clones>
    24cc:	c6 05 95 71 00 00 01 	movb   $0x1,0x7195(%rip)        # 9668 <completed.8060>
    24d3:	5d                   	pop    %rbp
    24d4:	c3                   	retq   
    24d5:	0f 1f 00             	nopl   (%rax)
    24d8:	c3                   	retq   
    24d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000024e0 <frame_dummy>:
    24e0:	f3 0f 1e fa          	endbr64 
    24e4:	e9 77 ff ff ff       	jmpq   2460 <register_tm_clones>

00000000000024e9 <main>:
    24e9:	f3 0f 1e fa          	endbr64 
    24ed:	53                   	push   %rbx
    24ee:	83 ff 01             	cmp    $0x1,%edi
    24f1:	74 51                	je     2544 <main+0x5b>
    24f3:	48 89 f3             	mov    %rsi,%rbx
    24f6:	83 ff 02             	cmp    $0x2,%edi
    24f9:	75 7b                	jne    2576 <main+0x8d>
    24fb:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    24ff:	48 8d 35 38 32 00 00 	lea    0x3238(%rip),%rsi        # 573e <array.3498+0x3be>
    2506:	e8 65 fe ff ff       	callq  2370 <fopen@plt>
    250b:	48 89 05 5e 71 00 00 	mov    %rax,0x715e(%rip)        # 9670 <infile>
    2512:	48 85 c0             	test   %rax,%rax
    2515:	74 3d                	je     2554 <main+0x6b>
    2517:	e8 a8 08 00 00       	callq  2dc4 <initialize_bomb>
    251c:	48 89 c3             	mov    %rax,%rbx
    251f:	81 38 11 fa 22 20    	cmpl   $0x2022fa11,(%rax)      //如果改动了就直接返回并输出语句
    2525:	74 72                	je     2599 <main+0xb0>
    2527:	48 8d 35 5a 2b 00 00 	lea    0x2b5a(%rip),%rsi        # 5088 <_IO_stdin_used+0x88>
    252e:	bf 01 00 00 00       	mov    $0x1,%edi
    2533:	b8 00 00 00 00       	mov    $0x0,%eax
    2538:	e8 23 fe ff ff       	callq  2360 <__printf_chk@plt>
    253d:	b8 00 00 00 00       	mov    $0x0,%eax
    2542:	5b                   	pop    %rbx
    2543:	c3                   	retq   
    2544:	48 8b 05 05 71 00 00 	mov    0x7105(%rip),%rax        # 9650 <stdin@@GLIBC_2.2.5>
    254b:	48 89 05 1e 71 00 00 	mov    %rax,0x711e(%rip)        # 9670 <infile>
    2552:	eb c3                	jmp    2517 <main+0x2e>
    2554:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    2558:	48 8b 13             	mov    (%rbx),%rdx
    255b:	48 8d 35 a2 2a 00 00 	lea    0x2aa2(%rip),%rsi        # 5004 <_IO_stdin_used+0x4>
    2562:	bf 01 00 00 00       	mov    $0x1,%edi
    2567:	e8 f4 fd ff ff       	callq  2360 <__printf_chk@plt>
    256c:	bf 08 00 00 00       	mov    $0x8,%edi
    2571:	e8 1a fe ff ff       	callq  2390 <exit@plt>
    2576:	48 8b 16             	mov    (%rsi),%rdx
    2579:	48 8d 35 a1 2a 00 00 	lea    0x2aa1(%rip),%rsi        # 5021 <_IO_stdin_used+0x21>
    2580:	bf 01 00 00 00       	mov    $0x1,%edi
    2585:	b8 00 00 00 00       	mov    $0x0,%eax
    258a:	e8 d1 fd ff ff       	callq  2360 <__printf_chk@plt>
    258f:	bf 08 00 00 00       	mov    $0x8,%edi
    2594:	e8 f7 fd ff ff       	callq  2390 <exit@plt>
    2599:	48 8d 3d 28 2b 00 00 	lea    0x2b28(%rip),%rdi        # 50c8 <_IO_stdin_used+0xc8> //正常开始
    25a0:	e8 cb fc ff ff       	callq  2270 <puts@plt>
    25a5:	48 8d 3d 5c 2b 00 00 	lea    0x2b5c(%rip),%rdi        # 5108 <_IO_stdin_used+0x108>
    25ac:	e8 bf fc ff ff       	callq  2270 <puts@plt>
    25b1:	e8 c7 0c 00 00       	callq  327d <read_line>
    25b6:	48 89 c7             	mov    %rax,%rdi
    25b9:	e8 da 01 00 00       	callq  2798 <phase_1>
    25be:	48 89 df             	mov    %rbx,%rdi
    25c1:	e8 02 0e 00 00       	callq  33c8 <phase_defused>
    25c6:	48 8d 3d 7b 2b 00 00 	lea    0x2b7b(%rip),%rdi        # 5148 <_IO_stdin_used+0x148>
    25cd:	e8 9e fc ff ff       	callq  2270 <puts@plt>
    25d2:	e8 a6 0c 00 00       	callq  327d <read_line>
    25d7:	48 89 c7             	mov    %rax,%rdi
    25da:	e8 dd 01 00 00       	callq  27bc <phase_2>
    25df:	48 89 df             	mov    %rbx,%rdi
    25e2:	e8 e1 0d 00 00       	callq  33c8 <phase_defused>
    25e7:	48 8d 3d 4d 2a 00 00 	lea    0x2a4d(%rip),%rdi        # 503b <_IO_stdin_used+0x3b>
    25ee:	e8 7d fc ff ff       	callq  2270 <puts@plt>
    25f3:	e8 85 0c 00 00       	callq  327d <read_line>
    25f8:	48 89 c7             	mov    %rax,%rdi
    25fb:	e8 2d 02 00 00       	callq  282d <phase_3>
    2600:	48 89 df             	mov    %rbx,%rdi
    2603:	e8 c0 0d 00 00       	callq  33c8 <phase_defused>
    2608:	48 8d 3d 49 2a 00 00 	lea    0x2a49(%rip),%rdi        # 5058 <_IO_stdin_used+0x58>
    260f:	e8 5c fc ff ff       	callq  2270 <puts@plt>
    2614:	e8 64 0c 00 00       	callq  327d <read_line>
    2619:	48 89 c7             	mov    %rax,%rdi
    261c:	e8 d1 03 00 00       	callq  29f2 <phase_4>
    2621:	48 89 df             	mov    %rbx,%rdi
    2624:	e8 9f 0d 00 00       	callq  33c8 <phase_defused>
    2629:	48 8d 3d 48 2b 00 00 	lea    0x2b48(%rip),%rdi        # 5178 <_IO_stdin_used+0x178>
    2630:	e8 3b fc ff ff       	callq  2270 <puts@plt>
    2635:	e8 43 0c 00 00       	callq  327d <read_line>
    263a:	48 89 c7             	mov    %rax,%rdi
    263d:	e8 34 04 00 00       	callq  2a76 <phase_5>
    2642:	48 89 df             	mov    %rbx,%rdi
    2645:	e8 7e 0d 00 00       	callq  33c8 <phase_defused>
    264a:	48 8d 3d 16 2a 00 00 	lea    0x2a16(%rip),%rdi        # 5067 <_IO_stdin_used+0x67>
    2651:	e8 1a fc ff ff       	callq  2270 <puts@plt>
    2656:	e8 22 0c 00 00       	callq  327d <read_line>
    265b:	48 89 c7             	mov    %rax,%rdi
    265e:	e8 66 04 00 00       	callq  2ac9 <phase_6>
    2663:	48 89 df             	mov    %rbx,%rdi
    2666:	e8 5d 0d 00 00       	callq  33c8 <phase_defused>
    266b:	48 89 df             	mov    %rbx,%rdi
    266e:	e8 bd fb ff ff       	callq  2230 <free@plt>
    2673:	e9 c5 fe ff ff       	jmpq   253d <main+0x54>

0000000000002678 <abracadabra>: //！！！！！
    2678:	f3 0f 1e fa          	endbr64 
    267c:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp      //rsp-152
    2683:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    268a:	00 00 
    268c:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp) //金丝雀值
    2693:	00 
    2694:	31 c0                	xor    %eax,%eax
    2696:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx        //rcx指向 rsp+12
    269b:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx       //rdx指向 rsp+8
    26a0:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8       //r8指向 rsp+16
    26a5:	48 8d 35 f0 2a 00 00 	lea    0x2af0(%rip),%rsi        # 519c <_IO_stdin_used+0x19c> //%d %d %s
    26ac:	48 8d 3d 35 71 00 00 	lea    0x7135(%rip),%rdi        # 97e8 <input_strings+0x168>  //6 49 我的第四题的答案
    26b3:	e8 98 fc ff ff       	callq  2350 <__isoc99_sscanf@plt>
    26b8:	83 f8 03             	cmp    $0x3,%eax         //返回值与3比较，不相等则普通结束
    26bb:	74 20                	je     26dd <abracadabra+0x65>
    26bd:	b8 00 00 00 00       	mov    $0x0,%eax
    26c2:	48 8b b4 24 88 00 00 	mov    0x88(%rsp),%rsi
    26c9:	00 
    26ca:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    26d1:	00 00 
    26d3:	75 2b                	jne    2700 <abracadabra+0x88>
    26d5:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    26dc:	c3                   	retq   
    26dd:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi        //r8指向 rsp+16
    26e2:	48 8d 35 c7 2a 00 00 	lea    0x2ac7(%rip),%rsi        # 51b0 <_IO_stdin_used+0x1b0>  //DoUKnowThatTheHarderThing2DoAnd...
    26e9:	e8 85 06 00 00       	callq  2d73 <strings_not_equal>
    26ee:	85 c0                	test   %eax,%eax
    26f0:	74 07                	je     26f9 <abracadabra+0x81> //返回值等于0则结束返回1
    26f2:	b8 00 00 00 00       	mov    $0x0,%eax                    //返回值等于1则结束返回0（我们想要的结果
    26f7:	eb c9                	jmp    26c2 <abracadabra+0x4a>
    26f9:	b8 01 00 00 00       	mov    $0x1,%eax
    26fe:	eb c2                	jmp    26c2 <abracadabra+0x4a>
    2700:	e8 8b fb ff ff       	callq  2290 <__stack_chk_fail@plt>

0000000000002705 <alohomora>:  //！！！！！！
    2705:	f3 0f 1e fa          	endbr64 
    2709:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
    2710:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2717:	00 00 
    2719:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    271e:	31 c0                	xor    %eax,%eax               //金丝雀值，没啥用
    2720:	48 8d 05 d1 6f 00 00 	lea    0x6fd1(%rip),%rax        # 96f8 <input_strings+0x78>   //1 2 4 8 16 32  我的第2题的答案
    2727:	80 38 00             	cmpb   $0x0,(%rax)
    272a:	74 06                	je     2732 <alohomora+0x2d>
    272c:	48 83 c0 01          	add    $0x1,%rax
    2730:	eb f5                	jmp    2727 <alohomora+0x22>  //直到读取到第一题答案最后的换行符才结束（就是从第2题答案开始读取，直到单字节的值等于0，即空字符）
    2732:	48 83 e8 01          	sub    $0x1,%rax                      //rax指向空字节的上一个
    2736:	48 89 e2             	mov    %rsp,%rdx                         //rdx指向栈顶
    2739:	eb 0a                	jmp    2745zhu <alohomora+0x40>
    273b:	88 0a                	mov    %cl,(%rdx)              //写入栈
    273d:	48 83 c2 01          	add    $0x1,%rdx
    2741:	48 83 e8 01          	sub    $0x1,%rax
    2745zhu:	0f b6 08             	movzbl (%rax),%ecx     //不一定哦？？？？把‘2’即ascii码的十进制50放入ecx
    2748:	80 f9 20             	cmp    $0x20,%cl           //比较ecx的低一字节cl（50）与十进制32（空格）比较
    274b:	74 0c                	je     2759 <alohomora+0x54>           //相等则跳转
    274d:	48 8d 35 a4 6f 00 00 	lea    0x6fa4(%rip),%rsi        # 96f8 <input_strings+0x78>   //1 2 4 8 16 32  我的第2题的答案
    2754:	48 39 f0             	cmp    %rsi,%rax                    //比较rsi与rax
    2757:	75 e2                	jne    273b <alohomora+0x36>      //不相等则跳回
    2759:	c6 02 00             	movb   $0x0,(%rdx)                //rdx指向的变0
    275c:	48 89 e7             	mov    %rsp,%rdi                    //rdi指向栈顶
    275f:	48 8d 35 72 2a 00 00 	lea    0x2a72(%rip),%rsi        # 51d8 <_IO_stdin_used+0x1d8>  //?gnihTema3ehTyllausUerAoD2gnihTthgiRehT...
    2766:	e8 08 06 00 00       	callq  2d73 <strings_not_equal> //比较是否相等
    276b:	85 c0                	test   %eax,%eax
    276d:	74 1d                	je     278c <alohomora+0x87>   //相等返回1，不然返回0
    276f:	b8 00 00 00 00       	mov    $0x0,%eax
    2774:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    2779:	64 48 33 3c 25 28 00 	xor    %fs:0x28,%rdi
    2780:	00 00 
    2782:	75 0f                	jne    2793 <alohomora+0x8e>
    2784:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
    278b:	c3                   	retq   
    278c:	b8 01 00 00 00       	mov    $0x1,%eax
    2791:	eb e1                	jmp    2774 <alohomora+0x6f>
    2793:	e8 f8 fa ff ff       	callq  2290 <__stack_chk_fail@plt>

0000000000002798 <phase_1>: //I hear the voice of fate, speaking my name in humble supplication.
    2798:	f3 0f 1e fa          	endbr64 
    279c:	48 83 ec 08          	sub    $0x8,%rsp
    27a0:	48 8d 35 61 2a 00 00 	lea    0x2a61(%rip),%rsi        # 5208 <_IO_stdin_used+0x208>
    27a7:	e8 c7 05 00 00       	callq  2d73 <strings_not_equal>
    27ac:	85 c0                	test   %eax,%eax
    27ae:	75 05                	jne    27b5 <phase_1+0x1d>
    27b0:	48 83 c4 08          	add    $0x8,%rsp
    27b4:	c3                   	retq   //值得注意的是，gdb调试时，在这一行再输入stepi，就会出现以下字样    main (argc=<optimized out>, argv=<optimized out>) at bomb.c:80     80	    phase_defused(fp);                 /* Drat!  They figured it out!
    27b5:	e8 90 09 00 00       	callq  314a <explode_bomb>
    27ba:	eb f4                	jmp    27b0 <phase_1+0x18>

00000000000027bc <phase_2>: //1 2 4 8 16 32
    27bc:	f3 0f 1e fa          	endbr64 
    27c0:	53                   	push   %rbx
    27c1:	48 83 ec 20          	sub    $0x20,%rsp
    27c5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    27cc:	00 00 
    27ce:	48 89 44 24 18       	mov    %rax,0x18(%rsp) //以上在构建金丝雀值对栈进行保护，不用管他们
    27d3:	31 c0                	xor    %eax,%eax
    27d5:	48 89 e6             	mov    %rsp,%rsi
    27d8:	e8 5b 0a 00 00       	callq  3238 <read_six_numbers>
    27dd:	83 3c 24 01          	cmpl   $0x1,(%rsp) //rsp中的值与1比较，不相等则爆炸
    27e1:	75 07                	jne    27ea <phase_2+0x2e>
    27e3:	bb 01 00 00 00       	mov    $0x1,%ebx      //ebx初始化置1
    27e8:	eb 0f                	jmp    27f9 <phase_2+0x3d>
    27ea:	e8 5b 09 00 00       	callq  314a <explode_bomb>
    27ef:	eb f2                	jmp    27e3 <phase_2+0x27>
    27f1:	e8 54 09 00 00       	callq  314a <explode_bomb>
    27f6:	83 c3 01             	add    $0x1,%ebx                  //ebx自增1
    27f9:	83 fb 05             	cmp    $0x5,%ebx                  //ebx与5比较
    27fc:	7f 14                	jg     2812 <phase_2+0x56> //ebx大于5则跳出
    27fe:	48 63 d3             	movslq %ebx,%rdx                //ebx值传入rdx
    2801:	8d 43 ff             	lea    -0x1(%rbx),%eax       //rdx值（即ebx的值）-1 传入eax
    2804:	48 98                	cltq   
    2806:	8b 04 84             	mov    (%rsp,%rax,4),%eax  //rsp+rax*4里面存放的值传入eax
    2809:	01 c0                	add    %eax,%eax                //eax*2
    280b:	39 04 94             	cmp    %eax,(%rsp,%rdx,4)  //eax与rsp+rdx*4里面存放的值比较
    280e:	74 e6                	je     27f6 <phase_2+0x3a> //相等循环，不相等则爆炸
    2810:	eb df                	jmp    27f1 <phase_2+0x35>
    2812:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    2817:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    281e:	00 00 
    2820:	75 06                	jne    2828 <phase_2+0x6c>
    2822:	48 83 c4 20          	add    $0x20,%rsp
    2826:	5b                   	pop    %rbx
    2827:	c3                   	retq   
    2828:	e8 63 fa ff ff       	callq  2290 <__stack_chk_fail@plt>

000000000000282d <phase_3>:   //switch的跳转表罢了 //0 y 194
    282d:	f3 0f 1e fa          	endbr64 
    2831:	48 83 ec 28          	sub    $0x28,%rsp //rsp-40
    2835:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    283c:	00 00 
    283e:	48 89 44 24 18       	mov    %rax,0x18(%rsp) //构建金丝雀值在rsp+24，没啥用
    2843:	31 c0                	xor    %eax,%eax
    2845:	48 8d 4c 24 0f       	lea    0xf(%rsp),%rcx          //加载了rsp以上的一系列指针 +15
    284a:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx                                                   //  +16
    284f:	4c 8d 44 24 14       	lea    0x14(%rsp),%r8                                                          // +20
    2854:	48 8d 35 4a 29 00 00 	lea    0x294a(%rip),%rsi        # 51a5 <_IO_stdin_used+0x1a5>  //存放的内容是“%d %c %d”，%c是字符型
    285b:	e8 f0 fa ff ff       	callq  2350 <__isoc99_sscanf@plt>
    2860:	83 f8 02             	cmp    $0x2,%eax
    2863:	7e 20                	jle    2885 <phase_3+0x58> //应该输入大于两个值，否则爆炸
    2865:	8b 44 24 10          	mov    0x10(%rsp),%eax           //rsp+16指针所指的值写入eax，应该是输入之一
    2869:	83 f8 07             	cmp    $0x7,%eax                         //eax与7比较
    286c:	0f 87 14 01 00 00    	ja     2986 <phase_3+0x159> ///比7大则爆炸
    2872:	89 c0                	mov    %eax,%eax
    2874:	48 8d 15 e5 2a 00 00 	lea    0x2ae5(%rip),%rdx        # 5360 <_IO_stdin_used+0x360> //rip加2ae5的指针送入rdx，然后rdx的值为0x55d18d284360
    287b:	48 63 04 82          	movslq (%rdx,%rax,4),%rax        //rdx+rax*4所指的值送入rax
    287f:	48 01 d0             	add    %rdx,%rax                                //rdx加到rax
    2882:	3e ff e0             	notrack jmpq *%rax                       //跳转到rax所指的值处，即构建了一个跳转表！！！！！！！！！不知道跳到哪里
    2885:	e8 c0 08 00 00       	callq  314a <explode_bomb>
    288a:	eb d9                	jmp    2865 <phase_3+0x38>
    288c:	81 7c 24 14 c2 00 00 	cmpl   $0xc2,0x14(%rsp)       //比较rsp+20的值与0xc2（194）不相等则爆炸
    2893:	00 
    2894:	75 0a                	jne    28a0 <phase_3+0x73>
    2896:	b8 79 00 00 00       	mov    $0x79,%eax                 //十进制121输入eax
    289b:	e9 f0 00 00 00       	jmpq   2990 <phase_3+0x163>  //跳到结尾
    28a0:	e8 a5 08 00 00       	callq  314a <explode_bomb>
    28a5:	b8 79 00 00 00       	mov    $0x79,%eax
    28aa:	e9 e1 00 00 00       	jmpq   2990 <phase_3+0x163>   //跳到结尾
    28af:	83 7c 24 14 4d       	cmpl   $0x4d,0x14(%rsp)                //比较rsp+20的值与0x4d（77）不相等则爆炸
    28b4:	75 0a                	jne    28c0 <phase_3+0x93>
    28b6:	b8 6e 00 00 00       	mov    $0x6e,%eax               //十进制110输入eax
    28bb:	e9 d0 00 00 00       	jmpq   2990 <phase_3+0x163> //跳到结尾
    28c0:	e8 85 08 00 00       	callq  314a <explode_bomb>
    28c5:	b8 6e 00 00 00       	mov    $0x6e,%eax                  //十进制110输入eax
    28ca:	e9 c1 00 00 00       	jmpq   2990 <phase_3+0x163>//跳到结尾
    28cf:	81 7c 24 14 39 03 00 	cmpl   $0x339,0x14(%rsp)
    28d6:	00 
    28d7:	75 0a                	jne    28e3 <phase_3+0xb6>
    28d9:	b8 70 00 00 00       	mov    $0x70,%eax
    28de:	e9 ad 00 00 00       	jmpq   2990 <phase_3+0x163>    //跳到结尾
    28e3:	e8 62 08 00 00       	callq  314a <explode_bomb>
    28e8:	b8 70 00 00 00       	mov    $0x70,%eax
    28ed:	e9 9e 00 00 00       	jmpq   2990 <phase_3+0x163>  //跳到结尾
    28f2:	81 7c 24 14 2a 02 00 	cmpl   $0x22a,0x14(%rsp)
    28f9:	00 
    28fa:	75 0a                	jne    2906 <phase_3+0xd9>
    28fc:	b8 6c 00 00 00       	mov    $0x6c,%eax
    2901:	e9 8a 00 00 00       	jmpq   2990 <phase_3+0x163>  //跳到结尾
    2906:	e8 3f 08 00 00       	callq  314a <explode_bomb>
    290b:	b8 6c 00 00 00       	mov    $0x6c,%eax
    2910:	eb 7e                	jmp    2990 <phase_3+0x163>      //跳到结尾
    2912:	81 7c 24 14 94 02 00 	cmpl   $0x294,0x14(%rsp)
    2919:	00 
    291a:	75 07                	jne    2923 <phase_3+0xf6>
    291c:	b8 74 00 00 00       	mov    $0x74,%eax
    2921:	eb 6d                	jmp    2990 <phase_3+0x163>     //跳到结尾
    2923:	e8 22 08 00 00       	callq  314a <explode_bomb>
    2928:	b8 74 00 00 00       	mov    $0x74,%eax
    292d:	eb 61                	jmp    2990 <phase_3+0x163> //跳到结尾
    292f:	81 7c 24 14 2d 02 00 	cmpl   $0x22d,0x14(%rsp)
    2936:	00 
    2937:	75 07                	jne    2940 <phase_3+0x113>
    2939:	b8 62 00 00 00       	mov    $0x62,%eax
    293e:	eb 50                	jmp    2990 <phase_3+0x163> //跳到结尾
    2940:	e8 05 08 00 00       	callq  314a <explode_bomb>
    2945:	b8 62 00 00 00       	mov    $0x62,%eax
    294a:	eb 44                	jmp    2990 <phase_3+0x163>  //跳到结尾
    294c:	81 7c 24 14 0c 03 00 	cmpl   $0x30c,0x14(%rsp)
    2953:	00 
    2954:	75 07                	jne    295d <phase_3+0x130>
    2956:	b8 6f 00 00 00       	mov    $0x6f,%eax
    295b:	eb 33                	jmp    2990 <phase_3+0x163>     //跳到结尾
    295d:	e8 e8 07 00 00       	callq  314a <explode_bomb>
    2962:	b8 6f 00 00 00       	mov    $0x6f,%eax
    2967:	eb 27                	jmp    2990 <phase_3+0x163>    //跳到结尾
    2969:	81 7c 24 14 bb 02 00 	cmpl   $0x2bb,0x14(%rsp)
    2970:	00 
    2971:	75 07                	jne    297a <phase_3+0x14d>
    2973:	b8 6c 00 00 00       	mov    $0x6c,%eax
    2978:	eb 16                	jmp    2990 <phase_3+0x163>    //跳到结尾
    297a:	e8 cb 07 00 00       	callq  314a <explode_bomb>
    297f:	b8 6c 00 00 00       	mov    $0x6c,%eax
    2984:	eb 0a                	jmp    2990 <phase_3+0x163>    //跳到结尾
    2986:	e8 bf 07 00 00       	callq  314a <explode_bomb>
    298b:	b8 68 00 00 00       	mov    $0x68,%eax
    2990:	38 44 24 0f          	cmp    %al,0xf(%rsp)       //比较rsp+15的值与%al，不相等则爆炸，剩下的是处理后续，没用
    2994:	75 15                	jne    29ab <phase_3+0x17e>
    2996:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    299b:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    29a2:	00 00 
    29a4:	75 0c                	jne    29b2 <phase_3+0x185>
    29a6:	48 83 c4 28          	add    $0x28,%rsp
    29aa:	c3                   	retq   
    29ab:	e8 9a 07 00 00       	callq  314a <explode_bomb>
    29b0:	eb e4                	jmp    2996 <phase_3+0x169>
    29b2:	e8 d9 f8 ff ff       	callq  2290 <__stack_chk_fail@plt>

00000000000029b7 <func4>:  
    29b7:	f3 0f 1e fa          	endbr64 
    29bb:	85 ff                	test   %edi,%edi
    29bd:	7e 29                	jle    29e8 <func4+0x31>  //edi小于等于0则跳到结尾，返回0
    29bf:	55                   	push   %rbp
    29c0:	53                   	push   %rbx
    29c1:	48 83 ec 08          	sub    $0x8,%rsp       
    29c5:	89 fb                	mov    %edi,%ebx              //edi的值放入ebx
    29c7:	83 ff 01             	cmp    $0x1,%edi                //比较edi与1
    29ca:	74 22                	je     29ee <func4+0x37>    //相等则到结尾，循环
    29cc:	8d 7f ff             	lea    -0x1(%rdi),%edi          //rdi-1放入edi
    29cf:	e8 e3 ff ff ff       	callq  29b7 <func4>                //跳到开头
    29d4:	8d 2c 00             	lea    (%rax,%rax,1),%ebp
    29d7:	8d 7b fe             	lea    -0x2(%rbx),%edi
    29da:	e8 d8 ff ff ff       	callq  29b7 <func4>
    29df:	01 e8                	add    %ebp,%eax
    29e1:	48 83 c4 08          	add    $0x8,%rsp        
    29e5:	5b                   	pop    %rbx
    29e6:	5d                   	pop    %rbp
    29e7:	c3                   	retq   
    29e8:	b8 00 00 00 00       	mov    $0x0,%eax
    29ed:	c3                   	retq   
    29ee:	89 f8                	mov    %edi,%eax   //edi的值放入eax，跳回去，返回1
    29f0:	eb ef                	jmp    29e1 <func4+0x2a>  

00000000000029f2 <phase_4>:  //递归罢了//6 49
    29f2:	f3 0f 1e fa          	endbr64 
    29f6:	55                   	push   %rbp
    29f7:	53                   	push   %rbx
    29f8:	48 83 ec 18          	sub    $0x18,%rsp      //栈rsp-24
    29fc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2a03:	00 00 
    2a05:	48 89 44 24 08       	mov    %rax,0x8(%rsp)    //把rax送入栈rsp+8处
    2a0a:	31 c0                	xor    %eax,%eax
    2a0c:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx       //rcx指向rsp+4
    2a11:	48 89 e2             	mov    %rsp,%rdx               
    2a14:	48 8d 35 85 2c 00 00 	lea    0x2c85(%rip),%rsi        # 56a0 <array.3498+0x320>//读入两个数字 “%d %d”
    2a1b:	e8 30 f9 ff ff       	callq  2350 <__isoc99_sscanf@plt>
    2a20:	83 f8 02             	cmp    $0x2,%eax
    2a23:	75 06                	jne    2a2b <phase_4+0x39> //不是两个数字则爆炸
    2a25:	83 3c 24 06          	cmpl   $0x6,(%rsp)              //比较rsp所指与6
    2a29:	74 05                	je     2a30 <phase_4+0x3e>   //不相等则爆炸（第一个数字为6？）
    2a2b:	e8 1a 07 00 00       	callq  314a <explode_bomb>
    2a30:	bd 00 00 00 00       	mov    $0x0,%ebp              //
    2a35:	bb 00 00 00 00       	mov    $0x0,%ebx               //ebx，ebp 初始化为0
    2a3a:	39 1c 24             	cmp    %ebx,(%rsp)                //ebx与rsp所指（初始为6）比较，如果rsp小于等于ebx则跳出此循环
    2a3d:	7e 0e                	jle    2a4d <phase_4+0x5b>
    2a3f:	89 df                	mov    %ebx,%edi                   //ebx放入edi（第一个参数），并调用func4
    2a41:	e8 71 ff ff ff       	callq  29b7 <func4>
    2a46:	01 c5                	add    %eax,%ebp             //返回值加入ebp
    2a48:	83 c3 01             	add    $0x1,%ebx               //ebx+1
    2a4b:	eb ed                	jmp    2a3a <phase_4+0x48>
    2a4d:	39 6c 24 04          	cmp    %ebp,0x4(%rsp)  //
    2a51:	75 17                	jne    2a6a <phase_4+0x78>  //不相等则爆炸
    2a53:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    2a58:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2a5f:	00 00 
    2a61:	75 0e                	jne    2a71 <phase_4+0x7f>
    2a63:	48 83 c4 18          	add    $0x18,%rsp
    2a67:	5b                   	pop    %rbx
    2a68:	5d                   	pop    %rbp
    2a69:	c3                   	retq   
    2a6a:	e8 db 06 00 00       	callq  314a <explode_bomb>
    2a6f:	eb e2                	jmp    2a53 <phase_4+0x61>
    2a71:	e8 1a f8 ff ff       	callq  2290 <__stack_chk_fail@plt>

0000000000002a76 <phase_5>://suvw的任意排列（只要四个字符的ascii码的低3位，等于十进制的3、5、6、7就可以了）
    2a76:	f3 0f 1e fa          	endbr64 
    2a7a:	53                   	push   %rbx
    2a7b:	48 89 fb             	mov    %rdi,%rbx  //以字符串的形式读入 iics -> 0x565394da1860 在这个地址开始，以ascii码的形式被存储，所以我的iics被存为 0x69 0x69 0x63 0x73
    2a7e:	e8 d8 02 00 00       	callq  2d5b <string_length>
    2a83:	83 f8 04             	cmp    $0x4,%eax       //字符串长度不等于4就爆炸
    2a86:	75 0c                	jne    2a94 <phase_5+0x1e>
    2a88:	b9 01 00 00 00       	mov    $0x1,%ecx   //ecx初始化为1
    2a8d:	b8 00 00 00 00       	mov    $0x0,%eax   //eax初始化为0
    2a92:	eb 1f                	jmp    2ab3 <phase_5+0x3d>
    2a94:	e8 b1 06 00 00       	callq  314a <explode_bomb>
    2a99:	eb ed                	jmp    2a88 <phase_5+0x12>
    2a9b:	48 63 d0             	movslq %eax,%rdx                      //eax放入rdx        //符号扩展
    2a9e:	0f b6 14 13          	movzbl (%rbx,%rdx,1),%edx   //访问内存，rbx+rdx所指的值放入edx  //零扩展 //第一次是0x69，表明0x565394da1860指向0x69
    2aa2:	83 e2 07             	and    $0x7,%edx                        //取edx的低3位
    2aa5:	48 8d 35 d4 28 00 00 	lea    0x28d4(%rip),%rsi        # 5380 <array.3498>    //加载入rsi   可知为0x565394d9d380
    2aac:	0f af 0c 96          	imul   (%rsi,%rdx,4),%ecx               //乘法 rsi+4*rdx存放的值 与 ecx相乘
    2ab0:	83 c0 01             	add    $0x1,%eax                       //eax+1
    2ab3:	83 f8 03             	cmp    $0x3,%eax                     //eax与3比较，小于等于3就跳回去,不然就比较ecx与0x348（840），相等就结束了
    2ab6:	7e e3                	jle    2a9b <phase_5+0x25>
    2ab8:	81 f9 48 03 00 00    	cmp    $0x348,%ecx
    2abe:	75 02                	jne    2ac2 <phase_5+0x4c>
    2ac0:	5b                   	pop    %rbx
    2ac1:	c3                   	retq   
    2ac2:	e8 83 06 00 00       	callq  314a <explode_bomb>
    2ac7:	eb f7                	jmp    2ac0 <phase_5+0x4a>

0000000000002ac9 <phase_6>: //链表 //3 4 6 2 1 5
    2ac9:	f3 0f 1e fa          	endbr64 
    2acd:	41 54                	push   %r12
    2acf:	55                   	push   %rbp
    2ad0:	53                   	push   %rbx
    2ad1:	48 83 ec 60          	sub    $0x60,%rsp  //栈指针rsp-96
    2ad5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2adc:	00 00 
    2ade:	48 89 44 24 58       	mov    %rax,0x58(%rsp) //金丝雀值，没啥用
    2ae3:	31 c0                	xor    %eax,%eax
    2ae5:	48 89 e6             	mov    %rsp,%rsi
    2ae8:	e8 4b 07 00 00       	callq  3238 <read_six_numbers>  //读入六个数字，被依次存储在rsp+0/4/8…/24的位置
    2aed:	bd 00 00 00 00       	mov    $0x0,%ebp     //ebp初始化为0
    2af2:	eb 27                	jmp    2b1b <phase_6+0x52>
    2af4:	e8 51 06 00 00       	callq  314a <explode_bomb>
    2af9:	eb 33                	jmp    2b2e <phase_6+0x65>
    2afb:	83 c3 01             	add    $0x1,%ebx
    2afe:	83 fb 05             	cmp    $0x5,%ebx          //ebx与5比较，若大于则向下跳
    2b01:	7f 15                	jg     2b18 <phase_6+0x4f>
    2b03:	48 63 c5             	movslq %ebp,%rax
    2b06:	48 63 d3             	movslq %ebx,%rdx
    2b09:	8b 3c 94             	mov    (%rsp,%rdx,4),%edi
    2b0c:	39 3c 84             	cmp    %edi,(%rsp,%rax,4)
    2b0f:	75 ea                	jne    2afb <phase_6+0x32>
    2b11:	e8 34 06 00 00       	callq  314a <explode_bomb>
    2b16:	eb e3                	jmp    2afb <phase_6+0x32>
    2b18:	44 89 e5             	mov    %r12d,%ebp
    2b1b:	83 fd 05             	cmp    $0x5,%ebp        //ebp与5比较，若大于则向下跳出
    2b1e:	7f 17                	jg     2b37 <phase_6+0x6e>
    2b20:	48 63 c5             	movslq %ebp,%rax
    2b23:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    2b26:	83 e8 01             	sub    $0x1,%eax
    2b29:	83 f8 05             	cmp    $0x5,%eax
    2b2c:	77 c6                	ja     2af4 <phase_6+0x2b>
    2b2e:	44 8d 65 01          	lea    0x1(%rbp),%r12d
    2b32:	44 89 e3             	mov    %r12d,%ebx
    2b35:	eb c7                	jmp    2afe <phase_6+0x35>
    //以上为完整的一部分，检查输入的数字：必须互不相同，必须小于等于6！！！
    2b37:	be 00 00 00 00       	mov    $0x0,%esi
    2b3c:	eb 08                	jmp    2b46 <phase_6+0x7d>
    2b3e:	48 89 54 cc 20       	mov    %rdx,0x20(%rsp,%rcx,8)
    2b43:	83 c6 01             	add    $0x1,%esi
    2b46:	83 fe 05             	cmp    $0x5,%esi
    2b49:	7f 1d                	jg     2b68 <phase_6+0x9f>
    2b4b:	b8 01 00 00 00       	mov    $0x1,%eax
    2b50:	48 8d 15 d9 66 00 00 	lea    0x66d9(%rip),%rdx        # 9230 <node1>  //rdx中是 0x561aa001e230 里面是474，在e240里面是485，923，789，321，本来是node6却然后是host_table（按照node5的指针位置，查出来了是554
    2b57:	48 63 ce             	movslq %esi,%rcx
    2b5a:	39 04 8c             	cmp    %eax,(%rsp,%rcx,4)
    2b5d:	7e df                	jle    2b3e <phase_6+0x75>
    2b5f:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    2b63:	83 c0 01             	add    $0x1,%eax
    2b66:	eb ef                	jmp    2b57 <phase_6+0x8e>
    //这是一部分，根据输入的数字，把链表中的链节地址存入栈中，比如输入321456，则在栈中（从rsp+32开始）依次存放node3、node2、1、4、5、6
    2b68:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx  //把rsp+32所指的指针（node_first）写入rbx
    2b6d:	48 89 d9             	mov    %rbx,%rcx
    2b70:	b8 01 00 00 00       	mov    $0x1,%eax
    2b75:	eb 12                	jmp    2b89 <phase_6+0xc0>
    2b77:	48 63 d0             	movslq %eax,%rdx
    2b7a:	48 8b 54 d4 20       	mov    0x20(%rsp,%rdx,8),%rdx
    2b7f:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    2b83:	83 c0 01             	add    $0x1,%eax
    2b86:	48 89 d1             	mov    %rdx,%rcx
    2b89:	83 f8 05             	cmp    $0x5,%eax
    2b8c:	7e e9                	jle    2b77 <phase_6+0xae>
    //这是一部分，根据栈中的顺序，写回内存中，构建新顺序链表（按照上面的例子，node3->node2->node1->……）
    2b8e:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)  //让新链表尾指空
    2b95:	00 
    2b96:	bd 00 00 00 00       	mov    $0x0,%ebp
    2b9b:	eb 07                	jmp    2ba4 <phase_6+0xdb>
    2b9d:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    2ba1:	83 c5 01             	add    $0x1,%ebp
    2ba4:	83 fd 04             	cmp    $0x4,%ebp
    2ba7:	7f 11                	jg     2bba <phase_6+0xf1>
    2ba9:	48 8b 43 08          	mov    0x8(%rbx),%rax
    2bad:	8b 00                	mov    (%rax),%eax
    2baf:	39 03                	cmp    %eax,(%rbx)
    2bb1:	7d ea                	jge    2b9d <phase_6+0xd4>
    2bb3:	e8 92 05 00 00       	callq  314a <explode_bomb>
    //按顺序检查链表，要求数值是递减序列
    2bb8:	eb e3                	jmp    2b9d <phase_6+0xd4>
    2bba:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    2bbf:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2bc6:	00 00 
    2bc8:	75 09                	jne    2bd3 <phase_6+0x10a>
    2bca:	48 83 c4 60          	add    $0x60,%rsp
    2bce:	5b                   	pop    %rbx
    2bcf:	5d                   	pop    %rbp
    2bd0:	41 5c                	pop    %r12
    2bd2:	c3                   	retq   
    2bd3:	e8 b8 f6 ff ff       	callq  2290 <__stack_chk_fail@plt>

0000000000002bd8 <fun7>:
    2bd8:	f3 0f 1e fa          	endbr64 
    2bdc:	48 85 ff             	test   %rdi,%rdi
    2bdf:	74 32                	je     2c13 <fun7+0x3b>
    2be1:	48 83 ec 08          	sub    $0x8,%rsp
    2be5:	8b 07                	mov    (%rdi),%eax
    2be7:	39 f0                	cmp    %esi,%eax
    2be9:	7f 0c                	jg     2bf7 <fun7+0x1f>
    2beb:	75 17                	jne    2c04 <fun7+0x2c>
    2bed:	b8 00 00 00 00       	mov    $0x0,%eax
    2bf2:	48 83 c4 08          	add    $0x8,%rsp
    2bf6:	c3                   	retq   
    2bf7:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    2bfb:	e8 d8 ff ff ff       	callq  2bd8 <fun7>
    2c00:	01 c0                	add    %eax,%eax
    2c02:	eb ee                	jmp    2bf2 <fun7+0x1a>
    2c04:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    2c08:	e8 cb ff ff ff       	callq  2bd8 <fun7>
    2c0d:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    2c11:	eb df                	jmp    2bf2 <fun7+0x1a>
    2c13:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2c18:	c3                   	retq   

0000000000002c19 <secret_phase>:
    2c19:	f3 0f 1e fa          	endbr64 
    2c1d:	53                   	push   %rbx
    2c1e:	48 83 ec 10          	sub    $0x10,%rsp
    2c22:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2c29:	00 00 
    2c2b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    2c30:	31 c0                	xor    %eax,%eax
    2c32:	e8 46 06 00 00       	callq  327d <read_line>
    2c37:	48 89 c7             	mov    %rax,%rdi
    2c3a:	ba 0a 00 00 00       	mov    $0xa,%edx
    2c3f:	be 00 00 00 00       	mov    $0x0,%esi
    2c44:	e8 c7 f6 ff ff       	callq  2310 <strtol@plt>
    2c49:	48 89 c3             	mov    %rax,%rbx
    2c4c:	8d 40 ff             	lea    -0x1(%rax),%eax
    2c4f:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    2c54:	77 63                	ja     2cb9 <secret_phase+0xa0>
    2c56:	89 de                	mov    %ebx,%esi
    2c58:	48 8d 3d f1 64 00 00 	lea    0x64f1(%rip),%rdi        # 9150 <n1>
    2c5f:	e8 74 ff ff ff       	callq  2bd8 <fun7>
    2c64:	83 f8 02             	cmp    $0x2,%eax
    2c67:	75 57                	jne    2cc0 <secret_phase+0xa7>
    2c69:	48 8d 3d e0 25 00 00 	lea    0x25e0(%rip),%rdi        # 5250 <_IO_stdin_used+0x250>
    2c70:	e8 fb f5 ff ff       	callq  2270 <puts@plt>
    2c75:	48 8d 3d fc 25 00 00 	lea    0x25fc(%rip),%rdi        # 5278 <_IO_stdin_used+0x278>
    2c7c:	e8 ef f5 ff ff       	callq  2270 <puts@plt>
    2c81:	48 8d 3d 38 26 00 00 	lea    0x2638(%rip),%rdi        # 52c0 <_IO_stdin_used+0x2c0>
    2c88:	e8 e3 f5 ff ff       	callq  2270 <puts@plt>
    2c8d:	48 8d 3d 64 26 00 00 	lea    0x2664(%rip),%rdi        # 52f8 <_IO_stdin_used+0x2f8>
    2c94:	e8 d7 f5 ff ff       	callq  2270 <puts@plt>
    2c99:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    2c9e:	e8 25 07 00 00       	callq  33c8 <phase_defused>
    2ca3:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    2ca8:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2caf:	00 00 
    2cb1:	75 14                	jne    2cc7 <secret_phase+0xae>
    2cb3:	48 83 c4 10          	add    $0x10,%rsp
    2cb7:	5b                   	pop    %rbx
    2cb8:	c3                   	retq   
    2cb9:	e8 8c 04 00 00       	callq  314a <explode_bomb>
    2cbe:	eb 96                	jmp    2c56 <secret_phase+0x3d>
    2cc0:	e8 85 04 00 00       	callq  314a <explode_bomb>
    2cc5:	eb a2                	jmp    2c69 <secret_phase+0x50>
    2cc7:	e8 c4 f5 ff ff       	callq  2290 <__stack_chk_fail@plt>

0000000000002ccc <sig_handler>:
    2ccc:	f3 0f 1e fa          	endbr64 
    2cd0:	50                   	push   %rax
    2cd1:	58                   	pop    %rax
    2cd2:	48 83 ec 08          	sub    $0x8,%rsp
    2cd6:	48 8d 3d c3 26 00 00 	lea    0x26c3(%rip),%rdi        # 53a0 <array.3498+0x20>
    2cdd:	e8 8e f5 ff ff       	callq  2270 <puts@plt>
    2ce2:	bf 03 00 00 00       	mov    $0x3,%edi
    2ce7:	e8 d4 f6 ff ff       	callq  23c0 <sleep@plt>
    2cec:	48 8d 35 26 29 00 00 	lea    0x2926(%rip),%rsi        # 5619 <array.3498+0x299>
    2cf3:	bf 01 00 00 00       	mov    $0x1,%edi
    2cf8:	b8 00 00 00 00       	mov    $0x0,%eax
    2cfd:	e8 5e f6 ff ff       	callq  2360 <__printf_chk@plt>
    2d02:	48 8b 3d 37 69 00 00 	mov    0x6937(%rip),%rdi        # 9640 <stdout@@GLIBC_2.2.5>
    2d09:	e8 32 f6 ff ff       	callq  2340 <fflush@plt>
    2d0e:	bf 01 00 00 00       	mov    $0x1,%edi
    2d13:	e8 a8 f6 ff ff       	callq  23c0 <sleep@plt>
    2d18:	48 8d 3d 02 29 00 00 	lea    0x2902(%rip),%rdi        # 5621 <array.3498+0x2a1>
    2d1f:	e8 4c f5 ff ff       	callq  2270 <puts@plt>
    2d24:	bf 10 00 00 00       	mov    $0x10,%edi
    2d29:	e8 62 f6 ff ff       	callq  2390 <exit@plt>

0000000000002d2e <invalid_phase>:
    2d2e:	f3 0f 1e fa          	endbr64 
    2d32:	50                   	push   %rax
    2d33:	58                   	pop    %rax
    2d34:	48 83 ec 08          	sub    $0x8,%rsp
    2d38:	48 89 fa             	mov    %rdi,%rdx
    2d3b:	48 8d 35 e7 28 00 00 	lea    0x28e7(%rip),%rsi        # 5629 <array.3498+0x2a9>
    2d42:	bf 01 00 00 00       	mov    $0x1,%edi
    2d47:	b8 00 00 00 00       	mov    $0x0,%eax
    2d4c:	e8 0f f6 ff ff       	callq  2360 <__printf_chk@plt>
    2d51:	bf 08 00 00 00       	mov    $0x8,%edi
    2d56:	e8 35 f6 ff ff       	callq  2390 <exit@plt>

0000000000002d5b <string_length>:
    2d5b:	f3 0f 1e fa          	endbr64 
    2d5f:	b8 00 00 00 00       	mov    $0x0,%eax
    2d64:	80 3f 00             	cmpb   $0x0,(%rdi)
    2d67:	74 09                	je     2d72 <string_length+0x17>
    2d69:	48 83 c7 01          	add    $0x1,%rdi
    2d6d:	83 c0 01             	add    $0x1,%eax
    2d70:	eb f2                	jmp    2d64 <string_length+0x9>
    2d72:	c3                   	retq   

0000000000002d73 <strings_not_equal>:
    2d73:	f3 0f 1e fa          	endbr64 
    2d77:	41 54                	push   %r12
    2d79:	55                   	push   %rbp
    2d7a:	53                   	push   %rbx
    2d7b:	48 89 fb             	mov    %rdi,%rbx
    2d7e:	48 89 f5             	mov    %rsi,%rbp
    2d81:	e8 d5 ff ff ff       	callq  2d5b <string_length>
    2d86:	41 89 c4             	mov    %eax,%r12d
    2d89:	48 89 ef             	mov    %rbp,%rdi
    2d8c:	e8 ca ff ff ff       	callq  2d5b <string_length>
    2d91:	41 39 c4             	cmp    %eax,%r12d
    2d94:	75 1d                	jne    2db3 <strings_not_equal+0x40>
    2d96:	0f b6 03             	movzbl (%rbx),%eax
    2d99:	84 c0                	test   %al,%al
    2d9b:	74 0f                	je     2dac <strings_not_equal+0x39>
    2d9d:	38 45 00             	cmp    %al,0x0(%rbp)
    2da0:	75 1b                	jne    2dbd <strings_not_equal+0x4a>
    2da2:	48 83 c3 01          	add    $0x1,%rbx
    2da6:	48 83 c5 01          	add    $0x1,%rbp
    2daa:	eb ea                	jmp    2d96 <strings_not_equal+0x23>
    2dac:	b8 00 00 00 00       	mov    $0x0,%eax
    2db1:	eb 05                	jmp    2db8 <strings_not_equal+0x45>
    2db3:	b8 01 00 00 00       	mov    $0x1,%eax
    2db8:	5b                   	pop    %rbx
    2db9:	5d                   	pop    %rbp
    2dba:	41 5c                	pop    %r12
    2dbc:	c3                   	retq   
    2dbd:	b8 01 00 00 00       	mov    $0x1,%eax
    2dc2:	eb f4                	jmp    2db8 <strings_not_equal+0x45>

0000000000002dc4 <initialize_bomb>:
    2dc4:	f3 0f 1e fa          	endbr64 
    2dc8:	55                   	push   %rbp
    2dc9:	53                   	push   %rbx
    2dca:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    2dd1:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    2dd6:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    2ddd:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    2de2:	48 83 ec 58          	sub    $0x58,%rsp
    2de6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2ded:	00 00 
    2def:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    2df6:	00 
    2df7:	31 c0                	xor    %eax,%eax
    2df9:	48 8d 35 cc fe ff ff 	lea    -0x134(%rip),%rsi        # 2ccc <sig_handler>
    2e00:	bf 02 00 00 00       	mov    $0x2,%edi
    2e05:	e8 d6 f4 ff ff       	callq  22e0 <signal@plt>
    2e0a:	48 89 e7             	mov    %rsp,%rdi
    2e0d:	be 40 00 00 00       	mov    $0x40,%esi
    2e12:	e8 69 f5 ff ff       	callq  2380 <gethostname@plt>
    2e17:	85 c0                	test   %eax,%eax
    2e19:	75 06                	jne    2e21 <initialize_bomb+0x5d>
    2e1b:	89 c5                	mov    %eax,%ebp
    2e1d:	89 c3                	mov    %eax,%ebx
    2e1f:	eb 19                	jmp    2e3a <initialize_bomb+0x76>
    2e21:	48 8d 3d b0 25 00 00 	lea    0x25b0(%rip),%rdi        # 53d8 <array.3498+0x58>
    2e28:	e8 43 f4 ff ff       	callq  2270 <puts@plt>
    2e2d:	bf 08 00 00 00       	mov    $0x8,%edi
    2e32:	e8 59 f5 ff ff       	callq  2390 <exit@plt>
    2e37:	83 c3 01             	add    $0x1,%ebx
    2e3a:	48 63 c3             	movslq %ebx,%rax
    2e3d:	48 8d 15 3c 64 00 00 	lea    0x643c(%rip),%rdx        # 9280 <host_table>
    2e44:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
    2e48:	48 85 ff             	test   %rdi,%rdi
    2e4b:	74 11                	je     2e5e <initialize_bomb+0x9a>
    2e4d:	48 89 e6             	mov    %rsp,%rsi
    2e50:	e8 eb f3 ff ff       	callq  2240 <strcasecmp@plt>
    2e55:	85 c0                	test   %eax,%eax
    2e57:	75 de                	jne    2e37 <initialize_bomb+0x73>
    2e59:	bd 01 00 00 00       	mov    $0x1,%ebp
    2e5e:	85 ed                	test   %ebp,%ebp
    2e60:	74 3b                	je     2e9d <initialize_bomb+0xd9>
    2e62:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2e67:	e8 60 11 00 00       	callq  3fcc <init_driver>
    2e6c:	85 c0                	test   %eax,%eax
    2e6e:	78 43                	js     2eb3 <initialize_bomb+0xef>
    2e70:	bf 04 00 00 00       	mov    $0x4,%edi
    2e75:	e8 b6 f4 ff ff       	callq  2330 <malloc@plt>
    2e7a:	c7 00 11 fa 22 20    	movl   $0x2022fa11,(%rax)
    2e80:	48 8b 8c 24 48 20 00 	mov    0x2048(%rsp),%rcx
    2e87:	00 
    2e88:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2e8f:	00 00 
    2e91:	75 45                	jne    2ed8 <initialize_bomb+0x114>
    2e93:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    2e9a:	5b                   	pop    %rbx
    2e9b:	5d                   	pop    %rbp
    2e9c:	c3                   	retq   
    2e9d:	48 8d 3d 6c 25 00 00 	lea    0x256c(%rip),%rdi        # 5410 <array.3498+0x90>
    2ea4:	e8 c7 f3 ff ff       	callq  2270 <puts@plt>
    2ea9:	bf 08 00 00 00       	mov    $0x8,%edi
    2eae:	e8 dd f4 ff ff       	callq  2390 <exit@plt>
    2eb3:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    2eb8:	48 8d 35 7b 27 00 00 	lea    0x277b(%rip),%rsi        # 563a <array.3498+0x2ba>
    2ebf:	bf 01 00 00 00       	mov    $0x1,%edi
    2ec4:	b8 00 00 00 00       	mov    $0x0,%eax
    2ec9:	e8 92 f4 ff ff       	callq  2360 <__printf_chk@plt>
    2ece:	bf 08 00 00 00       	mov    $0x8,%edi
    2ed3:	e8 b8 f4 ff ff       	callq  2390 <exit@plt>
    2ed8:	e8 b3 f3 ff ff       	callq  2290 <__stack_chk_fail@plt>

0000000000002edd <initialize_bomb_solve>:
    2edd:	f3 0f 1e fa          	endbr64 
    2ee1:	c3                   	retq   

0000000000002ee2 <blank_line>:
    2ee2:	f3 0f 1e fa          	endbr64 
    2ee6:	55                   	push   %rbp
    2ee7:	53                   	push   %rbx
    2ee8:	48 83 ec 08          	sub    $0x8,%rsp
    2eec:	48 89 fd             	mov    %rdi,%rbp
    2eef:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    2ef3:	84 db                	test   %bl,%bl
    2ef5:	74 1e                	je     2f15 <blank_line+0x33>
    2ef7:	e8 d4 f4 ff ff       	callq  23d0 <__ctype_b_loc@plt>
    2efc:	48 8b 00             	mov    (%rax),%rax
    2eff:	48 83 c5 01          	add    $0x1,%rbp
    2f03:	48 0f be db          	movsbq %bl,%rbx
    2f07:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    2f0c:	75 e1                	jne    2eef <blank_line+0xd>
    2f0e:	b8 00 00 00 00       	mov    $0x0,%eax
    2f13:	eb 05                	jmp    2f1a <blank_line+0x38>
    2f15:	b8 01 00 00 00       	mov    $0x1,%eax
    2f1a:	48 83 c4 08          	add    $0x8,%rsp
    2f1e:	5b                   	pop    %rbx
    2f1f:	5d                   	pop    %rbp
    2f20:	c3                   	retq   

0000000000002f21 <skip>:
    2f21:	f3 0f 1e fa          	endbr64 
    2f25:	53                   	push   %rbx
    2f26:	48 63 15 3f 67 00 00 	movslq 0x673f(%rip),%rdx        # 966c <num_input_strings>
    2f2d:	48 89 d0             	mov    %rdx,%rax
    2f30:	48 c1 e0 04          	shl    $0x4,%rax
    2f34:	48 29 d0             	sub    %rdx,%rax
    2f37:	48 8d 15 42 67 00 00 	lea    0x6742(%rip),%rdx        # 9680 <input_strings>
    2f3e:	48 8d 3c c2          	lea    (%rdx,%rax,8),%rdi
    2f42:	48 8b 15 27 67 00 00 	mov    0x6727(%rip),%rdx        # 9670 <infile>
    2f49:	be 78 00 00 00       	mov    $0x78,%esi
    2f4e:	e8 7d f3 ff ff       	callq  22d0 <fgets@plt>
    2f53:	48 89 c3             	mov    %rax,%rbx
    2f56:	48 85 c0             	test   %rax,%rax
    2f59:	74 0c                	je     2f67 <skip+0x46>
    2f5b:	48 89 c7             	mov    %rax,%rdi
    2f5e:	e8 7f ff ff ff       	callq  2ee2 <blank_line>
    2f63:	85 c0                	test   %eax,%eax
    2f65:	75 bf                	jne    2f26 <skip+0x5>
    2f67:	48 89 d8             	mov    %rbx,%rax
    2f6a:	5b                   	pop    %rbx
    2f6b:	c3                   	retq   

0000000000002f6c <send_msg>:
    2f6c:	f3 0f 1e fa          	endbr64 
    2f70:	41 55                	push   %r13
    2f72:	41 54                	push   %r12
    2f74:	55                   	push   %rbp
    2f75:	53                   	push   %rbx
    2f76:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
    2f7d:	ff 
    2f7e:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    2f85:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    2f8a:	4c 39 dc             	cmp    %r11,%rsp
    2f8d:	75 ef                	jne    2f7e <send_msg+0x12>
    2f8f:	48 83 ec 58          	sub    $0x58,%rsp
    2f93:	89 fa                	mov    %edi,%edx
    2f95:	49 89 f4             	mov    %rsi,%r12
    2f98:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2f9f:	00 00 
    2fa1:	48 89 84 24 48 40 00 	mov    %rax,0x4048(%rsp)
    2fa8:	00 
    2fa9:	31 c0                	xor    %eax,%eax
    2fab:	8b 35 bb 66 00 00    	mov    0x66bb(%rip),%esi        # 966c <num_input_strings>
    2fb1:	8d 46 ff             	lea    -0x1(%rsi),%eax
    2fb4:	48 98                	cltq   
    2fb6:	48 89 c1             	mov    %rax,%rcx
    2fb9:	48 c1 e1 04          	shl    $0x4,%rcx
    2fbd:	48 29 c1             	sub    %rax,%rcx
    2fc0:	48 89 c8             	mov    %rcx,%rax
    2fc3:	48 8d 0d b6 66 00 00 	lea    0x66b6(%rip),%rcx        # 9680 <input_strings>
    2fca:	4c 8d 04 c1          	lea    (%rcx,%rax,8),%r8
    2fce:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2fd5:	b8 00 00 00 00       	mov    $0x0,%eax
    2fda:	4c 89 c7             	mov    %r8,%rdi
    2fdd:	f2 ae                	repnz scas %es:(%rdi),%al
    2fdf:	48 89 c8             	mov    %rcx,%rax
    2fe2:	48 f7 d0             	not    %rax
    2fe5:	48 83 c0 63          	add    $0x63,%rax
    2fe9:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    2fef:	0f 87 b3 00 00 00    	ja     30a8 <send_msg+0x13c>
    2ff5:	85 d2                	test   %edx,%edx
    2ff7:	0f 84 cb 00 00 00    	je     30c8 <send_msg+0x15c>
    2ffd:	48 8d 05 59 26 00 00 	lea    0x2659(%rip),%rax        # 565d <array.3498+0x2dd>
    3004:	48 8d 5c 24 40       	lea    0x40(%rsp),%rbx
    3009:	48 83 ec 08          	sub    $0x8,%rsp
    300d:	41 50                	push   %r8
    300f:	56                   	push   %rsi
    3010:	50                   	push   %rax
    3011:	4c 8d 0d 28 59 00 00 	lea    0x5928(%rip),%r9        # 8940 <authkey>
    3018:	44 8b 05 21 61 00 00 	mov    0x6121(%rip),%r8d        # 9140 <bomb_id>
    301f:	48 8d 0d 3f 26 00 00 	lea    0x263f(%rip),%rcx        # 5665 <array.3498+0x2e5>
    3026:	ba 00 20 00 00       	mov    $0x2000,%edx
    302b:	be 01 00 00 00       	mov    $0x1,%esi
    3030:	48 89 df             	mov    %rbx,%rdi
    3033:	b8 00 00 00 00       	mov    $0x0,%eax
    3038:	e8 a3 f3 ff ff       	callq  23e0 <__sprintf_chk@plt>
    303d:	48 83 c4 20          	add    $0x20,%rsp
    3041:	4c 8d 8c 24 40 20 00 	lea    0x2040(%rsp),%r9
    3048:	00 
    3049:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    304f:	48 89 d9             	mov    %rbx,%rcx
    3052:	48 8d 15 e7 50 00 00 	lea    0x50e7(%rip),%rdx        # 8140 <lab>
    3059:	48 8d 35 e0 54 00 00 	lea    0x54e0(%rip),%rsi        # 8540 <course>
    3060:	48 8d 3d d9 5c 00 00 	lea    0x5cd9(%rip),%rdi        # 8d40 <userid>
    3067:	e8 70 11 00 00       	callq  41dc <driver_post>
    306c:	89 c5                	mov    %eax,%ebp
    306e:	48 89 e7             	mov    %rsp,%rdi
    3071:	be 40 00 00 00       	mov    $0x40,%esi
    3076:	e8 05 f3 ff ff       	callq  2380 <gethostname@plt>
    307b:	41 89 c5             	mov    %eax,%r13d
    307e:	85 c0                	test   %eax,%eax
    3080:	75 52                	jne    30d4 <send_msg+0x168>
    3082:	89 c3                	mov    %eax,%ebx
    3084:	48 63 c3             	movslq %ebx,%rax
    3087:	48 8d 15 f2 61 00 00 	lea    0x61f2(%rip),%rdx        # 9280 <host_table>
    308e:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
    3092:	48 85 ff             	test   %rdi,%rdi
    3095:	74 59                	je     30f0 <send_msg+0x184>
    3097:	48 89 e6             	mov    %rsp,%rsi
    309a:	e8 a1 f1 ff ff       	callq  2240 <strcasecmp@plt>
    309f:	85 c0                	test   %eax,%eax
    30a1:	74 47                	je     30ea <send_msg+0x17e>
    30a3:	83 c3 01             	add    $0x1,%ebx
    30a6:	eb dc                	jmp    3084 <send_msg+0x118>
    30a8:	48 8d 35 99 23 00 00 	lea    0x2399(%rip),%rsi        # 5448 <array.3498+0xc8>
    30af:	bf 01 00 00 00       	mov    $0x1,%edi
    30b4:	b8 00 00 00 00       	mov    $0x0,%eax
    30b9:	e8 a2 f2 ff ff       	callq  2360 <__printf_chk@plt>
    30be:	bf 08 00 00 00       	mov    $0x8,%edi
    30c3:	e8 c8 f2 ff ff       	callq  2390 <exit@plt>
    30c8:	48 8d 05 85 25 00 00 	lea    0x2585(%rip),%rax        # 5654 <array.3498+0x2d4>
    30cf:	e9 30 ff ff ff       	jmpq   3004 <send_msg+0x98>
    30d4:	48 8d 3d 95 23 00 00 	lea    0x2395(%rip),%rdi        # 5470 <array.3498+0xf0>
    30db:	e8 90 f1 ff ff       	callq  2270 <puts@plt>
    30e0:	bf 08 00 00 00       	mov    $0x8,%edi
    30e5:	e8 a6 f2 ff ff       	callq  2390 <exit@plt>
    30ea:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    30f0:	41 83 fd 01          	cmp    $0x1,%r13d
    30f4:	74 25                	je     311b <send_msg+0x1af>
    30f6:	85 ed                	test   %ebp,%ebp
    30f8:	78 34                	js     312e <send_msg+0x1c2>
    30fa:	48 8b 84 24 48 40 00 	mov    0x4048(%rsp),%rax
    3101:	00 
    3102:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    3109:	00 00 
    310b:	75 38                	jne    3145 <send_msg+0x1d9>
    310d:	48 81 c4 58 40 00 00 	add    $0x4058,%rsp
    3114:	5b                   	pop    %rbx
    3115:	5d                   	pop    %rbp
    3116:	41 5c                	pop    %r12
    3118:	41 5d                	pop    %r13
    311a:	c3                   	retq   
    311b:	48 63 db             	movslq %ebx,%rbx
    311e:	48 8d 05 1b 26 00 00 	lea    0x261b(%rip),%rax        # 5740 <secret_tokens>
    3125:	8b 04 98             	mov    (%rax,%rbx,4),%eax
    3128:	41 89 04 24          	mov    %eax,(%r12)
    312c:	eb c8                	jmp    30f6 <send_msg+0x18a>
    312e:	48 8d bc 24 40 20 00 	lea    0x2040(%rsp),%rdi
    3135:	00 
    3136:	e8 35 f1 ff ff       	callq  2270 <puts@plt>
    313b:	bf 00 00 00 00       	mov    $0x0,%edi
    3140:	e8 4b f2 ff ff       	callq  2390 <exit@plt>
    3145:	e8 46 f1 ff ff       	callq  2290 <__stack_chk_fail@plt>

000000000000314a <explode_bomb>:
    314a:	f3 0f 1e fa          	endbr64 
    314e:	55                   	push   %rbp
    314f:	53                   	push   %rbx
    3150:	48 83 ec 68          	sub    $0x68,%rsp
    3154:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    315b:	00 00 
    315d:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    3162:	31 c0                	xor    %eax,%eax
    3164:	48 8d 3d 09 25 00 00 	lea    0x2509(%rip),%rdi        # 5674 <array.3498+0x2f4>
    316b:	e8 00 f1 ff ff       	callq  2270 <puts@plt>
    3170:	48 8d 3d 06 25 00 00 	lea    0x2506(%rip),%rdi        # 567d <array.3498+0x2fd>
    3177:	e8 f4 f0 ff ff       	callq  2270 <puts@plt>
    317c:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    3181:	be 40 00 00 00       	mov    $0x40,%esi
    3186:	e8 f5 f1 ff ff       	callq  2380 <gethostname@plt>
    318b:	85 c0                	test   %eax,%eax
    318d:	75 2a                	jne    31b9 <explode_bomb+0x6f>
    318f:	89 c5                	mov    %eax,%ebp
    3191:	89 c3                	mov    %eax,%ebx
    3193:	48 63 c3             	movslq %ebx,%rax
    3196:	48 8d 15 e3 60 00 00 	lea    0x60e3(%rip),%rdx        # 9280 <host_table>
    319d:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
    31a1:	48 85 ff             	test   %rdi,%rdi
    31a4:	74 2e                	je     31d4 <explode_bomb+0x8a>
    31a6:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
    31ab:	e8 90 f0 ff ff       	callq  2240 <strcasecmp@plt>
    31b0:	85 c0                	test   %eax,%eax
    31b2:	74 1b                	je     31cf <explode_bomb+0x85>
    31b4:	83 c3 01             	add    $0x1,%ebx
    31b7:	eb da                	jmp    3193 <explode_bomb+0x49>
    31b9:	48 8d 3d b0 22 00 00 	lea    0x22b0(%rip),%rdi        # 5470 <array.3498+0xf0>
    31c0:	e8 ab f0 ff ff       	callq  2270 <puts@plt>
    31c5:	bf 08 00 00 00       	mov    $0x8,%edi
    31ca:	e8 c1 f1 ff ff       	callq  2390 <exit@plt>
    31cf:	bd 01 00 00 00       	mov    $0x1,%ebp
    31d4:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%rsp)
    31db:	00 
    31dc:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
    31e1:	bf 00 00 00 00       	mov    $0x0,%edi
    31e6:	e8 81 fd ff ff       	callq  2f6c <send_msg>
    31eb:	48 63 db             	movslq %ebx,%rbx
    31ee:	48 8d 05 4b 25 00 00 	lea    0x254b(%rip),%rax        # 5740 <secret_tokens>
    31f5:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
    31f9:	39 0c 98             	cmp    %ecx,(%rax,%rbx,4)
    31fc:	75 04                	jne    3202 <explode_bomb+0xb8>
    31fe:	85 ed                	test   %ebp,%ebp
    3200:	75 20                	jne    3222 <explode_bomb+0xd8>
    3202:	48 8d 35 8f 22 00 00 	lea    0x228f(%rip),%rsi        # 5498 <array.3498+0x118>
    3209:	bf 01 00 00 00       	mov    $0x1,%edi
    320e:	b8 00 00 00 00       	mov    $0x0,%eax
    3213:	e8 48 f1 ff ff       	callq  2360 <__printf_chk@plt>
    3218:	bf 08 00 00 00       	mov    $0x8,%edi
    321d:	e8 6e f1 ff ff       	callq  2390 <exit@plt>
    3222:	48 8d 3d b7 22 00 00 	lea    0x22b7(%rip),%rdi        # 54e0 <array.3498+0x160>
    3229:	e8 42 f0 ff ff       	callq  2270 <puts@plt>
    322e:	bf 08 00 00 00       	mov    $0x8,%edi
    3233:	e8 58 f1 ff ff       	callq  2390 <exit@plt>

0000000000003238 <read_six_numbers>:
    3238:	f3 0f 1e fa          	endbr64 
    323c:	48 83 ec 08          	sub    $0x8,%rsp
    3240:	48 89 f2             	mov    %rsi,%rdx
    3243:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    3247:	48 8d 46 14          	lea    0x14(%rsi),%rax
    324b:	50                   	push   %rax
    324c:	48 8d 46 10          	lea    0x10(%rsi),%rax
    3250:	50                   	push   %rax
    3251:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    3255:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    3259:	48 8d 35 34 24 00 00 	lea    0x2434(%rip),%rsi        # 5694 <array.3498+0x314>
    3260:	b8 00 00 00 00       	mov    $0x0,%eax
    3265:	e8 e6 f0 ff ff       	callq  2350 <__isoc99_sscanf@plt>
    326a:	48 83 c4 10          	add    $0x10,%rsp
    326e:	83 f8 05             	cmp    $0x5,%eax
    3271:	7e 05                	jle    3278 <read_six_numbers+0x40>
    3273:	48 83 c4 08          	add    $0x8,%rsp
    3277:	c3                   	retq   
    3278:	e8 cd fe ff ff       	callq  314a <explode_bomb>

000000000000327d <read_line>:
    327d:	f3 0f 1e fa          	endbr64 
    3281:	48 83 ec 08          	sub    $0x8,%rsp
    3285:	b8 00 00 00 00       	mov    $0x0,%eax
    328a:	e8 92 fc ff ff       	callq  2f21 <skip>
    328f:	48 85 c0             	test   %rax,%rax
    3292:	74 72                	je     3306 <read_line+0x89>
    3294:	8b 15 d2 63 00 00    	mov    0x63d2(%rip),%edx        # 966c <num_input_strings>
    329a:	48 63 ca             	movslq %edx,%rcx
    329d:	48 89 c8             	mov    %rcx,%rax
    32a0:	48 c1 e0 04          	shl    $0x4,%rax
    32a4:	48 29 c8             	sub    %rcx,%rax
    32a7:	48 8d 0d d2 63 00 00 	lea    0x63d2(%rip),%rcx        # 9680 <input_strings>
    32ae:	48 8d 34 c1          	lea    (%rcx,%rax,8),%rsi
    32b2:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    32b9:	b8 00 00 00 00       	mov    $0x0,%eax
    32be:	48 89 f7             	mov    %rsi,%rdi
    32c1:	f2 ae                	repnz scas %es:(%rdi),%al
    32c3:	48 f7 d1             	not    %rcx
    32c6:	48 83 e9 01          	sub    $0x1,%rcx
    32ca:	83 f9 76             	cmp    $0x76,%ecx
    32cd:	0f 8f ab 00 00 00    	jg     337e <read_line+0x101>
    32d3:	83 e9 01             	sub    $0x1,%ecx
    32d6:	48 63 c9             	movslq %ecx,%rcx
    32d9:	48 63 fa             	movslq %edx,%rdi
    32dc:	48 89 f8             	mov    %rdi,%rax
    32df:	48 c1 e0 04          	shl    $0x4,%rax
    32e3:	48 29 f8             	sub    %rdi,%rax
    32e6:	48 8d 3d 93 63 00 00 	lea    0x6393(%rip),%rdi        # 9680 <input_strings>
    32ed:	48 8d 04 c7          	lea    (%rdi,%rax,8),%rax
    32f1:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
    32f5:	83 c2 01             	add    $0x1,%edx
    32f8:	89 15 6e 63 00 00    	mov    %edx,0x636e(%rip)        # 966c <num_input_strings>
    32fe:	48 89 f0             	mov    %rsi,%rax
    3301:	48 83 c4 08          	add    $0x8,%rsp
    3305:	c3                   	retq   
    3306:	48 8b 05 43 63 00 00 	mov    0x6343(%rip),%rax        # 9650 <stdin@@GLIBC_2.2.5>
    330d:	48 39 05 5c 63 00 00 	cmp    %rax,0x635c(%rip)        # 9670 <infile>
    3314:	74 1b                	je     3331 <read_line+0xb4>
    3316:	48 8d 3d a7 23 00 00 	lea    0x23a7(%rip),%rdi        # 56c4 <array.3498+0x344>
    331d:	e8 fe ee ff ff       	callq  2220 <getenv@plt>
    3322:	48 85 c0             	test   %rax,%rax
    3325:	74 20                	je     3347 <read_line+0xca>
    3327:	bf 00 00 00 00       	mov    $0x0,%edi
    332c:	e8 5f f0 ff ff       	callq  2390 <exit@plt>
    3331:	48 8d 3d 6e 23 00 00 	lea    0x236e(%rip),%rdi        # 56a6 <array.3498+0x326>
    3338:	e8 33 ef ff ff       	callq  2270 <puts@plt>
    333d:	bf 08 00 00 00       	mov    $0x8,%edi
    3342:	e8 49 f0 ff ff       	callq  2390 <exit@plt>
    3347:	48 8b 05 02 63 00 00 	mov    0x6302(%rip),%rax        # 9650 <stdin@@GLIBC_2.2.5>
    334e:	48 89 05 1b 63 00 00 	mov    %rax,0x631b(%rip)        # 9670 <infile>
    3355:	b8 00 00 00 00       	mov    $0x0,%eax
    335a:	e8 c2 fb ff ff       	callq  2f21 <skip>
    335f:	48 85 c0             	test   %rax,%rax
    3362:	0f 85 2c ff ff ff    	jne    3294 <read_line+0x17>
    3368:	48 8d 3d 37 23 00 00 	lea    0x2337(%rip),%rdi        # 56a6 <array.3498+0x326>
    336f:	e8 fc ee ff ff       	callq  2270 <puts@plt>
    3374:	bf 00 00 00 00       	mov    $0x0,%edi
    3379:	e8 12 f0 ff ff       	callq  2390 <exit@plt>
    337e:	48 8d 3d 4a 23 00 00 	lea    0x234a(%rip),%rdi        # 56cf <array.3498+0x34f>
    3385:	e8 e6 ee ff ff       	callq  2270 <puts@plt>
    338a:	8b 05 dc 62 00 00    	mov    0x62dc(%rip),%eax        # 966c <num_input_strings>
    3390:	8d 50 01             	lea    0x1(%rax),%edx
    3393:	89 15 d3 62 00 00    	mov    %edx,0x62d3(%rip)        # 966c <num_input_strings>
    3399:	48 98                	cltq   
    339b:	48 6b c0 78          	imul   $0x78,%rax,%rax
    339f:	48 8d 15 da 62 00 00 	lea    0x62da(%rip),%rdx        # 9680 <input_strings>
    33a6:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    33ad:	75 6e 63 
    33b0:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    33b7:	2a 2a 00 
    33ba:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    33be:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    33c3:	e8 82 fd ff ff       	callq  314a <explode_bomb>

00000000000033c8 <phase_defused>:     //解决问题了！！！
    33c8:	f3 0f 1e fa          	endbr64 
    33cc:	41 54                	push   %r12
    33ce:	55                   	push   %rbp
    33cf:	53                   	push   %rbx
    33d0:	48 83 ec 50          	sub    $0x50,%rsp
    33d4:	49 89 fc             	mov    %rdi,%r12
    33d7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    33de:	00 00 
    33e0:	48 89 44 24 48       	mov    %rax,0x48(%rsp) //金丝雀值，没啥用
    33e5:	31 c0                	xor    %eax,%eax
    33e7:	48 89 e7             	mov    %rsp,%rdi
    33ea:	be 40 00 00 00       	mov    $0x40,%esi
    33ef:	e8 8c ef ff ff       	callq  2380 <gethostname@plt>
    33f4:	85 c0                	test   %eax,%eax
    33f6:	75 06                	jne    33fe <phase_defused+0x36> //不为0则退出，这应该只是一个判断正常运行的语句，不影响
    33f8:	89 c5                	mov    %eax,%ebp
    33fa:	89 c3                	mov    %eax,%ebx
    33fc:	eb 19                	jmp    3417 <phase_defused+0x4f>  //跳下
    33fe:	48 8d 3d 6b 20 00 00 	lea    0x206b(%rip),%rdi        # 5470 <array.3498+0xf0> 
    3405:	e8 66 ee ff ff       	callq  2270 <puts@plt>
    340a:	bf 08 00 00 00       	mov    $0x8,%edi
    340f:	e8 7c ef ff ff       	callq  2390 <exit@plt>  //退出？
    3414:	83 c3 01             	add    $0x1,%ebx
    3417:	48 63 c3             	movslq %ebx,%rax                         //接上
    341a:	48 8d 15 5f 5e 00 00 	lea    0x5e5f(%rip),%rdx        # 9280 <host_table>  //之后rdx为0x555e4b4af280
    3421:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
    3425:	48 85 ff             	test   %rdi,%rdi                 //等于0则跳转
    3428:	74 11                	je     343b <phase_defused+0x73>
    342a:	48 89 e6             	mov    %rsp,%rsi
    342d:	e8 0e ee ff ff       	callq  2240 <strcasecmp@plt>
    3432:	85 c0                	test   %eax,%eax
    3434:	75 de                	jne    3414 <phase_defused+0x4c>
    3436:	bd 01 00 00 00       	mov    $0x1,%ebp
    343b:	41 c7 04 24 00 00 00 	movl   $0x0,(%r12)
    3442:	00 
    3443:	4c 89 e6             	mov    %r12,%rsi
    3446:	bf 01 00 00 00       	mov    $0x1,%edi
    344b:	e8 1c fb ff ff       	callq  2f6c <send_msg>
    3450:	48 63 db             	movslq %ebx,%rbx
    3453:	48 8d 05 e6 22 00 00 	lea    0x22e6(%rip),%rax        # 5740 <secret_tokens>     //为0x555e4b4ab740
    345a:	8b 04 98             	mov    (%rax,%rbx,4),%eax
    345d:	41 39 04 24          	cmp    %eax,(%r12)                //r12中是Prog
    3461:	75 2a                	jne    348d <phase_defused+0xc5> //不相等则进入退出流程
    3463:	85 ed                	test   %ebp,%ebp
    3465:	74 26                	je     348d <phase_defused+0xc5>   //等于0则进入退出流程
    3467:	83 3d fe 61 00 00 06 	cmpl   $0x6,0x61fe(%rip)        # 966c <num_input_strings>  //完成了六个关卡之后才会等于6，直接跳转到 abracadabra？
    346e:	74 3d                	je     34ad <phase_defused+0xe5>
    3470:	48 8b 44 24 48       	mov    0x48(%rsp),%rax   //这里是正常/普通的结束环节（以下
    3475:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    347c:	00 00 
    347e:	0f 85 87 00 00 00    	jne    350b <phase_defused+0x143>
    3484:	48 83 c4 50          	add    $0x50,%rsp
    3488:	5b                   	pop    %rbx
    3489:	5d                   	pop    %rbp
    348a:	41 5c                	pop    %r12
    348c:	c3                   	retq                                            //（以上
    348d:	48 8d 35 04 20 00 00 	lea    0x2004(%rip),%rsi        # 5498 <array.3498+0x118>
    3494:	bf 01 00 00 00       	mov    $0x1,%edi
    3499:	b8 00 00 00 00       	mov    $0x0,%eax
    349e:	e8 bd ee ff ff       	callq  2360 <__printf_chk@plt>
    34a3:	bf 08 00 00 00       	mov    $0x8,%edi
    34a8:	e8 e3 ee ff ff       	callq  2390 <exit@plt>        //退出？
    34ad:	e8 c6 f1 ff ff       	callq  2678 <abracadabra>     //召唤了！！！！！！
    34b2:	85 c0                	test   %eax,%eax                    //测试abra…的返回值，若不等于0，则跳转alohomora；若相等则失败，正常结束
    34b4:	75 1a                	jne    34d0 <phase_defused+0x108>
    34b6:	48 8d 3d eb 20 00 00 	lea    0x20eb(%rip),%rdi        # 55a8 <array.3498+0x228> //应该是一些整活的话
    34bd:	e8 ae ed ff ff       	callq  2270 <puts@plt>
    34c2:	48 8d 3d 0f 21 00 00 	lea    0x210f(%rip),%rdi        # 55d8 <array.3498+0x258> //应该是一些整活的话
    34c9:	e8 a2 ed ff ff       	callq  2270 <puts@plt>
    34ce:	eb a0                	jmp    3470 <phase_defused+0xa8> //回到正常结束
    34d0:	e8 30 f2 ff ff       	callq  2705 <alohomora>      //测试alo 
    34d5:	85 c0                	test   %eax,%eax 
    34d7:	74 24                	je     34fd <phase_defused+0x135>
    34d9:	48 8d 3d 28 20 00 00 	lea    0x2028(%rip),%rdi        # 5508 <array.3498+0x188>
    34e0:	e8 8b ed ff ff       	callq  2270 <puts@plt>
    34e5:	48 8d 3d 44 20 00 00 	lea    0x2044(%rip),%rdi        # 5530 <array.3498+0x1b0>
    34ec:	e8 7f ed ff ff       	callq  2270 <puts@plt>
    34f1:	b8 00 00 00 00       	mov    $0x0,%eax
    34f6:	e8 1e f7 ff ff       	callq  2c19 <secret_phase>  //召唤！！！！！
    34fb:	eb b9                	jmp    34b6 <phase_defused+0xee>
    34fd:	48 8d 3d 64 20 00 00 	lea    0x2064(%rip),%rdi        # 5568 <array.3498+0x1e8>
    3504:	e8 67 ed ff ff       	callq  2270 <puts@plt>
    3509:	eb ab                	jmp    34b6 <phase_defused+0xee>
    350b:	e8 80 ed ff ff       	callq  2290 <__stack_chk_fail@plt>

0000000000003510 <rio_readinitb>:
    3510:	89 37                	mov    %esi,(%rdi)
    3512:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
    3519:	48 8d 47 10          	lea    0x10(%rdi),%rax
    351d:	48 89 47 08          	mov    %rax,0x8(%rdi)
    3521:	c3                   	retq   

0000000000003522 <sigalrm_handler>:
    3522:	f3 0f 1e fa          	endbr64 
    3526:	50                   	push   %rax
    3527:	58                   	pop    %rax
    3528:	48 83 ec 08          	sub    $0x8,%rsp
    352c:	b9 00 00 00 00       	mov    $0x0,%ecx
    3531:	48 8d 15 28 22 00 00 	lea    0x2228(%rip),%rdx        # 5760 <secret_tokens+0x20>
    3538:	be 01 00 00 00       	mov    $0x1,%esi
    353d:	48 8b 3d 1c 61 00 00 	mov    0x611c(%rip),%rdi        # 9660 <stderr@@GLIBC_2.2.5>
    3544:	b8 00 00 00 00       	mov    $0x0,%eax
    3549:	e8 62 ee ff ff       	callq  23b0 <__fprintf_chk@plt>
    354e:	bf 01 00 00 00       	mov    $0x1,%edi
    3553:	e8 38 ee ff ff       	callq  2390 <exit@plt>

0000000000003558 <rio_writen>:
    3558:	41 55                	push   %r13
    355a:	41 54                	push   %r12
    355c:	55                   	push   %rbp
    355d:	53                   	push   %rbx
    355e:	48 83 ec 08          	sub    $0x8,%rsp
    3562:	41 89 fc             	mov    %edi,%r12d
    3565:	48 89 f5             	mov    %rsi,%rbp
    3568:	49 89 d5             	mov    %rdx,%r13
    356b:	48 89 d3             	mov    %rdx,%rbx
    356e:	eb 06                	jmp    3576 <rio_writen+0x1e>
    3570:	48 29 c3             	sub    %rax,%rbx
    3573:	48 01 c5             	add    %rax,%rbp
    3576:	48 85 db             	test   %rbx,%rbx
    3579:	74 24                	je     359f <rio_writen+0x47>
    357b:	48 89 da             	mov    %rbx,%rdx
    357e:	48 89 ee             	mov    %rbp,%rsi
    3581:	44 89 e7             	mov    %r12d,%edi
    3584:	e8 f7 ec ff ff       	callq  2280 <write@plt>
    3589:	48 85 c0             	test   %rax,%rax
    358c:	7f e2                	jg     3570 <rio_writen+0x18>
    358e:	e8 bd ec ff ff       	callq  2250 <__errno_location@plt>
    3593:	83 38 04             	cmpl   $0x4,(%rax)
    3596:	75 15                	jne    35ad <rio_writen+0x55>
    3598:	b8 00 00 00 00       	mov    $0x0,%eax
    359d:	eb d1                	jmp    3570 <rio_writen+0x18>
    359f:	4c 89 e8             	mov    %r13,%rax
    35a2:	48 83 c4 08          	add    $0x8,%rsp
    35a6:	5b                   	pop    %rbx
    35a7:	5d                   	pop    %rbp
    35a8:	41 5c                	pop    %r12
    35aa:	41 5d                	pop    %r13
    35ac:	c3                   	retq   
    35ad:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    35b4:	eb ec                	jmp    35a2 <rio_writen+0x4a>

00000000000035b6 <rio_read>:
    35b6:	41 55                	push   %r13
    35b8:	41 54                	push   %r12
    35ba:	55                   	push   %rbp
    35bb:	53                   	push   %rbx
    35bc:	48 83 ec 08          	sub    $0x8,%rsp
    35c0:	48 89 fb             	mov    %rdi,%rbx
    35c3:	49 89 f5             	mov    %rsi,%r13
    35c6:	49 89 d4             	mov    %rdx,%r12
    35c9:	eb 17                	jmp    35e2 <rio_read+0x2c>
    35cb:	e8 80 ec ff ff       	callq  2250 <__errno_location@plt>
    35d0:	83 38 04             	cmpl   $0x4,(%rax)
    35d3:	74 0d                	je     35e2 <rio_read+0x2c>
    35d5:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    35dc:	eb 54                	jmp    3632 <rio_read+0x7c>
    35de:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    35e2:	8b 6b 04             	mov    0x4(%rbx),%ebp
    35e5:	85 ed                	test   %ebp,%ebp
    35e7:	7f 23                	jg     360c <rio_read+0x56>
    35e9:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
    35ed:	8b 3b                	mov    (%rbx),%edi
    35ef:	ba 00 20 00 00       	mov    $0x2000,%edx
    35f4:	48 89 ee             	mov    %rbp,%rsi
    35f7:	e8 c4 ec ff ff       	callq  22c0 <read@plt>
    35fc:	89 43 04             	mov    %eax,0x4(%rbx)
    35ff:	85 c0                	test   %eax,%eax
    3601:	78 c8                	js     35cb <rio_read+0x15>
    3603:	75 d9                	jne    35de <rio_read+0x28>
    3605:	b8 00 00 00 00       	mov    $0x0,%eax
    360a:	eb 26                	jmp    3632 <rio_read+0x7c>
    360c:	89 e8                	mov    %ebp,%eax
    360e:	4c 39 e0             	cmp    %r12,%rax
    3611:	72 03                	jb     3616 <rio_read+0x60>
    3613:	44 89 e5             	mov    %r12d,%ebp
    3616:	4c 63 e5             	movslq %ebp,%r12
    3619:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    361d:	4c 89 e2             	mov    %r12,%rdx
    3620:	4c 89 ef             	mov    %r13,%rdi
    3623:	e8 f8 ec ff ff       	callq  2320 <memcpy@plt>
    3628:	4c 01 63 08          	add    %r12,0x8(%rbx)
    362c:	29 6b 04             	sub    %ebp,0x4(%rbx)
    362f:	4c 89 e0             	mov    %r12,%rax
    3632:	48 83 c4 08          	add    $0x8,%rsp
    3636:	5b                   	pop    %rbx
    3637:	5d                   	pop    %rbp
    3638:	41 5c                	pop    %r12
    363a:	41 5d                	pop    %r13
    363c:	c3                   	retq   

000000000000363d <rio_readlineb>:
    363d:	41 55                	push   %r13
    363f:	41 54                	push   %r12
    3641:	55                   	push   %rbp
    3642:	53                   	push   %rbx
    3643:	48 83 ec 18          	sub    $0x18,%rsp
    3647:	49 89 fd             	mov    %rdi,%r13
    364a:	48 89 f5             	mov    %rsi,%rbp
    364d:	49 89 d4             	mov    %rdx,%r12
    3650:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3657:	00 00 
    3659:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    365e:	31 c0                	xor    %eax,%eax
    3660:	bb 01 00 00 00       	mov    $0x1,%ebx
    3665:	eb 18                	jmp    367f <rio_readlineb+0x42>
    3667:	85 c0                	test   %eax,%eax
    3669:	75 65                	jne    36d0 <rio_readlineb+0x93>
    366b:	48 83 fb 01          	cmp    $0x1,%rbx
    366f:	75 3d                	jne    36ae <rio_readlineb+0x71>
    3671:	b8 00 00 00 00       	mov    $0x0,%eax
    3676:	eb 3d                	jmp    36b5 <rio_readlineb+0x78>
    3678:	48 83 c3 01          	add    $0x1,%rbx
    367c:	48 89 d5             	mov    %rdx,%rbp
    367f:	4c 39 e3             	cmp    %r12,%rbx
    3682:	73 2a                	jae    36ae <rio_readlineb+0x71>
    3684:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
    3689:	ba 01 00 00 00       	mov    $0x1,%edx
    368e:	4c 89 ef             	mov    %r13,%rdi
    3691:	e8 20 ff ff ff       	callq  35b6 <rio_read>
    3696:	83 f8 01             	cmp    $0x1,%eax
    3699:	75 cc                	jne    3667 <rio_readlineb+0x2a>
    369b:	48 8d 55 01          	lea    0x1(%rbp),%rdx
    369f:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
    36a4:	88 45 00             	mov    %al,0x0(%rbp)
    36a7:	3c 0a                	cmp    $0xa,%al
    36a9:	75 cd                	jne    3678 <rio_readlineb+0x3b>
    36ab:	48 89 d5             	mov    %rdx,%rbp
    36ae:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    36b2:	48 89 d8             	mov    %rbx,%rax
    36b5:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    36ba:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    36c1:	00 00 
    36c3:	75 14                	jne    36d9 <rio_readlineb+0x9c>
    36c5:	48 83 c4 18          	add    $0x18,%rsp
    36c9:	5b                   	pop    %rbx
    36ca:	5d                   	pop    %rbp
    36cb:	41 5c                	pop    %r12
    36cd:	41 5d                	pop    %r13
    36cf:	c3                   	retq   
    36d0:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    36d7:	eb dc                	jmp    36b5 <rio_readlineb+0x78>
    36d9:	e8 b2 eb ff ff       	callq  2290 <__stack_chk_fail@plt>

00000000000036de <urlencode>:
    36de:	41 54                	push   %r12
    36e0:	55                   	push   %rbp
    36e1:	53                   	push   %rbx
    36e2:	48 83 ec 10          	sub    $0x10,%rsp
    36e6:	48 89 fb             	mov    %rdi,%rbx
    36e9:	48 89 f5             	mov    %rsi,%rbp
    36ec:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    36f3:	00 00 
    36f5:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    36fa:	31 c0                	xor    %eax,%eax
    36fc:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    3703:	f2 ae                	repnz scas %es:(%rdi),%al
    3705:	48 f7 d1             	not    %rcx
    3708:	8d 41 ff             	lea    -0x1(%rcx),%eax
    370b:	eb 0f                	jmp    371c <urlencode+0x3e>
    370d:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    3711:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    3715:	48 83 c3 01          	add    $0x1,%rbx
    3719:	44 89 e0             	mov    %r12d,%eax
    371c:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
    3720:	85 c0                	test   %eax,%eax
    3722:	0f 84 a8 00 00 00    	je     37d0 <urlencode+0xf2>
    3728:	44 0f b6 03          	movzbl (%rbx),%r8d
    372c:	41 80 f8 2a          	cmp    $0x2a,%r8b
    3730:	0f 94 c2             	sete   %dl
    3733:	41 80 f8 2d          	cmp    $0x2d,%r8b
    3737:	0f 94 c0             	sete   %al
    373a:	08 c2                	or     %al,%dl
    373c:	75 cf                	jne    370d <urlencode+0x2f>
    373e:	41 80 f8 2e          	cmp    $0x2e,%r8b
    3742:	74 c9                	je     370d <urlencode+0x2f>
    3744:	41 80 f8 5f          	cmp    $0x5f,%r8b
    3748:	74 c3                	je     370d <urlencode+0x2f>
    374a:	41 8d 40 d0          	lea    -0x30(%r8),%eax
    374e:	3c 09                	cmp    $0x9,%al
    3750:	76 bb                	jbe    370d <urlencode+0x2f>
    3752:	41 8d 40 bf          	lea    -0x41(%r8),%eax
    3756:	3c 19                	cmp    $0x19,%al
    3758:	76 b3                	jbe    370d <urlencode+0x2f>
    375a:	41 8d 40 9f          	lea    -0x61(%r8),%eax
    375e:	3c 19                	cmp    $0x19,%al
    3760:	76 ab                	jbe    370d <urlencode+0x2f>
    3762:	41 80 f8 20          	cmp    $0x20,%r8b
    3766:	74 56                	je     37be <urlencode+0xe0>
    3768:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    376c:	3c 5f                	cmp    $0x5f,%al
    376e:	0f 96 c2             	setbe  %dl
    3771:	41 80 f8 09          	cmp    $0x9,%r8b
    3775:	0f 94 c0             	sete   %al
    3778:	08 c2                	or     %al,%dl
    377a:	74 4f                	je     37cb <urlencode+0xed>
    377c:	48 89 e7             	mov    %rsp,%rdi
    377f:	45 0f b6 c0          	movzbl %r8b,%r8d
    3783:	48 8d 0d 8b 20 00 00 	lea    0x208b(%rip),%rcx        # 5815 <secret_tokens+0xd5>
    378a:	ba 08 00 00 00       	mov    $0x8,%edx
    378f:	be 01 00 00 00       	mov    $0x1,%esi
    3794:	b8 00 00 00 00       	mov    $0x0,%eax
    3799:	e8 42 ec ff ff       	callq  23e0 <__sprintf_chk@plt>
    379e:	0f b6 04 24          	movzbl (%rsp),%eax
    37a2:	88 45 00             	mov    %al,0x0(%rbp)
    37a5:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
    37aa:	88 45 01             	mov    %al,0x1(%rbp)
    37ad:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
    37b2:	88 45 02             	mov    %al,0x2(%rbp)
    37b5:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    37b9:	e9 57 ff ff ff       	jmpq   3715 <urlencode+0x37>
    37be:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    37c2:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    37c6:	e9 4a ff ff ff       	jmpq   3715 <urlencode+0x37>
    37cb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    37d0:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    37d5:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    37dc:	00 00 
    37de:	75 09                	jne    37e9 <urlencode+0x10b>
    37e0:	48 83 c4 10          	add    $0x10,%rsp
    37e4:	5b                   	pop    %rbx
    37e5:	5d                   	pop    %rbp
    37e6:	41 5c                	pop    %r12
    37e8:	c3                   	retq   
    37e9:	e8 a2 ea ff ff       	callq  2290 <__stack_chk_fail@plt>

00000000000037ee <submitr>:
    37ee:	f3 0f 1e fa          	endbr64 
    37f2:	41 57                	push   %r15
    37f4:	41 56                	push   %r14
    37f6:	41 55                	push   %r13
    37f8:	41 54                	push   %r12
    37fa:	55                   	push   %rbp
    37fb:	53                   	push   %rbx
    37fc:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
    3803:	ff 
    3804:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    380b:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    3810:	4c 39 dc             	cmp    %r11,%rsp
    3813:	75 ef                	jne    3804 <submitr+0x16>
    3815:	48 83 ec 68          	sub    $0x68,%rsp
    3819:	49 89 fc             	mov    %rdi,%r12
    381c:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
    3820:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    3825:	49 89 cd             	mov    %rcx,%r13
    3828:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    382d:	4d 89 ce             	mov    %r9,%r14
    3830:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
    3837:	00 
    3838:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    383f:	00 00 
    3841:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
    3848:	00 
    3849:	31 c0                	xor    %eax,%eax
    384b:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    3852:	00 
    3853:	ba 00 00 00 00       	mov    $0x0,%edx
    3858:	be 01 00 00 00       	mov    $0x1,%esi
    385d:	bf 02 00 00 00       	mov    $0x2,%edi
    3862:	e8 89 eb ff ff       	callq  23f0 <socket@plt>
    3867:	85 c0                	test   %eax,%eax
    3869:	0f 88 a5 02 00 00    	js     3b14 <submitr+0x326>
    386f:	89 c3                	mov    %eax,%ebx
    3871:	4c 89 e7             	mov    %r12,%rdi
    3874:	e8 77 ea ff ff       	callq  22f0 <gethostbyname@plt>
    3879:	48 85 c0             	test   %rax,%rax
    387c:	0f 84 de 02 00 00    	je     3b60 <submitr+0x372>
    3882:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
    3887:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
    388e:	00 00 
    3890:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    3897:	00 00 
    3899:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
    38a0:	48 63 50 14          	movslq 0x14(%rax),%rdx
    38a4:	48 8b 40 18          	mov    0x18(%rax),%rax
    38a8:	48 8b 30             	mov    (%rax),%rsi
    38ab:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
    38b0:	b9 0c 00 00 00       	mov    $0xc,%ecx
    38b5:	e8 46 ea ff ff       	callq  2300 <__memmove_chk@plt>
    38ba:	0f b7 74 24 1c       	movzwl 0x1c(%rsp),%esi
    38bf:	66 c1 c6 08          	rol    $0x8,%si
    38c3:	66 89 74 24 32       	mov    %si,0x32(%rsp)
    38c8:	ba 10 00 00 00       	mov    $0x10,%edx
    38cd:	4c 89 fe             	mov    %r15,%rsi
    38d0:	89 df                	mov    %ebx,%edi
    38d2:	e8 c9 ea ff ff       	callq  23a0 <connect@plt>
    38d7:	85 c0                	test   %eax,%eax
    38d9:	0f 88 f7 02 00 00    	js     3bd6 <submitr+0x3e8>
    38df:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    38e6:	b8 00 00 00 00       	mov    $0x0,%eax
    38eb:	48 89 f1             	mov    %rsi,%rcx
    38ee:	4c 89 f7             	mov    %r14,%rdi
    38f1:	f2 ae                	repnz scas %es:(%rdi),%al
    38f3:	48 89 ca             	mov    %rcx,%rdx
    38f6:	48 f7 d2             	not    %rdx
    38f9:	48 89 f1             	mov    %rsi,%rcx
    38fc:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    3901:	f2 ae                	repnz scas %es:(%rdi),%al
    3903:	48 f7 d1             	not    %rcx
    3906:	49 89 c8             	mov    %rcx,%r8
    3909:	48 89 f1             	mov    %rsi,%rcx
    390c:	4c 89 ef             	mov    %r13,%rdi
    390f:	f2 ae                	repnz scas %es:(%rdi),%al
    3911:	48 f7 d1             	not    %rcx
    3914:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
    3919:	48 89 f1             	mov    %rsi,%rcx
    391c:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    3921:	f2 ae                	repnz scas %es:(%rdi),%al
    3923:	48 89 c8             	mov    %rcx,%rax
    3926:	48 f7 d0             	not    %rax
    3929:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
    392e:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
    3933:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
    393a:	00 
    393b:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    3941:	0f 87 f7 02 00 00    	ja     3c3e <submitr+0x450>
    3947:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
    394e:	00 
    394f:	b9 00 04 00 00       	mov    $0x400,%ecx
    3954:	b8 00 00 00 00       	mov    $0x0,%eax
    3959:	48 89 f7             	mov    %rsi,%rdi
    395c:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    395f:	4c 89 f7             	mov    %r14,%rdi
    3962:	e8 77 fd ff ff       	callq  36de <urlencode>
    3967:	85 c0                	test   %eax,%eax
    3969:	0f 88 42 03 00 00    	js     3cb1 <submitr+0x4c3>
    396f:	4c 8d bc 24 50 20 00 	lea    0x2050(%rsp),%r15
    3976:	00 
    3977:	48 83 ec 08          	sub    $0x8,%rsp
    397b:	41 54                	push   %r12
    397d:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
    3984:	00 
    3985:	50                   	push   %rax
    3986:	41 55                	push   %r13
    3988:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    398d:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    3992:	48 8d 0d ef 1d 00 00 	lea    0x1def(%rip),%rcx        # 5788 <secret_tokens+0x48>
    3999:	ba 00 20 00 00       	mov    $0x2000,%edx
    399e:	be 01 00 00 00       	mov    $0x1,%esi
    39a3:	4c 89 ff             	mov    %r15,%rdi
    39a6:	b8 00 00 00 00       	mov    $0x0,%eax
    39ab:	e8 30 ea ff ff       	callq  23e0 <__sprintf_chk@plt>
    39b0:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    39b7:	b8 00 00 00 00       	mov    $0x0,%eax
    39bc:	4c 89 ff             	mov    %r15,%rdi
    39bf:	f2 ae                	repnz scas %es:(%rdi),%al
    39c1:	48 f7 d1             	not    %rcx
    39c4:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
    39c8:	48 83 c4 20          	add    $0x20,%rsp
    39cc:	4c 89 fe             	mov    %r15,%rsi
    39cf:	89 df                	mov    %ebx,%edi
    39d1:	e8 82 fb ff ff       	callq  3558 <rio_writen>
    39d6:	48 85 c0             	test   %rax,%rax
    39d9:	0f 88 5d 03 00 00    	js     3d3c <submitr+0x54e>
    39df:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
    39e4:	89 de                	mov    %ebx,%esi
    39e6:	4c 89 e7             	mov    %r12,%rdi
    39e9:	e8 22 fb ff ff       	callq  3510 <rio_readinitb>
    39ee:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    39f5:	00 
    39f6:	ba 00 20 00 00       	mov    $0x2000,%edx
    39fb:	4c 89 e7             	mov    %r12,%rdi
    39fe:	e8 3a fc ff ff       	callq  363d <rio_readlineb>
    3a03:	48 85 c0             	test   %rax,%rax
    3a06:	0f 8e 9c 03 00 00    	jle    3da8 <submitr+0x5ba>
    3a0c:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
    3a11:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
    3a18:	00 
    3a19:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    3a20:	00 
    3a21:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
    3a28:	00 
    3a29:	48 8d 35 ec 1d 00 00 	lea    0x1dec(%rip),%rsi        # 581c <secret_tokens+0xdc>
    3a30:	b8 00 00 00 00       	mov    $0x0,%eax
    3a35:	e8 16 e9 ff ff       	callq  2350 <__isoc99_sscanf@plt>
    3a3a:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    3a41:	00 
    3a42:	b9 03 00 00 00       	mov    $0x3,%ecx
    3a47:	48 8d 3d e5 1d 00 00 	lea    0x1de5(%rip),%rdi        # 5833 <secret_tokens+0xf3>
    3a4e:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    3a50:	0f 97 c0             	seta   %al
    3a53:	1c 00                	sbb    $0x0,%al
    3a55:	84 c0                	test   %al,%al
    3a57:	0f 84 cb 03 00 00    	je     3e28 <submitr+0x63a>
    3a5d:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    3a64:	00 
    3a65:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    3a6a:	ba 00 20 00 00       	mov    $0x2000,%edx
    3a6f:	e8 c9 fb ff ff       	callq  363d <rio_readlineb>
    3a74:	48 85 c0             	test   %rax,%rax
    3a77:	7f c1                	jg     3a3a <submitr+0x24c>
    3a79:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    3a80:	3a 20 43 
    3a83:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    3a8a:	20 75 6e 
    3a8d:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3a91:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3a95:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3a9c:	74 6f 20 
    3a9f:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    3aa6:	68 65 61 
    3aa9:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3aad:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3ab1:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    3ab8:	66 72 6f 
    3abb:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
    3ac2:	6f 6c 61 
    3ac5:	48 89 45 20          	mov    %rax,0x20(%rbp)
    3ac9:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    3acd:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
    3ad4:	76 65 72 
    3ad7:	48 89 45 30          	mov    %rax,0x30(%rbp)
    3adb:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
    3adf:	89 df                	mov    %ebx,%edi
    3ae1:	e8 ca e7 ff ff       	callq  22b0 <close@plt>
    3ae6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3aeb:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
    3af2:	00 
    3af3:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    3afa:	00 00 
    3afc:	0f 85 96 04 00 00    	jne    3f98 <submitr+0x7aa>
    3b02:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
    3b09:	5b                   	pop    %rbx
    3b0a:	5d                   	pop    %rbp
    3b0b:	41 5c                	pop    %r12
    3b0d:	41 5d                	pop    %r13
    3b0f:	41 5e                	pop    %r14
    3b11:	41 5f                	pop    %r15
    3b13:	c3                   	retq   
    3b14:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    3b1b:	3a 20 43 
    3b1e:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    3b25:	20 75 6e 
    3b28:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3b2c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3b30:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3b37:	74 6f 20 
    3b3a:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    3b41:	65 20 73 
    3b44:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3b48:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3b4c:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    3b53:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    3b59:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3b5e:	eb 8b                	jmp    3aeb <submitr+0x2fd>
    3b60:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    3b67:	3a 20 44 
    3b6a:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    3b71:	20 75 6e 
    3b74:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3b78:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3b7c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3b83:	74 6f 20 
    3b86:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    3b8d:	76 65 20 
    3b90:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3b94:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3b98:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
    3b9f:	61 62 20 
    3ba2:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
    3ba9:	72 20 61 
    3bac:	48 89 45 20          	mov    %rax,0x20(%rbp)
    3bb0:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    3bb4:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
    3bbb:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
    3bc1:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
    3bc5:	89 df                	mov    %ebx,%edi
    3bc7:	e8 e4 e6 ff ff       	callq  22b0 <close@plt>
    3bcc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3bd1:	e9 15 ff ff ff       	jmpq   3aeb <submitr+0x2fd>
    3bd6:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    3bdd:	3a 20 55 
    3be0:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    3be7:	20 74 6f 
    3bea:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3bee:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3bf2:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    3bf9:	65 63 74 
    3bfc:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    3c03:	68 65 20 
    3c06:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3c0a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3c0e:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
    3c15:	61 62 20 
    3c18:	48 89 45 20          	mov    %rax,0x20(%rbp)
    3c1c:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
    3c23:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
    3c29:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    3c2d:	89 df                	mov    %ebx,%edi
    3c2f:	e8 7c e6 ff ff       	callq  22b0 <close@plt>
    3c34:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3c39:	e9 ad fe ff ff       	jmpq   3aeb <submitr+0x2fd>
    3c3e:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    3c45:	3a 20 52 
    3c48:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    3c4f:	20 73 74 
    3c52:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3c56:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3c5a:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    3c61:	74 6f 6f 
    3c64:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    3c6b:	65 2e 20 
    3c6e:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3c72:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3c76:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    3c7d:	61 73 65 
    3c80:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    3c87:	49 54 52 
    3c8a:	48 89 45 20          	mov    %rax,0x20(%rbp)
    3c8e:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    3c92:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    3c99:	55 46 00 
    3c9c:	48 89 45 30          	mov    %rax,0x30(%rbp)
    3ca0:	89 df                	mov    %ebx,%edi
    3ca2:	e8 09 e6 ff ff       	callq  22b0 <close@plt>
    3ca7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3cac:	e9 3a fe ff ff       	jmpq   3aeb <submitr+0x2fd>
    3cb1:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    3cb8:	3a 20 52 
    3cbb:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    3cc2:	20 73 74 
    3cc5:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3cc9:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3ccd:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    3cd4:	63 6f 6e 
    3cd7:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    3cde:	20 61 6e 
    3ce1:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3ce5:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3ce9:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    3cf0:	67 61 6c 
    3cf3:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    3cfa:	6e 70 72 
    3cfd:	48 89 45 20          	mov    %rax,0x20(%rbp)
    3d01:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    3d05:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    3d0c:	6c 65 20 
    3d0f:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    3d16:	63 74 65 
    3d19:	48 89 45 30          	mov    %rax,0x30(%rbp)
    3d1d:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    3d21:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
    3d27:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
    3d2b:	89 df                	mov    %ebx,%edi
    3d2d:	e8 7e e5 ff ff       	callq  22b0 <close@plt>
    3d32:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3d37:	e9 af fd ff ff       	jmpq   3aeb <submitr+0x2fd>
    3d3c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    3d43:	3a 20 43 
    3d46:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    3d4d:	20 75 6e 
    3d50:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3d54:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3d58:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3d5f:	74 6f 20 
    3d62:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    3d69:	20 74 6f 
    3d6c:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3d70:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3d74:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
    3d7b:	41 75 74 
    3d7e:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
    3d85:	73 65 72 
    3d88:	48 89 45 20          	mov    %rax,0x20(%rbp)
    3d8c:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    3d90:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
    3d97:	89 df                	mov    %ebx,%edi
    3d99:	e8 12 e5 ff ff       	callq  22b0 <close@plt>
    3d9e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3da3:	e9 43 fd ff ff       	jmpq   3aeb <submitr+0x2fd>
    3da8:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    3daf:	3a 20 43 
    3db2:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    3db9:	20 75 6e 
    3dbc:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3dc0:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3dc4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3dcb:	74 6f 20 
    3dce:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    3dd5:	66 69 72 
    3dd8:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3ddc:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3de0:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    3de7:	61 64 65 
    3dea:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
    3df1:	6d 20 41 
    3df4:	48 89 45 20          	mov    %rax,0x20(%rbp)
    3df8:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    3dfc:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
    3e03:	62 20 73 
    3e06:	48 89 45 30          	mov    %rax,0x30(%rbp)
    3e0a:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
    3e11:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
    3e17:	89 df                	mov    %ebx,%edi
    3e19:	e8 92 e4 ff ff       	callq  22b0 <close@plt>
    3e1e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3e23:	e9 c3 fc ff ff       	jmpq   3aeb <submitr+0x2fd>
    3e28:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    3e2f:	00 
    3e30:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    3e35:	ba 00 20 00 00       	mov    $0x2000,%edx
    3e3a:	e8 fe f7 ff ff       	callq  363d <rio_readlineb>
    3e3f:	48 85 c0             	test   %rax,%rax
    3e42:	0f 8e 96 00 00 00    	jle    3ede <submitr+0x6f0>
    3e48:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
    3e4d:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    3e54:	0f 85 05 01 00 00    	jne    3f5f <submitr+0x771>
    3e5a:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    3e61:	00 
    3e62:	48 89 ef             	mov    %rbp,%rdi
    3e65:	e8 f6 e3 ff ff       	callq  2260 <strcpy@plt>
    3e6a:	89 df                	mov    %ebx,%edi
    3e6c:	e8 3f e4 ff ff       	callq  22b0 <close@plt>
    3e71:	b9 04 00 00 00       	mov    $0x4,%ecx
    3e76:	48 8d 3d b0 19 00 00 	lea    0x19b0(%rip),%rdi        # 582d <secret_tokens+0xed>
    3e7d:	48 89 ee             	mov    %rbp,%rsi
    3e80:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    3e82:	0f 97 c0             	seta   %al
    3e85:	1c 00                	sbb    $0x0,%al
    3e87:	0f be c0             	movsbl %al,%eax
    3e8a:	85 c0                	test   %eax,%eax
    3e8c:	0f 84 59 fc ff ff    	je     3aeb <submitr+0x2fd>
    3e92:	b9 05 00 00 00       	mov    $0x5,%ecx
    3e97:	48 8d 3d 93 19 00 00 	lea    0x1993(%rip),%rdi        # 5831 <secret_tokens+0xf1>
    3e9e:	48 89 ee             	mov    %rbp,%rsi
    3ea1:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    3ea3:	0f 97 c0             	seta   %al
    3ea6:	1c 00                	sbb    $0x0,%al
    3ea8:	0f be c0             	movsbl %al,%eax
    3eab:	85 c0                	test   %eax,%eax
    3ead:	0f 84 38 fc ff ff    	je     3aeb <submitr+0x2fd>
    3eb3:	b9 03 00 00 00       	mov    $0x3,%ecx
    3eb8:	48 8d 3d 77 19 00 00 	lea    0x1977(%rip),%rdi        # 5836 <secret_tokens+0xf6>
    3ebf:	48 89 ee             	mov    %rbp,%rsi
    3ec2:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    3ec4:	0f 97 c0             	seta   %al
    3ec7:	1c 00                	sbb    $0x0,%al
    3ec9:	0f be c0             	movsbl %al,%eax
    3ecc:	85 c0                	test   %eax,%eax
    3ece:	0f 84 17 fc ff ff    	je     3aeb <submitr+0x2fd>
    3ed4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3ed9:	e9 0d fc ff ff       	jmpq   3aeb <submitr+0x2fd>
    3ede:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    3ee5:	3a 20 43 
    3ee8:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    3eef:	20 75 6e 
    3ef2:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3ef6:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3efa:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3f01:	74 6f 20 
    3f04:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    3f0b:	73 74 61 
    3f0e:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3f12:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3f16:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    3f1d:	65 73 73 
    3f20:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    3f27:	72 6f 6d 
    3f2a:	48 89 45 20          	mov    %rax,0x20(%rbp)
    3f2e:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    3f32:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
    3f39:	6c 61 62 
    3f3c:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
    3f43:	65 72 00 
    3f46:	48 89 45 30          	mov    %rax,0x30(%rbp)
    3f4a:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    3f4e:	89 df                	mov    %ebx,%edi
    3f50:	e8 5b e3 ff ff       	callq  22b0 <close@plt>
    3f55:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3f5a:	e9 8c fb ff ff       	jmpq   3aeb <submitr+0x2fd>
    3f5f:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
    3f66:	00 
    3f67:	48 8d 0d 7a 18 00 00 	lea    0x187a(%rip),%rcx        # 57e8 <secret_tokens+0xa8>
    3f6e:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    3f75:	be 01 00 00 00       	mov    $0x1,%esi
    3f7a:	48 89 ef             	mov    %rbp,%rdi
    3f7d:	b8 00 00 00 00       	mov    $0x0,%eax
    3f82:	e8 59 e4 ff ff       	callq  23e0 <__sprintf_chk@plt>
    3f87:	89 df                	mov    %ebx,%edi
    3f89:	e8 22 e3 ff ff       	callq  22b0 <close@plt>
    3f8e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3f93:	e9 53 fb ff ff       	jmpq   3aeb <submitr+0x2fd>
    3f98:	e8 f3 e2 ff ff       	callq  2290 <__stack_chk_fail@plt>

0000000000003f9d <init_timeout>:
    3f9d:	f3 0f 1e fa          	endbr64 
    3fa1:	85 ff                	test   %edi,%edi
    3fa3:	74 26                	je     3fcb <init_timeout+0x2e>
    3fa5:	53                   	push   %rbx
    3fa6:	89 fb                	mov    %edi,%ebx
    3fa8:	78 1a                	js     3fc4 <init_timeout+0x27>
    3faa:	48 8d 35 71 f5 ff ff 	lea    -0xa8f(%rip),%rsi        # 3522 <sigalrm_handler>
    3fb1:	bf 0e 00 00 00       	mov    $0xe,%edi
    3fb6:	e8 25 e3 ff ff       	callq  22e0 <signal@plt>
    3fbb:	89 df                	mov    %ebx,%edi
    3fbd:	e8 de e2 ff ff       	callq  22a0 <alarm@plt>
    3fc2:	5b                   	pop    %rbx
    3fc3:	c3                   	retq   
    3fc4:	bb 00 00 00 00       	mov    $0x0,%ebx
    3fc9:	eb df                	jmp    3faa <init_timeout+0xd>
    3fcb:	c3                   	retq   

0000000000003fcc <init_driver>:
    3fcc:	f3 0f 1e fa          	endbr64 
    3fd0:	41 54                	push   %r12
    3fd2:	55                   	push   %rbp
    3fd3:	53                   	push   %rbx
    3fd4:	48 83 ec 20          	sub    $0x20,%rsp
    3fd8:	48 89 fd             	mov    %rdi,%rbp
    3fdb:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3fe2:	00 00 
    3fe4:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    3fe9:	31 c0                	xor    %eax,%eax
    3feb:	be 01 00 00 00       	mov    $0x1,%esi
    3ff0:	bf 0d 00 00 00       	mov    $0xd,%edi
    3ff5:	e8 e6 e2 ff ff       	callq  22e0 <signal@plt>
    3ffa:	be 01 00 00 00       	mov    $0x1,%esi
    3fff:	bf 1d 00 00 00       	mov    $0x1d,%edi
    4004:	e8 d7 e2 ff ff       	callq  22e0 <signal@plt>
    4009:	be 01 00 00 00       	mov    $0x1,%esi
    400e:	bf 1d 00 00 00       	mov    $0x1d,%edi
    4013:	e8 c8 e2 ff ff       	callq  22e0 <signal@plt>
    4018:	ba 00 00 00 00       	mov    $0x0,%edx
    401d:	be 01 00 00 00       	mov    $0x1,%esi
    4022:	bf 02 00 00 00       	mov    $0x2,%edi
    4027:	e8 c4 e3 ff ff       	callq  23f0 <socket@plt>
    402c:	85 c0                	test   %eax,%eax
    402e:	0f 88 9c 00 00 00    	js     40d0 <init_driver+0x104>
    4034:	89 c3                	mov    %eax,%ebx
    4036:	48 8d 3d fc 17 00 00 	lea    0x17fc(%rip),%rdi        # 5839 <secret_tokens+0xf9>
    403d:	e8 ae e2 ff ff       	callq  22f0 <gethostbyname@plt>
    4042:	48 85 c0             	test   %rax,%rax
    4045:	0f 84 d1 00 00 00    	je     411c <init_driver+0x150>
    404b:	49 89 e4             	mov    %rsp,%r12
    404e:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    4055:	00 
    4056:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    405d:	00 00 
    405f:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    4065:	48 63 50 14          	movslq 0x14(%rax),%rdx
    4069:	48 8b 40 18          	mov    0x18(%rax),%rax
    406d:	48 8b 30             	mov    (%rax),%rsi
    4070:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    4075:	b9 0c 00 00 00       	mov    $0xc,%ecx
    407a:	e8 81 e2 ff ff       	callq  2300 <__memmove_chk@plt>
    407f:	66 c7 44 24 02 30 39 	movw   $0x3930,0x2(%rsp)
    4086:	ba 10 00 00 00       	mov    $0x10,%edx
    408b:	4c 89 e6             	mov    %r12,%rsi
    408e:	89 df                	mov    %ebx,%edi
    4090:	e8 0b e3 ff ff       	callq  23a0 <connect@plt>
    4095:	85 c0                	test   %eax,%eax
    4097:	0f 88 e7 00 00 00    	js     4184 <init_driver+0x1b8>
    409d:	89 df                	mov    %ebx,%edi
    409f:	e8 0c e2 ff ff       	callq  22b0 <close@plt>
    40a4:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    40aa:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    40ae:	b8 00 00 00 00       	mov    $0x0,%eax
    40b3:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    40b8:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    40bf:	00 00 
    40c1:	0f 85 10 01 00 00    	jne    41d7 <init_driver+0x20b>
    40c7:	48 83 c4 20          	add    $0x20,%rsp
    40cb:	5b                   	pop    %rbx
    40cc:	5d                   	pop    %rbp
    40cd:	41 5c                	pop    %r12
    40cf:	c3                   	retq   
    40d0:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    40d7:	3a 20 43 
    40da:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    40e1:	20 75 6e 
    40e4:	48 89 45 00          	mov    %rax,0x0(%rbp)
    40e8:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    40ec:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    40f3:	74 6f 20 
    40f6:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    40fd:	65 20 73 
    4100:	48 89 45 10          	mov    %rax,0x10(%rbp)
    4104:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    4108:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    410f:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    4115:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    411a:	eb 97                	jmp    40b3 <init_driver+0xe7>
    411c:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    4123:	3a 20 44 
    4126:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    412d:	20 75 6e 
    4130:	48 89 45 00          	mov    %rax,0x0(%rbp)
    4134:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    4138:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    413f:	74 6f 20 
    4142:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    4149:	76 65 20 
    414c:	48 89 45 10          	mov    %rax,0x10(%rbp)
    4150:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    4154:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    415b:	72 20 61 
    415e:	48 89 45 20          	mov    %rax,0x20(%rbp)
    4162:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    4169:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    416f:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    4173:	89 df                	mov    %ebx,%edi
    4175:	e8 36 e1 ff ff       	callq  22b0 <close@plt>
    417a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    417f:	e9 2f ff ff ff       	jmpq   40b3 <init_driver+0xe7>
    4184:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    418b:	3a 20 55 
    418e:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    4195:	20 74 6f 
    4198:	48 89 45 00          	mov    %rax,0x0(%rbp)
    419c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    41a0:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    41a7:	65 63 74 
    41aa:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
    41b1:	65 72 76 
    41b4:	48 89 45 10          	mov    %rax,0x10(%rbp)
    41b8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    41bc:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
    41c2:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
    41c6:	89 df                	mov    %ebx,%edi
    41c8:	e8 e3 e0 ff ff       	callq  22b0 <close@plt>
    41cd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    41d2:	e9 dc fe ff ff       	jmpq   40b3 <init_driver+0xe7>
    41d7:	e8 b4 e0 ff ff       	callq  2290 <__stack_chk_fail@plt>

00000000000041dc <driver_post>:
    41dc:	f3 0f 1e fa          	endbr64 
    41e0:	53                   	push   %rbx
    41e1:	4c 89 cb             	mov    %r9,%rbx
    41e4:	45 85 c0             	test   %r8d,%r8d
    41e7:	75 18                	jne    4201 <driver_post+0x25>
    41e9:	48 85 ff             	test   %rdi,%rdi
    41ec:	74 05                	je     41f3 <driver_post+0x17>
    41ee:	80 3f 00             	cmpb   $0x0,(%rdi)
    41f1:	75 37                	jne    422a <driver_post+0x4e>
    41f3:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    41f8:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    41fc:	44 89 c0             	mov    %r8d,%eax
    41ff:	5b                   	pop    %rbx
    4200:	c3                   	retq   
    4201:	48 89 ca             	mov    %rcx,%rdx
    4204:	48 8d 35 3e 16 00 00 	lea    0x163e(%rip),%rsi        # 5849 <secret_tokens+0x109>
    420b:	bf 01 00 00 00       	mov    $0x1,%edi
    4210:	b8 00 00 00 00       	mov    $0x0,%eax
    4215:	e8 46 e1 ff ff       	callq  2360 <__printf_chk@plt>
    421a:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    421f:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    4223:	b8 00 00 00 00       	mov    $0x0,%eax
    4228:	eb d5                	jmp    41ff <driver_post+0x23>
    422a:	48 83 ec 08          	sub    $0x8,%rsp
    422e:	41 51                	push   %r9
    4230:	49 89 c9             	mov    %rcx,%r9
    4233:	49 89 d0             	mov    %rdx,%r8
    4236:	48 89 f9             	mov    %rdi,%rcx
    4239:	48 89 f2             	mov    %rsi,%rdx
    423c:	be 39 30 00 00       	mov    $0x3039,%esi
    4241:	48 8d 3d f1 15 00 00 	lea    0x15f1(%rip),%rdi        # 5839 <secret_tokens+0xf9>
    4248:	e8 a1 f5 ff ff       	callq  37ee <submitr>
    424d:	48 83 c4 10          	add    $0x10,%rsp
    4251:	eb ac                	jmp    41ff <driver_post+0x23>
    4253:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    425a:	00 00 00 
    425d:	0f 1f 00             	nopl   (%rax)

0000000000004260 <__libc_csu_init>:
    4260:	f3 0f 1e fa          	endbr64 
    4264:	41 57                	push   %r15
    4266:	4c 8d 3d 53 3a 00 00 	lea    0x3a53(%rip),%r15        # 7cc0 <__frame_dummy_init_array_entry>
    426d:	41 56                	push   %r14
    426f:	49 89 d6             	mov    %rdx,%r14
    4272:	41 55                	push   %r13
    4274:	49 89 f5             	mov    %rsi,%r13
    4277:	41 54                	push   %r12
    4279:	41 89 fc             	mov    %edi,%r12d
    427c:	55                   	push   %rbp
    427d:	48 8d 2d 44 3a 00 00 	lea    0x3a44(%rip),%rbp        # 7cc8 <__init_array_end>
    4284:	53                   	push   %rbx
    4285:	4c 29 fd             	sub    %r15,%rbp
    4288:	48 83 ec 08          	sub    $0x8,%rsp
    428c:	e8 6f dd ff ff       	callq  2000 <_init>
    4291:	48 c1 fd 03          	sar    $0x3,%rbp
    4295:	74 1f                	je     42b6 <__libc_csu_init+0x56>
    4297:	31 db                	xor    %ebx,%ebx
    4299:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    42a0:	4c 89 f2             	mov    %r14,%rdx
    42a3:	4c 89 ee             	mov    %r13,%rsi
    42a6:	44 89 e7             	mov    %r12d,%edi
    42a9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    42ad:	48 83 c3 01          	add    $0x1,%rbx
    42b1:	48 39 dd             	cmp    %rbx,%rbp
    42b4:	75 ea                	jne    42a0 <__libc_csu_init+0x40>
    42b6:	48 83 c4 08          	add    $0x8,%rsp
    42ba:	5b                   	pop    %rbx
    42bb:	5d                   	pop    %rbp
    42bc:	41 5c                	pop    %r12
    42be:	41 5d                	pop    %r13
    42c0:	41 5e                	pop    %r14
    42c2:	41 5f                	pop    %r15
    42c4:	c3                   	retq   
    42c5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    42cc:	00 00 00 00 

00000000000042d0 <__libc_csu_fini>:
    42d0:	f3 0f 1e fa          	endbr64 
    42d4:	c3                   	retq   

Disassembly of section .fini:

00000000000042d8 <_fini>:
    42d8:	f3 0f 1e fa          	endbr64 
    42dc:	48 83 ec 08          	sub    $0x8,%rsp
    42e0:	48 83 c4 08          	add    $0x8,%rsp
    42e4:	c3                   	retq   
