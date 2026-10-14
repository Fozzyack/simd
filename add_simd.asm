
bin/simd.out:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .text:

0000000000001480 <add_simd>:
    1480:	49 89 d0             	mov    r8,rdx
    1483:	49 89 ca             	mov    r10,rcx
    1486:	48 83 f9 07          	cmp    rcx,0x7
    148a:	0f 86 d8 01 00 00    	jbe    1668 <add_simd+0x1e8>
    1490:	48 8d 51 f8          	lea    rdx,[rcx-0x8]
    1494:	48 89 d0             	mov    rax,rdx
    1497:	48 c1 e8 03          	shr    rax,0x3
    149b:	48 8d 0c c5 08 00 00 	lea    rcx,[rax*8+0x8]
    14a2:	00 
    14a3:	31 c0                	xor    eax,eax
    14a5:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    14aa:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    14b1:	00 00 00 00 
    14b5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    14bc:	00 00 00 00 
    14c0:	c5 fe 6f 04 87       	vmovdqu ymm0,YMMWORD PTR [rdi+rax*4]
    14c5:	c5 fd fe 04 86       	vpaddd ymm0,ymm0,YMMWORD PTR [rsi+rax*4]
    14ca:	c4 c1 7e 7f 04 80    	vmovdqu YMMWORD PTR [r8+rax*4],ymm0
    14d0:	48 83 c0 08          	add    rax,0x8
    14d4:	48 39 c8             	cmp    rax,rcx
    14d7:	75 e7                	jne    14c0 <add_simd+0x40>
    14d9:	48 83 e2 f8          	and    rdx,0xfffffffffffffff8
    14dd:	48 83 c2 08          	add    rdx,0x8
    14e1:	4c 39 d2             	cmp    rdx,r10
    14e4:	0f 83 89 01 00 00    	jae    1673 <add_simd+0x1f3>
    14ea:	55                   	push   rbp
    14eb:	48 89 e5             	mov    rbp,rsp
    14ee:	48 83 ec 18          	sub    rsp,0x18
    14f2:	4c 89 65 f0          	mov    QWORD PTR [rbp-0x10],r12
    14f6:	4d 89 d4             	mov    r12,r10
    14f9:	49 29 d4             	sub    r12,rdx
    14fc:	49 8d 44 24 ff       	lea    rax,[r12-0x1]
    1501:	48 83 f8 02          	cmp    rax,0x2
    1505:	0f 86 35 01 00 00    	jbe    1640 <add_simd+0x1c0>
    150b:	48 8d 0c 95 00 00 00 	lea    rcx,[rdx*4+0x0]
    1512:	00 
    1513:	48 89 5d e8          	mov    QWORD PTR [rbp-0x18],rbx
    1517:	4d 8d 0c 08          	lea    r9,[r8+rcx*1]
    151b:	48 8d 5c 0e 04       	lea    rbx,[rsi+rcx*1+0x4]
    1520:	4d 89 cb             	mov    r11,r9
    1523:	49 29 db             	sub    r11,rbx
    1526:	49 83 fb 18          	cmp    r11,0x18
    152a:	0f 86 f5 00 00 00    	jbe    1625 <add_simd+0x1a5>
    1530:	48 8d 5c 0f 04       	lea    rbx,[rdi+rcx*1+0x4]
    1535:	4d 89 cb             	mov    r11,r9
    1538:	49 29 db             	sub    r11,rbx
    153b:	49 83 fb 18          	cmp    r11,0x18
    153f:	0f 86 e0 00 00 00    	jbe    1625 <add_simd+0x1a5>
    1545:	48 83 f8 06          	cmp    rax,0x6
    1549:	0f 86 32 01 00 00    	jbe    1681 <add_simd+0x201>
    154f:	4c 89 6d f8          	mov    QWORD PTR [rbp-0x8],r13
    1553:	4d 89 e5             	mov    r13,r12
    1556:	48 8d 1c 0f          	lea    rbx,[rdi+rcx*1]
    155a:	31 c0                	xor    eax,eax
    155c:	49 c1 ed 03          	shr    r13,0x3
    1560:	48 01 f1             	add    rcx,rsi
    1563:	4d 89 eb             	mov    r11,r13
    1566:	49 c1 e3 05          	shl    r11,0x5
    156a:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    1571:	00 00 00 00 
    1575:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    157c:	00 00 00 00 
    1580:	c5 fe 6f 04 01       	vmovdqu ymm0,YMMWORD PTR [rcx+rax*1]
    1585:	c5 fd fe 04 03       	vpaddd ymm0,ymm0,YMMWORD PTR [rbx+rax*1]
    158a:	c4 c1 7e 7f 04 01    	vmovdqu YMMWORD PTR [r9+rax*1],ymm0
    1590:	48 83 c0 20          	add    rax,0x20
    1594:	4c 39 d8             	cmp    rax,r11
    1597:	75 e7                	jne    1580 <add_simd+0x100>
    1599:	4a 8d 0c ed 00 00 00 	lea    rcx,[r13*8+0x0]
    15a0:	00 
    15a1:	49 39 cc             	cmp    r12,rcx
    15a4:	0f 84 cd 00 00 00    	je     1677 <add_simd+0x1f7>
    15aa:	49 29 cc             	sub    r12,rcx
    15ad:	48 01 ca             	add    rdx,rcx
    15b0:	4c 8b 6d f8          	mov    r13,QWORD PTR [rbp-0x8]
    15b4:	49 8d 4c 24 ff       	lea    rcx,[r12-0x1]
    15b9:	48 89 d0             	mov    rax,rdx
    15bc:	48 83 f9 02          	cmp    rcx,0x2
    15c0:	76 20                	jbe    15e2 <add_simd+0x162>
    15c2:	c5 fa 6f 04 96       	vmovdqu xmm0,XMMWORD PTR [rsi+rdx*4]
    15c7:	c5 f9 fe 04 97       	vpaddd xmm0,xmm0,XMMWORD PTR [rdi+rdx*4]
    15cc:	c4 c1 7a 7f 04 90    	vmovdqu XMMWORD PTR [r8+rdx*4],xmm0
    15d2:	4c 89 e2             	mov    rdx,r12
    15d5:	48 83 e2 fc          	and    rdx,0xfffffffffffffffc
    15d9:	41 83 e4 03          	and    r12d,0x3
    15dd:	74 79                	je     1658 <add_simd+0x1d8>
    15df:	48 01 d0             	add    rax,rdx
    15e2:	8b 14 86             	mov    edx,DWORD PTR [rsi+rax*4]
    15e5:	03 14 87             	add    edx,DWORD PTR [rdi+rax*4]
    15e8:	41 89 14 80          	mov    DWORD PTR [r8+rax*4],edx
    15ec:	48 8d 50 01          	lea    rdx,[rax+0x1]
    15f0:	4c 39 d2             	cmp    rdx,r10
    15f3:	73 63                	jae    1658 <add_simd+0x1d8>
    15f5:	8b 54 86 04          	mov    edx,DWORD PTR [rsi+rax*4+0x4]
    15f9:	03 54 87 04          	add    edx,DWORD PTR [rdi+rax*4+0x4]
    15fd:	41 89 54 80 04       	mov    DWORD PTR [r8+rax*4+0x4],edx
    1602:	48 8d 50 02          	lea    rdx,[rax+0x2]
    1606:	4c 39 d2             	cmp    rdx,r10
    1609:	73 4d                	jae    1658 <add_simd+0x1d8>
    160b:	8b 54 86 08          	mov    edx,DWORD PTR [rsi+rax*4+0x8]
    160f:	03 54 87 08          	add    edx,DWORD PTR [rdi+rax*4+0x8]
    1613:	41 89 54 80 08       	mov    DWORD PTR [r8+rax*4+0x8],edx
    1618:	48 8b 5d e8          	mov    rbx,QWORD PTR [rbp-0x18]
    161c:	c5 f8 77             	vzeroupper
    161f:	4c 8b 65 f0          	mov    r12,QWORD PTR [rbp-0x10]
    1623:	c9                   	leave
    1624:	c3                   	ret
    1625:	48 8b 5d e8          	mov    rbx,QWORD PTR [rbp-0x18]
    1629:	90                   	nop
    162a:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    1631:	00 00 00 00 
    1635:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    163c:	00 00 00 00 
    1640:	8b 04 96             	mov    eax,DWORD PTR [rsi+rdx*4]
    1643:	03 04 97             	add    eax,DWORD PTR [rdi+rdx*4]
    1646:	41 89 04 90          	mov    DWORD PTR [r8+rdx*4],eax
    164a:	48 83 c2 01          	add    rdx,0x1
    164e:	49 39 d2             	cmp    r10,rdx
    1651:	75 ed                	jne    1640 <add_simd+0x1c0>
    1653:	eb c7                	jmp    161c <add_simd+0x19c>
    1655:	0f 1f 00             	nop    DWORD PTR [rax]
    1658:	48 8b 5d e8          	mov    rbx,QWORD PTR [rbp-0x18]
    165c:	c5 f8 77             	vzeroupper
    165f:	4c 8b 65 f0          	mov    r12,QWORD PTR [rbp-0x10]
    1663:	c9                   	leave
    1664:	c3                   	ret
    1665:	0f 1f 00             	nop    DWORD PTR [rax]
    1668:	31 d2                	xor    edx,edx
    166a:	4c 39 d2             	cmp    rdx,r10
    166d:	0f 82 77 fe ff ff    	jb     14ea <add_simd+0x6a>
    1673:	c5 f8 77             	vzeroupper
    1676:	c3                   	ret
    1677:	48 8b 5d e8          	mov    rbx,QWORD PTR [rbp-0x18]
    167b:	4c 8b 6d f8          	mov    r13,QWORD PTR [rbp-0x8]
    167f:	eb 9b                	jmp    161c <add_simd+0x19c>
    1681:	48 89 d0             	mov    rax,rdx
    1684:	e9 39 ff ff ff       	jmp    15c2 <add_simd+0x142>

Disassembly of section .fini:
