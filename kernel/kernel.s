
kernel:     file format elf32-i386


Disassembly of section .text:

c0030000 <start>:
c0030000:	0f 01 15 4c 00 03 00 	lgdtl  0x3004c
c0030007:	0f 20 c0             	mov    %cr0,%eax
c003000a:	83 c8 01             	or     $0x1,%eax
c003000d:	0f 22 c0             	mov    %eax,%cr0
c0030010:	ea 17 00 03 00 08 00 	ljmp   $0x8,$0x30017

c0030017 <start_cond>:
c0030017:	66 b8 10 00          	mov    $0x10,%ax
c003001b:	8e d8                	mov    %eax,%ds
c003001d:	8e c0                	mov    %eax,%es
c003001f:	8e d0                	mov    %eax,%ss
c0030021:	bd 00 00 00 00       	mov    $0x0,%ebp
c0030026:	bc 00 00 00 08       	mov    $0x8000000,%esp
c003002b:	83 ec 10             	sub    $0x10,%esp
c003002e:	e9 62 1a 00 00       	jmp    c0031a95 <init>
c0030033:	90                   	nop

c0030034 <gdt>:
	...
c003003c:	ff                   	(bad)  
c003003d:	ff 00                	incl   (%eax)
c003003f:	00 00                	add    %al,(%eax)
c0030041:	9a cf 00 ff ff 00 00 	lcall  $0x0,$0xffff00cf
c0030048:	00                   	.byte 0x0
c0030049:	92                   	xchg   %eax,%edx
c003004a:	cf                   	iret   
	...

c003004c <gdtdesc>:
c003004c:	17                   	pop    %ss
c003004d:	00 34 00             	add    %dh,(%eax,%eax,1)
c0030050:	03 00                	add    (%eax),%eax

c0030052 <vec0>:
c0030052:	6a 00                	push   $0x0
c0030054:	6a 00                	push   $0x0
c0030056:	eb 72                	jmp    c00300ca <asm_do_irq>

c0030058 <vec1>:
c0030058:	6a 00                	push   $0x0
c003005a:	6a 01                	push   $0x1
c003005c:	eb 6c                	jmp    c00300ca <asm_do_irq>

c003005e <vec2>:
c003005e:	6a 00                	push   $0x0
c0030060:	6a 02                	push   $0x2
c0030062:	eb 66                	jmp    c00300ca <asm_do_irq>

c0030064 <vec3>:
c0030064:	6a 00                	push   $0x0
c0030066:	6a 03                	push   $0x3
c0030068:	eb 60                	jmp    c00300ca <asm_do_irq>

c003006a <vec4>:
c003006a:	6a 00                	push   $0x0
c003006c:	6a 04                	push   $0x4
c003006e:	eb 5a                	jmp    c00300ca <asm_do_irq>

c0030070 <vec5>:
c0030070:	6a 00                	push   $0x0
c0030072:	6a 05                	push   $0x5
c0030074:	eb 54                	jmp    c00300ca <asm_do_irq>

c0030076 <vec6>:
c0030076:	6a 00                	push   $0x0
c0030078:	6a 06                	push   $0x6
c003007a:	eb 4e                	jmp    c00300ca <asm_do_irq>

c003007c <vec7>:
c003007c:	6a 00                	push   $0x0
c003007e:	6a 07                	push   $0x7
c0030080:	eb 48                	jmp    c00300ca <asm_do_irq>

c0030082 <vec8>:
c0030082:	6a 08                	push   $0x8
c0030084:	eb 44                	jmp    c00300ca <asm_do_irq>

c0030086 <vec9>:
c0030086:	6a 00                	push   $0x0
c0030088:	6a 09                	push   $0x9
c003008a:	eb 3e                	jmp    c00300ca <asm_do_irq>

c003008c <vec10>:
c003008c:	6a 0a                	push   $0xa
c003008e:	eb 3a                	jmp    c00300ca <asm_do_irq>

c0030090 <vec11>:
c0030090:	6a 0b                	push   $0xb
c0030092:	eb 36                	jmp    c00300ca <asm_do_irq>

c0030094 <vec12>:
c0030094:	6a 0c                	push   $0xc
c0030096:	eb 32                	jmp    c00300ca <asm_do_irq>

c0030098 <vec13>:
c0030098:	6a 0d                	push   $0xd
c003009a:	eb 2e                	jmp    c00300ca <asm_do_irq>

c003009c <vec14>:
c003009c:	6a 0e                	push   $0xe
c003009e:	eb 2a                	jmp    c00300ca <asm_do_irq>

c00300a0 <vecsys>:
c00300a0:	6a 00                	push   $0x0
c00300a2:	68 80 00 00 00       	push   $0x80
c00300a7:	eb 21                	jmp    c00300ca <asm_do_irq>

c00300a9 <irq0>:
c00300a9:	6a 00                	push   $0x0
c00300ab:	68 e8 03 00 00       	push   $0x3e8
c00300b0:	eb 18                	jmp    c00300ca <asm_do_irq>

c00300b2 <irq1>:
c00300b2:	6a 00                	push   $0x0
c00300b4:	68 e9 03 00 00       	push   $0x3e9
c00300b9:	eb 0f                	jmp    c00300ca <asm_do_irq>

c00300bb <irq14>:
c00300bb:	6a 00                	push   $0x0
c00300bd:	68 f6 03 00 00       	push   $0x3f6
c00300c2:	eb 06                	jmp    c00300ca <asm_do_irq>

c00300c4 <irq_empty>:
c00300c4:	6a 00                	push   $0x0
c00300c6:	6a ff                	push   $0xffffffff
c00300c8:	eb 00                	jmp    c00300ca <asm_do_irq>

c00300ca <asm_do_irq>:
c00300ca:	60                   	pusha  
c00300cb:	54                   	push   %esp
c00300cc:	e8 e6 05 00 00       	call   c00306b7 <irq_handle>
c00300d1:	83 c4 04             	add    $0x4,%esp
c00300d4:	61                   	popa   
c00300d5:	83 c4 08             	add    $0x8,%esp
c00300d8:	cf                   	iret   

c00300d9 <read_cr0>:
c00300d9:	55                   	push   %ebp
c00300da:	89 e5                	mov    %esp,%ebp
c00300dc:	83 ec 10             	sub    $0x10,%esp
c00300df:	e8 df 02 00 00       	call   c00303c3 <__x86.get_pc_thunk.ax>
c00300e4:	05 1c bf 00 00       	add    $0xbf1c,%eax
c00300e9:	0f 20 c0             	mov    %cr0,%eax
c00300ec:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00300ef:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00300f2:	c9                   	leave  
c00300f3:	c3                   	ret    

c00300f4 <write_cr0>:
c00300f4:	55                   	push   %ebp
c00300f5:	89 e5                	mov    %esp,%ebp
c00300f7:	e8 c7 02 00 00       	call   c00303c3 <__x86.get_pc_thunk.ax>
c00300fc:	05 04 bf 00 00       	add    $0xbf04,%eax
c0030101:	8b 45 08             	mov    0x8(%ebp),%eax
c0030104:	0f 22 c0             	mov    %eax,%cr0
c0030107:	90                   	nop
c0030108:	5d                   	pop    %ebp
c0030109:	c3                   	ret    

c003010a <write_cr3>:
c003010a:	55                   	push   %ebp
c003010b:	89 e5                	mov    %esp,%ebp
c003010d:	e8 b1 02 00 00       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0030112:	05 ee be 00 00       	add    $0xbeee,%eax
c0030117:	8b 45 08             	mov    0x8(%ebp),%eax
c003011a:	0f 22 d8             	mov    %eax,%cr3
c003011d:	90                   	nop
c003011e:	5d                   	pop    %ebp
c003011f:	c3                   	ret    

c0030120 <write_gdtr>:
c0030120:	55                   	push   %ebp
c0030121:	89 e5                	mov    %esp,%ebp
c0030123:	e8 9b 02 00 00       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0030128:	05 d8 be 00 00       	add    $0xbed8,%eax
c003012d:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030130:	4a                   	dec    %edx
c0030131:	66 89 90 00 10 00 00 	mov    %dx,0x1000(%eax)
c0030138:	8b 55 08             	mov    0x8(%ebp),%edx
c003013b:	66 89 90 02 10 00 00 	mov    %dx,0x1002(%eax)
c0030142:	8b 55 08             	mov    0x8(%ebp),%edx
c0030145:	c1 ea 10             	shr    $0x10,%edx
c0030148:	66 89 90 04 10 00 00 	mov    %dx,0x1004(%eax)
c003014f:	8d 80 00 10 00 00    	lea    0x1000(%eax),%eax
c0030155:	0f 01 10             	lgdtl  (%eax)
c0030158:	90                   	nop
c0030159:	5d                   	pop    %ebp
c003015a:	c3                   	ret    

c003015b <get_kpdir>:
c003015b:	55                   	push   %ebp
c003015c:	89 e5                	mov    %esp,%ebp
c003015e:	e8 60 02 00 00       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0030163:	05 9d be 00 00       	add    $0xbe9d,%eax
c0030168:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c003016e:	5d                   	pop    %ebp
c003016f:	c3                   	ret    

c0030170 <init_page>:
c0030170:	55                   	push   %ebp
c0030171:	89 e5                	mov    %esp,%ebp
c0030173:	53                   	push   %ebx
c0030174:	83 ec 24             	sub    $0x24,%esp
c0030177:	e8 47 02 00 00       	call   c00303c3 <__x86.get_pc_thunk.ax>
c003017c:	05 84 be 00 00       	add    $0xbe84,%eax
c0030181:	c7 c2 00 10 07 c0    	mov    $0xc0071000,%edx
c0030187:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c003018d:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0030190:	c7 c2 00 20 07 c0    	mov    $0xc0072000,%edx
c0030196:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c003019c:	89 55 f4             	mov    %edx,-0xc(%ebp)
c003019f:	83 ec 04             	sub    $0x4,%esp
c00301a2:	68 00 10 00 00       	push   $0x1000
c00301a7:	6a 00                	push   $0x0
c00301a9:	ff 75 e4             	pushl  -0x1c(%ebp)
c00301ac:	89 c3                	mov    %eax,%ebx
c00301ae:	e8 49 1c 00 00       	call   c0031dfc <memset>
c00301b3:	83 c4 10             	add    $0x10,%esp
c00301b6:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c00301bd:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c00301c4:	eb 6e                	jmp    c0030234 <init_page+0xc4>
c00301c6:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00301c9:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c00301d0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00301d3:	01 d0                	add    %edx,%eax
c00301d5:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00301d8:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c00301de:	83 ca 07             	or     $0x7,%edx
c00301e1:	89 10                	mov    %edx,(%eax)
c00301e3:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00301e6:	05 00 03 00 00       	add    $0x300,%eax
c00301eb:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c00301f2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00301f5:	01 d0                	add    %edx,%eax
c00301f7:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00301fa:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0030200:	83 ca 07             	or     $0x7,%edx
c0030203:	89 10                	mov    %edx,(%eax)
c0030205:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c003020c:	eb 1a                	jmp    c0030228 <init_page+0xb8>
c003020e:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0030211:	c1 e0 0c             	shl    $0xc,%eax
c0030214:	83 c8 07             	or     $0x7,%eax
c0030217:	89 c2                	mov    %eax,%edx
c0030219:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003021c:	89 10                	mov    %edx,(%eax)
c003021e:	ff 45 e8             	incl   -0x18(%ebp)
c0030221:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c0030225:	ff 45 ec             	incl   -0x14(%ebp)
c0030228:	81 7d ec ff 03 00 00 	cmpl   $0x3ff,-0x14(%ebp)
c003022f:	76 dd                	jbe    c003020e <init_page+0x9e>
c0030231:	ff 45 f0             	incl   -0x10(%ebp)
c0030234:	83 7d f0 1f          	cmpl   $0x1f,-0x10(%ebp)
c0030238:	76 8c                	jbe    c00301c6 <init_page+0x56>
c003023a:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c0030241:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0030244:	c1 e8 0c             	shr    $0xc,%eax
c0030247:	25 ff ff 0f 00       	and    $0xfffff,%eax
c003024c:	c1 e0 0c             	shl    $0xc,%eax
c003024f:	89 c2                	mov    %eax,%edx
c0030251:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0030254:	25 ff 0f 00 00       	and    $0xfff,%eax
c0030259:	09 d0                	or     %edx,%eax
c003025b:	89 45 dc             	mov    %eax,-0x24(%ebp)
c003025e:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0030261:	83 ec 0c             	sub    $0xc,%esp
c0030264:	50                   	push   %eax
c0030265:	e8 a0 fe ff ff       	call   c003010a <write_cr3>
c003026a:	83 c4 10             	add    $0x10,%esp
c003026d:	e8 67 fe ff ff       	call   c00300d9 <read_cr0>
c0030272:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0030275:	8a 45 e3             	mov    -0x1d(%ebp),%al
c0030278:	83 c8 80             	or     $0xffffff80,%eax
c003027b:	88 45 e3             	mov    %al,-0x1d(%ebp)
c003027e:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0030281:	83 ec 0c             	sub    $0xc,%esp
c0030284:	50                   	push   %eax
c0030285:	e8 6a fe ff ff       	call   c00300f4 <write_cr0>
c003028a:	83 c4 10             	add    $0x10,%esp
c003028d:	90                   	nop
c003028e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030291:	c9                   	leave  
c0030292:	c3                   	ret    

c0030293 <set_segment>:
c0030293:	55                   	push   %ebp
c0030294:	89 e5                	mov    %esp,%ebp
c0030296:	e8 28 01 00 00       	call   c00303c3 <__x86.get_pc_thunk.ax>
c003029b:	05 65 bd 00 00       	add    $0xbd65,%eax
c00302a0:	8b 45 08             	mov    0x8(%ebp),%eax
c00302a3:	66 c7 00 ff ff       	movw   $0xffff,(%eax)
c00302a8:	8b 45 08             	mov    0x8(%ebp),%eax
c00302ab:	66 c7 40 02 00 00    	movw   $0x0,0x2(%eax)
c00302b1:	8b 45 08             	mov    0x8(%ebp),%eax
c00302b4:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c00302b8:	8b 45 10             	mov    0x10(%ebp),%eax
c00302bb:	83 e0 0f             	and    $0xf,%eax
c00302be:	88 c2                	mov    %al,%dl
c00302c0:	8b 45 08             	mov    0x8(%ebp),%eax
c00302c3:	88 d1                	mov    %dl,%cl
c00302c5:	83 e1 0f             	and    $0xf,%ecx
c00302c8:	8a 50 05             	mov    0x5(%eax),%dl
c00302cb:	83 e2 f0             	and    $0xfffffff0,%edx
c00302ce:	09 ca                	or     %ecx,%edx
c00302d0:	88 50 05             	mov    %dl,0x5(%eax)
c00302d3:	8b 45 08             	mov    0x8(%ebp),%eax
c00302d6:	8a 50 05             	mov    0x5(%eax),%dl
c00302d9:	83 ca 10             	or     $0x10,%edx
c00302dc:	88 50 05             	mov    %dl,0x5(%eax)
c00302df:	8b 45 0c             	mov    0xc(%ebp),%eax
c00302e2:	83 e0 03             	and    $0x3,%eax
c00302e5:	88 c2                	mov    %al,%dl
c00302e7:	8b 45 08             	mov    0x8(%ebp),%eax
c00302ea:	83 e2 03             	and    $0x3,%edx
c00302ed:	88 d1                	mov    %dl,%cl
c00302ef:	c1 e1 05             	shl    $0x5,%ecx
c00302f2:	8a 50 05             	mov    0x5(%eax),%dl
c00302f5:	83 e2 9f             	and    $0xffffff9f,%edx
c00302f8:	09 ca                	or     %ecx,%edx
c00302fa:	88 50 05             	mov    %dl,0x5(%eax)
c00302fd:	8b 45 08             	mov    0x8(%ebp),%eax
c0030300:	8a 50 05             	mov    0x5(%eax),%dl
c0030303:	83 ca 80             	or     $0xffffff80,%edx
c0030306:	88 50 05             	mov    %dl,0x5(%eax)
c0030309:	8b 45 08             	mov    0x8(%ebp),%eax
c003030c:	8a 50 06             	mov    0x6(%eax),%dl
c003030f:	83 ca 0f             	or     $0xf,%edx
c0030312:	88 50 06             	mov    %dl,0x6(%eax)
c0030315:	8b 45 08             	mov    0x8(%ebp),%eax
c0030318:	8a 50 06             	mov    0x6(%eax),%dl
c003031b:	83 e2 ef             	and    $0xffffffef,%edx
c003031e:	88 50 06             	mov    %dl,0x6(%eax)
c0030321:	8b 45 08             	mov    0x8(%ebp),%eax
c0030324:	8a 50 06             	mov    0x6(%eax),%dl
c0030327:	83 e2 df             	and    $0xffffffdf,%edx
c003032a:	88 50 06             	mov    %dl,0x6(%eax)
c003032d:	8b 45 08             	mov    0x8(%ebp),%eax
c0030330:	8a 50 06             	mov    0x6(%eax),%dl
c0030333:	83 ca 40             	or     $0x40,%edx
c0030336:	88 50 06             	mov    %dl,0x6(%eax)
c0030339:	8b 45 08             	mov    0x8(%ebp),%eax
c003033c:	8a 50 06             	mov    0x6(%eax),%dl
c003033f:	83 ca 80             	or     $0xffffff80,%edx
c0030342:	88 50 06             	mov    %dl,0x6(%eax)
c0030345:	8b 45 08             	mov    0x8(%ebp),%eax
c0030348:	c6 40 07 00          	movb   $0x0,0x7(%eax)
c003034c:	90                   	nop
c003034d:	5d                   	pop    %ebp
c003034e:	c3                   	ret    

c003034f <init_segment>:
c003034f:	55                   	push   %ebp
c0030350:	89 e5                	mov    %esp,%ebp
c0030352:	53                   	push   %ebx
c0030353:	83 ec 04             	sub    $0x4,%esp
c0030356:	e8 6c 00 00 00       	call   c00303c7 <__x86.get_pc_thunk.bx>
c003035b:	81 c3 a5 bc 00 00    	add    $0xbca5,%ebx
c0030361:	83 ec 04             	sub    $0x4,%esp
c0030364:	6a 18                	push   $0x18
c0030366:	6a 00                	push   $0x0
c0030368:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c003036e:	50                   	push   %eax
c003036f:	e8 88 1a 00 00       	call   c0031dfc <memset>
c0030374:	83 c4 10             	add    $0x10,%esp
c0030377:	83 ec 04             	sub    $0x4,%esp
c003037a:	6a 0a                	push   $0xa
c003037c:	6a 00                	push   $0x0
c003037e:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c0030384:	8d 40 08             	lea    0x8(%eax),%eax
c0030387:	50                   	push   %eax
c0030388:	e8 06 ff ff ff       	call   c0030293 <set_segment>
c003038d:	83 c4 10             	add    $0x10,%esp
c0030390:	83 ec 04             	sub    $0x4,%esp
c0030393:	6a 02                	push   $0x2
c0030395:	6a 00                	push   $0x0
c0030397:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c003039d:	8d 40 10             	lea    0x10(%eax),%eax
c00303a0:	50                   	push   %eax
c00303a1:	e8 ed fe ff ff       	call   c0030293 <set_segment>
c00303a6:	83 c4 10             	add    $0x10,%esp
c00303a9:	83 ec 08             	sub    $0x8,%esp
c00303ac:	6a 18                	push   $0x18
c00303ae:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c00303b4:	50                   	push   %eax
c00303b5:	e8 66 fd ff ff       	call   c0030120 <write_gdtr>
c00303ba:	83 c4 10             	add    $0x10,%esp
c00303bd:	90                   	nop
c00303be:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00303c1:	c9                   	leave  
c00303c2:	c3                   	ret    

c00303c3 <__x86.get_pc_thunk.ax>:
c00303c3:	8b 04 24             	mov    (%esp),%eax
c00303c6:	c3                   	ret    

c00303c7 <__x86.get_pc_thunk.bx>:
c00303c7:	8b 1c 24             	mov    (%esp),%ebx
c00303ca:	c3                   	ret    

c00303cb <get_updir>:
c00303cb:	55                   	push   %ebp
c00303cc:	89 e5                	mov    %esp,%ebp
c00303ce:	e8 f0 ff ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c00303d3:	05 2d bc 00 00       	add    $0xbc2d,%eax
c00303d8:	c7 c0 00 20 09 c0    	mov    $0xc0092000,%eax
c00303de:	5d                   	pop    %ebp
c00303df:	c3                   	ret    

c00303e0 <get_ucr3>:
c00303e0:	55                   	push   %ebp
c00303e1:	89 e5                	mov    %esp,%ebp
c00303e3:	e8 db ff ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c00303e8:	05 18 bc 00 00       	add    $0xbc18,%eax
c00303ed:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c00303f3:	8b 00                	mov    (%eax),%eax
c00303f5:	5d                   	pop    %ebp
c00303f6:	c3                   	ret    

c00303f7 <mm_brk>:
c00303f7:	55                   	push   %ebp
c00303f8:	89 e5                	mov    %esp,%ebp
c00303fa:	53                   	push   %ebx
c00303fb:	83 ec 04             	sub    $0x4,%esp
c00303fe:	e8 c4 ff ff ff       	call   c00303c7 <__x86.get_pc_thunk.bx>
c0030403:	81 c3 fd bb 00 00    	add    $0xbbfd,%ebx
c0030409:	8b 83 08 10 00 00    	mov    0x1008(%ebx),%eax
c003040f:	39 45 08             	cmp    %eax,0x8(%ebp)
c0030412:	76 22                	jbe    c0030436 <mm_brk+0x3f>
c0030414:	8b 83 08 10 00 00    	mov    0x1008(%ebx),%eax
c003041a:	8b 55 08             	mov    0x8(%ebp),%edx
c003041d:	29 c2                	sub    %eax,%edx
c003041f:	89 d0                	mov    %edx,%eax
c0030421:	89 c2                	mov    %eax,%edx
c0030423:	8b 83 08 10 00 00    	mov    0x1008(%ebx),%eax
c0030429:	83 ec 08             	sub    $0x8,%esp
c003042c:	52                   	push   %edx
c003042d:	50                   	push   %eax
c003042e:	e8 ed 16 00 00       	call   c0031b20 <mm_malloc>
c0030433:	83 c4 10             	add    $0x10,%esp
c0030436:	8b 45 08             	mov    0x8(%ebp),%eax
c0030439:	89 83 08 10 00 00    	mov    %eax,0x1008(%ebx)
c003043f:	90                   	nop
c0030440:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030443:	c9                   	leave  
c0030444:	c3                   	ret    

c0030445 <init_mm>:
c0030445:	55                   	push   %ebp
c0030446:	89 e5                	mov    %esp,%ebp
c0030448:	53                   	push   %ebx
c0030449:	83 ec 14             	sub    $0x14,%esp
c003044c:	e8 76 ff ff ff       	call   c00303c7 <__x86.get_pc_thunk.bx>
c0030451:	81 c3 af bb 00 00    	add    $0xbbaf,%ebx
c0030457:	e8 ff fc ff ff       	call   c003015b <get_kpdir>
c003045c:	89 45 f4             	mov    %eax,-0xc(%ebp)
c003045f:	83 ec 04             	sub    $0x4,%esp
c0030462:	68 00 10 00 00       	push   $0x1000
c0030467:	6a 00                	push   $0x0
c0030469:	c7 c0 00 20 09 c0    	mov    $0xc0092000,%eax
c003046f:	50                   	push   %eax
c0030470:	e8 87 19 00 00       	call   c0031dfc <memset>
c0030475:	83 c4 10             	add    $0x10,%esp
c0030478:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003047b:	05 00 0c 00 00       	add    $0xc00,%eax
c0030480:	83 ec 04             	sub    $0x4,%esp
c0030483:	68 80 00 00 00       	push   $0x80
c0030488:	50                   	push   %eax
c0030489:	c7 c0 00 20 09 c0    	mov    $0xc0092000,%eax
c003048f:	8d 80 00 0c 00 00    	lea    0xc00(%eax),%eax
c0030495:	50                   	push   %eax
c0030496:	e8 19 19 00 00       	call   c0031db4 <memcpy>
c003049b:	83 c4 10             	add    $0x10,%esp
c003049e:	c7 c0 00 20 09 c0    	mov    $0xc0092000,%eax
c00304a4:	05 00 00 00 40       	add    $0x40000000,%eax
c00304a9:	25 00 fc ff ff       	and    $0xfffffc00,%eax
c00304ae:	89 c2                	mov    %eax,%edx
c00304b0:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c00304b6:	89 10                	mov    %edx,(%eax)
c00304b8:	90                   	nop
c00304b9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00304bc:	c9                   	leave  
c00304bd:	c3                   	ret    

c00304be <create_video_mapping>:
c00304be:	55                   	push   %ebp
c00304bf:	89 e5                	mov    %esp,%ebp
c00304c1:	53                   	push   %ebx
c00304c2:	83 ec 04             	sub    $0x4,%esp
c00304c5:	e8 f9 fe ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c00304ca:	05 36 bb 00 00       	add    $0xbb36,%eax
c00304cf:	8d 90 38 c7 ff ff    	lea    -0x38c8(%eax),%edx
c00304d5:	52                   	push   %edx
c00304d6:	6a 13                	push   $0x13
c00304d8:	8d 90 80 c6 ff ff    	lea    -0x3980(%eax),%edx
c00304de:	52                   	push   %edx
c00304df:	8d 90 94 c6 ff ff    	lea    -0x396c(%eax),%edx
c00304e5:	52                   	push   %edx
c00304e6:	89 c3                	mov    %eax,%ebx
c00304e8:	e8 4a 11 00 00       	call   c0031637 <printk>
c00304ed:	83 c4 10             	add    $0x10,%esp
c00304f0:	b8 01 00 00 00       	mov    $0x1,%eax
c00304f5:	82 90 8b 5d fc c9 c3 	adcb   $0xc3,-0x3603a275(%eax)

c00304fc <video_mapping_write_test>:
c00304fc:	55                   	push   %ebp
c00304fd:	89 e5                	mov    %esp,%ebp
c00304ff:	83 ec 10             	sub    $0x10,%esp
c0030502:	e8 bc fe ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0030507:	05 f9 ba 00 00       	add    $0xbaf9,%eax
c003050c:	c7 45 f8 00 00 0a 00 	movl   $0xa0000,-0x8(%ebp)
c0030513:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c003051a:	eb 17                	jmp    c0030533 <video_mapping_write_test+0x37>
c003051c:	8b 45 fc             	mov    -0x4(%ebp),%eax
c003051f:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0030526:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0030529:	01 c2                	add    %eax,%edx
c003052b:	8b 45 fc             	mov    -0x4(%ebp),%eax
c003052e:	89 02                	mov    %eax,(%edx)
c0030530:	ff 45 fc             	incl   -0x4(%ebp)
c0030533:	81 7d fc 7f 3e 00 00 	cmpl   $0x3e7f,-0x4(%ebp)
c003053a:	7e e0                	jle    c003051c <video_mapping_write_test+0x20>
c003053c:	90                   	nop
c003053d:	c9                   	leave  
c003053e:	c3                   	ret    

c003053f <video_mapping_read_test>:
c003053f:	55                   	push   %ebp
c0030540:	89 e5                	mov    %esp,%ebp
c0030542:	53                   	push   %ebx
c0030543:	83 ec 14             	sub    $0x14,%esp
c0030546:	e8 7c fe ff ff       	call   c00303c7 <__x86.get_pc_thunk.bx>
c003054b:	81 c3 b5 ba 00 00    	add    $0xbab5,%ebx
c0030551:	c7 45 f0 00 00 0a 00 	movl   $0xa0000,-0x10(%ebp)
c0030558:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c003055f:	eb 4a                	jmp    c00305ab <video_mapping_read_test+0x6c>
c0030561:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030564:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c003056b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003056e:	01 d0                	add    %edx,%eax
c0030570:	8b 10                	mov    (%eax),%edx
c0030572:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030575:	39 c2                	cmp    %eax,%edx
c0030577:	74 2f                	je     c00305a8 <video_mapping_read_test+0x69>
c0030579:	83 ec 0c             	sub    $0xc,%esp
c003057c:	8d 83 dd c6 ff ff    	lea    -0x3923(%ebx),%eax
c0030582:	50                   	push   %eax
c0030583:	8d 83 50 c7 ff ff    	lea    -0x38b0(%ebx),%eax
c0030589:	50                   	push   %eax
c003058a:	6a 22                	push   $0x22
c003058c:	8d 83 80 c6 ff ff    	lea    -0x3980(%ebx),%eax
c0030592:	50                   	push   %eax
c0030593:	8d 83 ec c6 ff ff    	lea    -0x3914(%ebx),%eax
c0030599:	50                   	push   %eax
c003059a:	e8 98 10 00 00       	call   c0031637 <printk>
c003059f:	83 c4 20             	add    $0x20,%esp
c00305a2:	b8 01 00 00 00       	mov    $0x1,%eax
c00305a7:	82 ff 45             	cmp    $0x45,%bh
c00305aa:	f4                   	hlt    
c00305ab:	81 7d f4 7f 3e 00 00 	cmpl   $0x3e7f,-0xc(%ebp)
c00305b2:	7e ad                	jle    c0030561 <video_mapping_read_test+0x22>
c00305b4:	90                   	nop
c00305b5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00305b8:	c9                   	leave  
c00305b9:	c3                   	ret    

c00305ba <video_mapping_clear>:
c00305ba:	55                   	push   %ebp
c00305bb:	89 e5                	mov    %esp,%ebp
c00305bd:	53                   	push   %ebx
c00305be:	83 ec 04             	sub    $0x4,%esp
c00305c1:	e8 fd fd ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c00305c6:	05 3a ba 00 00       	add    $0xba3a,%eax
c00305cb:	83 ec 04             	sub    $0x4,%esp
c00305ce:	68 00 fa 00 00       	push   $0xfa00
c00305d3:	6a 00                	push   $0x0
c00305d5:	68 00 00 0a 00       	push   $0xa0000
c00305da:	89 c3                	mov    %eax,%ebx
c00305dc:	e8 1b 18 00 00       	call   c0031dfc <memset>
c00305e1:	83 c4 10             	add    $0x10,%esp
c00305e4:	90                   	nop
c00305e5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00305e8:	c9                   	leave  
c00305e9:	c3                   	ret    

c00305ea <add_irq_handle>:
c00305ea:	55                   	push   %ebp
c00305eb:	89 e5                	mov    %esp,%ebp
c00305ed:	53                   	push   %ebx
c00305ee:	83 ec 14             	sub    $0x14,%esp
c00305f1:	e8 d1 fd ff ff       	call   c00303c7 <__x86.get_pc_thunk.bx>
c00305f6:	81 c3 0a ba 00 00    	add    $0xba0a,%ebx
c00305fc:	83 7d 08 0f          	cmpl   $0xf,0x8(%ebp)
c0030600:	7e 2f                	jle    c0030631 <add_irq_handle+0x47>
c0030602:	83 ec 0c             	sub    $0xc,%esp
c0030605:	8d 83 68 c7 ff ff    	lea    -0x3898(%ebx),%eax
c003060b:	50                   	push   %eax
c003060c:	8d 83 54 c9 ff ff    	lea    -0x36ac(%ebx),%eax
c0030612:	50                   	push   %eax
c0030613:	6a 16                	push   $0x16
c0030615:	8d 83 7b c7 ff ff    	lea    -0x3885(%ebx),%eax
c003061b:	50                   	push   %eax
c003061c:	8d 83 90 c7 ff ff    	lea    -0x3870(%ebx),%eax
c0030622:	50                   	push   %eax
c0030623:	e8 0f 10 00 00       	call   c0031637 <printk>
c0030628:	83 c4 20             	add    $0x20,%esp
c003062b:	b8 01 00 00 00       	mov    $0x1,%eax
c0030630:	82 8b 83 60 11 00 00 	orb    $0x0,0x116083(%ebx)
c0030637:	83 f8 20             	cmp    $0x20,%eax
c003063a:	7e 2f                	jle    c003066b <add_irq_handle+0x81>
c003063c:	83 ec 0c             	sub    $0xc,%esp
c003063f:	8d 83 da c7 ff ff    	lea    -0x3826(%ebx),%eax
c0030645:	50                   	push   %eax
c0030646:	8d 83 54 c9 ff ff    	lea    -0x36ac(%ebx),%eax
c003064c:	50                   	push   %eax
c003064d:	6a 17                	push   $0x17
c003064f:	8d 83 7b c7 ff ff    	lea    -0x3885(%ebx),%eax
c0030655:	50                   	push   %eax
c0030656:	8d 83 90 c7 ff ff    	lea    -0x3870(%ebx),%eax
c003065c:	50                   	push   %eax
c003065d:	e8 d5 0f 00 00       	call   c0031637 <printk>
c0030662:	83 c4 20             	add    $0x20,%esp
c0030665:	b8 01 00 00 00       	mov    $0x1,%eax
c003066a:	82 8b 83 60 11 00 00 	orb    $0x0,0x116083(%ebx)
c0030671:	8d 50 01             	lea    0x1(%eax),%edx
c0030674:	89 93 60 11 00 00    	mov    %edx,0x1160(%ebx)
c003067a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c0030681:	8d 83 20 10 00 00    	lea    0x1020(%ebx),%eax
c0030687:	01 d0                	add    %edx,%eax
c0030689:	89 45 f4             	mov    %eax,-0xc(%ebp)
c003068c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003068f:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030692:	89 10                	mov    %edx,(%eax)
c0030694:	8b 45 08             	mov    0x8(%ebp),%eax
c0030697:	8b 94 83 20 11 00 00 	mov    0x1120(%ebx,%eax,4),%edx
c003069e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00306a1:	89 50 04             	mov    %edx,0x4(%eax)
c00306a4:	8b 45 08             	mov    0x8(%ebp),%eax
c00306a7:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00306aa:	89 94 83 20 11 00 00 	mov    %edx,0x1120(%ebx,%eax,4)
c00306b1:	90                   	nop
c00306b2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00306b5:	c9                   	leave  
c00306b6:	c3                   	ret    

c00306b7 <irq_handle>:
c00306b7:	55                   	push   %ebp
c00306b8:	89 e5                	mov    %esp,%ebp
c00306ba:	53                   	push   %ebx
c00306bb:	83 ec 14             	sub    $0x14,%esp
c00306be:	e8 04 fd ff ff       	call   c00303c7 <__x86.get_pc_thunk.bx>
c00306c3:	81 c3 3d b9 00 00    	add    $0xb93d,%ebx
c00306c9:	8b 45 08             	mov    0x8(%ebp),%eax
c00306cc:	8b 40 20             	mov    0x20(%eax),%eax
c00306cf:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00306d2:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c00306d6:	79 2a                	jns    c0030702 <irq_handle+0x4b>
c00306d8:	8d 83 64 c9 ff ff    	lea    -0x369c(%ebx),%eax
c00306de:	50                   	push   %eax
c00306df:	6a 24                	push   $0x24
c00306e1:	8d 83 7b c7 ff ff    	lea    -0x3885(%ebx),%eax
c00306e7:	50                   	push   %eax
c00306e8:	8d 83 f8 c7 ff ff    	lea    -0x3808(%ebx),%eax
c00306ee:	50                   	push   %eax
c00306ef:	e8 43 0f 00 00       	call   c0031637 <printk>
c00306f4:	83 c4 10             	add    $0x10,%esp
c00306f7:	b8 01 00 00 00       	mov    $0x1,%eax
c00306fc:	82 e9 f9             	sub    $0xf9,%cl
c00306ff:	00 00                	add    %al,(%eax)
c0030701:	00 81 7d f0 80 00    	add    %al,0x80f07d(%ecx)
c0030707:	00 00                	add    %al,(%eax)
c0030709:	75 13                	jne    c003071e <irq_handle+0x67>
c003070b:	83 ec 0c             	sub    $0xc,%esp
c003070e:	ff 75 08             	pushl  0x8(%ebp)
c0030711:	e8 33 0e 00 00       	call   c0031549 <do_syscall>
c0030716:	83 c4 10             	add    $0x10,%esp
c0030719:	e9 dd 00 00 00       	jmp    c00307fb <irq_handle+0x144>
c003071e:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c0030725:	7f 37                	jg     c003075e <irq_handle+0xa7>
c0030727:	8b 45 08             	mov    0x8(%ebp),%eax
c003072a:	8b 40 28             	mov    0x28(%eax),%eax
c003072d:	83 ec 08             	sub    $0x8,%esp
c0030730:	50                   	push   %eax
c0030731:	ff 75 f0             	pushl  -0x10(%ebp)
c0030734:	8d 83 64 c9 ff ff    	lea    -0x369c(%ebx),%eax
c003073a:	50                   	push   %eax
c003073b:	6a 28                	push   $0x28
c003073d:	8d 83 7b c7 ff ff    	lea    -0x3885(%ebx),%eax
c0030743:	50                   	push   %eax
c0030744:	8d 83 44 c8 ff ff    	lea    -0x37bc(%ebx),%eax
c003074a:	50                   	push   %eax
c003074b:	e8 e7 0e 00 00       	call   c0031637 <printk>
c0030750:	83 c4 20             	add    $0x20,%esp
c0030753:	b8 01 00 00 00       	mov    $0x1,%eax
c0030758:	82 e9 9d             	sub    $0x9d,%cl
c003075b:	00 00                	add    %al,(%eax)
c003075d:	00 81 7d f0 e7 03    	add    %al,0x3e7f07d(%ecx)
c0030763:	00 00                	add    %al,(%eax)
c0030765:	0f 8e 90 00 00 00    	jle    c00307fb <irq_handle+0x144>
c003076b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003076e:	2d e8 03 00 00       	sub    $0x3e8,%eax
c0030773:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0030776:	83 7d ec 0f          	cmpl   $0xf,-0x14(%ebp)
c003077a:	7e 2f                	jle    c00307ab <irq_handle+0xf4>
c003077c:	83 ec 0c             	sub    $0xc,%esp
c003077f:	8d 83 9e c8 ff ff    	lea    -0x3762(%ebx),%eax
c0030785:	50                   	push   %eax
c0030786:	8d 83 64 c9 ff ff    	lea    -0x369c(%ebx),%eax
c003078c:	50                   	push   %eax
c003078d:	6a 2b                	push   $0x2b
c003078f:	8d 83 7b c7 ff ff    	lea    -0x3885(%ebx),%eax
c0030795:	50                   	push   %eax
c0030796:	8d 83 90 c7 ff ff    	lea    -0x3870(%ebx),%eax
c003079c:	50                   	push   %eax
c003079d:	e8 95 0e 00 00       	call   c0031637 <printk>
c00307a2:	83 c4 20             	add    $0x20,%esp
c00307a5:	b8 01 00 00 00       	mov    $0x1,%eax
c00307aa:	82 83 7d ec 00 75 25 	addb   $0x25,0x7500ec7d(%ebx)
c00307b1:	8d 83 64 c9 ff ff    	lea    -0x369c(%ebx),%eax
c00307b7:	50                   	push   %eax
c00307b8:	6a 2d                	push   $0x2d
c00307ba:	8d 83 7b c7 ff ff    	lea    -0x3885(%ebx),%eax
c00307c0:	50                   	push   %eax
c00307c1:	8d 83 b4 c8 ff ff    	lea    -0x374c(%ebx),%eax
c00307c7:	50                   	push   %eax
c00307c8:	e8 6a 0e 00 00       	call   c0031637 <printk>
c00307cd:	83 c4 10             	add    $0x10,%esp
c00307d0:	b8 01 00 00 00       	mov    $0x1,%eax
c00307d5:	82 8b 45 ec 8b 84 83 	orb    $0x83,-0x7b7413bb(%ebx)
c00307dc:	20 11                	and    %dl,(%ecx)
c00307de:	00 00                	add    %al,(%eax)
c00307e0:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00307e3:	eb 10                	jmp    c00307f5 <irq_handle+0x13e>
c00307e5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00307e8:	8b 00                	mov    (%eax),%eax
c00307ea:	ff d0                	call   *%eax
c00307ec:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00307ef:	8b 40 04             	mov    0x4(%eax),%eax
c00307f2:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00307f5:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c00307f9:	75 ea                	jne    c00307e5 <irq_handle+0x12e>
c00307fb:	90                   	nop
c00307fc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00307ff:	c9                   	leave  
c0030800:	c3                   	ret    

c0030801 <write_idtr>:
c0030801:	55                   	push   %ebp
c0030802:	89 e5                	mov    %esp,%ebp
c0030804:	e8 ba fb ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0030809:	05 f7 b7 00 00       	add    $0xb7f7,%eax
c003080e:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030811:	4a                   	dec    %edx
c0030812:	66 89 90 80 19 00 00 	mov    %dx,0x1980(%eax)
c0030819:	8b 55 08             	mov    0x8(%ebp),%edx
c003081c:	66 89 90 82 19 00 00 	mov    %dx,0x1982(%eax)
c0030823:	8b 55 08             	mov    0x8(%ebp),%edx
c0030826:	c1 ea 10             	shr    $0x10,%edx
c0030829:	66 89 90 84 19 00 00 	mov    %dx,0x1984(%eax)
c0030830:	8d 80 80 19 00 00    	lea    0x1980(%eax),%eax
c0030836:	0f 01 18             	lidtl  (%eax)
c0030839:	90                   	nop
c003083a:	5d                   	pop    %ebp
c003083b:	c3                   	ret    

c003083c <sti>:
c003083c:	55                   	push   %ebp
c003083d:	89 e5                	mov    %esp,%ebp
c003083f:	e8 7f fb ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0030844:	05 bc b7 00 00       	add    $0xb7bc,%eax
c0030849:	fb                   	sti    
c003084a:	90                   	nop
c003084b:	5d                   	pop    %ebp
c003084c:	c3                   	ret    

c003084d <set_intr>:
c003084d:	55                   	push   %ebp
c003084e:	89 e5                	mov    %esp,%ebp
c0030850:	e8 6e fb ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0030855:	05 ab b7 00 00       	add    $0xb7ab,%eax
c003085a:	8b 45 10             	mov    0x10(%ebp),%eax
c003085d:	8b 55 08             	mov    0x8(%ebp),%edx
c0030860:	66 89 02             	mov    %ax,(%edx)
c0030863:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030866:	8b 55 08             	mov    0x8(%ebp),%edx
c0030869:	66 89 42 02          	mov    %ax,0x2(%edx)
c003086d:	8b 45 08             	mov    0x8(%ebp),%eax
c0030870:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0030874:	8b 45 08             	mov    0x8(%ebp),%eax
c0030877:	8a 50 05             	mov    0x5(%eax),%dl
c003087a:	83 e2 f0             	and    $0xfffffff0,%edx
c003087d:	83 ca 0e             	or     $0xe,%edx
c0030880:	88 50 05             	mov    %dl,0x5(%eax)
c0030883:	8b 45 08             	mov    0x8(%ebp),%eax
c0030886:	8a 50 05             	mov    0x5(%eax),%dl
c0030889:	83 e2 ef             	and    $0xffffffef,%edx
c003088c:	88 50 05             	mov    %dl,0x5(%eax)
c003088f:	8b 45 14             	mov    0x14(%ebp),%eax
c0030892:	83 e0 03             	and    $0x3,%eax
c0030895:	88 c2                	mov    %al,%dl
c0030897:	8b 45 08             	mov    0x8(%ebp),%eax
c003089a:	83 e2 03             	and    $0x3,%edx
c003089d:	88 d1                	mov    %dl,%cl
c003089f:	c1 e1 05             	shl    $0x5,%ecx
c00308a2:	8a 50 05             	mov    0x5(%eax),%dl
c00308a5:	83 e2 9f             	and    $0xffffff9f,%edx
c00308a8:	09 ca                	or     %ecx,%edx
c00308aa:	88 50 05             	mov    %dl,0x5(%eax)
c00308ad:	8b 45 08             	mov    0x8(%ebp),%eax
c00308b0:	8a 50 05             	mov    0x5(%eax),%dl
c00308b3:	83 ca 80             	or     $0xffffff80,%edx
c00308b6:	88 50 05             	mov    %dl,0x5(%eax)
c00308b9:	8b 45 10             	mov    0x10(%ebp),%eax
c00308bc:	c1 e8 10             	shr    $0x10,%eax
c00308bf:	8b 55 08             	mov    0x8(%ebp),%edx
c00308c2:	66 89 42 06          	mov    %ax,0x6(%edx)
c00308c6:	90                   	nop
c00308c7:	5d                   	pop    %ebp
c00308c8:	c3                   	ret    

c00308c9 <set_trap>:
c00308c9:	55                   	push   %ebp
c00308ca:	89 e5                	mov    %esp,%ebp
c00308cc:	e8 f2 fa ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c00308d1:	05 2f b7 00 00       	add    $0xb72f,%eax
c00308d6:	8b 45 10             	mov    0x10(%ebp),%eax
c00308d9:	8b 55 08             	mov    0x8(%ebp),%edx
c00308dc:	66 89 02             	mov    %ax,(%edx)
c00308df:	8b 45 0c             	mov    0xc(%ebp),%eax
c00308e2:	8b 55 08             	mov    0x8(%ebp),%edx
c00308e5:	66 89 42 02          	mov    %ax,0x2(%edx)
c00308e9:	8b 45 08             	mov    0x8(%ebp),%eax
c00308ec:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c00308f0:	8b 45 08             	mov    0x8(%ebp),%eax
c00308f3:	8a 50 05             	mov    0x5(%eax),%dl
c00308f6:	83 ca 0f             	or     $0xf,%edx
c00308f9:	88 50 05             	mov    %dl,0x5(%eax)
c00308fc:	8b 45 08             	mov    0x8(%ebp),%eax
c00308ff:	8a 50 05             	mov    0x5(%eax),%dl
c0030902:	83 e2 ef             	and    $0xffffffef,%edx
c0030905:	88 50 05             	mov    %dl,0x5(%eax)
c0030908:	8b 45 14             	mov    0x14(%ebp),%eax
c003090b:	83 e0 03             	and    $0x3,%eax
c003090e:	88 c2                	mov    %al,%dl
c0030910:	8b 45 08             	mov    0x8(%ebp),%eax
c0030913:	83 e2 03             	and    $0x3,%edx
c0030916:	88 d1                	mov    %dl,%cl
c0030918:	c1 e1 05             	shl    $0x5,%ecx
c003091b:	8a 50 05             	mov    0x5(%eax),%dl
c003091e:	83 e2 9f             	and    $0xffffff9f,%edx
c0030921:	09 ca                	or     %ecx,%edx
c0030923:	88 50 05             	mov    %dl,0x5(%eax)
c0030926:	8b 45 08             	mov    0x8(%ebp),%eax
c0030929:	8a 50 05             	mov    0x5(%eax),%dl
c003092c:	83 ca 80             	or     $0xffffff80,%edx
c003092f:	88 50 05             	mov    %dl,0x5(%eax)
c0030932:	8b 45 10             	mov    0x10(%ebp),%eax
c0030935:	c1 e8 10             	shr    $0x10,%eax
c0030938:	8b 55 08             	mov    0x8(%ebp),%edx
c003093b:	66 89 42 06          	mov    %ax,0x6(%edx)
c003093f:	90                   	nop
c0030940:	5d                   	pop    %ebp
c0030941:	c3                   	ret    

c0030942 <init_idt>:
c0030942:	55                   	push   %ebp
c0030943:	89 e5                	mov    %esp,%ebp
c0030945:	53                   	push   %ebx
c0030946:	83 ec 10             	sub    $0x10,%esp
c0030949:	e8 79 fa ff ff       	call   c00303c7 <__x86.get_pc_thunk.bx>
c003094e:	81 c3 b2 b6 00 00    	add    $0xb6b2,%ebx
c0030954:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c003095b:	eb 2b                	jmp    c0030988 <init_idt+0x46>
c003095d:	c7 c0 c4 00 03 c0    	mov    $0xc00300c4,%eax
c0030963:	89 c2                	mov    %eax,%edx
c0030965:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0030968:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
c003096f:	8d 83 80 11 00 00    	lea    0x1180(%ebx),%eax
c0030975:	01 c8                	add    %ecx,%eax
c0030977:	6a 00                	push   $0x0
c0030979:	52                   	push   %edx
c003097a:	6a 08                	push   $0x8
c003097c:	50                   	push   %eax
c003097d:	e8 47 ff ff ff       	call   c00308c9 <set_trap>
c0030982:	83 c4 10             	add    $0x10,%esp
c0030985:	ff 45 f8             	incl   -0x8(%ebp)
c0030988:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
c003098f:	7e cc                	jle    c003095d <init_idt+0x1b>
c0030991:	c7 c0 52 00 03 c0    	mov    $0xc0030052,%eax
c0030997:	6a 00                	push   $0x0
c0030999:	50                   	push   %eax
c003099a:	6a 08                	push   $0x8
c003099c:	8d 83 80 11 00 00    	lea    0x1180(%ebx),%eax
c00309a2:	50                   	push   %eax
c00309a3:	e8 21 ff ff ff       	call   c00308c9 <set_trap>
c00309a8:	83 c4 10             	add    $0x10,%esp
c00309ab:	c7 c0 58 00 03 c0    	mov    $0xc0030058,%eax
c00309b1:	89 c2                	mov    %eax,%edx
c00309b3:	8d 83 88 11 00 00    	lea    0x1188(%ebx),%eax
c00309b9:	6a 00                	push   $0x0
c00309bb:	52                   	push   %edx
c00309bc:	6a 08                	push   $0x8
c00309be:	50                   	push   %eax
c00309bf:	e8 05 ff ff ff       	call   c00308c9 <set_trap>
c00309c4:	83 c4 10             	add    $0x10,%esp
c00309c7:	c7 c0 5e 00 03 c0    	mov    $0xc003005e,%eax
c00309cd:	89 c2                	mov    %eax,%edx
c00309cf:	8d 83 90 11 00 00    	lea    0x1190(%ebx),%eax
c00309d5:	6a 00                	push   $0x0
c00309d7:	52                   	push   %edx
c00309d8:	6a 08                	push   $0x8
c00309da:	50                   	push   %eax
c00309db:	e8 e9 fe ff ff       	call   c00308c9 <set_trap>
c00309e0:	83 c4 10             	add    $0x10,%esp
c00309e3:	c7 c0 64 00 03 c0    	mov    $0xc0030064,%eax
c00309e9:	89 c2                	mov    %eax,%edx
c00309eb:	8d 83 98 11 00 00    	lea    0x1198(%ebx),%eax
c00309f1:	6a 00                	push   $0x0
c00309f3:	52                   	push   %edx
c00309f4:	6a 08                	push   $0x8
c00309f6:	50                   	push   %eax
c00309f7:	e8 cd fe ff ff       	call   c00308c9 <set_trap>
c00309fc:	83 c4 10             	add    $0x10,%esp
c00309ff:	c7 c0 6a 00 03 c0    	mov    $0xc003006a,%eax
c0030a05:	89 c2                	mov    %eax,%edx
c0030a07:	8d 83 a0 11 00 00    	lea    0x11a0(%ebx),%eax
c0030a0d:	6a 00                	push   $0x0
c0030a0f:	52                   	push   %edx
c0030a10:	6a 08                	push   $0x8
c0030a12:	50                   	push   %eax
c0030a13:	e8 b1 fe ff ff       	call   c00308c9 <set_trap>
c0030a18:	83 c4 10             	add    $0x10,%esp
c0030a1b:	c7 c0 70 00 03 c0    	mov    $0xc0030070,%eax
c0030a21:	89 c2                	mov    %eax,%edx
c0030a23:	8d 83 a8 11 00 00    	lea    0x11a8(%ebx),%eax
c0030a29:	6a 00                	push   $0x0
c0030a2b:	52                   	push   %edx
c0030a2c:	6a 08                	push   $0x8
c0030a2e:	50                   	push   %eax
c0030a2f:	e8 95 fe ff ff       	call   c00308c9 <set_trap>
c0030a34:	83 c4 10             	add    $0x10,%esp
c0030a37:	c7 c0 76 00 03 c0    	mov    $0xc0030076,%eax
c0030a3d:	89 c2                	mov    %eax,%edx
c0030a3f:	8d 83 b0 11 00 00    	lea    0x11b0(%ebx),%eax
c0030a45:	6a 00                	push   $0x0
c0030a47:	52                   	push   %edx
c0030a48:	6a 08                	push   $0x8
c0030a4a:	50                   	push   %eax
c0030a4b:	e8 79 fe ff ff       	call   c00308c9 <set_trap>
c0030a50:	83 c4 10             	add    $0x10,%esp
c0030a53:	c7 c0 7c 00 03 c0    	mov    $0xc003007c,%eax
c0030a59:	89 c2                	mov    %eax,%edx
c0030a5b:	8d 83 b8 11 00 00    	lea    0x11b8(%ebx),%eax
c0030a61:	6a 00                	push   $0x0
c0030a63:	52                   	push   %edx
c0030a64:	6a 08                	push   $0x8
c0030a66:	50                   	push   %eax
c0030a67:	e8 5d fe ff ff       	call   c00308c9 <set_trap>
c0030a6c:	83 c4 10             	add    $0x10,%esp
c0030a6f:	c7 c0 82 00 03 c0    	mov    $0xc0030082,%eax
c0030a75:	89 c2                	mov    %eax,%edx
c0030a77:	8d 83 c0 11 00 00    	lea    0x11c0(%ebx),%eax
c0030a7d:	6a 00                	push   $0x0
c0030a7f:	52                   	push   %edx
c0030a80:	6a 08                	push   $0x8
c0030a82:	50                   	push   %eax
c0030a83:	e8 41 fe ff ff       	call   c00308c9 <set_trap>
c0030a88:	83 c4 10             	add    $0x10,%esp
c0030a8b:	c7 c0 86 00 03 c0    	mov    $0xc0030086,%eax
c0030a91:	89 c2                	mov    %eax,%edx
c0030a93:	8d 83 c8 11 00 00    	lea    0x11c8(%ebx),%eax
c0030a99:	6a 00                	push   $0x0
c0030a9b:	52                   	push   %edx
c0030a9c:	6a 08                	push   $0x8
c0030a9e:	50                   	push   %eax
c0030a9f:	e8 25 fe ff ff       	call   c00308c9 <set_trap>
c0030aa4:	83 c4 10             	add    $0x10,%esp
c0030aa7:	c7 c0 8c 00 03 c0    	mov    $0xc003008c,%eax
c0030aad:	89 c2                	mov    %eax,%edx
c0030aaf:	8d 83 d0 11 00 00    	lea    0x11d0(%ebx),%eax
c0030ab5:	6a 00                	push   $0x0
c0030ab7:	52                   	push   %edx
c0030ab8:	6a 08                	push   $0x8
c0030aba:	50                   	push   %eax
c0030abb:	e8 09 fe ff ff       	call   c00308c9 <set_trap>
c0030ac0:	83 c4 10             	add    $0x10,%esp
c0030ac3:	c7 c0 90 00 03 c0    	mov    $0xc0030090,%eax
c0030ac9:	89 c2                	mov    %eax,%edx
c0030acb:	8d 83 d8 11 00 00    	lea    0x11d8(%ebx),%eax
c0030ad1:	6a 00                	push   $0x0
c0030ad3:	52                   	push   %edx
c0030ad4:	6a 08                	push   $0x8
c0030ad6:	50                   	push   %eax
c0030ad7:	e8 ed fd ff ff       	call   c00308c9 <set_trap>
c0030adc:	83 c4 10             	add    $0x10,%esp
c0030adf:	c7 c0 94 00 03 c0    	mov    $0xc0030094,%eax
c0030ae5:	89 c2                	mov    %eax,%edx
c0030ae7:	8d 83 e0 11 00 00    	lea    0x11e0(%ebx),%eax
c0030aed:	6a 00                	push   $0x0
c0030aef:	52                   	push   %edx
c0030af0:	6a 08                	push   $0x8
c0030af2:	50                   	push   %eax
c0030af3:	e8 d1 fd ff ff       	call   c00308c9 <set_trap>
c0030af8:	83 c4 10             	add    $0x10,%esp
c0030afb:	c7 c0 98 00 03 c0    	mov    $0xc0030098,%eax
c0030b01:	89 c2                	mov    %eax,%edx
c0030b03:	8d 83 e8 11 00 00    	lea    0x11e8(%ebx),%eax
c0030b09:	6a 00                	push   $0x0
c0030b0b:	52                   	push   %edx
c0030b0c:	6a 08                	push   $0x8
c0030b0e:	50                   	push   %eax
c0030b0f:	e8 b5 fd ff ff       	call   c00308c9 <set_trap>
c0030b14:	83 c4 10             	add    $0x10,%esp
c0030b17:	c7 c0 9c 00 03 c0    	mov    $0xc003009c,%eax
c0030b1d:	89 c2                	mov    %eax,%edx
c0030b1f:	8d 83 f0 11 00 00    	lea    0x11f0(%ebx),%eax
c0030b25:	6a 00                	push   $0x0
c0030b27:	52                   	push   %edx
c0030b28:	6a 08                	push   $0x8
c0030b2a:	50                   	push   %eax
c0030b2b:	e8 99 fd ff ff       	call   c00308c9 <set_trap>
c0030b30:	83 c4 10             	add    $0x10,%esp
c0030b33:	c7 c0 a0 00 03 c0    	mov    $0xc00300a0,%eax
c0030b39:	89 c2                	mov    %eax,%edx
c0030b3b:	8d 83 80 15 00 00    	lea    0x1580(%ebx),%eax
c0030b41:	6a 03                	push   $0x3
c0030b43:	52                   	push   %edx
c0030b44:	6a 08                	push   $0x8
c0030b46:	50                   	push   %eax
c0030b47:	e8 7d fd ff ff       	call   c00308c9 <set_trap>
c0030b4c:	83 c4 10             	add    $0x10,%esp
c0030b4f:	c7 c0 a9 00 03 c0    	mov    $0xc00300a9,%eax
c0030b55:	89 c2                	mov    %eax,%edx
c0030b57:	8d 83 80 12 00 00    	lea    0x1280(%ebx),%eax
c0030b5d:	6a 00                	push   $0x0
c0030b5f:	52                   	push   %edx
c0030b60:	6a 08                	push   $0x8
c0030b62:	50                   	push   %eax
c0030b63:	e8 e5 fc ff ff       	call   c003084d <set_intr>
c0030b68:	83 c4 10             	add    $0x10,%esp
c0030b6b:	c7 c0 b2 00 03 c0    	mov    $0xc00300b2,%eax
c0030b71:	89 c2                	mov    %eax,%edx
c0030b73:	8d 83 88 12 00 00    	lea    0x1288(%ebx),%eax
c0030b79:	6a 00                	push   $0x0
c0030b7b:	52                   	push   %edx
c0030b7c:	6a 08                	push   $0x8
c0030b7e:	50                   	push   %eax
c0030b7f:	e8 c9 fc ff ff       	call   c003084d <set_intr>
c0030b84:	83 c4 10             	add    $0x10,%esp
c0030b87:	c7 c0 bb 00 03 c0    	mov    $0xc00300bb,%eax
c0030b8d:	89 c2                	mov    %eax,%edx
c0030b8f:	8d 83 f0 12 00 00    	lea    0x12f0(%ebx),%eax
c0030b95:	6a 00                	push   $0x0
c0030b97:	52                   	push   %edx
c0030b98:	6a 08                	push   $0x8
c0030b9a:	50                   	push   %eax
c0030b9b:	e8 ad fc ff ff       	call   c003084d <set_intr>
c0030ba0:	83 c4 10             	add    $0x10,%esp
c0030ba3:	68 00 08 00 00       	push   $0x800
c0030ba8:	8d 83 80 11 00 00    	lea    0x1180(%ebx),%eax
c0030bae:	50                   	push   %eax
c0030baf:	e8 4d fc ff ff       	call   c0030801 <write_idtr>
c0030bb4:	83 c4 08             	add    $0x8,%esp
c0030bb7:	e8 80 fc ff ff       	call   c003083c <sti>
c0030bbc:	90                   	nop
c0030bbd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030bc0:	c9                   	leave  
c0030bc1:	c3                   	ret    

c0030bc2 <out_byte>:
c0030bc2:	55                   	push   %ebp
c0030bc3:	89 e5                	mov    %esp,%ebp
c0030bc5:	83 ec 08             	sub    $0x8,%esp
c0030bc8:	e8 f6 f7 ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0030bcd:	05 33 b4 00 00       	add    $0xb433,%eax
c0030bd2:	8b 45 08             	mov    0x8(%ebp),%eax
c0030bd5:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030bd8:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030bdc:	88 55 f8             	mov    %dl,-0x8(%ebp)
c0030bdf:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030be2:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030be5:	ee                   	out    %al,(%dx)
c0030be6:	90                   	nop
c0030be7:	c9                   	leave  
c0030be8:	c3                   	ret    

c0030be9 <init_i8259>:
c0030be9:	55                   	push   %ebp
c0030bea:	89 e5                	mov    %esp,%ebp
c0030bec:	e8 d2 f7 ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0030bf1:	05 0f b4 00 00       	add    $0xb40f,%eax
c0030bf6:	68 ff 00 00 00       	push   $0xff
c0030bfb:	6a 21                	push   $0x21
c0030bfd:	e8 c0 ff ff ff       	call   c0030bc2 <out_byte>
c0030c02:	83 c4 08             	add    $0x8,%esp
c0030c05:	68 ff 00 00 00       	push   $0xff
c0030c0a:	68 a1 00 00 00       	push   $0xa1
c0030c0f:	e8 ae ff ff ff       	call   c0030bc2 <out_byte>
c0030c14:	83 c4 08             	add    $0x8,%esp
c0030c17:	6a 11                	push   $0x11
c0030c19:	6a 20                	push   $0x20
c0030c1b:	e8 a2 ff ff ff       	call   c0030bc2 <out_byte>
c0030c20:	83 c4 08             	add    $0x8,%esp
c0030c23:	6a 20                	push   $0x20
c0030c25:	6a 21                	push   $0x21
c0030c27:	e8 96 ff ff ff       	call   c0030bc2 <out_byte>
c0030c2c:	83 c4 08             	add    $0x8,%esp
c0030c2f:	6a 04                	push   $0x4
c0030c31:	6a 21                	push   $0x21
c0030c33:	e8 8a ff ff ff       	call   c0030bc2 <out_byte>
c0030c38:	83 c4 08             	add    $0x8,%esp
c0030c3b:	6a 03                	push   $0x3
c0030c3d:	6a 21                	push   $0x21
c0030c3f:	e8 7e ff ff ff       	call   c0030bc2 <out_byte>
c0030c44:	83 c4 08             	add    $0x8,%esp
c0030c47:	6a 11                	push   $0x11
c0030c49:	68 a0 00 00 00       	push   $0xa0
c0030c4e:	e8 6f ff ff ff       	call   c0030bc2 <out_byte>
c0030c53:	83 c4 08             	add    $0x8,%esp
c0030c56:	6a 28                	push   $0x28
c0030c58:	68 a1 00 00 00       	push   $0xa1
c0030c5d:	e8 60 ff ff ff       	call   c0030bc2 <out_byte>
c0030c62:	83 c4 08             	add    $0x8,%esp
c0030c65:	6a 02                	push   $0x2
c0030c67:	68 a1 00 00 00       	push   $0xa1
c0030c6c:	e8 51 ff ff ff       	call   c0030bc2 <out_byte>
c0030c71:	83 c4 08             	add    $0x8,%esp
c0030c74:	6a 03                	push   $0x3
c0030c76:	68 a1 00 00 00       	push   $0xa1
c0030c7b:	e8 42 ff ff ff       	call   c0030bc2 <out_byte>
c0030c80:	83 c4 08             	add    $0x8,%esp
c0030c83:	6a 68                	push   $0x68
c0030c85:	6a 20                	push   $0x20
c0030c87:	e8 36 ff ff ff       	call   c0030bc2 <out_byte>
c0030c8c:	83 c4 08             	add    $0x8,%esp
c0030c8f:	6a 0a                	push   $0xa
c0030c91:	6a 20                	push   $0x20
c0030c93:	e8 2a ff ff ff       	call   c0030bc2 <out_byte>
c0030c98:	83 c4 08             	add    $0x8,%esp
c0030c9b:	6a 68                	push   $0x68
c0030c9d:	68 a0 00 00 00       	push   $0xa0
c0030ca2:	e8 1b ff ff ff       	call   c0030bc2 <out_byte>
c0030ca7:	83 c4 08             	add    $0x8,%esp
c0030caa:	6a 0a                	push   $0xa
c0030cac:	68 a0 00 00 00       	push   $0xa0
c0030cb1:	e8 0c ff ff ff       	call   c0030bc2 <out_byte>
c0030cb6:	83 c4 08             	add    $0x8,%esp
c0030cb9:	90                   	nop
c0030cba:	c9                   	leave  
c0030cbb:	c3                   	ret    

c0030cbc <in_byte>:
c0030cbc:	55                   	push   %ebp
c0030cbd:	89 e5                	mov    %esp,%ebp
c0030cbf:	83 ec 14             	sub    $0x14,%esp
c0030cc2:	e8 fc f6 ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0030cc7:	05 39 b3 00 00       	add    $0xb339,%eax
c0030ccc:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ccf:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030cd3:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030cd6:	89 c2                	mov    %eax,%edx
c0030cd8:	ec                   	in     (%dx),%al
c0030cd9:	88 45 ff             	mov    %al,-0x1(%ebp)
c0030cdc:	8a 45 ff             	mov    -0x1(%ebp),%al
c0030cdf:	c9                   	leave  
c0030ce0:	c3                   	ret    

c0030ce1 <out_byte>:
c0030ce1:	55                   	push   %ebp
c0030ce2:	89 e5                	mov    %esp,%ebp
c0030ce4:	83 ec 08             	sub    $0x8,%esp
c0030ce7:	e8 d7 f6 ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0030cec:	05 14 b3 00 00       	add    $0xb314,%eax
c0030cf1:	8b 45 08             	mov    0x8(%ebp),%eax
c0030cf4:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030cf7:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030cfb:	88 55 f8             	mov    %dl,-0x8(%ebp)
c0030cfe:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030d01:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030d04:	ee                   	out    %al,(%dx)
c0030d05:	90                   	nop
c0030d06:	c9                   	leave  
c0030d07:	c3                   	ret    

c0030d08 <out_long>:
c0030d08:	55                   	push   %ebp
c0030d09:	89 e5                	mov    %esp,%ebp
c0030d0b:	83 ec 04             	sub    $0x4,%esp
c0030d0e:	e8 b0 f6 ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0030d13:	05 ed b2 00 00       	add    $0xb2ed,%eax
c0030d18:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d1b:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030d1f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030d22:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030d25:	ef                   	out    %eax,(%dx)
c0030d26:	90                   	nop
c0030d27:	c9                   	leave  
c0030d28:	c3                   	ret    

c0030d29 <dma_prepare>:
c0030d29:	55                   	push   %ebp
c0030d2a:	89 e5                	mov    %esp,%ebp
c0030d2c:	83 ec 10             	sub    $0x10,%esp
c0030d2f:	e8 8f f6 ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0030d34:	05 cc b2 00 00       	add    $0xb2cc,%eax
c0030d39:	8b 55 08             	mov    0x8(%ebp),%edx
c0030d3c:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c0030d42:	89 55 fc             	mov    %edx,-0x4(%ebp)
c0030d45:	c7 c2 04 30 09 c0    	mov    $0xc0093004,%edx
c0030d4b:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c0030d4e:	89 0a                	mov    %ecx,(%edx)
c0030d50:	c7 c2 04 30 09 c0    	mov    $0xc0093004,%edx
c0030d56:	66 c7 42 04 00 02    	movw   $0x200,0x4(%edx)
c0030d5c:	c7 c2 04 30 09 c0    	mov    $0xc0093004,%edx
c0030d62:	8a 4a 07             	mov    0x7(%edx),%cl
c0030d65:	83 c9 80             	or     $0xffffff80,%ecx
c0030d68:	88 4a 07             	mov    %cl,0x7(%edx)
c0030d6b:	c7 c1 04 30 09 c0    	mov    $0xc0093004,%ecx
c0030d71:	66 8b 51 06          	mov    0x6(%ecx),%dx
c0030d75:	81 e2 00 80 ff ff    	and    $0xffff8000,%edx
c0030d7b:	66 89 51 06          	mov    %dx,0x6(%ecx)
c0030d7f:	c7 c0 04 30 09 c0    	mov    $0xc0093004,%eax
c0030d85:	05 00 00 00 40       	add    $0x40000000,%eax
c0030d8a:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0030d8d:	ff 75 f8             	pushl  -0x8(%ebp)
c0030d90:	68 44 c0 00 00       	push   $0xc044
c0030d95:	e8 6e ff ff ff       	call   c0030d08 <out_long>
c0030d9a:	83 c4 08             	add    $0x8,%esp
c0030d9d:	90                   	nop
c0030d9e:	c9                   	leave  
c0030d9f:	c3                   	ret    

c0030da0 <dma_issue_read>:
c0030da0:	55                   	push   %ebp
c0030da1:	89 e5                	mov    %esp,%ebp
c0030da3:	e8 1b f6 ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0030da8:	05 58 b2 00 00       	add    $0xb258,%eax
c0030dad:	68 40 c0 00 00       	push   $0xc040
c0030db2:	e8 05 ff ff ff       	call   c0030cbc <in_byte>
c0030db7:	83 c4 04             	add    $0x4,%esp
c0030dba:	83 c8 09             	or     $0x9,%eax
c0030dbd:	0f b6 c0             	movzbl %al,%eax
c0030dc0:	50                   	push   %eax
c0030dc1:	68 40 c0 00 00       	push   $0xc040
c0030dc6:	e8 16 ff ff ff       	call   c0030ce1 <out_byte>
c0030dcb:	83 c4 08             	add    $0x8,%esp
c0030dce:	90                   	nop
c0030dcf:	c9                   	leave  
c0030dd0:	c3                   	ret    

c0030dd1 <cache_init>:
c0030dd1:	55                   	push   %ebp
c0030dd2:	89 e5                	mov    %esp,%ebp
c0030dd4:	53                   	push   %ebx
c0030dd5:	83 ec 10             	sub    $0x10,%esp
c0030dd8:	e8 fd 01 00 00       	call   c0030fda <__x86.get_pc_thunk.dx>
c0030ddd:	81 c2 23 b2 00 00    	add    $0xb223,%edx
c0030de3:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0030dea:	eb 1b                	jmp    c0030e07 <cache_init+0x36>
c0030dec:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c0030def:	8d 9a a4 19 00 00    	lea    0x19a4(%edx),%ebx
c0030df5:	89 c8                	mov    %ecx,%eax
c0030df7:	c1 e0 06             	shl    $0x6,%eax
c0030dfa:	01 c8                	add    %ecx,%eax
c0030dfc:	c1 e0 03             	shl    $0x3,%eax
c0030dff:	01 d8                	add    %ebx,%eax
c0030e01:	c6 00 00             	movb   $0x0,(%eax)
c0030e04:	ff 45 f8             	incl   -0x8(%ebp)
c0030e07:	83 7d f8 7f          	cmpl   $0x7f,-0x8(%ebp)
c0030e0b:	7e df                	jle    c0030dec <cache_init+0x1b>
c0030e0d:	90                   	nop
c0030e0e:	83 c4 10             	add    $0x10,%esp
c0030e11:	5b                   	pop    %ebx
c0030e12:	5d                   	pop    %ebp
c0030e13:	c3                   	ret    

c0030e14 <cache_writeback>:
c0030e14:	55                   	push   %ebp
c0030e15:	89 e5                	mov    %esp,%ebp
c0030e17:	53                   	push   %ebx
c0030e18:	83 ec 14             	sub    $0x14,%esp
c0030e1b:	e8 a7 f5 ff ff       	call   c00303c7 <__x86.get_pc_thunk.bx>
c0030e20:	81 c3 e0 b1 00 00    	add    $0xb1e0,%ebx
c0030e26:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030e2d:	eb 72                	jmp    c0030ea1 <cache_writeback+0x8d>
c0030e2f:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030e32:	8d 8b a5 19 00 00    	lea    0x19a5(%ebx),%ecx
c0030e38:	89 d0                	mov    %edx,%eax
c0030e3a:	c1 e0 06             	shl    $0x6,%eax
c0030e3d:	01 d0                	add    %edx,%eax
c0030e3f:	c1 e0 03             	shl    $0x3,%eax
c0030e42:	01 c8                	add    %ecx,%eax
c0030e44:	8a 00                	mov    (%eax),%al
c0030e46:	3c 01                	cmp    $0x1,%al
c0030e48:	75 54                	jne    c0030e9e <cache_writeback+0x8a>
c0030e4a:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030e4d:	8d 8b a0 19 00 00    	lea    0x19a0(%ebx),%ecx
c0030e53:	89 d0                	mov    %edx,%eax
c0030e55:	c1 e0 06             	shl    $0x6,%eax
c0030e58:	01 d0                	add    %edx,%eax
c0030e5a:	c1 e0 03             	shl    $0x3,%eax
c0030e5d:	01 c8                	add    %ecx,%eax
c0030e5f:	8b 10                	mov    (%eax),%edx
c0030e61:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c0030e64:	89 c8                	mov    %ecx,%eax
c0030e66:	c1 e0 06             	shl    $0x6,%eax
c0030e69:	01 c8                	add    %ecx,%eax
c0030e6b:	c1 e0 03             	shl    $0x3,%eax
c0030e6e:	8d 8b a0 19 00 00    	lea    0x19a0(%ebx),%ecx
c0030e74:	01 c8                	add    %ecx,%eax
c0030e76:	83 c0 06             	add    $0x6,%eax
c0030e79:	83 ec 08             	sub    $0x8,%esp
c0030e7c:	52                   	push   %edx
c0030e7d:	50                   	push   %eax
c0030e7e:	e8 50 03 00 00       	call   c00311d3 <disk_do_write>
c0030e83:	83 c4 10             	add    $0x10,%esp
c0030e86:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030e89:	8d 8b a5 19 00 00    	lea    0x19a5(%ebx),%ecx
c0030e8f:	89 d0                	mov    %edx,%eax
c0030e91:	c1 e0 06             	shl    $0x6,%eax
c0030e94:	01 d0                	add    %edx,%eax
c0030e96:	c1 e0 03             	shl    $0x3,%eax
c0030e99:	01 c8                	add    %ecx,%eax
c0030e9b:	c6 00 00             	movb   $0x0,(%eax)
c0030e9e:	ff 45 f4             	incl   -0xc(%ebp)
c0030ea1:	83 7d f4 7f          	cmpl   $0x7f,-0xc(%ebp)
c0030ea5:	7e 88                	jle    c0030e2f <cache_writeback+0x1b>
c0030ea7:	90                   	nop
c0030ea8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030eab:	c9                   	leave  
c0030eac:	c3                   	ret    

c0030ead <cache_fetch>:
c0030ead:	55                   	push   %ebp
c0030eae:	89 e5                	mov    %esp,%ebp
c0030eb0:	53                   	push   %ebx
c0030eb1:	83 ec 14             	sub    $0x14,%esp
c0030eb4:	e8 0e f5 ff ff       	call   c00303c7 <__x86.get_pc_thunk.bx>
c0030eb9:	81 c3 47 b1 00 00    	add    $0xb147,%ebx
c0030ebf:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ec2:	83 e0 7f             	and    $0x7f,%eax
c0030ec5:	89 c2                	mov    %eax,%edx
c0030ec7:	89 d0                	mov    %edx,%eax
c0030ec9:	c1 e0 06             	shl    $0x6,%eax
c0030ecc:	01 d0                	add    %edx,%eax
c0030ece:	c1 e0 03             	shl    $0x3,%eax
c0030ed1:	8d 93 a0 19 00 00    	lea    0x19a0(%ebx),%edx
c0030ed7:	01 d0                	add    %edx,%eax
c0030ed9:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030edc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030edf:	8a 40 04             	mov    0x4(%eax),%al
c0030ee2:	3c 01                	cmp    $0x1,%al
c0030ee4:	75 0a                	jne    c0030ef0 <cache_fetch+0x43>
c0030ee6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030ee9:	8b 00                	mov    (%eax),%eax
c0030eeb:	3b 45 08             	cmp    0x8(%ebp),%eax
c0030eee:	74 57                	je     c0030f47 <cache_fetch+0x9a>
c0030ef0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030ef3:	8a 40 04             	mov    0x4(%eax),%al
c0030ef6:	3c 01                	cmp    $0x1,%al
c0030ef8:	75 22                	jne    c0030f1c <cache_fetch+0x6f>
c0030efa:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030efd:	8a 40 05             	mov    0x5(%eax),%al
c0030f00:	3c 01                	cmp    $0x1,%al
c0030f02:	75 18                	jne    c0030f1c <cache_fetch+0x6f>
c0030f04:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030f07:	8b 00                	mov    (%eax),%eax
c0030f09:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030f0c:	83 c2 06             	add    $0x6,%edx
c0030f0f:	83 ec 08             	sub    $0x8,%esp
c0030f12:	50                   	push   %eax
c0030f13:	52                   	push   %edx
c0030f14:	e8 ba 02 00 00       	call   c00311d3 <disk_do_write>
c0030f19:	83 c4 10             	add    $0x10,%esp
c0030f1c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030f1f:	83 c0 06             	add    $0x6,%eax
c0030f22:	83 ec 08             	sub    $0x8,%esp
c0030f25:	ff 75 08             	pushl  0x8(%ebp)
c0030f28:	50                   	push   %eax
c0030f29:	e8 3a 02 00 00       	call   c0031168 <disk_do_read>
c0030f2e:	83 c4 10             	add    $0x10,%esp
c0030f31:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030f34:	c6 40 04 01          	movb   $0x1,0x4(%eax)
c0030f38:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030f3b:	8b 55 08             	mov    0x8(%ebp),%edx
c0030f3e:	89 10                	mov    %edx,(%eax)
c0030f40:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030f43:	c6 40 05 00          	movb   $0x0,0x5(%eax)
c0030f47:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030f4a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030f4d:	c9                   	leave  
c0030f4e:	c3                   	ret    

c0030f4f <read_byte>:
c0030f4f:	55                   	push   %ebp
c0030f50:	89 e5                	mov    %esp,%ebp
c0030f52:	83 ec 18             	sub    $0x18,%esp
c0030f55:	e8 69 f4 ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0030f5a:	05 a6 b0 00 00       	add    $0xb0a6,%eax
c0030f5f:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f62:	c1 e8 09             	shr    $0x9,%eax
c0030f65:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030f68:	83 ec 0c             	sub    $0xc,%esp
c0030f6b:	ff 75 f4             	pushl  -0xc(%ebp)
c0030f6e:	e8 3a ff ff ff       	call   c0030ead <cache_fetch>
c0030f73:	83 c4 10             	add    $0x10,%esp
c0030f76:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030f79:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f7c:	25 ff 01 00 00       	and    $0x1ff,%eax
c0030f81:	89 c2                	mov    %eax,%edx
c0030f83:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030f86:	8a 44 10 06          	mov    0x6(%eax,%edx,1),%al
c0030f8a:	c9                   	leave  
c0030f8b:	c3                   	ret    

c0030f8c <write_byte>:
c0030f8c:	55                   	push   %ebp
c0030f8d:	89 e5                	mov    %esp,%ebp
c0030f8f:	83 ec 28             	sub    $0x28,%esp
c0030f92:	e8 2c f4 ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0030f97:	05 69 b0 00 00       	add    $0xb069,%eax
c0030f9c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030f9f:	88 45 e4             	mov    %al,-0x1c(%ebp)
c0030fa2:	8b 45 08             	mov    0x8(%ebp),%eax
c0030fa5:	c1 e8 09             	shr    $0x9,%eax
c0030fa8:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030fab:	83 ec 0c             	sub    $0xc,%esp
c0030fae:	ff 75 f4             	pushl  -0xc(%ebp)
c0030fb1:	e8 f7 fe ff ff       	call   c0030ead <cache_fetch>
c0030fb6:	83 c4 10             	add    $0x10,%esp
c0030fb9:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030fbc:	8b 45 08             	mov    0x8(%ebp),%eax
c0030fbf:	25 ff 01 00 00       	and    $0x1ff,%eax
c0030fc4:	89 c1                	mov    %eax,%ecx
c0030fc6:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030fc9:	8a 55 e4             	mov    -0x1c(%ebp),%dl
c0030fcc:	88 54 08 06          	mov    %dl,0x6(%eax,%ecx,1)
c0030fd0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030fd3:	c6 40 05 01          	movb   $0x1,0x5(%eax)
c0030fd7:	90                   	nop
c0030fd8:	c9                   	leave  
c0030fd9:	c3                   	ret    

c0030fda <__x86.get_pc_thunk.dx>:
c0030fda:	8b 14 24             	mov    (%esp),%edx
c0030fdd:	c3                   	ret    

c0030fde <in_byte>:
c0030fde:	55                   	push   %ebp
c0030fdf:	89 e5                	mov    %esp,%ebp
c0030fe1:	83 ec 14             	sub    $0x14,%esp
c0030fe4:	e8 da f3 ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0030fe9:	05 17 b0 00 00       	add    $0xb017,%eax
c0030fee:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ff1:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030ff5:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030ff8:	89 c2                	mov    %eax,%edx
c0030ffa:	ec                   	in     (%dx),%al
c0030ffb:	88 45 ff             	mov    %al,-0x1(%ebp)
c0030ffe:	8a 45 ff             	mov    -0x1(%ebp),%al
c0031001:	c9                   	leave  
c0031002:	c3                   	ret    

c0031003 <in_long>:
c0031003:	55                   	push   %ebp
c0031004:	89 e5                	mov    %esp,%ebp
c0031006:	83 ec 14             	sub    $0x14,%esp
c0031009:	e8 b5 f3 ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c003100e:	05 f2 af 00 00       	add    $0xaff2,%eax
c0031013:	8b 45 08             	mov    0x8(%ebp),%eax
c0031016:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c003101a:	8b 45 ec             	mov    -0x14(%ebp),%eax
c003101d:	89 c2                	mov    %eax,%edx
c003101f:	ed                   	in     (%dx),%eax
c0031020:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0031023:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031026:	c9                   	leave  
c0031027:	c3                   	ret    

c0031028 <out_byte>:
c0031028:	55                   	push   %ebp
c0031029:	89 e5                	mov    %esp,%ebp
c003102b:	83 ec 08             	sub    $0x8,%esp
c003102e:	e8 90 f3 ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0031033:	05 cd af 00 00       	add    $0xafcd,%eax
c0031038:	8b 45 08             	mov    0x8(%ebp),%eax
c003103b:	8b 55 0c             	mov    0xc(%ebp),%edx
c003103e:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0031042:	88 55 f8             	mov    %dl,-0x8(%ebp)
c0031045:	8a 45 f8             	mov    -0x8(%ebp),%al
c0031048:	8b 55 fc             	mov    -0x4(%ebp),%edx
c003104b:	ee                   	out    %al,(%dx)
c003104c:	90                   	nop
c003104d:	c9                   	leave  
c003104e:	c3                   	ret    

c003104f <out_long>:
c003104f:	55                   	push   %ebp
c0031050:	89 e5                	mov    %esp,%ebp
c0031052:	83 ec 04             	sub    $0x4,%esp
c0031055:	e8 69 f3 ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c003105a:	05 a6 af 00 00       	add    $0xafa6,%eax
c003105f:	8b 45 08             	mov    0x8(%ebp),%eax
c0031062:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0031066:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031069:	8b 55 fc             	mov    -0x4(%ebp),%edx
c003106c:	ef                   	out    %eax,(%dx)
c003106d:	90                   	nop
c003106e:	c9                   	leave  
c003106f:	c3                   	ret    

c0031070 <waitdisk>:
c0031070:	55                   	push   %ebp
c0031071:	89 e5                	mov    %esp,%ebp
c0031073:	e8 4b f3 ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0031078:	05 88 af 00 00       	add    $0xaf88,%eax
c003107d:	90                   	nop
c003107e:	68 f7 01 00 00       	push   $0x1f7
c0031083:	e8 56 ff ff ff       	call   c0030fde <in_byte>
c0031088:	83 c4 04             	add    $0x4,%esp
c003108b:	0f b6 c0             	movzbl %al,%eax
c003108e:	25 c0 00 00 00       	and    $0xc0,%eax
c0031093:	83 f8 40             	cmp    $0x40,%eax
c0031096:	75 e6                	jne    c003107e <waitdisk+0xe>
c0031098:	90                   	nop
c0031099:	c9                   	leave  
c003109a:	c3                   	ret    

c003109b <ide_prepare>:
c003109b:	55                   	push   %ebp
c003109c:	89 e5                	mov    %esp,%ebp
c003109e:	e8 20 f3 ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c00310a3:	05 5d af 00 00       	add    $0xaf5d,%eax
c00310a8:	e8 c3 ff ff ff       	call   c0031070 <waitdisk>
c00310ad:	6a 00                	push   $0x0
c00310af:	68 f1 01 00 00       	push   $0x1f1
c00310b4:	e8 6f ff ff ff       	call   c0031028 <out_byte>
c00310b9:	83 c4 08             	add    $0x8,%esp
c00310bc:	6a 01                	push   $0x1
c00310be:	68 f2 01 00 00       	push   $0x1f2
c00310c3:	e8 60 ff ff ff       	call   c0031028 <out_byte>
c00310c8:	83 c4 08             	add    $0x8,%esp
c00310cb:	8b 45 08             	mov    0x8(%ebp),%eax
c00310ce:	0f b6 c0             	movzbl %al,%eax
c00310d1:	50                   	push   %eax
c00310d2:	68 f3 01 00 00       	push   $0x1f3
c00310d7:	e8 4c ff ff ff       	call   c0031028 <out_byte>
c00310dc:	83 c4 08             	add    $0x8,%esp
c00310df:	8b 45 08             	mov    0x8(%ebp),%eax
c00310e2:	c1 e8 08             	shr    $0x8,%eax
c00310e5:	0f b6 c0             	movzbl %al,%eax
c00310e8:	50                   	push   %eax
c00310e9:	68 f4 01 00 00       	push   $0x1f4
c00310ee:	e8 35 ff ff ff       	call   c0031028 <out_byte>
c00310f3:	83 c4 08             	add    $0x8,%esp
c00310f6:	8b 45 08             	mov    0x8(%ebp),%eax
c00310f9:	c1 e8 10             	shr    $0x10,%eax
c00310fc:	0f b6 c0             	movzbl %al,%eax
c00310ff:	50                   	push   %eax
c0031100:	68 f5 01 00 00       	push   $0x1f5
c0031105:	e8 1e ff ff ff       	call   c0031028 <out_byte>
c003110a:	83 c4 08             	add    $0x8,%esp
c003110d:	8b 45 08             	mov    0x8(%ebp),%eax
c0031110:	c1 e8 18             	shr    $0x18,%eax
c0031113:	83 c8 e0             	or     $0xffffffe0,%eax
c0031116:	0f b6 c0             	movzbl %al,%eax
c0031119:	50                   	push   %eax
c003111a:	68 f6 01 00 00       	push   $0x1f6
c003111f:	e8 04 ff ff ff       	call   c0031028 <out_byte>
c0031124:	83 c4 08             	add    $0x8,%esp
c0031127:	90                   	nop
c0031128:	c9                   	leave  
c0031129:	c3                   	ret    

c003112a <issue_read>:
c003112a:	55                   	push   %ebp
c003112b:	89 e5                	mov    %esp,%ebp
c003112d:	e8 91 f2 ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0031132:	05 ce ae 00 00       	add    $0xaece,%eax
c0031137:	6a 20                	push   $0x20
c0031139:	68 f7 01 00 00       	push   $0x1f7
c003113e:	e8 e5 fe ff ff       	call   c0031028 <out_byte>
c0031143:	83 c4 08             	add    $0x8,%esp
c0031146:	90                   	nop
c0031147:	c9                   	leave  
c0031148:	c3                   	ret    

c0031149 <issue_write>:
c0031149:	55                   	push   %ebp
c003114a:	89 e5                	mov    %esp,%ebp
c003114c:	e8 72 f2 ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0031151:	05 af ae 00 00       	add    $0xaeaf,%eax
c0031156:	6a 30                	push   $0x30
c0031158:	68 f7 01 00 00       	push   $0x1f7
c003115d:	e8 c6 fe ff ff       	call   c0031028 <out_byte>
c0031162:	83 c4 08             	add    $0x8,%esp
c0031165:	90                   	nop
c0031166:	c9                   	leave  
c0031167:	c3                   	ret    

c0031168 <disk_do_read>:
c0031168:	55                   	push   %ebp
c0031169:	89 e5                	mov    %esp,%ebp
c003116b:	53                   	push   %ebx
c003116c:	83 ec 14             	sub    $0x14,%esp
c003116f:	e8 53 f2 ff ff       	call   c00303c7 <__x86.get_pc_thunk.bx>
c0031174:	81 c3 8c ae 00 00    	add    $0xae8c,%ebx
c003117a:	e8 b1 01 00 00       	call   c0031330 <clear_ide_intr>
c003117f:	83 ec 0c             	sub    $0xc,%esp
c0031182:	ff 75 0c             	pushl  0xc(%ebp)
c0031185:	e8 11 ff ff ff       	call   c003109b <ide_prepare>
c003118a:	83 c4 10             	add    $0x10,%esp
c003118d:	e8 98 ff ff ff       	call   c003112a <issue_read>
c0031192:	e8 b3 01 00 00       	call   c003134a <wait_ide_intr>
c0031197:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c003119e:	eb 25                	jmp    c00311c5 <disk_do_read+0x5d>
c00311a0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00311a3:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c00311aa:	8b 45 08             	mov    0x8(%ebp),%eax
c00311ad:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c00311b0:	83 ec 0c             	sub    $0xc,%esp
c00311b3:	68 f0 01 00 00       	push   $0x1f0
c00311b8:	e8 46 fe ff ff       	call   c0031003 <in_long>
c00311bd:	83 c4 10             	add    $0x10,%esp
c00311c0:	89 03                	mov    %eax,(%ebx)
c00311c2:	ff 45 f4             	incl   -0xc(%ebp)
c00311c5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00311c8:	83 f8 7f             	cmp    $0x7f,%eax
c00311cb:	76 d3                	jbe    c00311a0 <disk_do_read+0x38>
c00311cd:	90                   	nop
c00311ce:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00311d1:	c9                   	leave  
c00311d2:	c3                   	ret    

c00311d3 <disk_do_write>:
c00311d3:	55                   	push   %ebp
c00311d4:	89 e5                	mov    %esp,%ebp
c00311d6:	83 ec 10             	sub    $0x10,%esp
c00311d9:	e8 e5 f1 ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c00311de:	05 22 ae 00 00       	add    $0xae22,%eax
c00311e3:	ff 75 0c             	pushl  0xc(%ebp)
c00311e6:	e8 b0 fe ff ff       	call   c003109b <ide_prepare>
c00311eb:	83 c4 04             	add    $0x4,%esp
c00311ee:	e8 56 ff ff ff       	call   c0031149 <issue_write>
c00311f3:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c00311fa:	eb 22                	jmp    c003121e <disk_do_write+0x4b>
c00311fc:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00311ff:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0031206:	8b 45 08             	mov    0x8(%ebp),%eax
c0031209:	01 d0                	add    %edx,%eax
c003120b:	8b 00                	mov    (%eax),%eax
c003120d:	50                   	push   %eax
c003120e:	68 f0 01 00 00       	push   $0x1f0
c0031213:	e8 37 fe ff ff       	call   c003104f <out_long>
c0031218:	83 c4 08             	add    $0x8,%esp
c003121b:	ff 45 fc             	incl   -0x4(%ebp)
c003121e:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031221:	83 f8 7f             	cmp    $0x7f,%eax
c0031224:	76 d6                	jbe    c00311fc <disk_do_write+0x29>
c0031226:	90                   	nop
c0031227:	c9                   	leave  
c0031228:	c3                   	ret    

c0031229 <wait_intr>:
c0031229:	55                   	push   %ebp
c003122a:	89 e5                	mov    %esp,%ebp
c003122c:	e8 92 f1 ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0031231:	05 cf ad 00 00       	add    $0xadcf,%eax
c0031236:	f4                   	hlt    
c0031237:	90                   	nop
c0031238:	5d                   	pop    %ebp
c0031239:	c3                   	ret    

c003123a <ide_read>:
c003123a:	55                   	push   %ebp
c003123b:	89 e5                	mov    %esp,%ebp
c003123d:	56                   	push   %esi
c003123e:	53                   	push   %ebx
c003123f:	83 ec 10             	sub    $0x10,%esp
c0031242:	e8 80 f1 ff ff       	call   c00303c7 <__x86.get_pc_thunk.bx>
c0031247:	81 c3 b9 ad 00 00    	add    $0xadb9,%ebx
c003124d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0031254:	eb 22                	jmp    c0031278 <ide_read+0x3e>
c0031256:	8b 55 08             	mov    0x8(%ebp),%edx
c0031259:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003125c:	8d 34 02             	lea    (%edx,%eax,1),%esi
c003125f:	8b 55 0c             	mov    0xc(%ebp),%edx
c0031262:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031265:	01 d0                	add    %edx,%eax
c0031267:	83 ec 0c             	sub    $0xc,%esp
c003126a:	50                   	push   %eax
c003126b:	e8 df fc ff ff       	call   c0030f4f <read_byte>
c0031270:	83 c4 10             	add    $0x10,%esp
c0031273:	88 06                	mov    %al,(%esi)
c0031275:	ff 45 f4             	incl   -0xc(%ebp)
c0031278:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003127b:	3b 45 10             	cmp    0x10(%ebp),%eax
c003127e:	72 d6                	jb     c0031256 <ide_read+0x1c>
c0031280:	90                   	nop
c0031281:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0031284:	5b                   	pop    %ebx
c0031285:	5e                   	pop    %esi
c0031286:	5d                   	pop    %ebp
c0031287:	c3                   	ret    

c0031288 <ide_write>:
c0031288:	55                   	push   %ebp
c0031289:	89 e5                	mov    %esp,%ebp
c003128b:	53                   	push   %ebx
c003128c:	83 ec 14             	sub    $0x14,%esp
c003128f:	e8 33 f1 ff ff       	call   c00303c7 <__x86.get_pc_thunk.bx>
c0031294:	81 c3 6c ad 00 00    	add    $0xad6c,%ebx
c003129a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00312a1:	eb 25                	jmp    c00312c8 <ide_write+0x40>
c00312a3:	8b 55 08             	mov    0x8(%ebp),%edx
c00312a6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00312a9:	01 d0                	add    %edx,%eax
c00312ab:	8a 00                	mov    (%eax),%al
c00312ad:	0f b6 c0             	movzbl %al,%eax
c00312b0:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c00312b3:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00312b6:	01 ca                	add    %ecx,%edx
c00312b8:	83 ec 08             	sub    $0x8,%esp
c00312bb:	50                   	push   %eax
c00312bc:	52                   	push   %edx
c00312bd:	e8 ca fc ff ff       	call   c0030f8c <write_byte>
c00312c2:	83 c4 10             	add    $0x10,%esp
c00312c5:	ff 45 f4             	incl   -0xc(%ebp)
c00312c8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00312cb:	3b 45 10             	cmp    0x10(%ebp),%eax
c00312ce:	72 d3                	jb     c00312a3 <ide_write+0x1b>
c00312d0:	90                   	nop
c00312d1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00312d4:	c9                   	leave  
c00312d5:	c3                   	ret    

c00312d6 <ide_writeback>:
c00312d6:	55                   	push   %ebp
c00312d7:	89 e5                	mov    %esp,%ebp
c00312d9:	53                   	push   %ebx
c00312da:	83 ec 04             	sub    $0x4,%esp
c00312dd:	e8 e5 f0 ff ff       	call   c00303c7 <__x86.get_pc_thunk.bx>
c00312e2:	81 c3 1e ad 00 00    	add    $0xad1e,%ebx
c00312e8:	8b 83 a4 1d 01 00    	mov    0x11da4(%ebx),%eax
c00312ee:	40                   	inc    %eax
c00312ef:	89 83 a4 1d 01 00    	mov    %eax,0x11da4(%ebx)
c00312f5:	8b 83 a4 1d 01 00    	mov    0x11da4(%ebx),%eax
c00312fb:	83 f8 64             	cmp    $0x64,%eax
c00312fe:	75 0f                	jne    c003130f <ide_writeback+0x39>
c0031300:	e8 0f fb ff ff       	call   c0030e14 <cache_writeback>
c0031305:	c7 83 a4 1d 01 00 00 	movl   $0x0,0x11da4(%ebx)
c003130c:	00 00 00 
c003130f:	90                   	nop
c0031310:	83 c4 04             	add    $0x4,%esp
c0031313:	5b                   	pop    %ebx
c0031314:	5d                   	pop    %ebp
c0031315:	c3                   	ret    

c0031316 <ide_intr>:
c0031316:	55                   	push   %ebp
c0031317:	89 e5                	mov    %esp,%ebp
c0031319:	e8 a5 f0 ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c003131e:	05 e2 ac 00 00       	add    $0xace2,%eax
c0031323:	c7 80 a0 1d 01 00 01 	movl   $0x1,0x11da0(%eax)
c003132a:	00 00 00 
c003132d:	90                   	nop
c003132e:	5d                   	pop    %ebp
c003132f:	c3                   	ret    

c0031330 <clear_ide_intr>:
c0031330:	55                   	push   %ebp
c0031331:	89 e5                	mov    %esp,%ebp
c0031333:	e8 8b f0 ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0031338:	05 c8 ac 00 00       	add    $0xacc8,%eax
c003133d:	c7 80 a0 1d 01 00 00 	movl   $0x0,0x11da0(%eax)
c0031344:	00 00 00 
c0031347:	90                   	nop
c0031348:	5d                   	pop    %ebp
c0031349:	c3                   	ret    

c003134a <wait_ide_intr>:
c003134a:	55                   	push   %ebp
c003134b:	89 e5                	mov    %esp,%ebp
c003134d:	53                   	push   %ebx
c003134e:	e8 74 f0 ff ff       	call   c00303c7 <__x86.get_pc_thunk.bx>
c0031353:	81 c3 ad ac 00 00    	add    $0xacad,%ebx
c0031359:	eb 05                	jmp    c0031360 <wait_ide_intr+0x16>
c003135b:	e8 c9 fe ff ff       	call   c0031229 <wait_intr>
c0031360:	8b 83 a0 1d 01 00    	mov    0x11da0(%ebx),%eax
c0031366:	85 c0                	test   %eax,%eax
c0031368:	74 f1                	je     c003135b <wait_ide_intr+0x11>
c003136a:	e8 c1 ff ff ff       	call   c0031330 <clear_ide_intr>
c003136f:	90                   	nop
c0031370:	5b                   	pop    %ebx
c0031371:	5d                   	pop    %ebp
c0031372:	c3                   	ret    

c0031373 <init_ide>:
c0031373:	55                   	push   %ebp
c0031374:	89 e5                	mov    %esp,%ebp
c0031376:	53                   	push   %ebx
c0031377:	83 ec 04             	sub    $0x4,%esp
c003137a:	e8 48 f0 ff ff       	call   c00303c7 <__x86.get_pc_thunk.bx>
c003137f:	81 c3 81 ac 00 00    	add    $0xac81,%ebx
c0031385:	e8 47 fa ff ff       	call   c0030dd1 <cache_init>
c003138a:	83 ec 08             	sub    $0x8,%esp
c003138d:	8d 83 d6 52 ff ff    	lea    -0xad2a(%ebx),%eax
c0031393:	50                   	push   %eax
c0031394:	6a 00                	push   $0x0
c0031396:	e8 4f f2 ff ff       	call   c00305ea <add_irq_handle>
c003139b:	83 c4 10             	add    $0x10,%esp
c003139e:	83 ec 08             	sub    $0x8,%esp
c00313a1:	8d 83 16 53 ff ff    	lea    -0xacea(%ebx),%eax
c00313a7:	50                   	push   %eax
c00313a8:	6a 0e                	push   $0xe
c00313aa:	e8 3b f2 ff ff       	call   c00305ea <add_irq_handle>
c00313af:	83 c4 10             	add    $0x10,%esp
c00313b2:	90                   	nop
c00313b3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00313b6:	c9                   	leave  
c00313b7:	c3                   	ret    

c00313b8 <sti>:
c00313b8:	55                   	push   %ebp
c00313b9:	89 e5                	mov    %esp,%ebp
c00313bb:	e8 03 f0 ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c00313c0:	05 40 ac 00 00       	add    $0xac40,%eax
c00313c5:	fb                   	sti    
c00313c6:	90                   	nop
c00313c7:	5d                   	pop    %ebp
c00313c8:	c3                   	ret    

c00313c9 <cli>:
c00313c9:	55                   	push   %ebp
c00313ca:	89 e5                	mov    %esp,%ebp
c00313cc:	e8 f2 ef ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c00313d1:	05 2f ac 00 00       	add    $0xac2f,%eax
c00313d6:	fa                   	cli    
c00313d7:	90                   	nop
c00313d8:	5d                   	pop    %ebp
c00313d9:	c3                   	ret    

c00313da <sys_brk>:
c00313da:	55                   	push   %ebp
c00313db:	89 e5                	mov    %esp,%ebp
c00313dd:	53                   	push   %ebx
c00313de:	83 ec 04             	sub    $0x4,%esp
c00313e1:	e8 dd ef ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c00313e6:	05 1a ac 00 00       	add    $0xac1a,%eax
c00313eb:	8b 55 08             	mov    0x8(%ebp),%edx
c00313ee:	8b 52 10             	mov    0x10(%edx),%edx
c00313f1:	83 ec 0c             	sub    $0xc,%esp
c00313f4:	52                   	push   %edx
c00313f5:	89 c3                	mov    %eax,%ebx
c00313f7:	e8 fb ef ff ff       	call   c00303f7 <mm_brk>
c00313fc:	83 c4 10             	add    $0x10,%esp
c00313ff:	8b 45 08             	mov    0x8(%ebp),%eax
c0031402:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
c0031409:	90                   	nop
c003140a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003140d:	c9                   	leave  
c003140e:	c3                   	ret    

c003140f <sys_open>:
c003140f:	55                   	push   %ebp
c0031410:	89 e5                	mov    %esp,%ebp
c0031412:	53                   	push   %ebx
c0031413:	83 ec 04             	sub    $0x4,%esp
c0031416:	e8 a8 ef ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c003141b:	05 e5 ab 00 00       	add    $0xabe5,%eax
c0031420:	8b 55 08             	mov    0x8(%ebp),%edx
c0031423:	8b 52 18             	mov    0x18(%edx),%edx
c0031426:	89 d1                	mov    %edx,%ecx
c0031428:	8b 55 08             	mov    0x8(%ebp),%edx
c003142b:	8b 52 10             	mov    0x10(%edx),%edx
c003142e:	83 ec 08             	sub    $0x8,%esp
c0031431:	51                   	push   %ecx
c0031432:	52                   	push   %edx
c0031433:	89 c3                	mov    %eax,%ebx
c0031435:	e8 bd 04 00 00       	call   c00318f7 <fs_open>
c003143a:	83 c4 10             	add    $0x10,%esp
c003143d:	89 c2                	mov    %eax,%edx
c003143f:	8b 45 08             	mov    0x8(%ebp),%eax
c0031442:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031445:	90                   	nop
c0031446:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031449:	c9                   	leave  
c003144a:	c3                   	ret    

c003144b <sys_read>:
c003144b:	55                   	push   %ebp
c003144c:	89 e5                	mov    %esp,%ebp
c003144e:	53                   	push   %ebx
c003144f:	83 ec 04             	sub    $0x4,%esp
c0031452:	e8 6c ef ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0031457:	05 a9 ab 00 00       	add    $0xaba9,%eax
c003145c:	8b 55 08             	mov    0x8(%ebp),%edx
c003145f:	8b 52 14             	mov    0x14(%edx),%edx
c0031462:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0031465:	8b 49 18             	mov    0x18(%ecx),%ecx
c0031468:	89 cb                	mov    %ecx,%ebx
c003146a:	8b 4d 08             	mov    0x8(%ebp),%ecx
c003146d:	8b 49 10             	mov    0x10(%ecx),%ecx
c0031470:	83 ec 04             	sub    $0x4,%esp
c0031473:	52                   	push   %edx
c0031474:	53                   	push   %ebx
c0031475:	51                   	push   %ecx
c0031476:	89 c3                	mov    %eax,%ebx
c0031478:	e8 bc 04 00 00       	call   c0031939 <fs_read>
c003147d:	83 c4 10             	add    $0x10,%esp
c0031480:	89 c2                	mov    %eax,%edx
c0031482:	8b 45 08             	mov    0x8(%ebp),%eax
c0031485:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031488:	90                   	nop
c0031489:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003148c:	c9                   	leave  
c003148d:	c3                   	ret    

c003148e <sys_write>:
c003148e:	55                   	push   %ebp
c003148f:	89 e5                	mov    %esp,%ebp
c0031491:	53                   	push   %ebx
c0031492:	83 ec 04             	sub    $0x4,%esp
c0031495:	e8 29 ef ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c003149a:	05 66 ab 00 00       	add    $0xab66,%eax
c003149f:	8b 55 08             	mov    0x8(%ebp),%edx
c00314a2:	8b 52 14             	mov    0x14(%edx),%edx
c00314a5:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00314a8:	8b 49 18             	mov    0x18(%ecx),%ecx
c00314ab:	89 cb                	mov    %ecx,%ebx
c00314ad:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00314b0:	8b 49 10             	mov    0x10(%ecx),%ecx
c00314b3:	83 ec 04             	sub    $0x4,%esp
c00314b6:	52                   	push   %edx
c00314b7:	53                   	push   %ebx
c00314b8:	51                   	push   %ecx
c00314b9:	89 c3                	mov    %eax,%ebx
c00314bb:	e8 ef 04 00 00       	call   c00319af <fs_write>
c00314c0:	83 c4 10             	add    $0x10,%esp
c00314c3:	89 c2                	mov    %eax,%edx
c00314c5:	8b 45 08             	mov    0x8(%ebp),%eax
c00314c8:	89 50 1c             	mov    %edx,0x1c(%eax)
c00314cb:	90                   	nop
c00314cc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00314cf:	c9                   	leave  
c00314d0:	c3                   	ret    

c00314d1 <sys_lseek>:
c00314d1:	55                   	push   %ebp
c00314d2:	89 e5                	mov    %esp,%ebp
c00314d4:	53                   	push   %ebx
c00314d5:	83 ec 04             	sub    $0x4,%esp
c00314d8:	e8 e6 ee ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c00314dd:	05 23 ab 00 00       	add    $0xab23,%eax
c00314e2:	8b 55 08             	mov    0x8(%ebp),%edx
c00314e5:	8b 52 14             	mov    0x14(%edx),%edx
c00314e8:	89 d3                	mov    %edx,%ebx
c00314ea:	8b 55 08             	mov    0x8(%ebp),%edx
c00314ed:	8b 52 18             	mov    0x18(%edx),%edx
c00314f0:	89 d1                	mov    %edx,%ecx
c00314f2:	8b 55 08             	mov    0x8(%ebp),%edx
c00314f5:	8b 52 10             	mov    0x10(%edx),%edx
c00314f8:	83 ec 04             	sub    $0x4,%esp
c00314fb:	53                   	push   %ebx
c00314fc:	51                   	push   %ecx
c00314fd:	52                   	push   %edx
c00314fe:	89 c3                	mov    %eax,%ebx
c0031500:	e8 0c 05 00 00       	call   c0031a11 <fs_lseek>
c0031505:	83 c4 10             	add    $0x10,%esp
c0031508:	89 c2                	mov    %eax,%edx
c003150a:	8b 45 08             	mov    0x8(%ebp),%eax
c003150d:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031510:	90                   	nop
c0031511:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031514:	c9                   	leave  
c0031515:	c3                   	ret    

c0031516 <sys_close>:
c0031516:	55                   	push   %ebp
c0031517:	89 e5                	mov    %esp,%ebp
c0031519:	53                   	push   %ebx
c003151a:	83 ec 04             	sub    $0x4,%esp
c003151d:	e8 a1 ee ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0031522:	05 de aa 00 00       	add    $0xaade,%eax
c0031527:	8b 55 08             	mov    0x8(%ebp),%edx
c003152a:	8b 52 10             	mov    0x10(%edx),%edx
c003152d:	83 ec 0c             	sub    $0xc,%esp
c0031530:	52                   	push   %edx
c0031531:	89 c3                	mov    %eax,%ebx
c0031533:	e8 1b 05 00 00       	call   c0031a53 <fs_close>
c0031538:	83 c4 10             	add    $0x10,%esp
c003153b:	89 c2                	mov    %eax,%edx
c003153d:	8b 45 08             	mov    0x8(%ebp),%eax
c0031540:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031543:	90                   	nop
c0031544:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031547:	c9                   	leave  
c0031548:	c3                   	ret    

c0031549 <do_syscall>:
c0031549:	55                   	push   %ebp
c003154a:	89 e5                	mov    %esp,%ebp
c003154c:	53                   	push   %ebx
c003154d:	83 ec 04             	sub    $0x4,%esp
c0031550:	e8 72 ee ff ff       	call   c00303c7 <__x86.get_pc_thunk.bx>
c0031555:	81 c3 ab aa 00 00    	add    $0xaaab,%ebx
c003155b:	8b 45 08             	mov    0x8(%ebp),%eax
c003155e:	8b 40 1c             	mov    0x1c(%eax),%eax
c0031561:	83 f8 2d             	cmp    $0x2d,%eax
c0031564:	0f 87 98 00 00 00    	ja     c0031602 <.L10>
c003156a:	c1 e0 02             	shl    $0x2,%eax
c003156d:	8b 84 18 e0 c9 ff ff 	mov    -0x3620(%eax,%ebx,1),%eax
c0031574:	01 d8                	add    %ebx,%eax
c0031576:	ff e0                	jmp    *%eax

c0031578 <.L11>:
c0031578:	e8 4c fe ff ff       	call   c00313c9 <cli>
c003157d:	8b 45 08             	mov    0x8(%ebp),%eax
c0031580:	8b 40 18             	mov    0x18(%eax),%eax
c0031583:	89 c2                	mov    %eax,%edx
c0031585:	8b 45 08             	mov    0x8(%ebp),%eax
c0031588:	8b 40 10             	mov    0x10(%eax),%eax
c003158b:	83 ec 08             	sub    $0x8,%esp
c003158e:	52                   	push   %edx
c003158f:	50                   	push   %eax
c0031590:	e8 55 f0 ff ff       	call   c00305ea <add_irq_handle>
c0031595:	83 c4 10             	add    $0x10,%esp
c0031598:	e8 1b fe ff ff       	call   c00313b8 <sti>
c003159d:	e9 8f 00 00 00       	jmp    c0031631 <.L10+0x2f>

c00315a2 <.L18>:
c00315a2:	83 ec 0c             	sub    $0xc,%esp
c00315a5:	ff 75 08             	pushl  0x8(%ebp)
c00315a8:	e8 2d fe ff ff       	call   c00313da <sys_brk>
c00315ad:	83 c4 10             	add    $0x10,%esp
c00315b0:	eb 7f                	jmp    c0031631 <.L10+0x2f>

c00315b2 <.L15>:
c00315b2:	83 ec 0c             	sub    $0xc,%esp
c00315b5:	ff 75 08             	pushl  0x8(%ebp)
c00315b8:	e8 52 fe ff ff       	call   c003140f <sys_open>
c00315bd:	83 c4 10             	add    $0x10,%esp
c00315c0:	eb 6f                	jmp    c0031631 <.L10+0x2f>

c00315c2 <.L13>:
c00315c2:	83 ec 0c             	sub    $0xc,%esp
c00315c5:	ff 75 08             	pushl  0x8(%ebp)
c00315c8:	e8 7e fe ff ff       	call   c003144b <sys_read>
c00315cd:	83 c4 10             	add    $0x10,%esp
c00315d0:	eb 5f                	jmp    c0031631 <.L10+0x2f>

c00315d2 <.L14>:
c00315d2:	83 ec 0c             	sub    $0xc,%esp
c00315d5:	ff 75 08             	pushl  0x8(%ebp)
c00315d8:	e8 b1 fe ff ff       	call   c003148e <sys_write>
c00315dd:	83 c4 10             	add    $0x10,%esp
c00315e0:	eb 4f                	jmp    c0031631 <.L10+0x2f>

c00315e2 <.L17>:
c00315e2:	83 ec 0c             	sub    $0xc,%esp
c00315e5:	ff 75 08             	pushl  0x8(%ebp)
c00315e8:	e8 e4 fe ff ff       	call   c00314d1 <sys_lseek>
c00315ed:	83 c4 10             	add    $0x10,%esp
c00315f0:	eb 3f                	jmp    c0031631 <.L10+0x2f>

c00315f2 <.L16>:
c00315f2:	83 ec 0c             	sub    $0xc,%esp
c00315f5:	ff 75 08             	pushl  0x8(%ebp)
c00315f8:	e8 19 ff ff ff       	call   c0031516 <sys_close>
c00315fd:	83 c4 10             	add    $0x10,%esp
c0031600:	eb 2f                	jmp    c0031631 <.L10+0x2f>

c0031602 <.L10>:
c0031602:	8b 45 08             	mov    0x8(%ebp),%eax
c0031605:	8b 40 1c             	mov    0x1c(%eax),%eax
c0031608:	83 ec 0c             	sub    $0xc,%esp
c003160b:	50                   	push   %eax
c003160c:	8d 83 98 ca ff ff    	lea    -0x3568(%ebx),%eax
c0031612:	50                   	push   %eax
c0031613:	6a 35                	push   $0x35
c0031615:	8d 83 70 c9 ff ff    	lea    -0x3690(%ebx),%eax
c003161b:	50                   	push   %eax
c003161c:	8d 83 8c c9 ff ff    	lea    -0x3674(%ebx),%eax
c0031622:	50                   	push   %eax
c0031623:	e8 0f 00 00 00       	call   c0031637 <printk>
c0031628:	83 c4 20             	add    $0x20,%esp
c003162b:	b8 01 00 00 00       	mov    $0x1,%eax
c0031630:	82 90 8b 5d fc c9 c3 	adcb   $0xc3,-0x3603a275(%eax)

c0031637 <printk>:
c0031637:	55                   	push   %ebp
c0031638:	89 e5                	mov    %esp,%ebp
c003163a:	53                   	push   %ebx
c003163b:	83 ec 14             	sub    $0x14,%esp
c003163e:	e8 84 ed ff ff       	call   c00303c7 <__x86.get_pc_thunk.bx>
c0031643:	81 c3 bd a9 00 00    	add    $0xa9bd,%ebx
c0031649:	8d 45 0c             	lea    0xc(%ebp),%eax
c003164c:	89 45 f4             	mov    %eax,-0xc(%ebp)
c003164f:	8b 45 08             	mov    0x8(%ebp),%eax
c0031652:	ff 75 f4             	pushl  -0xc(%ebp)
c0031655:	50                   	push   %eax
c0031656:	68 00 01 00 00       	push   $0x100
c003165b:	8d 83 c0 1d 01 00    	lea    0x11dc0(%ebx),%eax
c0031661:	50                   	push   %eax
c0031662:	e8 b9 08 00 00       	call   c0031f20 <vsnprintf>
c0031667:	83 c4 10             	add    $0x10,%esp
c003166a:	89 45 f0             	mov    %eax,-0x10(%ebp)
c003166d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031670:	83 ec 04             	sub    $0x4,%esp
c0031673:	50                   	push   %eax
c0031674:	8d 83 c0 1d 01 00    	lea    0x11dc0(%ebx),%eax
c003167a:	50                   	push   %eax
c003167b:	6a 01                	push   $0x1
c003167d:	e8 2d 03 00 00       	call   c00319af <fs_write>
c0031682:	83 c4 10             	add    $0x10,%esp
c0031685:	90                   	nop
c0031686:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031689:	c9                   	leave  
c003168a:	c3                   	ret    

c003168b <sbrk>:
c003168b:	55                   	push   %ebp
c003168c:	89 e5                	mov    %esp,%ebp
c003168e:	53                   	push   %ebx
c003168f:	83 ec 04             	sub    $0x4,%esp
c0031692:	e8 2c ed ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0031697:	05 69 a9 00 00       	add    $0xa969,%eax
c003169c:	83 ec 0c             	sub    $0xc,%esp
c003169f:	8d 90 a4 ca ff ff    	lea    -0x355c(%eax),%edx
c00316a5:	52                   	push   %edx
c00316a6:	8d 90 04 cb ff ff    	lea    -0x34fc(%eax),%edx
c00316ac:	52                   	push   %edx
c00316ad:	6a 08                	push   $0x8
c00316af:	8d 90 a6 ca ff ff    	lea    -0x355a(%eax),%edx
c00316b5:	52                   	push   %edx
c00316b6:	8d 90 b8 ca ff ff    	lea    -0x3548(%eax),%edx
c00316bc:	52                   	push   %edx
c00316bd:	89 c3                	mov    %eax,%ebx
c00316bf:	e8 73 ff ff ff       	call   c0031637 <printk>
c00316c4:	83 c4 20             	add    $0x20,%esp
c00316c7:	b8 01 00 00 00       	mov    $0x1,%eax
c00316cc:	82 b8 00 00 00 00 8b 	cmpb   $0x8b,0x0(%eax)
c00316d3:	5d                   	pop    %ebp
c00316d4:	fc                   	cld    
c00316d5:	c9                   	leave  
c00316d6:	c3                   	ret    

c00316d7 <in_byte>:
c00316d7:	55                   	push   %ebp
c00316d8:	89 e5                	mov    %esp,%ebp
c00316da:	83 ec 14             	sub    $0x14,%esp
c00316dd:	e8 e1 ec ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c00316e2:	05 1e a9 00 00       	add    $0xa91e,%eax
c00316e7:	8b 45 08             	mov    0x8(%ebp),%eax
c00316ea:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c00316ee:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00316f1:	89 c2                	mov    %eax,%edx
c00316f3:	ec                   	in     (%dx),%al
c00316f4:	88 45 ff             	mov    %al,-0x1(%ebp)
c00316f7:	8a 45 ff             	mov    -0x1(%ebp),%al
c00316fa:	c9                   	leave  
c00316fb:	c3                   	ret    

c00316fc <init_serial>:
c00316fc:	55                   	push   %ebp
c00316fd:	89 e5                	mov    %esp,%ebp
c00316ff:	e8 bf ec ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0031704:	05 fc a8 00 00       	add    $0xa8fc,%eax
c0031709:	90                   	nop
c003170a:	5d                   	pop    %ebp
c003170b:	c3                   	ret    

c003170c <serial_idle>:
c003170c:	55                   	push   %ebp
c003170d:	89 e5                	mov    %esp,%ebp
c003170f:	e8 af ec ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0031714:	05 ec a8 00 00       	add    $0xa8ec,%eax
c0031719:	68 fd 03 00 00       	push   $0x3fd
c003171e:	e8 b4 ff ff ff       	call   c00316d7 <in_byte>
c0031723:	83 c4 04             	add    $0x4,%esp
c0031726:	0f b6 c0             	movzbl %al,%eax
c0031729:	83 e0 20             	and    $0x20,%eax
c003172c:	85 c0                	test   %eax,%eax
c003172e:	0f 95 c0             	setne  %al
c0031731:	0f b6 c0             	movzbl %al,%eax
c0031734:	c9                   	leave  
c0031735:	c3                   	ret    

c0031736 <serial_printc>:
c0031736:	55                   	push   %ebp
c0031737:	89 e5                	mov    %esp,%ebp
c0031739:	53                   	push   %ebx
c003173a:	83 ec 14             	sub    $0x14,%esp
c003173d:	e8 85 ec ff ff       	call   c00303c7 <__x86.get_pc_thunk.bx>
c0031742:	81 c3 be a8 00 00    	add    $0xa8be,%ebx
c0031748:	8b 45 08             	mov    0x8(%ebp),%eax
c003174b:	88 45 f4             	mov    %al,-0xc(%ebp)
c003174e:	90                   	nop
c003174f:	e8 b8 ff ff ff       	call   c003170c <serial_idle>
c0031754:	85 c0                	test   %eax,%eax
c0031756:	74 f7                	je     c003174f <serial_printc+0x19>
c0031758:	8d 83 7c cb ff ff    	lea    -0x3484(%ebx),%eax
c003175e:	50                   	push   %eax
c003175f:	6a 11                	push   $0x11
c0031761:	8d 83 0c cb ff ff    	lea    -0x34f4(%ebx),%eax
c0031767:	50                   	push   %eax
c0031768:	8d 83 20 cb ff ff    	lea    -0x34e0(%ebx),%eax
c003176e:	50                   	push   %eax
c003176f:	e8 c3 fe ff ff       	call   c0031637 <printk>
c0031774:	83 c4 10             	add    $0x10,%esp
c0031777:	b8 01 00 00 00       	mov    $0x1,%eax
c003177c:	82 90 8b 5d fc c9 c3 	adcb   $0xc3,-0x3603a275(%eax)

c0031783 <write_cr3>:
c0031783:	55                   	push   %ebp
c0031784:	89 e5                	mov    %esp,%ebp
c0031786:	e8 38 ec ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c003178b:	05 75 a8 00 00       	add    $0xa875,%eax
c0031790:	8b 45 08             	mov    0x8(%ebp),%eax
c0031793:	0f 22 d8             	mov    %eax,%cr3
c0031796:	90                   	nop
c0031797:	5d                   	pop    %ebp
c0031798:	c3                   	ret    

c0031799 <loader>:
c0031799:	55                   	push   %ebp
c003179a:	89 e5                	mov    %esp,%ebp
c003179c:	53                   	push   %ebx
c003179d:	83 ec 24             	sub    $0x24,%esp
c00317a0:	e8 22 ec ff ff       	call   c00303c7 <__x86.get_pc_thunk.bx>
c00317a5:	81 c3 5b a8 00 00    	add    $0xa85b,%ebx
c00317ab:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c00317b2:	8d 83 d8 cb ff ff    	lea    -0x3428(%ebx),%eax
c00317b8:	50                   	push   %eax
c00317b9:	6a 1e                	push   $0x1e
c00317bb:	8d 83 8c cb ff ff    	lea    -0x3474(%ebx),%eax
c00317c1:	50                   	push   %eax
c00317c2:	8d 83 9c cb ff ff    	lea    -0x3464(%ebx),%eax
c00317c8:	50                   	push   %eax
c00317c9:	e8 69 fe ff ff       	call   c0031637 <printk>
c00317ce:	83 c4 10             	add    $0x10,%esp
c00317d1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00317d4:	8b 50 1c             	mov    0x1c(%eax),%edx
c00317d7:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00317da:	01 d0                	add    %edx,%eax
c00317dc:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00317df:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00317e2:	8b 40 2c             	mov    0x2c(%eax),%eax
c00317e5:	0f b7 c0             	movzwl %ax,%eax
c00317e8:	c1 e0 05             	shl    $0x5,%eax
c00317eb:	89 c2                	mov    %eax,%edx
c00317ed:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00317f0:	01 d0                	add    %edx,%eax
c00317f2:	89 45 ec             	mov    %eax,-0x14(%ebp)
c00317f5:	e9 ba 00 00 00       	jmp    c00318b4 <loader+0x11b>
c00317fa:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00317fd:	8b 00                	mov    (%eax),%eax
c00317ff:	83 f8 01             	cmp    $0x1,%eax
c0031802:	0f 85 a8 00 00 00    	jne    c00318b0 <loader+0x117>
c0031808:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003180b:	8b 40 08             	mov    0x8(%eax),%eax
c003180e:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0031811:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031814:	8b 40 14             	mov    0x14(%eax),%eax
c0031817:	89 c2                	mov    %eax,%edx
c0031819:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003181c:	8b 40 08             	mov    0x8(%eax),%eax
c003181f:	83 ec 08             	sub    $0x8,%esp
c0031822:	52                   	push   %edx
c0031823:	50                   	push   %eax
c0031824:	e8 f7 02 00 00       	call   c0031b20 <mm_malloc>
c0031829:	83 c4 10             	add    $0x10,%esp
c003182c:	89 45 e8             	mov    %eax,-0x18(%ebp)
c003182f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031832:	8b 50 10             	mov    0x10(%eax),%edx
c0031835:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031838:	8b 40 04             	mov    0x4(%eax),%eax
c003183b:	89 c1                	mov    %eax,%ecx
c003183d:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0031840:	83 ec 04             	sub    $0x4,%esp
c0031843:	52                   	push   %edx
c0031844:	51                   	push   %ecx
c0031845:	50                   	push   %eax
c0031846:	e8 69 05 00 00       	call   c0031db4 <memcpy>
c003184b:	83 c4 10             	add    $0x10,%esp
c003184e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031851:	8b 50 14             	mov    0x14(%eax),%edx
c0031854:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031857:	8b 40 10             	mov    0x10(%eax),%eax
c003185a:	39 c2                	cmp    %eax,%edx
c003185c:	76 28                	jbe    c0031886 <loader+0xed>
c003185e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031861:	8b 50 14             	mov    0x14(%eax),%edx
c0031864:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031867:	8b 40 10             	mov    0x10(%eax),%eax
c003186a:	29 c2                	sub    %eax,%edx
c003186c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003186f:	8b 48 10             	mov    0x10(%eax),%ecx
c0031872:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0031875:	01 c8                	add    %ecx,%eax
c0031877:	83 ec 04             	sub    $0x4,%esp
c003187a:	52                   	push   %edx
c003187b:	6a 00                	push   $0x0
c003187d:	50                   	push   %eax
c003187e:	e8 79 05 00 00       	call   c0031dfc <memset>
c0031883:	83 c4 10             	add    $0x10,%esp
c0031886:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031889:	8b 50 08             	mov    0x8(%eax),%edx
c003188c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003188f:	8b 40 14             	mov    0x14(%eax),%eax
c0031892:	01 d0                	add    %edx,%eax
c0031894:	48                   	dec    %eax
c0031895:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0031898:	c7 c0 08 d0 03 c0    	mov    $0xc003d008,%eax
c003189e:	8b 00                	mov    (%eax),%eax
c00318a0:	3b 45 e4             	cmp    -0x1c(%ebp),%eax
c00318a3:	73 0b                	jae    c00318b0 <loader+0x117>
c00318a5:	c7 c0 08 d0 03 c0    	mov    $0xc003d008,%eax
c00318ab:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c00318ae:	89 10                	mov    %edx,(%eax)
c00318b0:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
c00318b4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00318b7:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c00318ba:	0f 82 3a ff ff ff    	jb     c00317fa <loader+0x61>
c00318c0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00318c3:	8b 40 18             	mov    0x18(%eax),%eax
c00318c6:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00318c9:	83 ec 08             	sub    $0x8,%esp
c00318cc:	68 00 00 10 00       	push   $0x100000
c00318d1:	68 00 00 f0 bf       	push   $0xbff00000
c00318d6:	e8 45 02 00 00       	call   c0031b20 <mm_malloc>
c00318db:	83 c4 10             	add    $0x10,%esp
c00318de:	e8 fd ea ff ff       	call   c00303e0 <get_ucr3>
c00318e3:	83 ec 0c             	sub    $0xc,%esp
c00318e6:	50                   	push   %eax
c00318e7:	e8 97 fe ff ff       	call   c0031783 <write_cr3>
c00318ec:	83 c4 10             	add    $0x10,%esp
c00318ef:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00318f2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00318f5:	c9                   	leave  
c00318f6:	c3                   	ret    

c00318f7 <fs_open>:
c00318f7:	55                   	push   %ebp
c00318f8:	89 e5                	mov    %esp,%ebp
c00318fa:	53                   	push   %ebx
c00318fb:	83 ec 04             	sub    $0x4,%esp
c00318fe:	e8 c0 ea ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0031903:	05 fd a6 00 00       	add    $0xa6fd,%eax
c0031908:	8d 90 6c ce ff ff    	lea    -0x3194(%eax),%edx
c003190e:	52                   	push   %edx
c003190f:	6a 2c                	push   $0x2c
c0031911:	8d 90 a3 cc ff ff    	lea    -0x335d(%eax),%edx
c0031917:	52                   	push   %edx
c0031918:	8d 90 b0 cc ff ff    	lea    -0x3350(%eax),%edx
c003191e:	52                   	push   %edx
c003191f:	89 c3                	mov    %eax,%ebx
c0031921:	e8 11 fd ff ff       	call   c0031637 <printk>
c0031926:	83 c4 10             	add    $0x10,%esp
c0031929:	b8 01 00 00 00       	mov    $0x1,%eax
c003192e:	82 b8 ff ff ff ff 8b 	cmpb   $0x8b,-0x1(%eax)
c0031935:	5d                   	pop    %ebp
c0031936:	fc                   	cld    
c0031937:	c9                   	leave  
c0031938:	c3                   	ret    

c0031939 <fs_read>:
c0031939:	55                   	push   %ebp
c003193a:	89 e5                	mov    %esp,%ebp
c003193c:	53                   	push   %ebx
c003193d:	83 ec 04             	sub    $0x4,%esp
c0031940:	e8 82 ea ff ff       	call   c00303c7 <__x86.get_pc_thunk.bx>
c0031945:	81 c3 bb a6 00 00    	add    $0xa6bb,%ebx
c003194b:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c003194f:	7f 2f                	jg     c0031980 <fs_read+0x47>
c0031951:	83 ec 0c             	sub    $0xc,%esp
c0031954:	8d 83 06 cd ff ff    	lea    -0x32fa(%ebx),%eax
c003195a:	50                   	push   %eax
c003195b:	8d 83 74 ce ff ff    	lea    -0x318c(%ebx),%eax
c0031961:	50                   	push   %eax
c0031962:	6a 31                	push   $0x31
c0031964:	8d 83 a3 cc ff ff    	lea    -0x335d(%ebx),%eax
c003196a:	50                   	push   %eax
c003196b:	8d 83 10 cd ff ff    	lea    -0x32f0(%ebx),%eax
c0031971:	50                   	push   %eax
c0031972:	e8 c0 fc ff ff       	call   c0031637 <printk>
c0031977:	83 c4 20             	add    $0x20,%esp
c003197a:	b8 01 00 00 00       	mov    $0x1,%eax
c003197f:	82 8d 83 74 ce ff ff 	orb    $0xff,-0x318b7d(%ebp)
c0031986:	50                   	push   %eax
c0031987:	6a 32                	push   $0x32
c0031989:	8d 83 a3 cc ff ff    	lea    -0x335d(%ebx),%eax
c003198f:	50                   	push   %eax
c0031990:	8d 83 5c cd ff ff    	lea    -0x32a4(%ebx),%eax
c0031996:	50                   	push   %eax
c0031997:	e8 9b fc ff ff       	call   c0031637 <printk>
c003199c:	83 c4 10             	add    $0x10,%esp
c003199f:	b8 01 00 00 00       	mov    $0x1,%eax
c00319a4:	82 b8 ff ff ff ff 8b 	cmpb   $0x8b,-0x1(%eax)
c00319ab:	5d                   	pop    %ebp
c00319ac:	fc                   	cld    
c00319ad:	c9                   	leave  
c00319ae:	c3                   	ret    

c00319af <fs_write>:
c00319af:	55                   	push   %ebp
c00319b0:	89 e5                	mov    %esp,%ebp
c00319b2:	53                   	push   %ebx
c00319b3:	83 ec 04             	sub    $0x4,%esp
c00319b6:	e8 08 ea ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c00319bb:	05 45 a6 00 00       	add    $0xa645,%eax
c00319c0:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c00319c4:	7e 31                	jle    c00319f7 <fs_write+0x48>
c00319c6:	83 ec 0c             	sub    $0xc,%esp
c00319c9:	8d 90 b2 cd ff ff    	lea    -0x324e(%eax),%edx
c00319cf:	52                   	push   %edx
c00319d0:	8d 90 7c ce ff ff    	lea    -0x3184(%eax),%edx
c00319d6:	52                   	push   %edx
c00319d7:	6a 37                	push   $0x37
c00319d9:	8d 90 a3 cc ff ff    	lea    -0x335d(%eax),%edx
c00319df:	52                   	push   %edx
c00319e0:	8d 90 10 cd ff ff    	lea    -0x32f0(%eax),%edx
c00319e6:	52                   	push   %edx
c00319e7:	89 c3                	mov    %eax,%ebx
c00319e9:	e8 49 fc ff ff       	call   c0031637 <printk>
c00319ee:	83 c4 20             	add    $0x20,%esp
c00319f1:	b8 01 00 00 00       	mov    $0x1,%eax
c00319f6:	82 b8 04 00 00 00 8b 	cmpb   $0x8b,0x4(%eax)
c00319fd:	5d                   	pop    %ebp
c00319fe:	08 8b 4d 0c 8b 55    	or     %cl,0x558b0c4d(%ebx)
c0031a04:	10 82 89 45 10 8b    	adc    %al,-0x74efba77(%edx)
c0031a0a:	45                   	inc    %ebp
c0031a0b:	10 8b 5d fc c9 c3    	adc    %cl,-0x3c3603a3(%ebx)

c0031a11 <fs_lseek>:
c0031a11:	55                   	push   %ebp
c0031a12:	89 e5                	mov    %esp,%ebp
c0031a14:	53                   	push   %ebx
c0031a15:	83 ec 04             	sub    $0x4,%esp
c0031a18:	e8 a6 e9 ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0031a1d:	05 e3 a5 00 00       	add    $0xa5e3,%eax
c0031a22:	8d 90 88 ce ff ff    	lea    -0x3178(%eax),%edx
c0031a28:	52                   	push   %edx
c0031a29:	6a 46                	push   $0x46
c0031a2b:	8d 90 a3 cc ff ff    	lea    -0x335d(%eax),%edx
c0031a31:	52                   	push   %edx
c0031a32:	8d 90 bc cd ff ff    	lea    -0x3244(%eax),%edx
c0031a38:	52                   	push   %edx
c0031a39:	89 c3                	mov    %eax,%ebx
c0031a3b:	e8 f7 fb ff ff       	call   c0031637 <printk>
c0031a40:	83 c4 10             	add    $0x10,%esp
c0031a43:	b8 01 00 00 00       	mov    $0x1,%eax
c0031a48:	82 b8 ff ff ff ff 8b 	cmpb   $0x8b,-0x1(%eax)
c0031a4f:	5d                   	pop    %ebp
c0031a50:	fc                   	cld    
c0031a51:	c9                   	leave  
c0031a52:	c3                   	ret    

c0031a53 <fs_close>:
c0031a53:	55                   	push   %ebp
c0031a54:	89 e5                	mov    %esp,%ebp
c0031a56:	53                   	push   %ebx
c0031a57:	83 ec 04             	sub    $0x4,%esp
c0031a5a:	e8 64 e9 ff ff       	call   c00303c3 <__x86.get_pc_thunk.ax>
c0031a5f:	05 a1 a5 00 00       	add    $0xa5a1,%eax
c0031a64:	8d 90 94 ce ff ff    	lea    -0x316c(%eax),%edx
c0031a6a:	52                   	push   %edx
c0031a6b:	6a 4b                	push   $0x4b
c0031a6d:	8d 90 a3 cc ff ff    	lea    -0x335d(%eax),%edx
c0031a73:	52                   	push   %edx
c0031a74:	8d 90 14 ce ff ff    	lea    -0x31ec(%eax),%edx
c0031a7a:	52                   	push   %edx
c0031a7b:	89 c3                	mov    %eax,%ebx
c0031a7d:	e8 b5 fb ff ff       	call   c0031637 <printk>
c0031a82:	83 c4 10             	add    $0x10,%esp
c0031a85:	b8 01 00 00 00       	mov    $0x1,%eax
c0031a8a:	82 b8 ff ff ff ff 8b 	cmpb   $0x8b,-0x1(%eax)
c0031a91:	5d                   	pop    %ebp
c0031a92:	fc                   	cld    
c0031a93:	c9                   	leave  
c0031a94:	c3                   	ret    

c0031a95 <init>:
c0031a95:	55                   	push   %ebp
c0031a96:	89 e5                	mov    %esp,%ebp
c0031a98:	53                   	push   %ebx
c0031a99:	83 ec 04             	sub    $0x4,%esp
c0031a9c:	e8 26 e9 ff ff       	call   c00303c7 <__x86.get_pc_thunk.bx>
c0031aa1:	81 c3 5f a5 00 00    	add    $0xa55f,%ebx
c0031aa7:	e8 c4 e6 ff ff       	call   c0030170 <init_page>
c0031aac:	81 c4 00 00 00 c0    	add    $0xc0000000,%esp
c0031ab2:	8d 83 c7 5a ff bf    	lea    -0x4000a539(%ebx),%eax
c0031ab8:	ff e0                	jmp    *%eax
c0031aba:	b8 01 00 00 00       	mov    $0x1,%eax
c0031abf:	82 90 83 c4 04 5b 5d 	adcb   $0x5d,0x5b04c483(%eax)
c0031ac6:	c3                   	ret    

c0031ac7 <init_cond>:
c0031ac7:	55                   	push   %ebp
c0031ac8:	89 e5                	mov    %esp,%ebp
c0031aca:	53                   	push   %ebx
c0031acb:	83 ec 14             	sub    $0x14,%esp
c0031ace:	e8 f4 e8 ff ff       	call   c00303c7 <__x86.get_pc_thunk.bx>
c0031ad3:	81 c3 2d a5 00 00    	add    $0xa52d,%ebx
c0031ad9:	e8 67 e9 ff ff       	call   c0030445 <init_mm>
c0031ade:	8d 83 e0 ce ff ff    	lea    -0x3120(%ebx),%eax
c0031ae4:	50                   	push   %eax
c0031ae5:	6a 4b                	push   $0x4b
c0031ae7:	8d 83 a0 ce ff ff    	lea    -0x3160(%ebx),%eax
c0031aed:	50                   	push   %eax
c0031aee:	8d 83 ac ce ff ff    	lea    -0x3154(%ebx),%eax
c0031af4:	50                   	push   %eax
c0031af5:	e8 3d fb ff ff       	call   c0031637 <printk>
c0031afa:	83 c4 10             	add    $0x10,%esp
c0031afd:	e8 97 fc ff ff       	call   c0031799 <loader>
c0031b02:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031b05:	bc 00 00 00 c0       	mov    $0xc0000000,%esp
c0031b0a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031b0d:	ff d0                	call   *%eax
c0031b0f:	90                   	nop
c0031b10:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031b13:	c9                   	leave  
c0031b14:	c3                   	ret    
c0031b15:	66 90                	xchg   %ax,%ax
c0031b17:	66 90                	xchg   %ax,%ax
c0031b19:	66 90                	xchg   %ax,%ax
c0031b1b:	66 90                	xchg   %ax,%ax
c0031b1d:	66 90                	xchg   %ax,%ax
c0031b1f:	90                   	nop

c0031b20 <mm_malloc>:
c0031b20:	55                   	push   %ebp
c0031b21:	31 c0                	xor    %eax,%eax
c0031b23:	89 e5                	mov    %esp,%ebp
c0031b25:	57                   	push   %edi
c0031b26:	56                   	push   %esi
c0031b27:	53                   	push   %ebx
c0031b28:	83 ec 3c             	sub    $0x3c,%esp
c0031b2b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0031b2e:	85 db                	test   %ebx,%ebx
c0031b30:	0f 8e 36 02 00 00    	jle    c0031d6c <mm_malloc+0x24c>
c0031b36:	e8 90 e8 ff ff       	call   c00303cb <get_updir>
c0031b3b:	89 c6                	mov    %eax,%esi
c0031b3d:	e8 9e e8 ff ff       	call   c00303e0 <get_ucr3>
c0031b42:	8b 55 08             	mov    0x8(%ebp),%edx
c0031b45:	8d 5c 1a ff          	lea    -0x1(%edx,%ebx,1),%ebx
c0031b49:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0031b4c:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0031b4f:	b8 00 10 00 00       	mov    $0x1000,%eax
c0031b54:	29 d0                	sub    %edx,%eax
c0031b56:	89 da                	mov    %ebx,%edx
c0031b58:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0031b5e:	01 d0                	add    %edx,%eax
c0031b60:	85 c0                	test   %eax,%eax
c0031b62:	0f 8e c0 00 00 00    	jle    c0031c28 <mm_malloc+0x108>
c0031b68:	8b 55 08             	mov    0x8(%ebp),%edx
c0031b6b:	83 e8 01             	sub    $0x1,%eax
c0031b6e:	89 f7                	mov    %esi,%edi
c0031b70:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031b75:	8d 84 02 00 10 00 00 	lea    0x1000(%edx,%eax,1),%eax
c0031b7c:	89 d3                	mov    %edx,%ebx
c0031b7e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0031b81:	eb 51                	jmp    c0031bd4 <mm_malloc+0xb4>
c0031b83:	90                   	nop
c0031b84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031b88:	8b 31                	mov    (%ecx),%esi
c0031b8a:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
c0031b90:	81 ee 00 00 00 40    	sub    $0x40000000,%esi
c0031b96:	89 d8                	mov    %ebx,%eax
c0031b98:	c1 e8 0a             	shr    $0xa,%eax
c0031b9b:	25 fc 0f 00 00       	and    $0xffc,%eax
c0031ba0:	01 c6                	add    %eax,%esi
c0031ba2:	f6 06 01             	testb  $0x1,(%esi)
c0031ba5:	75 22                	jne    c0031bc9 <mm_malloc+0xa9>
c0031ba7:	a1 20 c0 03 c0       	mov    0xc003c020,%eax
c0031bac:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0031bb1:	0f 8f c1 01 00 00    	jg     c0031d78 <mm_malloc+0x258>
c0031bb7:	89 c1                	mov    %eax,%ecx
c0031bb9:	83 c0 01             	add    $0x1,%eax
c0031bbc:	c1 e1 0c             	shl    $0xc,%ecx
c0031bbf:	83 c9 07             	or     $0x7,%ecx
c0031bc2:	89 0e                	mov    %ecx,(%esi)
c0031bc4:	a3 20 c0 03 c0       	mov    %eax,0xc003c020
c0031bc9:	81 c3 00 10 00 00    	add    $0x1000,%ebx
c0031bcf:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
c0031bd2:	74 54                	je     c0031c28 <mm_malloc+0x108>
c0031bd4:	89 d8                	mov    %ebx,%eax
c0031bd6:	c1 e8 16             	shr    $0x16,%eax
c0031bd9:	8d 0c 87             	lea    (%edi,%eax,4),%ecx
c0031bdc:	f6 01 01             	testb  $0x1,(%ecx)
c0031bdf:	75 a7                	jne    c0031b88 <mm_malloc+0x68>
c0031be1:	a1 00 e0 04 c0       	mov    0xc004e000,%eax
c0031be6:	89 c6                	mov    %eax,%esi
c0031be8:	83 c0 01             	add    $0x1,%eax
c0031beb:	c1 e6 0c             	shl    $0xc,%esi
c0031bee:	81 c6 00 f0 04 c0    	add    $0xc004f000,%esi
c0031bf4:	a3 00 e0 04 c0       	mov    %eax,0xc004e000
c0031bf9:	8d 86 00 00 00 40    	lea    0x40000000(%esi),%eax
c0031bff:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031c04:	83 c8 07             	or     $0x7,%eax
c0031c07:	89 01                	mov    %eax,(%ecx)
c0031c09:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
c0031c10:	00 
c0031c11:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0031c18:	00 
c0031c19:	89 34 24             	mov    %esi,(%esp)
c0031c1c:	e8 db 01 00 00       	call   c0031dfc <memset>
c0031c21:	e9 70 ff ff ff       	jmp    c0031b96 <mm_malloc+0x76>
c0031c26:	66 90                	xchg   %ax,%ax
c0031c28:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0031c2b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0031c2e:	81 eb 00 00 00 40    	sub    $0x40000000,%ebx
c0031c34:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
c0031c3a:	c1 e8 16             	shr    $0x16,%eax
c0031c3d:	8b 34 83             	mov    (%ebx,%eax,4),%esi
c0031c40:	f7 c6 01 00 00 00    	test   $0x1,%esi
c0031c46:	75 32                	jne    c0031c7a <mm_malloc+0x15a>
c0031c48:	c7 44 24 10 0e 8f 03 	movl   $0xc0038f0e,0x10(%esp)
c0031c4f:	c0 
c0031c50:	c7 44 24 0c 76 8f 03 	movl   $0xc0038f76,0xc(%esp)
c0031c57:	c0 
c0031c58:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031c5f:	00 
c0031c60:	c7 44 24 04 fd 8e 03 	movl   $0xc0038efd,0x4(%esp)
c0031c67:	c0 
c0031c68:	c7 04 24 20 8f 03 c0 	movl   $0xc0038f20,(%esp)
c0031c6f:	e8 c3 f9 ff ff       	call   c0031637 <printk>
c0031c74:	b8 01 00 00 00       	mov    $0x1,%eax
c0031c79:	82 8b 55 e0 8d 86 00 	orb    $0x0,-0x79721fab(%ebx)
c0031c80:	00 00                	add    %al,(%eax)
c0031c82:	c0 25 00 f0 ff ff c1 	shlb   $0xc1,0xfffff000
c0031c89:	ea 0c 81 e2 ff 03 00 	ljmp   $0x3,$0xffe2810c
c0031c90:	00 f6                	add    %dh,%dh
c0031c92:	04 90                	add    $0x90,%al
c0031c94:	01 75 32             	add    %esi,0x32(%ebp)
c0031c97:	c7 44 24 10 16 8f 03 	movl   $0xc0038f16,0x10(%esp)
c0031c9e:	c0 
c0031c9f:	c7 44 24 0c 76 8f 03 	movl   $0xc0038f76,0xc(%esp)
c0031ca6:	c0 
c0031ca7:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031cae:	00 
c0031caf:	c7 44 24 04 fd 8e 03 	movl   $0xc0038efd,0x4(%esp)
c0031cb6:	c0 
c0031cb7:	c7 04 24 20 8f 03 c0 	movl   $0xc0038f20,(%esp)
c0031cbe:	e8 74 f9 ff ff       	call   c0031637 <printk>
c0031cc3:	b8 01 00 00 00       	mov    $0x1,%eax
c0031cc8:	82 8b 45 08 c1 e8 16 	orb    $0x16,-0x173ef7bb(%ebx)
c0031ccf:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
c0031cd2:	f6 c3 01             	test   $0x1,%bl
c0031cd5:	75 32                	jne    c0031d09 <mm_malloc+0x1e9>
c0031cd7:	c7 44 24 10 0e 8f 03 	movl   $0xc0038f0e,0x10(%esp)
c0031cde:	c0 
c0031cdf:	c7 44 24 0c 76 8f 03 	movl   $0xc0038f76,0xc(%esp)
c0031ce6:	c0 
c0031ce7:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031cee:	00 
c0031cef:	c7 44 24 04 fd 8e 03 	movl   $0xc0038efd,0x4(%esp)
c0031cf6:	c0 
c0031cf7:	c7 04 24 20 8f 03 c0 	movl   $0xc0038f20,(%esp)
c0031cfe:	e8 34 f9 ff ff       	call   c0031637 <printk>
c0031d03:	b8 01 00 00 00       	mov    $0x1,%eax
c0031d08:	82 8b 55 08 8d 83 00 	orb    $0x0,-0x7c72f7ab(%ebx)
c0031d0f:	00 00                	add    %al,(%eax)
c0031d11:	c0 25 00 f0 ff ff c1 	shlb   $0xc1,0xfffff000
c0031d18:	ea 0c 81 e2 ff 03 00 	ljmp   $0x3,$0xffe2810c
c0031d1f:	00 8b 1c 90 f6 c3    	add    %cl,-0x3c096fe4(%ebx)
c0031d25:	01 75 32             	add    %esi,0x32(%ebp)
c0031d28:	c7 44 24 10 16 8f 03 	movl   $0xc0038f16,0x10(%esp)
c0031d2f:	c0 
c0031d30:	c7 44 24 0c 76 8f 03 	movl   $0xc0038f76,0xc(%esp)
c0031d37:	c0 
c0031d38:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031d3f:	00 
c0031d40:	c7 44 24 04 fd 8e 03 	movl   $0xc0038efd,0x4(%esp)
c0031d47:	c0 
c0031d48:	c7 04 24 20 8f 03 c0 	movl   $0xc0038f20,(%esp)
c0031d4f:	e8 e3 f8 ff ff       	call   c0031637 <printk>
c0031d54:	b8 01 00 00 00       	mov    $0x1,%eax
c0031d59:	82 8b 55 08 89 d8 25 	orb    $0x25,-0x2776f7ab(%ebx)
c0031d60:	00 f0                	add    %dh,%al
c0031d62:	ff                   	(bad)  
c0031d63:	ff 81 e2 ff 0f 00    	incl   0xfffe2(%ecx)
c0031d69:	00 09                	add    %cl,(%ecx)
c0031d6b:	d0 83 c4 3c 5b 5e    	rolb   0x5e5b3cc4(%ebx)
c0031d71:	5f                   	pop    %edi
c0031d72:	5d                   	pop    %ebp
c0031d73:	c3                   	ret    
c0031d74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031d78:	c7 44 24 10 ea 8e 03 	movl   $0xc0038eea,0x10(%esp)
c0031d7f:	c0 
c0031d80:	c7 44 24 0c 6c 8f 03 	movl   $0xc0038f6c,0xc(%esp)
c0031d87:	c0 
c0031d88:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
c0031d8f:	00 
c0031d90:	c7 44 24 04 fd 8e 03 	movl   $0xc0038efd,0x4(%esp)
c0031d97:	c0 
c0031d98:	c7 04 24 20 8f 03 c0 	movl   $0xc0038f20,(%esp)
c0031d9f:	e8 93 f8 ff ff       	call   c0031637 <printk>
c0031da4:	b8 01 00 00 00       	mov    $0x1,%eax
c0031da9:	82 a1 20 c0 03 c0 e9 	andb   $0xe9,-0x3ffc3fe0(%ecx)
c0031db0:	03 fe                	add    %esi,%edi
c0031db2:	ff                   	(bad)  
c0031db3:	ff                   	.byte 0xff

c0031db4 <memcpy>:
c0031db4:	55                   	push   %ebp
c0031db5:	89 e5                	mov    %esp,%ebp
c0031db7:	56                   	push   %esi
c0031db8:	57                   	push   %edi
c0031db9:	53                   	push   %ebx
c0031dba:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031dbd:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031dc0:	8b 75 0c             	mov    0xc(%ebp),%esi
c0031dc3:	fc                   	cld    
c0031dc4:	83 f9 08             	cmp    $0x8,%ecx
c0031dc7:	76 26                	jbe    c0031def <memcpy+0x3b>
c0031dc9:	89 fa                	mov    %edi,%edx
c0031dcb:	89 cb                	mov    %ecx,%ebx
c0031dcd:	83 e2 03             	and    $0x3,%edx
c0031dd0:	74 10                	je     c0031de2 <memcpy+0x2e>
c0031dd2:	b9 04 00 00 00       	mov    $0x4,%ecx
c0031dd7:	29 d1                	sub    %edx,%ecx
c0031dd9:	83 e1 03             	and    $0x3,%ecx
c0031ddc:	29 cb                	sub    %ecx,%ebx
c0031dde:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031de0:	89 d9                	mov    %ebx,%ecx
c0031de2:	c1 e9 02             	shr    $0x2,%ecx
c0031de5:	8d 76 00             	lea    0x0(%esi),%esi
c0031de8:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0031dea:	89 d9                	mov    %ebx,%ecx
c0031dec:	83 e1 03             	and    $0x3,%ecx
c0031def:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031df1:	8b 45 08             	mov    0x8(%ebp),%eax
c0031df4:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0031df7:	5b                   	pop    %ebx
c0031df8:	5f                   	pop    %edi
c0031df9:	5e                   	pop    %esi
c0031dfa:	c9                   	leave  
c0031dfb:	c3                   	ret    

c0031dfc <memset>:
c0031dfc:	55                   	push   %ebp
c0031dfd:	89 e5                	mov    %esp,%ebp
c0031dff:	57                   	push   %edi
c0031e00:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031e03:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0031e07:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031e0a:	fc                   	cld    
c0031e0b:	83 f9 10             	cmp    $0x10,%ecx
c0031e0e:	76 69                	jbe    c0031e79 <memset+0x7d>
c0031e10:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e16:	74 4c                	je     c0031e64 <memset+0x68>
c0031e18:	88 07                	mov    %al,(%edi)
c0031e1a:	47                   	inc    %edi
c0031e1b:	49                   	dec    %ecx
c0031e1c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e22:	74 40                	je     c0031e64 <memset+0x68>
c0031e24:	88 07                	mov    %al,(%edi)
c0031e26:	47                   	inc    %edi
c0031e27:	49                   	dec    %ecx
c0031e28:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e2e:	74 34                	je     c0031e64 <memset+0x68>
c0031e30:	88 07                	mov    %al,(%edi)
c0031e32:	47                   	inc    %edi
c0031e33:	49                   	dec    %ecx
c0031e34:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e3a:	74 28                	je     c0031e64 <memset+0x68>
c0031e3c:	88 07                	mov    %al,(%edi)
c0031e3e:	47                   	inc    %edi
c0031e3f:	49                   	dec    %ecx
c0031e40:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e46:	74 1c                	je     c0031e64 <memset+0x68>
c0031e48:	88 07                	mov    %al,(%edi)
c0031e4a:	47                   	inc    %edi
c0031e4b:	49                   	dec    %ecx
c0031e4c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e52:	74 10                	je     c0031e64 <memset+0x68>
c0031e54:	88 07                	mov    %al,(%edi)
c0031e56:	47                   	inc    %edi
c0031e57:	49                   	dec    %ecx
c0031e58:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e5e:	74 04                	je     c0031e64 <memset+0x68>
c0031e60:	88 07                	mov    %al,(%edi)
c0031e62:	47                   	inc    %edi
c0031e63:	49                   	dec    %ecx
c0031e64:	88 c4                	mov    %al,%ah
c0031e66:	89 c2                	mov    %eax,%edx
c0031e68:	c1 e2 10             	shl    $0x10,%edx
c0031e6b:	09 d0                	or     %edx,%eax
c0031e6d:	89 ca                	mov    %ecx,%edx
c0031e6f:	c1 e9 02             	shr    $0x2,%ecx
c0031e72:	83 e2 03             	and    $0x3,%edx
c0031e75:	f3 ab                	rep stos %eax,%es:(%edi)
c0031e77:	89 d1                	mov    %edx,%ecx
c0031e79:	f3 aa                	rep stos %al,%es:(%edi)
c0031e7b:	8b 45 08             	mov    0x8(%ebp),%eax
c0031e7e:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0031e81:	5f                   	pop    %edi
c0031e82:	c9                   	leave  
c0031e83:	c3                   	ret    
c0031e84:	66 90                	xchg   %ax,%ax
c0031e86:	66 90                	xchg   %ax,%ax
c0031e88:	66 90                	xchg   %ax,%ax
c0031e8a:	66 90                	xchg   %ax,%ax
c0031e8c:	66 90                	xchg   %ax,%ax
c0031e8e:	66 90                	xchg   %ax,%ax

c0031e90 <_vsnprintf_r>:
c0031e90:	55                   	push   %ebp
c0031e91:	89 e5                	mov    %esp,%ebp
c0031e93:	56                   	push   %esi
c0031e94:	53                   	push   %ebx
c0031e95:	83 c4 80             	add    $0xffffff80,%esp
c0031e98:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0031e9b:	8b 75 08             	mov    0x8(%ebp),%esi
c0031e9e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031ea1:	85 db                	test   %ebx,%ebx
c0031ea3:	78 63                	js     c0031f08 <_vsnprintf_r+0x78>
c0031ea5:	ba 08 02 00 00       	mov    $0x208,%edx
c0031eaa:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0031eaf:	66 89 55 9c          	mov    %dx,-0x64(%ebp)
c0031eb3:	8d 53 ff             	lea    -0x1(%ebx),%edx
c0031eb6:	89 45 90             	mov    %eax,-0x70(%ebp)
c0031eb9:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0031ebc:	31 c0                	xor    %eax,%eax
c0031ebe:	85 db                	test   %ebx,%ebx
c0031ec0:	0f 45 c2             	cmovne %edx,%eax
c0031ec3:	89 45 98             	mov    %eax,-0x68(%ebp)
c0031ec6:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0031ec9:	8b 45 18             	mov    0x18(%ebp),%eax
c0031ecc:	89 34 24             	mov    %esi,(%esp)
c0031ecf:	66 89 4d 9e          	mov    %cx,-0x62(%ebp)
c0031ed3:	89 44 24 0c          	mov    %eax,0xc(%esp)
c0031ed7:	8b 45 14             	mov    0x14(%ebp),%eax
c0031eda:	89 44 24 08          	mov    %eax,0x8(%esp)
c0031ede:	8d 45 90             	lea    -0x70(%ebp),%eax
c0031ee1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0031ee5:	e8 86 00 00 00       	call   c0031f70 <_svfprintf_r>
c0031eea:	83 f8 ff             	cmp    $0xffffffff,%eax
c0031eed:	7c 11                	jl     c0031f00 <_vsnprintf_r+0x70>
c0031eef:	85 db                	test   %ebx,%ebx
c0031ef1:	74 06                	je     c0031ef9 <_vsnprintf_r+0x69>
c0031ef3:	8b 55 90             	mov    -0x70(%ebp),%edx
c0031ef6:	c6 02 00             	movb   $0x0,(%edx)
c0031ef9:	83 ec 80             	sub    $0xffffff80,%esp
c0031efc:	5b                   	pop    %ebx
c0031efd:	5e                   	pop    %esi
c0031efe:	5d                   	pop    %ebp
c0031eff:	c3                   	ret    
c0031f00:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0031f06:	eb e7                	jmp    c0031eef <_vsnprintf_r+0x5f>
c0031f08:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0031f0e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0031f13:	eb e4                	jmp    c0031ef9 <_vsnprintf_r+0x69>
c0031f15:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031f19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0031f20 <vsnprintf>:
c0031f20:	55                   	push   %ebp
c0031f21:	89 e5                	mov    %esp,%ebp
c0031f23:	83 ec 28             	sub    $0x28,%esp
c0031f26:	e8 35 00 00 00       	call   c0031f60 <__getreent>
c0031f2b:	8b 55 14             	mov    0x14(%ebp),%edx
c0031f2e:	89 54 24 10          	mov    %edx,0x10(%esp)
c0031f32:	8b 55 10             	mov    0x10(%ebp),%edx
c0031f35:	89 04 24             	mov    %eax,(%esp)
c0031f38:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0031f3c:	8b 55 0c             	mov    0xc(%ebp),%edx
c0031f3f:	89 54 24 08          	mov    %edx,0x8(%esp)
c0031f43:	8b 55 08             	mov    0x8(%ebp),%edx
c0031f46:	89 54 24 04          	mov    %edx,0x4(%esp)
c0031f4a:	e8 41 ff ff ff       	call   c0031e90 <_vsnprintf_r>
c0031f4f:	c9                   	leave  
c0031f50:	c3                   	ret    
c0031f51:	66 90                	xchg   %ax,%ax
c0031f53:	66 90                	xchg   %ax,%ax
c0031f55:	66 90                	xchg   %ax,%ax
c0031f57:	66 90                	xchg   %ax,%ax
c0031f59:	66 90                	xchg   %ax,%ax
c0031f5b:	66 90                	xchg   %ax,%ax
c0031f5d:	66 90                	xchg   %ax,%ax
c0031f5f:	90                   	nop

c0031f60 <__getreent>:
c0031f60:	55                   	push   %ebp
c0031f61:	a1 40 c0 03 c0       	mov    0xc003c040,%eax
c0031f66:	89 e5                	mov    %esp,%ebp
c0031f68:	5d                   	pop    %ebp
c0031f69:	c3                   	ret    
c0031f6a:	66 90                	xchg   %ax,%ax
c0031f6c:	66 90                	xchg   %ax,%ax
c0031f6e:	66 90                	xchg   %ax,%ax

c0031f70 <_svfprintf_r>:
c0031f70:	55                   	push   %ebp
c0031f71:	89 e5                	mov    %esp,%ebp
c0031f73:	57                   	push   %edi
c0031f74:	56                   	push   %esi
c0031f75:	53                   	push   %ebx
c0031f76:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
c0031f7c:	8b 45 08             	mov    0x8(%ebp),%eax
c0031f7f:	89 04 24             	mov    %eax,(%esp)
c0031f82:	e8 89 33 00 00       	call   c0035310 <_localeconv_r>
c0031f87:	8b 00                	mov    (%eax),%eax
c0031f89:	89 04 24             	mov    %eax,(%esp)
c0031f8c:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
c0031f92:	e8 d9 4a 00 00       	call   c0036a70 <strlen>
c0031f97:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
c0031f9d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031fa0:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0031fa4:	74 0b                	je     c0031fb1 <_svfprintf_r+0x41>
c0031fa6:	8b 40 10             	mov    0x10(%eax),%eax
c0031fa9:	85 c0                	test   %eax,%eax
c0031fab:	0f 84 62 18 00 00    	je     c0033813 <_svfprintf_r+0x18a3>
c0031fb1:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0031fb4:	8d 55 a7             	lea    -0x59(%ebp),%edx
c0031fb7:	89 c7                	mov    %eax,%edi
c0031fb9:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c0031fbf:	d9 ee                	fldz   
c0031fc1:	29 d0                	sub    %edx,%eax
c0031fc3:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c0031fca:	00 00 00 
c0031fcd:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0031fd3:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0031fda:	00 00 00 
c0031fdd:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
c0031fe4:	00 00 00 
c0031fe7:	c7 85 18 ff ff ff 00 	movl   $0x0,-0xe8(%ebp)
c0031fee:	00 00 00 
c0031ff1:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
c0031ff8:	00 00 00 
c0031ffb:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%ebp)
c0032002:	00 00 00 
c0032005:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
c003200b:	8b 45 10             	mov    0x10(%ebp),%eax
c003200e:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0032011:	0f b6 00             	movzbl (%eax),%eax
c0032014:	3c 25                	cmp    $0x25,%al
c0032016:	74 4d                	je     c0032065 <_svfprintf_r+0xf5>
c0032018:	84 c0                	test   %al,%al
c003201a:	75 08                	jne    c0032024 <_svfprintf_r+0xb4>
c003201c:	eb 47                	jmp    c0032065 <_svfprintf_r+0xf5>
c003201e:	66 90                	xchg   %ax,%ax
c0032020:	84 c0                	test   %al,%al
c0032022:	74 0a                	je     c003202e <_svfprintf_r+0xbe>
c0032024:	83 c3 01             	add    $0x1,%ebx
c0032027:	0f b6 03             	movzbl (%ebx),%eax
c003202a:	3c 25                	cmp    $0x25,%al
c003202c:	75 f2                	jne    c0032020 <_svfprintf_r+0xb0>
c003202e:	89 de                	mov    %ebx,%esi
c0032030:	2b 75 10             	sub    0x10(%ebp),%esi
c0032033:	74 30                	je     c0032065 <_svfprintf_r+0xf5>
c0032035:	8b 45 10             	mov    0x10(%ebp),%eax
c0032038:	83 c7 08             	add    $0x8,%edi
c003203b:	89 77 fc             	mov    %esi,-0x4(%edi)
c003203e:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
c0032044:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032047:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003204d:	83 c0 01             	add    $0x1,%eax
c0032050:	83 f8 07             	cmp    $0x7,%eax
c0032053:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032059:	0f 8f 91 00 00 00    	jg     c00320f0 <_svfprintf_r+0x180>
c003205f:	01 b5 34 ff ff ff    	add    %esi,-0xcc(%ebp)
c0032065:	80 3b 00             	cmpb   $0x0,(%ebx)
c0032068:	0f 84 aa 00 00 00    	je     c0032118 <_svfprintf_r+0x1a8>
c003206e:	8d 43 01             	lea    0x1(%ebx),%eax
c0032071:	be 20 00 00 00       	mov    $0x20,%esi
c0032076:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003207d:	31 db                	xor    %ebx,%ebx
c003207f:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c0032086:	ff ff ff 
c0032089:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c0032090:	00 00 00 
c0032093:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
c003209a:	00 00 00 
c003209d:	8d 48 01             	lea    0x1(%eax),%ecx
c00320a0:	0f be 00             	movsbl (%eax),%eax
c00320a3:	8d 50 e0             	lea    -0x20(%eax),%edx
c00320a6:	83 fa 58             	cmp    $0x58,%edx
c00320a9:	0f 87 8f 07 00 00    	ja     c003283e <_svfprintf_r+0x8ce>
c00320af:	ff 24 95 c0 8f 03 c0 	jmp    *-0x3ffc7040(,%edx,4)
c00320b6:	66 90                	xchg   %ax,%ax
c00320b8:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c00320bf:	89 c8                	mov    %ecx,%eax
c00320c1:	eb da                	jmp    c003209d <_svfprintf_r+0x12d>
c00320c3:	8b 45 14             	mov    0x14(%ebp),%eax
c00320c6:	8b 55 14             	mov    0x14(%ebp),%edx
c00320c9:	8b 00                	mov    (%eax),%eax
c00320cb:	83 c2 04             	add    $0x4,%edx
c00320ce:	89 55 14             	mov    %edx,0x14(%ebp)
c00320d1:	85 c0                	test   %eax,%eax
c00320d3:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
c00320d9:	79 e4                	jns    c00320bf <_svfprintf_r+0x14f>
c00320db:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
c00320e1:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
c00320e8:	89 c8                	mov    %ecx,%eax
c00320ea:	eb b1                	jmp    c003209d <_svfprintf_r+0x12d>
c00320ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00320f0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00320f6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00320fa:	8b 45 0c             	mov    0xc(%ebp),%eax
c00320fd:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032101:	8b 45 08             	mov    0x8(%ebp),%eax
c0032104:	89 04 24             	mov    %eax,(%esp)
c0032107:	e8 e4 49 00 00       	call   c0036af0 <__ssprint_r>
c003210c:	85 c0                	test   %eax,%eax
c003210e:	75 30                	jne    c0032140 <_svfprintf_r+0x1d0>
c0032110:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032113:	e9 47 ff ff ff       	jmp    c003205f <_svfprintf_r+0xef>
c0032118:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c003211e:	85 c0                	test   %eax,%eax
c0032120:	74 1e                	je     c0032140 <_svfprintf_r+0x1d0>
c0032122:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032128:	89 44 24 08          	mov    %eax,0x8(%esp)
c003212c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003212f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032133:	8b 45 08             	mov    0x8(%ebp),%eax
c0032136:	89 04 24             	mov    %eax,(%esp)
c0032139:	e8 b2 49 00 00       	call   c0036af0 <__ssprint_r>
c003213e:	66 90                	xchg   %ax,%ax
c0032140:	8b 55 0c             	mov    0xc(%ebp),%edx
c0032143:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0032148:	f6 42 0c 40          	testb  $0x40,0xc(%edx)
c003214c:	0f 44 85 34 ff ff ff 	cmove  -0xcc(%ebp),%eax
c0032153:	81 c4 1c 01 00 00    	add    $0x11c,%esp
c0032159:	5b                   	pop    %ebx
c003215a:	5e                   	pop    %esi
c003215b:	5f                   	pop    %edi
c003215c:	5d                   	pop    %ebp
c003215d:	c3                   	ret    
c003215e:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c0032163:	89 c8                	mov    %ecx,%eax
c0032165:	e9 33 ff ff ff       	jmp    c003209d <_svfprintf_r+0x12d>
c003216a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032170:	8b 45 14             	mov    0x14(%ebp),%eax
c0032173:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032176:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003217d:	8d 70 04             	lea    0x4(%eax),%esi
c0032180:	8b 00                	mov    (%eax),%eax
c0032182:	85 c0                	test   %eax,%eax
c0032184:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c003218a:	0f 84 7f 18 00 00    	je     c0033a0f <_svfprintf_r+0x1a9f>
c0032190:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0032196:	85 c0                	test   %eax,%eax
c0032198:	0f 88 b6 17 00 00    	js     c0033954 <_svfprintf_r+0x19e4>
c003219e:	89 44 24 08          	mov    %eax,0x8(%esp)
c00321a2:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c00321a8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00321af:	00 
c00321b0:	89 04 24             	mov    %eax,(%esp)
c00321b3:	e8 f8 38 00 00       	call   c0035ab0 <memchr>
c00321b8:	85 c0                	test   %eax,%eax
c00321ba:	0f 84 a0 19 00 00    	je     c0033b60 <_svfprintf_r+0x1bf0>
c00321c0:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c00321c6:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c00321cc:	39 d0                	cmp    %edx,%eax
c00321ce:	0f 4f c2             	cmovg  %edx,%eax
c00321d1:	89 c2                	mov    %eax,%edx
c00321d3:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00321da:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00321e0:	31 c0                	xor    %eax,%eax
c00321e2:	85 d2                	test   %edx,%edx
c00321e4:	0f 49 c2             	cmovns %edx,%eax
c00321e7:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00321ed:	89 75 14             	mov    %esi,0x14(%ebp)
c00321f0:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00321f7:	00 00 00 
c00321fa:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032201:	00 00 00 
c0032204:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032208:	84 db                	test   %bl,%bl
c003220a:	74 07                	je     c0032213 <_svfprintf_r+0x2a3>
c003220c:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
c0032213:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0032219:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c003221f:	89 c8                	mov    %ecx,%eax
c0032221:	89 f2                	mov    %esi,%edx
c0032223:	83 c0 02             	add    $0x2,%eax
c0032226:	83 e2 02             	and    $0x2,%edx
c0032229:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
c003222f:	89 f2                	mov    %esi,%edx
c0032231:	0f 44 c1             	cmove  %ecx,%eax
c0032234:	81 e2 84 00 00 00    	and    $0x84,%edx
c003223a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032240:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
c0032246:	0f 85 1c 06 00 00    	jne    c0032868 <_svfprintf_r+0x8f8>
c003224c:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032252:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032258:	85 f6                	test   %esi,%esi
c003225a:	0f 8e 08 06 00 00    	jle    c0032868 <_svfprintf_r+0x8f8>
c0032260:	83 fe 10             	cmp    $0x10,%esi
c0032263:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032269:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003226f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032275:	7f 11                	jg     c0032288 <_svfprintf_r+0x318>
c0032277:	eb 6b                	jmp    c00322e4 <_svfprintf_r+0x374>
c0032279:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032280:	83 ee 10             	sub    $0x10,%esi
c0032283:	83 fe 10             	cmp    $0x10,%esi
c0032286:	7e 5c                	jle    c00322e4 <_svfprintf_r+0x374>
c0032288:	83 c0 01             	add    $0x1,%eax
c003228b:	83 c1 10             	add    $0x10,%ecx
c003228e:	c7 07 34 91 03 c0    	movl   $0xc0039134,(%edi)
c0032294:	83 c7 08             	add    $0x8,%edi
c0032297:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003229e:	83 f8 07             	cmp    $0x7,%eax
c00322a1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00322a7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00322ad:	7e d1                	jle    c0032280 <_svfprintf_r+0x310>
c00322af:	8b 45 0c             	mov    0xc(%ebp),%eax
c00322b2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00322b6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00322ba:	8b 45 08             	mov    0x8(%ebp),%eax
c00322bd:	89 04 24             	mov    %eax,(%esp)
c00322c0:	e8 2b 48 00 00       	call   c0036af0 <__ssprint_r>
c00322c5:	85 c0                	test   %eax,%eax
c00322c7:	0f 85 73 fe ff ff    	jne    c0032140 <_svfprintf_r+0x1d0>
c00322cd:	83 ee 10             	sub    $0x10,%esi
c00322d0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00322d6:	83 fe 10             	cmp    $0x10,%esi
c00322d9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00322df:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00322e2:	7f a4                	jg     c0032288 <_svfprintf_r+0x318>
c00322e4:	83 c0 01             	add    $0x1,%eax
c00322e7:	01 f1                	add    %esi,%ecx
c00322e9:	83 f8 07             	cmp    $0x7,%eax
c00322ec:	c7 07 34 91 03 c0    	movl   $0xc0039134,(%edi)
c00322f2:	89 77 04             	mov    %esi,0x4(%edi)
c00322f5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00322fb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032301:	0f 8f 16 0e 00 00    	jg     c003311d <_svfprintf_r+0x11ad>
c0032307:	83 c7 08             	add    $0x8,%edi
c003230a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0032311:	e9 58 05 00 00       	jmp    c003286e <_svfprintf_r+0x8fe>
c0032316:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003231d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032323:	8b 45 14             	mov    0x14(%ebp),%eax
c0032326:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032329:	0f 85 fd 04 00 00    	jne    c003282c <_svfprintf_r+0x8bc>
c003232f:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032336:	0f 84 f0 04 00 00    	je     c003282c <_svfprintf_r+0x8bc>
c003233c:	0f b7 08             	movzwl (%eax),%ecx
c003233f:	83 c0 04             	add    $0x4,%eax
c0032342:	89 45 14             	mov    %eax,0x14(%ebp)
c0032345:	b8 01 00 00 00       	mov    $0x1,%eax
c003234a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032350:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0032357:	31 db                	xor    %ebx,%ebx
c0032359:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c003235f:	89 f2                	mov    %esi,%edx
c0032361:	80 e2 7f             	and    $0x7f,%dl
c0032364:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
c003236b:	0f 48 d6             	cmovs  %esi,%edx
c003236e:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
c0032374:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c003237a:	85 d2                	test   %edx,%edx
c003237c:	75 08                	jne    c0032386 <_svfprintf_r+0x416>
c003237e:	85 c9                	test   %ecx,%ecx
c0032380:	0f 84 ea 08 00 00    	je     c0032c70 <_svfprintf_r+0xd00>
c0032386:	3c 01                	cmp    $0x1,%al
c0032388:	0f 84 6a 0d 00 00    	je     c00330f8 <_svfprintf_r+0x1188>
c003238e:	3c 02                	cmp    $0x2,%al
c0032390:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032393:	0f 85 bf 0b 00 00    	jne    c0032f58 <_svfprintf_r+0xfe8>
c0032399:	8b b5 18 ff ff ff    	mov    -0xe8(%ebp),%esi
c003239f:	90                   	nop
c00323a0:	89 ca                	mov    %ecx,%edx
c00323a2:	83 e8 01             	sub    $0x1,%eax
c00323a5:	83 e2 0f             	and    $0xf,%edx
c00323a8:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
c00323ac:	c1 e9 04             	shr    $0x4,%ecx
c00323af:	85 c9                	test   %ecx,%ecx
c00323b1:	88 10                	mov    %dl,(%eax)
c00323b3:	75 eb                	jne    c00323a0 <_svfprintf_r+0x430>
c00323b5:	8d 55 a8             	lea    -0x58(%ebp),%edx
c00323b8:	29 c2                	sub    %eax,%edx
c00323ba:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00323c0:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c00323c6:	66 90                	xchg   %ax,%ax
c00323c8:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00323ce:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
c00323d4:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00323db:	00 00 00 
c00323de:	39 c2                	cmp    %eax,%edx
c00323e0:	0f 4d c2             	cmovge %edx,%eax
c00323e3:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00323e9:	e9 1a fe ff ff       	jmp    c0032208 <_svfprintf_r+0x298>
c00323ee:	84 db                	test   %bl,%bl
c00323f0:	89 c8                	mov    %ecx,%eax
c00323f2:	0f 44 de             	cmove  %esi,%ebx
c00323f5:	e9 a3 fc ff ff       	jmp    c003209d <_svfprintf_r+0x12d>
c00323fa:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
c0032401:	89 c8                	mov    %ecx,%eax
c0032403:	e9 95 fc ff ff       	jmp    c003209d <_svfprintf_r+0x12d>
c0032408:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
c003240f:	00 00 00 
c0032412:	89 c8                	mov    %ecx,%eax
c0032414:	e9 84 fc ff ff       	jmp    c003209d <_svfprintf_r+0x12d>
c0032419:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c003241f:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032422:	31 ff                	xor    %edi,%edi
c0032424:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c003242b:	00 00 00 
c003242e:	66 90                	xchg   %ax,%ax
c0032430:	8d 04 bf             	lea    (%edi,%edi,4),%eax
c0032433:	83 c1 01             	add    $0x1,%ecx
c0032436:	8d 3c 42             	lea    (%edx,%eax,2),%edi
c0032439:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
c003243d:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032440:	83 fa 09             	cmp    $0x9,%edx
c0032443:	76 eb                	jbe    c0032430 <_svfprintf_r+0x4c0>
c0032445:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
c003244b:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0032451:	e9 4d fc ff ff       	jmp    c00320a3 <_svfprintf_r+0x133>
c0032456:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c003245d:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032464:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003246a:	8b 45 14             	mov    0x14(%ebp),%eax
c003246d:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032470:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032476:	0f 85 61 02 00 00    	jne    c00326dd <_svfprintf_r+0x76d>
c003247c:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032483:	0f 84 54 02 00 00    	je     c00326dd <_svfprintf_r+0x76d>
c0032489:	0f bf 08             	movswl (%eax),%ecx
c003248c:	83 c0 04             	add    $0x4,%eax
c003248f:	89 45 14             	mov    %eax,0x14(%ebp)
c0032492:	85 c9                	test   %ecx,%ecx
c0032494:	0f 88 53 02 00 00    	js     c00326ed <_svfprintf_r+0x77d>
c003249a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00324a1:	b8 01 00 00 00       	mov    $0x1,%eax
c00324a6:	e9 ae fe ff ff       	jmp    c0032359 <_svfprintf_r+0x3e9>
c00324ab:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
c00324b2:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00324b8:	8b 45 14             	mov    0x14(%ebp),%eax
c00324bb:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00324be:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00324c4:	0f 84 15 10 00 00    	je     c00334df <_svfprintf_r+0x156f>
c00324ca:	db 28                	fldt   (%eax)
c00324cc:	83 c0 0c             	add    $0xc,%eax
c00324cf:	89 45 14             	mov    %eax,0x14(%ebp)
c00324d2:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c00324d8:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00324de:	dd 1c 24             	fstpl  (%esp)
c00324e1:	e8 aa 44 00 00       	call   c0036990 <__fpclassifyd>
c00324e6:	83 f8 01             	cmp    $0x1,%eax
c00324e9:	0f 85 82 0f 00 00    	jne    c0033471 <_svfprintf_r+0x1501>
c00324ef:	d9 ee                	fldz   
c00324f1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00324f7:	d9 c9                	fxch   %st(1)
c00324f9:	df e9                	fucomip %st(1),%st
c00324fb:	dd d8                	fstp   %st(0)
c00324fd:	0f 87 59 15 00 00    	ja     c0033a5c <_svfprintf_r+0x1aec>
c0032503:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003250a:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c0032511:	ba 82 8f 03 c0       	mov    $0xc0038f82,%edx
c0032516:	b8 86 8f 03 c0       	mov    $0xc0038f86,%eax
c003251b:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0032522:	00 00 00 
c0032525:	0f 4e c2             	cmovle %edx,%eax
c0032528:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c003252e:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0032535:	ff ff ff 
c0032538:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c003253f:	00 00 00 
c0032542:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032549:	00 00 00 
c003254c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032553:	00 00 00 
c0032556:	e9 ad fc ff ff       	jmp    c0032208 <_svfprintf_r+0x298>
c003255b:	8d 41 01             	lea    0x1(%ecx),%eax
c003255e:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032564:	0f be 01             	movsbl (%ecx),%eax
c0032567:	83 f8 2a             	cmp    $0x2a,%eax
c003256a:	0f 84 84 18 00 00    	je     c0033df4 <_svfprintf_r+0x1e84>
c0032570:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032573:	31 c9                	xor    %ecx,%ecx
c0032575:	83 fa 09             	cmp    $0x9,%edx
c0032578:	0f 87 a8 16 00 00    	ja     c0033c26 <_svfprintf_r+0x1cb6>
c003257e:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
c0032584:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c003258a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032590:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
c0032593:	83 c7 01             	add    $0x1,%edi
c0032596:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
c0032599:	0f be 47 ff          	movsbl -0x1(%edi),%eax
c003259d:	8d 50 d0             	lea    -0x30(%eax),%edx
c00325a0:	83 fa 09             	cmp    $0x9,%edx
c00325a3:	76 eb                	jbe    c0032590 <_svfprintf_r+0x620>
c00325a5:	85 c9                	test   %ecx,%ecx
c00325a7:	89 ca                	mov    %ecx,%edx
c00325a9:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c00325ae:	0f 48 d1             	cmovs  %ecx,%edx
c00325b1:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c00325b7:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
c00325bd:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c00325c3:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c00325c9:	e9 d5 fa ff ff       	jmp    c00320a3 <_svfprintf_r+0x133>
c00325ce:	8b 45 14             	mov    0x14(%ebp),%eax
c00325d1:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00325d4:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c00325db:	8b 08                	mov    (%eax),%ecx
c00325dd:	83 c0 04             	add    $0x4,%eax
c00325e0:	89 45 14             	mov    %eax,0x14(%ebp)
c00325e3:	b8 02 00 00 00       	mov    $0x2,%eax
c00325e8:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c00325ef:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
c00325f6:	c7 85 18 ff ff ff a3 	movl   $0xc0038fa3,-0xe8(%ebp)
c00325fd:	8f 03 c0 
c0032600:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
c0032607:	00 00 00 
c003260a:	e9 41 fd ff ff       	jmp    c0032350 <_svfprintf_r+0x3e0>
c003260f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032616:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003261c:	8b 45 14             	mov    0x14(%ebp),%eax
c003261f:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032622:	0f 85 87 00 00 00    	jne    c00326af <_svfprintf_r+0x73f>
c0032628:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003262f:	74 7e                	je     c00326af <_svfprintf_r+0x73f>
c0032631:	0f b7 08             	movzwl (%eax),%ecx
c0032634:	83 c0 04             	add    $0x4,%eax
c0032637:	89 45 14             	mov    %eax,0x14(%ebp)
c003263a:	31 c0                	xor    %eax,%eax
c003263c:	e9 0f fd ff ff       	jmp    c0032350 <_svfprintf_r+0x3e0>
c0032641:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
c0032648:	89 c8                	mov    %ecx,%eax
c003264a:	e9 4e fa ff ff       	jmp    c003209d <_svfprintf_r+0x12d>
c003264f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032656:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032659:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003265f:	0f 85 97 0b 00 00    	jne    c00331fc <_svfprintf_r+0x128c>
c0032665:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003266c:	0f 84 8a 0b 00 00    	je     c00331fc <_svfprintf_r+0x128c>
c0032672:	8b 45 14             	mov    0x14(%ebp),%eax
c0032675:	0f b7 95 34 ff ff ff 	movzwl -0xcc(%ebp),%edx
c003267c:	8b 00                	mov    (%eax),%eax
c003267e:	66 89 10             	mov    %dx,(%eax)
c0032681:	8b 45 14             	mov    0x14(%ebp),%eax
c0032684:	83 c0 04             	add    $0x4,%eax
c0032687:	89 45 14             	mov    %eax,0x14(%ebp)
c003268a:	e9 7c f9 ff ff       	jmp    c003200b <_svfprintf_r+0x9b>
c003268f:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0032696:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003269d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00326a3:	8b 45 14             	mov    0x14(%ebp),%eax
c00326a6:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00326a9:	0f 84 79 ff ff ff    	je     c0032628 <_svfprintf_r+0x6b8>
c00326af:	8b 08                	mov    (%eax),%ecx
c00326b1:	83 c0 04             	add    $0x4,%eax
c00326b4:	89 45 14             	mov    %eax,0x14(%ebp)
c00326b7:	31 c0                	xor    %eax,%eax
c00326b9:	e9 92 fc ff ff       	jmp    c0032350 <_svfprintf_r+0x3e0>
c00326be:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00326c5:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00326cb:	8b 45 14             	mov    0x14(%ebp),%eax
c00326ce:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00326d1:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00326d7:	0f 84 9f fd ff ff    	je     c003247c <_svfprintf_r+0x50c>
c00326dd:	8b 08                	mov    (%eax),%ecx
c00326df:	83 c0 04             	add    $0x4,%eax
c00326e2:	89 45 14             	mov    %eax,0x14(%ebp)
c00326e5:	85 c9                	test   %ecx,%ecx
c00326e7:	0f 89 ad fd ff ff    	jns    c003249a <_svfprintf_r+0x52a>
c00326ed:	f7 d9                	neg    %ecx
c00326ef:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c00326f4:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c00326fb:	b8 01 00 00 00       	mov    $0x1,%eax
c0032700:	e9 54 fc ff ff       	jmp    c0032359 <_svfprintf_r+0x3e9>
c0032705:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
c003270c:	89 c8                	mov    %ecx,%eax
c003270e:	e9 8a f9 ff ff       	jmp    c003209d <_svfprintf_r+0x12d>
c0032713:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003271a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032720:	8b 45 14             	mov    0x14(%ebp),%eax
c0032723:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032726:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003272c:	c7 85 18 ff ff ff a3 	movl   $0xc0038fa3,-0xe8(%ebp)
c0032733:	8f 03 c0 
c0032736:	75 71                	jne    c00327a9 <_svfprintf_r+0x839>
c0032738:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003273f:	74 68                	je     c00327a9 <_svfprintf_r+0x839>
c0032741:	0f b7 08             	movzwl (%eax),%ecx
c0032744:	83 c0 04             	add    $0x4,%eax
c0032747:	89 45 14             	mov    %eax,0x14(%ebp)
c003274a:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032751:	b8 02 00 00 00       	mov    $0x2,%eax
c0032756:	0f 84 f4 fb ff ff    	je     c0032350 <_svfprintf_r+0x3e0>
c003275c:	85 c9                	test   %ecx,%ecx
c003275e:	0f 84 ec fb ff ff    	je     c0032350 <_svfprintf_r+0x3e0>
c0032764:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
c003276b:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c0032772:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c0032779:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
c003277f:	e9 cc fb ff ff       	jmp    c0032350 <_svfprintf_r+0x3e0>
c0032784:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003278b:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032791:	8b 45 14             	mov    0x14(%ebp),%eax
c0032794:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032797:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003279d:	c7 85 18 ff ff ff 92 	movl   $0xc0038f92,-0xe8(%ebp)
c00327a4:	8f 03 c0 
c00327a7:	74 8f                	je     c0032738 <_svfprintf_r+0x7c8>
c00327a9:	8b 08                	mov    (%eax),%ecx
c00327ab:	83 c0 04             	add    $0x4,%eax
c00327ae:	89 45 14             	mov    %eax,0x14(%ebp)
c00327b1:	eb 97                	jmp    c003274a <_svfprintf_r+0x7da>
c00327b3:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00327b9:	8b 45 14             	mov    0x14(%ebp),%eax
c00327bc:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00327bf:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c00327c6:	8b 00                	mov    (%eax),%eax
c00327c8:	88 45 80             	mov    %al,-0x80(%ebp)
c00327cb:	8b 45 14             	mov    0x14(%ebp),%eax
c00327ce:	83 c0 04             	add    $0x4,%eax
c00327d1:	89 45 14             	mov    %eax,0x14(%ebp)
c00327d4:	8d 45 80             	lea    -0x80(%ebp),%eax
c00327d7:	31 db                	xor    %ebx,%ebx
c00327d9:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
c00327e0:	00 00 00 
c00327e3:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c00327ea:	00 00 00 
c00327ed:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00327f4:	00 00 00 
c00327f7:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00327fe:	00 00 00 
c0032801:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032807:	e9 07 fa ff ff       	jmp    c0032213 <_svfprintf_r+0x2a3>
c003280c:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0032813:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003281a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032820:	8b 45 14             	mov    0x14(%ebp),%eax
c0032823:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032826:	0f 84 03 fb ff ff    	je     c003232f <_svfprintf_r+0x3bf>
c003282c:	8b 08                	mov    (%eax),%ecx
c003282e:	83 c0 04             	add    $0x4,%eax
c0032831:	89 45 14             	mov    %eax,0x14(%ebp)
c0032834:	b8 01 00 00 00       	mov    $0x1,%eax
c0032839:	e9 12 fb ff ff       	jmp    c0032350 <_svfprintf_r+0x3e0>
c003283e:	85 c0                	test   %eax,%eax
c0032840:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032846:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032849:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003284f:	0f 84 c3 f8 ff ff    	je     c0032118 <_svfprintf_r+0x1a8>
c0032855:	88 45 80             	mov    %al,-0x80(%ebp)
c0032858:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003285f:	e9 70 ff ff ff       	jmp    c00327d4 <_svfprintf_r+0x864>
c0032864:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032868:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003286e:	84 db                	test   %bl,%bl
c0032870:	74 33                	je     c00328a5 <_svfprintf_r+0x935>
c0032872:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
c0032878:	83 c1 01             	add    $0x1,%ecx
c003287b:	89 07                	mov    %eax,(%edi)
c003287d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032883:	83 c7 08             	add    $0x8,%edi
c0032886:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c003288d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032893:	83 c0 01             	add    $0x1,%eax
c0032896:	83 f8 07             	cmp    $0x7,%eax
c0032899:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003289f:	0f 8f 7b 06 00 00    	jg     c0032f20 <_svfprintf_r+0xfb0>
c00328a5:	8b 9d 30 ff ff ff    	mov    -0xd0(%ebp),%ebx
c00328ab:	85 db                	test   %ebx,%ebx
c00328ad:	74 33                	je     c00328e2 <_svfprintf_r+0x972>
c00328af:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
c00328b5:	83 c1 02             	add    $0x2,%ecx
c00328b8:	89 07                	mov    %eax,(%edi)
c00328ba:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00328c0:	83 c7 08             	add    $0x8,%edi
c00328c3:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
c00328ca:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00328d0:	83 c0 01             	add    $0x1,%eax
c00328d3:	83 f8 07             	cmp    $0x7,%eax
c00328d6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00328dc:	0f 8f 06 06 00 00    	jg     c0032ee8 <_svfprintf_r+0xf78>
c00328e2:	81 bd 2c ff ff ff 80 	cmpl   $0x80,-0xd4(%ebp)
c00328e9:	00 00 00 
c00328ec:	0f 84 c6 03 00 00    	je     c0032cb8 <_svfprintf_r+0xd48>
c00328f2:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c00328f8:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
c00328fe:	85 f6                	test   %esi,%esi
c0032900:	0f 8e d2 00 00 00    	jle    c00329d8 <_svfprintf_r+0xa68>
c0032906:	83 fe 10             	cmp    $0x10,%esi
c0032909:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003290f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032915:	7f 11                	jg     c0032928 <_svfprintf_r+0x9b8>
c0032917:	eb 6b                	jmp    c0032984 <_svfprintf_r+0xa14>
c0032919:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032920:	83 ee 10             	sub    $0x10,%esi
c0032923:	83 fe 10             	cmp    $0x10,%esi
c0032926:	7e 5c                	jle    c0032984 <_svfprintf_r+0xa14>
c0032928:	83 c0 01             	add    $0x1,%eax
c003292b:	83 c1 10             	add    $0x10,%ecx
c003292e:	c7 07 24 91 03 c0    	movl   $0xc0039124,(%edi)
c0032934:	83 c7 08             	add    $0x8,%edi
c0032937:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003293e:	83 f8 07             	cmp    $0x7,%eax
c0032941:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032947:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003294d:	7e d1                	jle    c0032920 <_svfprintf_r+0x9b0>
c003294f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032952:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032956:	89 44 24 04          	mov    %eax,0x4(%esp)
c003295a:	8b 45 08             	mov    0x8(%ebp),%eax
c003295d:	89 04 24             	mov    %eax,(%esp)
c0032960:	e8 8b 41 00 00       	call   c0036af0 <__ssprint_r>
c0032965:	85 c0                	test   %eax,%eax
c0032967:	0f 85 d3 f7 ff ff    	jne    c0032140 <_svfprintf_r+0x1d0>
c003296d:	83 ee 10             	sub    $0x10,%esi
c0032970:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032976:	83 fe 10             	cmp    $0x10,%esi
c0032979:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003297f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032982:	7f a4                	jg     c0032928 <_svfprintf_r+0x9b8>
c0032984:	83 c0 01             	add    $0x1,%eax
c0032987:	01 f1                	add    %esi,%ecx
c0032989:	c7 07 24 91 03 c0    	movl   $0xc0039124,(%edi)
c003298f:	83 c7 08             	add    $0x8,%edi
c0032992:	89 77 fc             	mov    %esi,-0x4(%edi)
c0032995:	83 f8 07             	cmp    $0x7,%eax
c0032998:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003299e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00329a4:	7e 32                	jle    c00329d8 <_svfprintf_r+0xa68>
c00329a6:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00329ac:	89 44 24 08          	mov    %eax,0x8(%esp)
c00329b0:	8b 45 0c             	mov    0xc(%ebp),%eax
c00329b3:	89 44 24 04          	mov    %eax,0x4(%esp)
c00329b7:	8b 45 08             	mov    0x8(%ebp),%eax
c00329ba:	89 04 24             	mov    %eax,(%esp)
c00329bd:	e8 2e 41 00 00       	call   c0036af0 <__ssprint_r>
c00329c2:	85 c0                	test   %eax,%eax
c00329c4:	0f 85 76 f7 ff ff    	jne    c0032140 <_svfprintf_r+0x1d0>
c00329ca:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00329d0:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00329d3:	90                   	nop
c00329d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00329d8:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
c00329df:	01 00 00 
c00329e2:	0f 85 50 01 00 00    	jne    c0032b38 <_svfprintf_r+0xbc8>
c00329e8:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c00329ee:	89 07                	mov    %eax,(%edi)
c00329f0:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
c00329f6:	01 c1                	add    %eax,%ecx
c00329f8:	89 47 04             	mov    %eax,0x4(%edi)
c00329fb:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032a01:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032a07:	83 c0 01             	add    $0x1,%eax
c0032a0a:	83 f8 07             	cmp    $0x7,%eax
c0032a0d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032a13:	0f 8f 6a 04 00 00    	jg     c0032e83 <_svfprintf_r+0xf13>
c0032a19:	83 c7 08             	add    $0x8,%edi
c0032a1c:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
c0032a23:	0f 84 d7 00 00 00    	je     c0032b00 <_svfprintf_r+0xb90>
c0032a29:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032a2f:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032a35:	85 f6                	test   %esi,%esi
c0032a37:	0f 8e c3 00 00 00    	jle    c0032b00 <_svfprintf_r+0xb90>
c0032a3d:	83 fe 10             	cmp    $0x10,%esi
c0032a40:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032a46:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032a4c:	7f 0a                	jg     c0032a58 <_svfprintf_r+0xae8>
c0032a4e:	eb 64                	jmp    c0032ab4 <_svfprintf_r+0xb44>
c0032a50:	83 ee 10             	sub    $0x10,%esi
c0032a53:	83 fe 10             	cmp    $0x10,%esi
c0032a56:	7e 5c                	jle    c0032ab4 <_svfprintf_r+0xb44>
c0032a58:	83 c0 01             	add    $0x1,%eax
c0032a5b:	83 c1 10             	add    $0x10,%ecx
c0032a5e:	c7 07 34 91 03 c0    	movl   $0xc0039134,(%edi)
c0032a64:	83 c7 08             	add    $0x8,%edi
c0032a67:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032a6e:	83 f8 07             	cmp    $0x7,%eax
c0032a71:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032a77:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032a7d:	7e d1                	jle    c0032a50 <_svfprintf_r+0xae0>
c0032a7f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032a82:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032a86:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032a8a:	8b 45 08             	mov    0x8(%ebp),%eax
c0032a8d:	89 04 24             	mov    %eax,(%esp)
c0032a90:	e8 5b 40 00 00       	call   c0036af0 <__ssprint_r>
c0032a95:	85 c0                	test   %eax,%eax
c0032a97:	0f 85 a3 f6 ff ff    	jne    c0032140 <_svfprintf_r+0x1d0>
c0032a9d:	83 ee 10             	sub    $0x10,%esi
c0032aa0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032aa6:	83 fe 10             	cmp    $0x10,%esi
c0032aa9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032aaf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032ab2:	7f a4                	jg     c0032a58 <_svfprintf_r+0xae8>
c0032ab4:	83 c0 01             	add    $0x1,%eax
c0032ab7:	01 f1                	add    %esi,%ecx
c0032ab9:	83 f8 07             	cmp    $0x7,%eax
c0032abc:	c7 07 34 91 03 c0    	movl   $0xc0039134,(%edi)
c0032ac2:	89 77 04             	mov    %esi,0x4(%edi)
c0032ac5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032acb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032ad1:	7e 2d                	jle    c0032b00 <_svfprintf_r+0xb90>
c0032ad3:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032ad9:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032add:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032ae0:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032ae4:	8b 45 08             	mov    0x8(%ebp),%eax
c0032ae7:	89 04 24             	mov    %eax,(%esp)
c0032aea:	e8 01 40 00 00       	call   c0036af0 <__ssprint_r>
c0032aef:	85 c0                	test   %eax,%eax
c0032af1:	0f 85 49 f6 ff ff    	jne    c0032140 <_svfprintf_r+0x1d0>
c0032af7:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032afd:	8d 76 00             	lea    0x0(%esi),%esi
c0032b00:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
c0032b06:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
c0032b0c:	39 c2                	cmp    %eax,%edx
c0032b0e:	0f 4d c2             	cmovge %edx,%eax
c0032b11:	01 85 34 ff ff ff    	add    %eax,-0xcc(%ebp)
c0032b17:	85 c9                	test   %ecx,%ecx
c0032b19:	0f 85 99 03 00 00    	jne    c0032eb8 <_svfprintf_r+0xf48>
c0032b1f:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0032b26:	00 00 00 
c0032b29:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032b2c:	e9 da f4 ff ff       	jmp    c003200b <_svfprintf_r+0x9b>
c0032b31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032b38:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c0032b3f:	0f 8e 5b 02 00 00    	jle    c0032da0 <_svfprintf_r+0xe30>
c0032b45:	d9 ee                	fldz   
c0032b47:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032b4d:	df e9                	fucomip %st(1),%st
c0032b4f:	dd d8                	fstp   %st(0)
c0032b51:	0f 8a 59 04 00 00    	jp     c0032fb0 <_svfprintf_r+0x1040>
c0032b57:	0f 85 53 04 00 00    	jne    c0032fb0 <_svfprintf_r+0x1040>
c0032b5d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032b63:	83 c1 01             	add    $0x1,%ecx
c0032b66:	83 c7 08             	add    $0x8,%edi
c0032b69:	c7 47 f8 bb 8f 03 c0 	movl   $0xc0038fbb,-0x8(%edi)
c0032b70:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0032b77:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032b7d:	83 c0 01             	add    $0x1,%eax
c0032b80:	83 f8 07             	cmp    $0x7,%eax
c0032b83:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032b89:	0f 8f 63 09 00 00    	jg     c00334f2 <_svfprintf_r+0x1582>
c0032b8f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032b95:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
c0032b9b:	7c 0d                	jl     c0032baa <_svfprintf_r+0xc3a>
c0032b9d:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032ba4:	0f 84 72 fe ff ff    	je     c0032a1c <_svfprintf_r+0xaac>
c0032baa:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0032bb0:	83 c7 08             	add    $0x8,%edi
c0032bb3:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032bb6:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0032bbc:	89 47 fc             	mov    %eax,-0x4(%edi)
c0032bbf:	01 c1                	add    %eax,%ecx
c0032bc1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032bc7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032bcd:	83 c0 01             	add    $0x1,%eax
c0032bd0:	83 f8 07             	cmp    $0x7,%eax
c0032bd3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032bd9:	0f 8f dc 0b 00 00    	jg     c00337bb <_svfprintf_r+0x184b>
c0032bdf:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032be5:	8d 70 ff             	lea    -0x1(%eax),%esi
c0032be8:	85 f6                	test   %esi,%esi
c0032bea:	0f 8e 2c fe ff ff    	jle    c0032a1c <_svfprintf_r+0xaac>
c0032bf0:	83 fe 10             	cmp    $0x10,%esi
c0032bf3:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032bf9:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032bff:	7f 13                	jg     c0032c14 <_svfprintf_r+0xca4>
c0032c01:	e9 e6 05 00 00       	jmp    c00331ec <_svfprintf_r+0x127c>
c0032c06:	66 90                	xchg   %ax,%ax
c0032c08:	83 ee 10             	sub    $0x10,%esi
c0032c0b:	83 fe 10             	cmp    $0x10,%esi
c0032c0e:	0f 8e d8 05 00 00    	jle    c00331ec <_svfprintf_r+0x127c>
c0032c14:	83 c0 01             	add    $0x1,%eax
c0032c17:	83 c1 10             	add    $0x10,%ecx
c0032c1a:	c7 07 24 91 03 c0    	movl   $0xc0039124,(%edi)
c0032c20:	83 c7 08             	add    $0x8,%edi
c0032c23:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032c2a:	83 f8 07             	cmp    $0x7,%eax
c0032c2d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032c33:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032c39:	7e cd                	jle    c0032c08 <_svfprintf_r+0xc98>
c0032c3b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032c3e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032c42:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032c46:	8b 45 08             	mov    0x8(%ebp),%eax
c0032c49:	89 04 24             	mov    %eax,(%esp)
c0032c4c:	e8 9f 3e 00 00       	call   c0036af0 <__ssprint_r>
c0032c51:	85 c0                	test   %eax,%eax
c0032c53:	0f 85 e7 f4 ff ff    	jne    c0032140 <_svfprintf_r+0x1d0>
c0032c59:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032c5f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032c62:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032c68:	eb 9e                	jmp    c0032c08 <_svfprintf_r+0xc98>
c0032c6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032c70:	84 c0                	test   %al,%al
c0032c72:	75 2c                	jne    c0032ca0 <_svfprintf_r+0xd30>
c0032c74:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032c7b:	74 23                	je     c0032ca0 <_svfprintf_r+0xd30>
c0032c7d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0032c83:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0032c87:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032c8d:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0032c90:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032c96:	e9 2d f7 ff ff       	jmp    c00323c8 <_svfprintf_r+0x458>
c0032c9b:	90                   	nop
c0032c9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032ca0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032ca3:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
c0032caa:	00 00 00 
c0032cad:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032cb3:	e9 10 f7 ff ff       	jmp    c00323c8 <_svfprintf_r+0x458>
c0032cb8:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032cbe:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032cc4:	85 f6                	test   %esi,%esi
c0032cc6:	0f 8e 26 fc ff ff    	jle    c00328f2 <_svfprintf_r+0x982>
c0032ccc:	83 fe 10             	cmp    $0x10,%esi
c0032ccf:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032cd5:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032cdb:	7f 0b                	jg     c0032ce8 <_svfprintf_r+0xd78>
c0032cdd:	eb 65                	jmp    c0032d44 <_svfprintf_r+0xdd4>
c0032cdf:	90                   	nop
c0032ce0:	83 ee 10             	sub    $0x10,%esi
c0032ce3:	83 fe 10             	cmp    $0x10,%esi
c0032ce6:	7e 5c                	jle    c0032d44 <_svfprintf_r+0xdd4>
c0032ce8:	83 c0 01             	add    $0x1,%eax
c0032ceb:	83 c1 10             	add    $0x10,%ecx
c0032cee:	c7 07 24 91 03 c0    	movl   $0xc0039124,(%edi)
c0032cf4:	83 c7 08             	add    $0x8,%edi
c0032cf7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032cfe:	83 f8 07             	cmp    $0x7,%eax
c0032d01:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032d07:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032d0d:	7e d1                	jle    c0032ce0 <_svfprintf_r+0xd70>
c0032d0f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032d12:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032d16:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032d1a:	8b 45 08             	mov    0x8(%ebp),%eax
c0032d1d:	89 04 24             	mov    %eax,(%esp)
c0032d20:	e8 cb 3d 00 00       	call   c0036af0 <__ssprint_r>
c0032d25:	85 c0                	test   %eax,%eax
c0032d27:	0f 85 13 f4 ff ff    	jne    c0032140 <_svfprintf_r+0x1d0>
c0032d2d:	83 ee 10             	sub    $0x10,%esi
c0032d30:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032d36:	83 fe 10             	cmp    $0x10,%esi
c0032d39:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032d3f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032d42:	7f a4                	jg     c0032ce8 <_svfprintf_r+0xd78>
c0032d44:	83 c0 01             	add    $0x1,%eax
c0032d47:	01 f1                	add    %esi,%ecx
c0032d49:	c7 07 24 91 03 c0    	movl   $0xc0039124,(%edi)
c0032d4f:	83 c7 08             	add    $0x8,%edi
c0032d52:	89 77 fc             	mov    %esi,-0x4(%edi)
c0032d55:	83 f8 07             	cmp    $0x7,%eax
c0032d58:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032d5e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032d64:	0f 8e 88 fb ff ff    	jle    c00328f2 <_svfprintf_r+0x982>
c0032d6a:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032d70:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032d74:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032d77:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032d7b:	8b 45 08             	mov    0x8(%ebp),%eax
c0032d7e:	89 04 24             	mov    %eax,(%esp)
c0032d81:	e8 6a 3d 00 00       	call   c0036af0 <__ssprint_r>
c0032d86:	85 c0                	test   %eax,%eax
c0032d88:	0f 85 b2 f3 ff ff    	jne    c0032140 <_svfprintf_r+0x1d0>
c0032d8e:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032d94:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032d97:	e9 56 fb ff ff       	jmp    c00328f2 <_svfprintf_r+0x982>
c0032d9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032da0:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
c0032da7:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032dad:	0f 8e df 05 00 00    	jle    c0033392 <_svfprintf_r+0x1422>
c0032db3:	89 07                	mov    %eax,(%edi)
c0032db5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032dbb:	8d 51 01             	lea    0x1(%ecx),%edx
c0032dbe:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0032dc5:	83 c7 08             	add    $0x8,%edi
c0032dc8:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032dce:	83 c0 01             	add    $0x1,%eax
c0032dd1:	83 f8 07             	cmp    $0x7,%eax
c0032dd4:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032dda:	0f 8f 59 06 00 00    	jg     c0033439 <_svfprintf_r+0x14c9>
c0032de0:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
c0032de6:	83 c0 01             	add    $0x1,%eax
c0032de9:	83 c7 08             	add    $0x8,%edi
c0032dec:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032df2:	89 5f f8             	mov    %ebx,-0x8(%edi)
c0032df5:	8b 9d 08 ff ff ff    	mov    -0xf8(%ebp),%ebx
c0032dfb:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0032dfe:	01 da                	add    %ebx,%edx
c0032e00:	83 f8 07             	cmp    $0x7,%eax
c0032e03:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032e09:	0f 8f f2 05 00 00    	jg     c0033401 <_svfprintf_r+0x1491>
c0032e0f:	d9 ee                	fldz   
c0032e11:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032e17:	df e9                	fucomip %st(1),%st
c0032e19:	dd d8                	fstp   %st(0)
c0032e1b:	7a 06                	jp     c0032e23 <_svfprintf_r+0xeb3>
c0032e1d:	0f 84 33 03 00 00    	je     c0033156 <_svfprintf_r+0x11e6>
c0032e23:	8b 8d 28 ff ff ff    	mov    -0xd8(%ebp),%ecx
c0032e29:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0032e2f:	83 c1 01             	add    $0x1,%ecx
c0032e32:	89 0f                	mov    %ecx,(%edi)
c0032e34:	8d 4b ff             	lea    -0x1(%ebx),%ecx
c0032e37:	89 4f 04             	mov    %ecx,0x4(%edi)
c0032e3a:	01 ca                	add    %ecx,%edx
c0032e3c:	83 c0 01             	add    $0x1,%eax
c0032e3f:	83 f8 07             	cmp    $0x7,%eax
c0032e42:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032e48:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e4e:	0f 8f 75 05 00 00    	jg     c00333c9 <_svfprintf_r+0x1459>
c0032e54:	83 c7 08             	add    $0x8,%edi
c0032e57:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
c0032e5d:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
c0032e63:	89 0f                	mov    %ecx,(%edi)
c0032e65:	89 5f 04             	mov    %ebx,0x4(%edi)
c0032e68:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
c0032e6b:	83 c0 01             	add    $0x1,%eax
c0032e6e:	83 f8 07             	cmp    $0x7,%eax
c0032e71:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032e77:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e7d:	0f 8e 96 fb ff ff    	jle    c0032a19 <_svfprintf_r+0xaa9>
c0032e83:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032e89:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032e8d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032e90:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032e94:	8b 45 08             	mov    0x8(%ebp),%eax
c0032e97:	89 04 24             	mov    %eax,(%esp)
c0032e9a:	e8 51 3c 00 00       	call   c0036af0 <__ssprint_r>
c0032e9f:	85 c0                	test   %eax,%eax
c0032ea1:	0f 85 99 f2 ff ff    	jne    c0032140 <_svfprintf_r+0x1d0>
c0032ea7:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032ead:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032eb0:	e9 67 fb ff ff       	jmp    c0032a1c <_svfprintf_r+0xaac>
c0032eb5:	8d 76 00             	lea    0x0(%esi),%esi
c0032eb8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032ebe:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032ec2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032ec5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032ec9:	8b 45 08             	mov    0x8(%ebp),%eax
c0032ecc:	89 04 24             	mov    %eax,(%esp)
c0032ecf:	e8 1c 3c 00 00       	call   c0036af0 <__ssprint_r>
c0032ed4:	85 c0                	test   %eax,%eax
c0032ed6:	0f 84 43 fc ff ff    	je     c0032b1f <_svfprintf_r+0xbaf>
c0032edc:	e9 5f f2 ff ff       	jmp    c0032140 <_svfprintf_r+0x1d0>
c0032ee1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032ee8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032eee:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032ef2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032ef5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032ef9:	8b 45 08             	mov    0x8(%ebp),%eax
c0032efc:	89 04 24             	mov    %eax,(%esp)
c0032eff:	e8 ec 3b 00 00       	call   c0036af0 <__ssprint_r>
c0032f04:	85 c0                	test   %eax,%eax
c0032f06:	0f 85 34 f2 ff ff    	jne    c0032140 <_svfprintf_r+0x1d0>
c0032f0c:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032f12:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032f15:	e9 c8 f9 ff ff       	jmp    c00328e2 <_svfprintf_r+0x972>
c0032f1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032f20:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032f26:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032f2a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032f2d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032f31:	8b 45 08             	mov    0x8(%ebp),%eax
c0032f34:	89 04 24             	mov    %eax,(%esp)
c0032f37:	e8 b4 3b 00 00       	call   c0036af0 <__ssprint_r>
c0032f3c:	85 c0                	test   %eax,%eax
c0032f3e:	0f 85 fc f1 ff ff    	jne    c0032140 <_svfprintf_r+0x1d0>
c0032f44:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032f4a:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032f4d:	e9 53 f9 ff ff       	jmp    c00328a5 <_svfprintf_r+0x935>
c0032f52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032f58:	89 c2                	mov    %eax,%edx
c0032f5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032f60:	89 c8                	mov    %ecx,%eax
c0032f62:	83 ea 01             	sub    $0x1,%edx
c0032f65:	83 e0 07             	and    $0x7,%eax
c0032f68:	c1 e9 03             	shr    $0x3,%ecx
c0032f6b:	83 c0 30             	add    $0x30,%eax
c0032f6e:	85 c9                	test   %ecx,%ecx
c0032f70:	88 02                	mov    %al,(%edx)
c0032f72:	75 ec                	jne    c0032f60 <_svfprintf_r+0xff0>
c0032f74:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032f7b:	89 95 28 ff ff ff    	mov    %edx,-0xd8(%ebp)
c0032f81:	0f 84 5b 01 00 00    	je     c00330e2 <_svfprintf_r+0x1172>
c0032f87:	3c 30                	cmp    $0x30,%al
c0032f89:	74 0b                	je     c0032f96 <_svfprintf_r+0x1026>
c0032f8b:	83 ad 28 ff ff ff 01 	subl   $0x1,-0xd8(%ebp)
c0032f92:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0032f96:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032f99:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0032f9f:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032fa5:	e9 1e f4 ff ff       	jmp    c00323c8 <_svfprintf_r+0x458>
c0032faa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032fb0:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0032fb6:	85 db                	test   %ebx,%ebx
c0032fb8:	0f 8e 66 05 00 00    	jle    c0033524 <_svfprintf_r+0x15b4>
c0032fbe:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0032fc4:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032fca:	01 d0                	add    %edx,%eax
c0032fcc:	89 c3                	mov    %eax,%ebx
c0032fce:	29 d3                	sub    %edx,%ebx
c0032fd0:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c0032fd6:	89 d0                	mov    %edx,%eax
c0032fd8:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0032fde:	39 d3                	cmp    %edx,%ebx
c0032fe0:	0f 4f da             	cmovg  %edx,%ebx
c0032fe3:	85 db                	test   %ebx,%ebx
c0032fe5:	7e 28                	jle    c003300f <_svfprintf_r+0x109f>
c0032fe7:	89 07                	mov    %eax,(%edi)
c0032fe9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032fef:	01 d9                	add    %ebx,%ecx
c0032ff1:	89 5f 04             	mov    %ebx,0x4(%edi)
c0032ff4:	83 c7 08             	add    $0x8,%edi
c0032ff7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032ffd:	83 c0 01             	add    $0x1,%eax
c0033000:	83 f8 07             	cmp    $0x7,%eax
c0033003:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033009:	0f 8f 58 09 00 00    	jg     c0033967 <_svfprintf_r+0x19f7>
c003300f:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
c0033015:	31 c0                	xor    %eax,%eax
c0033017:	85 db                	test   %ebx,%ebx
c0033019:	0f 49 c3             	cmovns %ebx,%eax
c003301c:	29 c6                	sub    %eax,%esi
c003301e:	85 f6                	test   %esi,%esi
c0033020:	0f 8e 40 02 00 00    	jle    c0033266 <_svfprintf_r+0x12f6>
c0033026:	83 fe 10             	cmp    $0x10,%esi
c0033029:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003302f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033035:	7f 15                	jg     c003304c <_svfprintf_r+0x10dc>
c0033037:	e9 db 01 00 00       	jmp    c0033217 <_svfprintf_r+0x12a7>
c003303c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033040:	83 ee 10             	sub    $0x10,%esi
c0033043:	83 fe 10             	cmp    $0x10,%esi
c0033046:	0f 8e cb 01 00 00    	jle    c0033217 <_svfprintf_r+0x12a7>
c003304c:	83 c0 01             	add    $0x1,%eax
c003304f:	83 c1 10             	add    $0x10,%ecx
c0033052:	c7 07 24 91 03 c0    	movl   $0xc0039124,(%edi)
c0033058:	83 c7 08             	add    $0x8,%edi
c003305b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033062:	83 f8 07             	cmp    $0x7,%eax
c0033065:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003306b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033071:	7e cd                	jle    c0033040 <_svfprintf_r+0x10d0>
c0033073:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033076:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003307a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003307e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033081:	89 04 24             	mov    %eax,(%esp)
c0033084:	e8 67 3a 00 00       	call   c0036af0 <__ssprint_r>
c0033089:	85 c0                	test   %eax,%eax
c003308b:	0f 85 af f0 ff ff    	jne    c0032140 <_svfprintf_r+0x1d0>
c0033091:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033097:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003309a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00330a0:	eb 9e                	jmp    c0033040 <_svfprintf_r+0x10d0>
c00330a2:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00330a5:	be cd cc cc cc       	mov    $0xcccccccd,%esi
c00330aa:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c00330b0:	89 c7                	mov    %eax,%edi
c00330b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00330b8:	89 c8                	mov    %ecx,%eax
c00330ba:	83 ef 01             	sub    $0x1,%edi
c00330bd:	f7 e6                	mul    %esi
c00330bf:	c1 ea 03             	shr    $0x3,%edx
c00330c2:	8d 04 92             	lea    (%edx,%edx,4),%eax
c00330c5:	01 c0                	add    %eax,%eax
c00330c7:	29 c1                	sub    %eax,%ecx
c00330c9:	83 c1 30             	add    $0x30,%ecx
c00330cc:	85 d2                	test   %edx,%edx
c00330ce:	88 0f                	mov    %cl,(%edi)
c00330d0:	89 d1                	mov    %edx,%ecx
c00330d2:	75 e4                	jne    c00330b8 <_svfprintf_r+0x1148>
c00330d4:	89 fa                	mov    %edi,%edx
c00330d6:	89 bd 28 ff ff ff    	mov    %edi,-0xd8(%ebp)
c00330dc:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c00330e2:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00330e5:	29 d0                	sub    %edx,%eax
c00330e7:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00330ed:	e9 d6 f2 ff ff       	jmp    c00323c8 <_svfprintf_r+0x458>
c00330f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00330f8:	83 f9 09             	cmp    $0x9,%ecx
c00330fb:	77 a5                	ja     c00330a2 <_svfprintf_r+0x1132>
c00330fd:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0033103:	83 c1 30             	add    $0x30,%ecx
c0033106:	88 4d a7             	mov    %cl,-0x59(%ebp)
c0033109:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c003310f:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0033112:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033118:	e9 ab f2 ff ff       	jmp    c00323c8 <_svfprintf_r+0x458>
c003311d:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033123:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033127:	8b 45 0c             	mov    0xc(%ebp),%eax
c003312a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003312e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033131:	89 04 24             	mov    %eax,(%esp)
c0033134:	e8 b7 39 00 00       	call   c0036af0 <__ssprint_r>
c0033139:	85 c0                	test   %eax,%eax
c003313b:	0f 85 ff ef ff ff    	jne    c0032140 <_svfprintf_r+0x1d0>
c0033141:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033148:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003314b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033151:	e9 18 f7 ff ff       	jmp    c003286e <_svfprintf_r+0x8fe>
c0033156:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c003315c:	8d 73 ff             	lea    -0x1(%ebx),%esi
c003315f:	85 f6                	test   %esi,%esi
c0033161:	0f 8e f0 fc ff ff    	jle    c0032e57 <_svfprintf_r+0xee7>
c0033167:	83 fe 10             	cmp    $0x10,%esi
c003316a:	7e 70                	jle    c00331dc <_svfprintf_r+0x126c>
c003316c:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033172:	eb 0c                	jmp    c0033180 <_svfprintf_r+0x1210>
c0033174:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033178:	83 ee 10             	sub    $0x10,%esi
c003317b:	83 fe 10             	cmp    $0x10,%esi
c003317e:	7e 5c                	jle    c00331dc <_svfprintf_r+0x126c>
c0033180:	83 c0 01             	add    $0x1,%eax
c0033183:	83 c2 10             	add    $0x10,%edx
c0033186:	c7 07 24 91 03 c0    	movl   $0xc0039124,(%edi)
c003318c:	83 c7 08             	add    $0x8,%edi
c003318f:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033196:	83 f8 07             	cmp    $0x7,%eax
c0033199:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003319f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00331a5:	7e d1                	jle    c0033178 <_svfprintf_r+0x1208>
c00331a7:	8b 45 0c             	mov    0xc(%ebp),%eax
c00331aa:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00331ae:	89 44 24 04          	mov    %eax,0x4(%esp)
c00331b2:	8b 45 08             	mov    0x8(%ebp),%eax
c00331b5:	89 04 24             	mov    %eax,(%esp)
c00331b8:	e8 33 39 00 00       	call   c0036af0 <__ssprint_r>
c00331bd:	85 c0                	test   %eax,%eax
c00331bf:	0f 85 7b ef ff ff    	jne    c0032140 <_svfprintf_r+0x1d0>
c00331c5:	83 ee 10             	sub    $0x10,%esi
c00331c8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00331ce:	83 fe 10             	cmp    $0x10,%esi
c00331d1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00331d7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00331da:	7f a4                	jg     c0033180 <_svfprintf_r+0x1210>
c00331dc:	c7 07 24 91 03 c0    	movl   $0xc0039124,(%edi)
c00331e2:	01 f2                	add    %esi,%edx
c00331e4:	89 77 04             	mov    %esi,0x4(%edi)
c00331e7:	e9 50 fc ff ff       	jmp    c0032e3c <_svfprintf_r+0xecc>
c00331ec:	c7 07 24 91 03 c0    	movl   $0xc0039124,(%edi)
c00331f2:	01 f1                	add    %esi,%ecx
c00331f4:	89 77 04             	mov    %esi,0x4(%edi)
c00331f7:	e9 6f fc ff ff       	jmp    c0032e6b <_svfprintf_r+0xefb>
c00331fc:	8b 45 14             	mov    0x14(%ebp),%eax
c00331ff:	8b 95 34 ff ff ff    	mov    -0xcc(%ebp),%edx
c0033205:	8b 00                	mov    (%eax),%eax
c0033207:	89 10                	mov    %edx,(%eax)
c0033209:	8b 45 14             	mov    0x14(%ebp),%eax
c003320c:	83 c0 04             	add    $0x4,%eax
c003320f:	89 45 14             	mov    %eax,0x14(%ebp)
c0033212:	e9 f4 ed ff ff       	jmp    c003200b <_svfprintf_r+0x9b>
c0033217:	83 c0 01             	add    $0x1,%eax
c003321a:	01 f1                	add    %esi,%ecx
c003321c:	c7 07 24 91 03 c0    	movl   $0xc0039124,(%edi)
c0033222:	83 c7 08             	add    $0x8,%edi
c0033225:	89 77 fc             	mov    %esi,-0x4(%edi)
c0033228:	83 f8 07             	cmp    $0x7,%eax
c003322b:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033231:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033237:	7e 2d                	jle    c0033266 <_svfprintf_r+0x12f6>
c0033239:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003323f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033243:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033246:	89 44 24 04          	mov    %eax,0x4(%esp)
c003324a:	8b 45 08             	mov    0x8(%ebp),%eax
c003324d:	89 04 24             	mov    %eax,(%esp)
c0033250:	e8 9b 38 00 00       	call   c0036af0 <__ssprint_r>
c0033255:	85 c0                	test   %eax,%eax
c0033257:	0f 85 e3 ee ff ff    	jne    c0032140 <_svfprintf_r+0x1d0>
c003325d:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033263:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033266:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c003326c:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
c0033272:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
c0033278:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
c003327e:	89 c6                	mov    %eax,%esi
c0033280:	7c 0d                	jl     c003328f <_svfprintf_r+0x131f>
c0033282:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033289:	0f 84 5e 05 00 00    	je     c00337ed <_svfprintf_r+0x187d>
c003328f:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0033295:	89 07                	mov    %eax,(%edi)
c0033297:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c003329d:	01 c1                	add    %eax,%ecx
c003329f:	89 47 04             	mov    %eax,0x4(%edi)
c00332a2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00332a8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00332ae:	83 c0 01             	add    $0x1,%eax
c00332b1:	83 f8 07             	cmp    $0x7,%eax
c00332b4:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00332ba:	0f 8f d9 06 00 00    	jg     c0033999 <_svfprintf_r+0x1a29>
c00332c0:	83 c7 08             	add    $0x8,%edi
c00332c3:	89 d0                	mov    %edx,%eax
c00332c5:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c00332cb:	89 f2                	mov    %esi,%edx
c00332cd:	29 f3                	sub    %esi,%ebx
c00332cf:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c00332d5:	29 c6                	sub    %eax,%esi
c00332d7:	39 de                	cmp    %ebx,%esi
c00332d9:	0f 4e de             	cmovle %esi,%ebx
c00332dc:	85 db                	test   %ebx,%ebx
c00332de:	7e 29                	jle    c0033309 <_svfprintf_r+0x1399>
c00332e0:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00332e6:	01 d9                	add    %ebx,%ecx
c00332e8:	83 c7 08             	add    $0x8,%edi
c00332eb:	89 57 f8             	mov    %edx,-0x8(%edi)
c00332ee:	89 5f fc             	mov    %ebx,-0x4(%edi)
c00332f1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00332f7:	83 c0 01             	add    $0x1,%eax
c00332fa:	83 f8 07             	cmp    $0x7,%eax
c00332fd:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033303:	0f 8f c8 06 00 00    	jg     c00339d1 <_svfprintf_r+0x1a61>
c0033309:	31 c0                	xor    %eax,%eax
c003330b:	85 db                	test   %ebx,%ebx
c003330d:	0f 49 c3             	cmovns %ebx,%eax
c0033310:	29 c6                	sub    %eax,%esi
c0033312:	85 f6                	test   %esi,%esi
c0033314:	0f 8e 02 f7 ff ff    	jle    c0032a1c <_svfprintf_r+0xaac>
c003331a:	83 fe 10             	cmp    $0x10,%esi
c003331d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033323:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033329:	7f 11                	jg     c003333c <_svfprintf_r+0x13cc>
c003332b:	e9 bc fe ff ff       	jmp    c00331ec <_svfprintf_r+0x127c>
c0033330:	83 ee 10             	sub    $0x10,%esi
c0033333:	83 fe 10             	cmp    $0x10,%esi
c0033336:	0f 8e b0 fe ff ff    	jle    c00331ec <_svfprintf_r+0x127c>
c003333c:	83 c0 01             	add    $0x1,%eax
c003333f:	83 c1 10             	add    $0x10,%ecx
c0033342:	c7 07 24 91 03 c0    	movl   $0xc0039124,(%edi)
c0033348:	83 c7 08             	add    $0x8,%edi
c003334b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033352:	83 f8 07             	cmp    $0x7,%eax
c0033355:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003335b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033361:	7e cd                	jle    c0033330 <_svfprintf_r+0x13c0>
c0033363:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033366:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003336a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003336e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033371:	89 04 24             	mov    %eax,(%esp)
c0033374:	e8 77 37 00 00       	call   c0036af0 <__ssprint_r>
c0033379:	85 c0                	test   %eax,%eax
c003337b:	0f 85 bf ed ff ff    	jne    c0032140 <_svfprintf_r+0x1d0>
c0033381:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033387:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003338a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033390:	eb 9e                	jmp    c0033330 <_svfprintf_r+0x13c0>
c0033392:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033399:	0f 85 14 fa ff ff    	jne    c0032db3 <_svfprintf_r+0xe43>
c003339f:	89 07                	mov    %eax,(%edi)
c00333a1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00333a7:	8d 51 01             	lea    0x1(%ecx),%edx
c00333aa:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c00333b1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00333b7:	83 c0 01             	add    $0x1,%eax
c00333ba:	83 f8 07             	cmp    $0x7,%eax
c00333bd:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00333c3:	0f 8e 8b fa ff ff    	jle    c0032e54 <_svfprintf_r+0xee4>
c00333c9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00333cf:	89 44 24 08          	mov    %eax,0x8(%esp)
c00333d3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00333d6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00333da:	8b 45 08             	mov    0x8(%ebp),%eax
c00333dd:	89 04 24             	mov    %eax,(%esp)
c00333e0:	e8 0b 37 00 00       	call   c0036af0 <__ssprint_r>
c00333e5:	85 c0                	test   %eax,%eax
c00333e7:	0f 85 53 ed ff ff    	jne    c0032140 <_svfprintf_r+0x1d0>
c00333ed:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00333f3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00333f6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00333fc:	e9 56 fa ff ff       	jmp    c0032e57 <_svfprintf_r+0xee7>
c0033401:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033407:	89 44 24 08          	mov    %eax,0x8(%esp)
c003340b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003340e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033412:	8b 45 08             	mov    0x8(%ebp),%eax
c0033415:	89 04 24             	mov    %eax,(%esp)
c0033418:	e8 d3 36 00 00       	call   c0036af0 <__ssprint_r>
c003341d:	85 c0                	test   %eax,%eax
c003341f:	0f 85 1b ed ff ff    	jne    c0032140 <_svfprintf_r+0x1d0>
c0033425:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003342b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003342e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033434:	e9 d6 f9 ff ff       	jmp    c0032e0f <_svfprintf_r+0xe9f>
c0033439:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003343f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033443:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033446:	89 44 24 04          	mov    %eax,0x4(%esp)
c003344a:	8b 45 08             	mov    0x8(%ebp),%eax
c003344d:	89 04 24             	mov    %eax,(%esp)
c0033450:	e8 9b 36 00 00       	call   c0036af0 <__ssprint_r>
c0033455:	85 c0                	test   %eax,%eax
c0033457:	0f 85 e3 ec ff ff    	jne    c0032140 <_svfprintf_r+0x1d0>
c003345d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033463:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033466:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003346c:	e9 6f f9 ff ff       	jmp    c0032de0 <_svfprintf_r+0xe70>
c0033471:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033477:	dd 1c 24             	fstpl  (%esp)
c003347a:	e8 11 35 00 00       	call   c0036990 <__fpclassifyd>
c003347f:	85 c0                	test   %eax,%eax
c0033481:	0f 85 a3 01 00 00    	jne    c003362a <_svfprintf_r+0x16ba>
c0033487:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c003348e:	ba 8a 8f 03 c0       	mov    $0xc0038f8a,%edx
c0033493:	b8 8e 8f 03 c0       	mov    $0xc0038f8e,%eax
c0033498:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003349f:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c00334a6:	00 00 00 
c00334a9:	0f 4e c2             	cmovle %edx,%eax
c00334ac:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00334b2:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c00334b9:	ff ff ff 
c00334bc:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c00334c3:	00 00 00 
c00334c6:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00334cd:	00 00 00 
c00334d0:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00334d7:	00 00 00 
c00334da:	e9 29 ed ff ff       	jmp    c0032208 <_svfprintf_r+0x298>
c00334df:	dd 00                	fldl   (%eax)
c00334e1:	83 c0 08             	add    $0x8,%eax
c00334e4:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c00334ea:	89 45 14             	mov    %eax,0x14(%ebp)
c00334ed:	e9 e6 ef ff ff       	jmp    c00324d8 <_svfprintf_r+0x568>
c00334f2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00334f8:	89 44 24 08          	mov    %eax,0x8(%esp)
c00334fc:	8b 45 0c             	mov    0xc(%ebp),%eax
c00334ff:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033503:	8b 45 08             	mov    0x8(%ebp),%eax
c0033506:	89 04 24             	mov    %eax,(%esp)
c0033509:	e8 e2 35 00 00       	call   c0036af0 <__ssprint_r>
c003350e:	85 c0                	test   %eax,%eax
c0033510:	0f 85 2a ec ff ff    	jne    c0032140 <_svfprintf_r+0x1d0>
c0033516:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003351c:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003351f:	e9 6b f6 ff ff       	jmp    c0032b8f <_svfprintf_r+0xc1f>
c0033524:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003352a:	83 c1 01             	add    $0x1,%ecx
c003352d:	83 c7 08             	add    $0x8,%edi
c0033530:	c7 47 f8 bb 8f 03 c0 	movl   $0xc0038fbb,-0x8(%edi)
c0033537:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c003353e:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033544:	83 c0 01             	add    $0x1,%eax
c0033547:	83 f8 07             	cmp    $0x7,%eax
c003354a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033550:	0f 8f ef 02 00 00    	jg     c0033845 <_svfprintf_r+0x18d5>
c0033556:	85 db                	test   %ebx,%ebx
c0033558:	75 17                	jne    c0033571 <_svfprintf_r+0x1601>
c003355a:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
c0033560:	85 d2                	test   %edx,%edx
c0033562:	75 0d                	jne    c0033571 <_svfprintf_r+0x1601>
c0033564:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c003356b:	0f 84 ab f4 ff ff    	je     c0032a1c <_svfprintf_r+0xaac>
c0033571:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0033577:	83 c7 08             	add    $0x8,%edi
c003357a:	89 47 f8             	mov    %eax,-0x8(%edi)
c003357d:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0033583:	89 47 fc             	mov    %eax,-0x4(%edi)
c0033586:	8d 14 01             	lea    (%ecx,%eax,1),%edx
c0033589:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003358f:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033595:	83 c0 01             	add    $0x1,%eax
c0033598:	83 f8 07             	cmp    $0x7,%eax
c003359b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00335a1:	0f 8f 60 03 00 00    	jg     c0033907 <_svfprintf_r+0x1997>
c00335a7:	f7 db                	neg    %ebx
c00335a9:	85 db                	test   %ebx,%ebx
c00335ab:	0f 8e 21 03 00 00    	jle    c00338d2 <_svfprintf_r+0x1962>
c00335b1:	83 fb 10             	cmp    $0x10,%ebx
c00335b4:	0f 8e c3 02 00 00    	jle    c003387d <_svfprintf_r+0x190d>
c00335ba:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
c00335c0:	eb 12                	jmp    c00335d4 <_svfprintf_r+0x1664>
c00335c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00335c8:	83 eb 10             	sub    $0x10,%ebx
c00335cb:	83 fb 10             	cmp    $0x10,%ebx
c00335ce:	0f 8e a9 02 00 00    	jle    c003387d <_svfprintf_r+0x190d>
c00335d4:	83 c0 01             	add    $0x1,%eax
c00335d7:	83 c2 10             	add    $0x10,%edx
c00335da:	c7 07 24 91 03 c0    	movl   $0xc0039124,(%edi)
c00335e0:	83 c7 08             	add    $0x8,%edi
c00335e3:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00335ea:	83 f8 07             	cmp    $0x7,%eax
c00335ed:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00335f3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00335f9:	7e cd                	jle    c00335c8 <_svfprintf_r+0x1658>
c00335fb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00335fe:	89 74 24 08          	mov    %esi,0x8(%esp)
c0033602:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033606:	8b 45 08             	mov    0x8(%ebp),%eax
c0033609:	89 04 24             	mov    %eax,(%esp)
c003360c:	e8 df 34 00 00       	call   c0036af0 <__ssprint_r>
c0033611:	85 c0                	test   %eax,%eax
c0033613:	0f 85 27 eb ff ff    	jne    c0032140 <_svfprintf_r+0x1d0>
c0033619:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003361f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033622:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033628:	eb 9e                	jmp    c00335c8 <_svfprintf_r+0x1658>
c003362a:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
c0033630:	83 e3 df             	and    $0xffffffdf,%ebx
c0033633:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
c003363a:	0f 84 05 03 00 00    	je     c0033945 <_svfprintf_r+0x19d5>
c0033640:	83 fb 47             	cmp    $0x47,%ebx
c0033643:	75 16                	jne    c003365b <_svfprintf_r+0x16eb>
c0033645:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c003364b:	b8 01 00 00 00       	mov    $0x1,%eax
c0033650:	85 d2                	test   %edx,%edx
c0033652:	0f 45 c2             	cmovne %edx,%eax
c0033655:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c003365b:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033661:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033667:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
c003366d:	80 cc 01             	or     $0x1,%ah
c0033670:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
c0033676:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c003367c:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
c0033683:	85 c0                	test   %eax,%eax
c0033685:	0f 88 ba 05 00 00    	js     c0033c45 <_svfprintf_r+0x1cd5>
c003368b:	83 fb 46             	cmp    $0x46,%ebx
c003368e:	0f 94 c0             	sete   %al
c0033691:	89 c6                	mov    %eax,%esi
c0033693:	0f 84 d4 03 00 00    	je     c0033a6d <_svfprintf_r+0x1afd>
c0033699:	83 fb 45             	cmp    $0x45,%ebx
c003369c:	0f 85 99 05 00 00    	jne    c0033c3b <_svfprintf_r+0x1ccb>
c00336a2:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00336a8:	dd 54 24 04          	fstl   0x4(%esp)
c00336ac:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
c00336b3:	00 
c00336b4:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c00336ba:	8d 70 01             	lea    0x1(%eax),%esi
c00336bd:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c00336c3:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c00336c7:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c00336cd:	89 44 24 18          	mov    %eax,0x18(%esp)
c00336d1:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c00336d7:	89 44 24 14          	mov    %eax,0x14(%esp)
c00336db:	8b 45 08             	mov    0x8(%ebp),%eax
c00336de:	89 74 24 10          	mov    %esi,0x10(%esp)
c00336e2:	89 04 24             	mov    %eax,(%esp)
c00336e5:	e8 56 09 00 00       	call   c0034040 <_dtoa_r>
c00336ea:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00336f0:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
c00336f3:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c00336f9:	d9 ee                	fldz   
c00336fb:	d9 c9                	fxch   %st(1)
c00336fd:	df e9                	fucomip %st(1),%st
c00336ff:	dd d8                	fstp   %st(0)
c0033701:	0f 8a fd 00 00 00    	jp     c0033804 <_svfprintf_r+0x1894>
c0033707:	89 c8                	mov    %ecx,%eax
c0033709:	0f 85 f5 00 00 00    	jne    c0033804 <_svfprintf_r+0x1894>
c003370f:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0033715:	83 fb 47             	cmp    $0x47,%ebx
c0033718:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c003371e:	0f 84 1e 04 00 00    	je     c0033b42 <_svfprintf_r+0x1bd2>
c0033724:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c003372b:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033731:	0f 8e 65 04 00 00    	jle    c0033b9c <_svfprintf_r+0x1c2c>
c0033737:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
c003373e:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033744:	0f 84 3c 05 00 00    	je     c0033c86 <_svfprintf_r+0x1d16>
c003374a:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
c0033750:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
c0033756:	0f 8f f7 04 00 00    	jg     c0033c53 <_svfprintf_r+0x1ce3>
c003375c:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033762:	83 e0 01             	and    $0x1,%eax
c0033765:	0f 85 e2 05 00 00    	jne    c0033d4d <_svfprintf_r+0x1ddd>
c003376b:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033771:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033778:	00 00 00 
c003377b:	85 d2                	test   %edx,%edx
c003377d:	0f 49 c2             	cmovns %edx,%eax
c0033780:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033786:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
c003378d:	0f 85 68 03 00 00    	jne    c0033afb <_svfprintf_r+0x1b8b>
c0033793:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033799:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c003379f:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00337a6:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00337ad:	00 00 00 
c00337b0:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c00337b6:	e9 4d ea ff ff       	jmp    c0032208 <_svfprintf_r+0x298>
c00337bb:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00337c1:	89 44 24 08          	mov    %eax,0x8(%esp)
c00337c5:	8b 45 0c             	mov    0xc(%ebp),%eax
c00337c8:	89 44 24 04          	mov    %eax,0x4(%esp)
c00337cc:	8b 45 08             	mov    0x8(%ebp),%eax
c00337cf:	89 04 24             	mov    %eax,(%esp)
c00337d2:	e8 19 33 00 00       	call   c0036af0 <__ssprint_r>
c00337d7:	85 c0                	test   %eax,%eax
c00337d9:	0f 85 61 e9 ff ff    	jne    c0032140 <_svfprintf_r+0x1d0>
c00337df:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00337e5:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00337e8:	e9 f2 f3 ff ff       	jmp    c0032bdf <_svfprintf_r+0xc6f>
c00337ed:	89 d0                	mov    %edx,%eax
c00337ef:	e9 d1 fa ff ff       	jmp    c00332c5 <_svfprintf_r+0x1355>
c00337f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00337f8:	8d 50 01             	lea    0x1(%eax),%edx
c00337fb:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
c0033801:	c6 00 30             	movb   $0x30,(%eax)
c0033804:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c003380a:	39 c1                	cmp    %eax,%ecx
c003380c:	77 ea                	ja     c00337f8 <_svfprintf_r+0x1888>
c003380e:	e9 fc fe ff ff       	jmp    c003370f <_svfprintf_r+0x179f>
c0033813:	8b 45 08             	mov    0x8(%ebp),%eax
c0033816:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c003381d:	00 
c003381e:	89 04 24             	mov    %eax,(%esp)
c0033821:	e8 4a 1b 00 00       	call   c0035370 <_malloc_r>
c0033826:	8b 55 0c             	mov    0xc(%ebp),%edx
c0033829:	85 c0                	test   %eax,%eax
c003382b:	89 02                	mov    %eax,(%edx)
c003382d:	89 42 10             	mov    %eax,0x10(%edx)
c0033830:	0f 84 15 06 00 00    	je     c0033e4b <_svfprintf_r+0x1edb>
c0033836:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033839:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0033840:	e9 6c e7 ff ff       	jmp    c0031fb1 <_svfprintf_r+0x41>
c0033845:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003384b:	89 44 24 08          	mov    %eax,0x8(%esp)
c003384f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033852:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033856:	8b 45 08             	mov    0x8(%ebp),%eax
c0033859:	89 04 24             	mov    %eax,(%esp)
c003385c:	e8 8f 32 00 00       	call   c0036af0 <__ssprint_r>
c0033861:	85 c0                	test   %eax,%eax
c0033863:	0f 85 d7 e8 ff ff    	jne    c0032140 <_svfprintf_r+0x1d0>
c0033869:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c003386f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033872:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033878:	e9 d9 fc ff ff       	jmp    c0033556 <_svfprintf_r+0x15e6>
c003387d:	83 c0 01             	add    $0x1,%eax
c0033880:	01 da                	add    %ebx,%edx
c0033882:	c7 07 24 91 03 c0    	movl   $0xc0039124,(%edi)
c0033888:	83 c7 08             	add    $0x8,%edi
c003388b:	89 5f fc             	mov    %ebx,-0x4(%edi)
c003388e:	83 f8 07             	cmp    $0x7,%eax
c0033891:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033897:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003389d:	7e 33                	jle    c00338d2 <_svfprintf_r+0x1962>
c003389f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00338a5:	89 44 24 08          	mov    %eax,0x8(%esp)
c00338a9:	8b 45 0c             	mov    0xc(%ebp),%eax
c00338ac:	89 44 24 04          	mov    %eax,0x4(%esp)
c00338b0:	8b 45 08             	mov    0x8(%ebp),%eax
c00338b3:	89 04 24             	mov    %eax,(%esp)
c00338b6:	e8 35 32 00 00       	call   c0036af0 <__ssprint_r>
c00338bb:	85 c0                	test   %eax,%eax
c00338bd:	0f 85 7d e8 ff ff    	jne    c0032140 <_svfprintf_r+0x1d0>
c00338c3:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00338c9:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00338cc:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00338d2:	8b 9d 28 ff ff ff    	mov    -0xd8(%ebp),%ebx
c00338d8:	83 c0 01             	add    $0x1,%eax
c00338db:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00338e1:	89 1f                	mov    %ebx,(%edi)
c00338e3:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c00338e9:	01 da                	add    %ebx,%edx
c00338eb:	83 f8 07             	cmp    $0x7,%eax
c00338ee:	89 5f 04             	mov    %ebx,0x4(%edi)
c00338f1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00338f7:	0f 8f 86 f5 ff ff    	jg     c0032e83 <_svfprintf_r+0xf13>
c00338fd:	83 c7 08             	add    $0x8,%edi
c0033900:	89 d1                	mov    %edx,%ecx
c0033902:	e9 15 f1 ff ff       	jmp    c0032a1c <_svfprintf_r+0xaac>
c0033907:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003390d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033911:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033914:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033918:	8b 45 08             	mov    0x8(%ebp),%eax
c003391b:	89 04 24             	mov    %eax,(%esp)
c003391e:	e8 cd 31 00 00       	call   c0036af0 <__ssprint_r>
c0033923:	85 c0                	test   %eax,%eax
c0033925:	0f 85 15 e8 ff ff    	jne    c0032140 <_svfprintf_r+0x1d0>
c003392b:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0033931:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033934:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003393a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033940:	e9 62 fc ff ff       	jmp    c00335a7 <_svfprintf_r+0x1637>
c0033945:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
c003394c:	00 00 00 
c003394f:	e9 07 fd ff ff       	jmp    c003365b <_svfprintf_r+0x16eb>
c0033954:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c003395a:	89 04 24             	mov    %eax,(%esp)
c003395d:	e8 0e 31 00 00       	call   c0036a70 <strlen>
c0033962:	e9 6a e8 ff ff       	jmp    c00321d1 <_svfprintf_r+0x261>
c0033967:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003396d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033971:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033974:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033978:	8b 45 08             	mov    0x8(%ebp),%eax
c003397b:	89 04 24             	mov    %eax,(%esp)
c003397e:	e8 6d 31 00 00       	call   c0036af0 <__ssprint_r>
c0033983:	85 c0                	test   %eax,%eax
c0033985:	0f 85 b5 e7 ff ff    	jne    c0032140 <_svfprintf_r+0x1d0>
c003398b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033991:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033994:	e9 76 f6 ff ff       	jmp    c003300f <_svfprintf_r+0x109f>
c0033999:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003399f:	89 44 24 08          	mov    %eax,0x8(%esp)
c00339a3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00339a6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00339aa:	8b 45 08             	mov    0x8(%ebp),%eax
c00339ad:	89 04 24             	mov    %eax,(%esp)
c00339b0:	e8 3b 31 00 00       	call   c0036af0 <__ssprint_r>
c00339b5:	85 c0                	test   %eax,%eax
c00339b7:	0f 85 83 e7 ff ff    	jne    c0032140 <_svfprintf_r+0x1d0>
c00339bd:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c00339c3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00339c6:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00339cc:	e9 f4 f8 ff ff       	jmp    c00332c5 <_svfprintf_r+0x1355>
c00339d1:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00339d7:	89 44 24 08          	mov    %eax,0x8(%esp)
c00339db:	8b 45 0c             	mov    0xc(%ebp),%eax
c00339de:	89 44 24 04          	mov    %eax,0x4(%esp)
c00339e2:	8b 45 08             	mov    0x8(%ebp),%eax
c00339e5:	89 04 24             	mov    %eax,(%esp)
c00339e8:	e8 03 31 00 00       	call   c0036af0 <__ssprint_r>
c00339ed:	85 c0                	test   %eax,%eax
c00339ef:	0f 85 4b e7 ff ff    	jne    c0032140 <_svfprintf_r+0x1d0>
c00339f5:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c00339fb:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00339fe:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
c0033a04:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033a0a:	e9 fa f8 ff ff       	jmp    c0033309 <_svfprintf_r+0x1399>
c0033a0f:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033a15:	b0 06                	mov    $0x6,%al
c0033a17:	89 75 14             	mov    %esi,0x14(%ebp)
c0033a1a:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033a21:	00 00 00 
c0033a24:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033a2b:	00 00 00 
c0033a2e:	83 fa 06             	cmp    $0x6,%edx
c0033a31:	0f 46 c2             	cmovbe %edx,%eax
c0033a34:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033a3a:	85 c0                	test   %eax,%eax
c0033a3c:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033a42:	c7 85 28 ff ff ff b4 	movl   $0xc0038fb4,-0xd8(%ebp)
c0033a49:	8f 03 c0 
c0033a4c:	0f 49 d0             	cmovns %eax,%edx
c0033a4f:	31 db                	xor    %ebx,%ebx
c0033a51:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
c0033a57:	e9 b7 e7 ff ff       	jmp    c0032213 <_svfprintf_r+0x2a3>
c0033a5c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033a63:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033a68:	e9 9d ea ff ff       	jmp    c003250a <_svfprintf_r+0x59a>
c0033a6d:	ba 03 00 00 00       	mov    $0x3,%edx
c0033a72:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0033a78:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c0033a7c:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c0033a82:	89 44 24 18          	mov    %eax,0x18(%esp)
c0033a86:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0033a8c:	89 44 24 14          	mov    %eax,0x14(%esp)
c0033a90:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033a96:	dd 54 24 04          	fstl   0x4(%esp)
c0033a9a:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0033a9e:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c0033aa4:	89 44 24 10          	mov    %eax,0x10(%esp)
c0033aa8:	8b 45 08             	mov    0x8(%ebp),%eax
c0033aab:	89 04 24             	mov    %eax,(%esp)
c0033aae:	e8 8d 05 00 00       	call   c0034040 <_dtoa_r>
c0033ab3:	83 fb 47             	cmp    $0x47,%ebx
c0033ab6:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033abc:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033ac2:	75 09                	jne    c0033acd <_svfprintf_r+0x1b5d>
c0033ac4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033acb:	74 5b                	je     c0033b28 <_svfprintf_r+0x1bb8>
c0033acd:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033ad3:	89 f0                	mov    %esi,%eax
c0033ad5:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
c0033adb:	01 d1                	add    %edx,%ecx
c0033add:	84 c0                	test   %al,%al
c0033adf:	0f 84 14 fc ff ff    	je     c00336f9 <_svfprintf_r+0x1789>
c0033ae5:	80 3a 30             	cmpb   $0x30,(%edx)
c0033ae8:	0f 84 37 02 00 00    	je     c0033d25 <_svfprintf_r+0x1db5>
c0033aee:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033af4:	01 c1                	add    %eax,%ecx
c0033af6:	e9 fe fb ff ff       	jmp    c00336f9 <_svfprintf_r+0x1789>
c0033afb:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033b01:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c0033b07:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033b0c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033b13:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033b1a:	00 00 00 
c0033b1d:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0033b23:	e9 e4 e6 ff ff       	jmp    c003220c <_svfprintf_r+0x29c>
c0033b28:	dd d8                	fstp   %st(0)
c0033b2a:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c0033b30:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c0033b36:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0033b3c:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
c0033b42:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033b48:	83 f8 fd             	cmp    $0xfffffffd,%eax
c0033b4b:	7c 48                	jl     c0033b95 <_svfprintf_r+0x1c25>
c0033b4d:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
c0033b53:	7c 40                	jl     c0033b95 <_svfprintf_r+0x1c25>
c0033b55:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033b5b:	e9 ea fb ff ff       	jmp    c003374a <_svfprintf_r+0x17da>
c0033b60:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033b66:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033b6d:	89 75 14             	mov    %esi,0x14(%ebp)
c0033b70:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033b77:	00 00 00 
c0033b7a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033b80:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033b86:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033b8d:	00 00 00 
c0033b90:	e9 73 e6 ff ff       	jmp    c0032208 <_svfprintf_r+0x298>
c0033b95:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
c0033b9c:	8d 48 ff             	lea    -0x1(%eax),%ecx
c0033b9f:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
c0033ba6:	85 c9                	test   %ecx,%ecx
c0033ba8:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0033bae:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
c0033bb4:	0f 88 2c 02 00 00    	js     c0033de6 <_svfprintf_r+0x1e76>
c0033bba:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
c0033bc1:	83 f9 09             	cmp    $0x9,%ecx
c0033bc4:	0f 8f ea 00 00 00    	jg     c0033cb4 <_svfprintf_r+0x1d44>
c0033bca:	83 c1 30             	add    $0x30,%ecx
c0033bcd:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
c0033bd4:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
c0033bda:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
c0033be0:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0033be6:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
c0033bec:	29 d0                	sub    %edx,%eax
c0033bee:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
c0033bf4:	89 da                	mov    %ebx,%edx
c0033bf6:	01 c2                	add    %eax,%edx
c0033bf8:	83 fb 01             	cmp    $0x1,%ebx
c0033bfb:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033c01:	0f 8e 21 02 00 00    	jle    c0033e28 <_svfprintf_r+0x1eb8>
c0033c07:	31 c0                	xor    %eax,%eax
c0033c09:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
c0033c10:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
c0033c17:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033c1e:	00 00 00 
c0033c21:	e9 60 fb ff ff       	jmp    c0033786 <_svfprintf_r+0x1816>
c0033c26:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033c2c:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033c33:	00 00 00 
c0033c36:	e9 68 e4 ff ff       	jmp    c00320a3 <_svfprintf_r+0x133>
c0033c3b:	ba 02 00 00 00       	mov    $0x2,%edx
c0033c40:	e9 2d fe ff ff       	jmp    c0033a72 <_svfprintf_r+0x1b02>
c0033c45:	d9 e0                	fchs   
c0033c47:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
c0033c4e:	e9 38 fa ff ff       	jmp    c003368b <_svfprintf_r+0x171b>
c0033c53:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
c0033c59:	ba 01 00 00 00       	mov    $0x1,%edx
c0033c5e:	85 c9                	test   %ecx,%ecx
c0033c60:	0f 8e 5a 01 00 00    	jle    c0033dc0 <_svfprintf_r+0x1e50>
c0033c66:	31 c0                	xor    %eax,%eax
c0033c68:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
c0033c6e:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033c75:	00 00 00 
c0033c78:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033c7e:	0f 49 c2             	cmovns %edx,%eax
c0033c81:	e9 00 fb ff ff       	jmp    c0033786 <_svfprintf_r+0x1816>
c0033c86:	85 c0                	test   %eax,%eax
c0033c88:	0f 8e 06 01 00 00    	jle    c0033d94 <_svfprintf_r+0x1e24>
c0033c8e:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0033c94:	85 f6                	test   %esi,%esi
c0033c96:	0f 85 d4 00 00 00    	jne    c0033d70 <_svfprintf_r+0x1e00>
c0033c9c:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033ca3:	0f 85 c7 00 00 00    	jne    c0033d70 <_svfprintf_r+0x1e00>
c0033ca9:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033caf:	e9 d2 fa ff ff       	jmp    c0033786 <_svfprintf_r+0x1816>
c0033cb4:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
c0033cba:	89 f3                	mov    %esi,%ebx
c0033cbc:	b8 67 66 66 66       	mov    $0x66666667,%eax
c0033cc1:	83 eb 01             	sub    $0x1,%ebx
c0033cc4:	f7 e9                	imul   %ecx
c0033cc6:	89 c8                	mov    %ecx,%eax
c0033cc8:	c1 f8 1f             	sar    $0x1f,%eax
c0033ccb:	c1 fa 02             	sar    $0x2,%edx
c0033cce:	29 c2                	sub    %eax,%edx
c0033cd0:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0033cd3:	01 c0                	add    %eax,%eax
c0033cd5:	29 c1                	sub    %eax,%ecx
c0033cd7:	83 fa 09             	cmp    $0x9,%edx
c0033cda:	8d 41 30             	lea    0x30(%ecx),%eax
c0033cdd:	89 d1                	mov    %edx,%ecx
c0033cdf:	88 03                	mov    %al,(%ebx)
c0033ce1:	7f d9                	jg     c0033cbc <_svfprintf_r+0x1d4c>
c0033ce3:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0033ce6:	83 c1 30             	add    $0x30,%ecx
c0033ce9:	39 f0                	cmp    %esi,%eax
c0033ceb:	88 4b ff             	mov    %cl,-0x1(%ebx)
c0033cee:	0f 83 6a 01 00 00    	jae    c0033e5e <_svfprintf_r+0x1eee>
c0033cf4:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033cfa:	eb 07                	jmp    c0033d03 <_svfprintf_r+0x1d93>
c0033cfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033d00:	0f b6 08             	movzbl (%eax),%ecx
c0033d03:	83 c0 01             	add    $0x1,%eax
c0033d06:	83 c2 01             	add    $0x1,%edx
c0033d09:	39 f0                	cmp    %esi,%eax
c0033d0b:	88 4a ff             	mov    %cl,-0x1(%edx)
c0033d0e:	75 f0                	jne    c0033d00 <_svfprintf_r+0x1d90>
c0033d10:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033d16:	29 d8                	sub    %ebx,%eax
c0033d18:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033d1e:	01 d0                	add    %edx,%eax
c0033d20:	e9 bb fe ff ff       	jmp    c0033be0 <_svfprintf_r+0x1c70>
c0033d25:	d9 ee                	fldz   
c0033d27:	d9 c9                	fxch   %st(1)
c0033d29:	db e9                	fucomi %st(1),%st
c0033d2b:	dd d9                	fstp   %st(1)
c0033d2d:	7a 06                	jp     c0033d35 <_svfprintf_r+0x1dc5>
c0033d2f:	0f 84 b9 fd ff ff    	je     c0033aee <_svfprintf_r+0x1b7e>
c0033d35:	b8 01 00 00 00       	mov    $0x1,%eax
c0033d3a:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
c0033d40:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
c0033d46:	01 c1                	add    %eax,%ecx
c0033d48:	e9 ac f9 ff ff       	jmp    c00336f9 <_svfprintf_r+0x1789>
c0033d4d:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033d53:	31 c0                	xor    %eax,%eax
c0033d55:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033d5c:	00 00 00 
c0033d5f:	83 c2 01             	add    $0x1,%edx
c0033d62:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033d68:	0f 49 c2             	cmovns %edx,%eax
c0033d6b:	e9 16 fa ff ff       	jmp    c0033786 <_svfprintf_r+0x1816>
c0033d70:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033d76:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033d7c:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
c0033d80:	89 c2                	mov    %eax,%edx
c0033d82:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033d88:	31 c0                	xor    %eax,%eax
c0033d8a:	85 d2                	test   %edx,%edx
c0033d8c:	0f 49 c2             	cmovns %edx,%eax
c0033d8f:	e9 f2 f9 ff ff       	jmp    c0033786 <_svfprintf_r+0x1816>
c0033d94:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c0033d9a:	85 db                	test   %ebx,%ebx
c0033d9c:	75 2f                	jne    c0033dcd <_svfprintf_r+0x1e5d>
c0033d9e:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033da5:	75 26                	jne    c0033dcd <_svfprintf_r+0x1e5d>
c0033da7:	b8 01 00 00 00       	mov    $0x1,%eax
c0033dac:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c0033db3:	00 00 00 
c0033db6:	e9 cb f9 ff ff       	jmp    c0033786 <_svfprintf_r+0x1816>
c0033dbb:	90                   	nop
c0033dbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033dc0:	b2 02                	mov    $0x2,%dl
c0033dc2:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
c0033dc8:	e9 99 fe ff ff       	jmp    c0033c66 <_svfprintf_r+0x1cf6>
c0033dcd:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033dd3:	31 c0                	xor    %eax,%eax
c0033dd5:	83 c2 02             	add    $0x2,%edx
c0033dd8:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033dde:	0f 49 c2             	cmovns %edx,%eax
c0033de1:	e9 a0 f9 ff ff       	jmp    c0033786 <_svfprintf_r+0x1816>
c0033de6:	f7 d9                	neg    %ecx
c0033de8:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
c0033def:	e9 cd fd ff ff       	jmp    c0033bc1 <_svfprintf_r+0x1c51>
c0033df4:	8b 55 14             	mov    0x14(%ebp),%edx
c0033df7:	8b 45 14             	mov    0x14(%ebp),%eax
c0033dfa:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033e00:	8b 12                	mov    (%edx),%edx
c0033e02:	83 c0 04             	add    $0x4,%eax
c0033e05:	89 45 14             	mov    %eax,0x14(%ebp)
c0033e08:	85 d2                	test   %edx,%edx
c0033e0a:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0033e10:	0f 89 a9 e2 ff ff    	jns    c00320bf <_svfprintf_r+0x14f>
c0033e16:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c0033e1d:	ff ff ff 
c0033e20:	89 c8                	mov    %ecx,%eax
c0033e22:	e9 76 e2 ff ff       	jmp    c003209d <_svfprintf_r+0x12d>
c0033e27:	90                   	nop
c0033e28:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033e2e:	83 e0 01             	and    $0x1,%eax
c0033e31:	0f 85 d0 fd ff ff    	jne    c0033c07 <_svfprintf_r+0x1c97>
c0033e37:	85 d2                	test   %edx,%edx
c0033e39:	0f 49 c2             	cmovns %edx,%eax
c0033e3c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033e43:	00 00 00 
c0033e46:	e9 3b f9 ff ff       	jmp    c0033786 <_svfprintf_r+0x1816>
c0033e4b:	8b 45 08             	mov    0x8(%ebp),%eax
c0033e4e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0033e54:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0033e59:	e9 f5 e2 ff ff       	jmp    c0032153 <_svfprintf_r+0x1e3>
c0033e5e:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
c0033e64:	e9 77 fd ff ff       	jmp    c0033be0 <_svfprintf_r+0x1c70>
c0033e69:	66 90                	xchg   %ax,%ax
c0033e6b:	66 90                	xchg   %ax,%ax
c0033e6d:	66 90                	xchg   %ax,%ax
c0033e6f:	90                   	nop

c0033e70 <quorem>:
c0033e70:	55                   	push   %ebp
c0033e71:	89 c1                	mov    %eax,%ecx
c0033e73:	89 e5                	mov    %esp,%ebp
c0033e75:	57                   	push   %edi
c0033e76:	89 d7                	mov    %edx,%edi
c0033e78:	56                   	push   %esi
c0033e79:	53                   	push   %ebx
c0033e7a:	83 ec 3c             	sub    $0x3c,%esp
c0033e7d:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0033e80:	8b 42 10             	mov    0x10(%edx),%eax
c0033e83:	3b 41 10             	cmp    0x10(%ecx),%eax
c0033e86:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0033e89:	89 ca                	mov    %ecx,%edx
c0033e8b:	0f 8f 9f 01 00 00    	jg     c0034030 <quorem+0x1c0>
c0033e91:	83 e8 01             	sub    $0x1,%eax
c0033e94:	83 c7 14             	add    $0x14,%edi
c0033e97:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0033e9a:	c1 e0 02             	shl    $0x2,%eax
c0033e9d:	83 c2 14             	add    $0x14,%edx
c0033ea0:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
c0033ea3:	01 d0                	add    %edx,%eax
c0033ea5:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0033ea8:	8b 13                	mov    (%ebx),%edx
c0033eaa:	89 45 c4             	mov    %eax,-0x3c(%ebp)
c0033ead:	8b 00                	mov    (%eax),%eax
c0033eaf:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c0033eb2:	8d 4a 01             	lea    0x1(%edx),%ecx
c0033eb5:	31 d2                	xor    %edx,%edx
c0033eb7:	f7 f1                	div    %ecx
c0033eb9:	85 c0                	test   %eax,%eax
c0033ebb:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0033ebe:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0033ec1:	0f 84 b5 00 00 00    	je     c0033f7c <quorem+0x10c>
c0033ec7:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0033eca:	31 f6                	xor    %esi,%esi
c0033ecc:	89 fa                	mov    %edi,%edx
c0033ece:	89 7d c0             	mov    %edi,-0x40(%ebp)
c0033ed1:	89 f7                	mov    %esi,%edi
c0033ed3:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c0033eda:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033ee0:	83 c2 04             	add    $0x4,%edx
c0033ee3:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033ee6:	83 c0 04             	add    $0x4,%eax
c0033ee9:	0f b7 ce             	movzwl %si,%ecx
c0033eec:	0f af 4d e0          	imul   -0x20(%ebp),%ecx
c0033ef0:	03 4d dc             	add    -0x24(%ebp),%ecx
c0033ef3:	c1 ee 10             	shr    $0x10,%esi
c0033ef6:	0f af 75 e0          	imul   -0x20(%ebp),%esi
c0033efa:	89 cb                	mov    %ecx,%ebx
c0033efc:	0f b7 c9             	movzwl %cx,%ecx
c0033eff:	c1 eb 10             	shr    $0x10,%ebx
c0033f02:	29 cf                	sub    %ecx,%edi
c0033f04:	01 f3                	add    %esi,%ebx
c0033f06:	89 de                	mov    %ebx,%esi
c0033f08:	0f b7 db             	movzwl %bx,%ebx
c0033f0b:	c1 ee 10             	shr    $0x10,%esi
c0033f0e:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0033f11:	8b 70 fc             	mov    -0x4(%eax),%esi
c0033f14:	0f b7 ce             	movzwl %si,%ecx
c0033f17:	01 f9                	add    %edi,%ecx
c0033f19:	c1 ee 10             	shr    $0x10,%esi
c0033f1c:	29 de                	sub    %ebx,%esi
c0033f1e:	89 cb                	mov    %ecx,%ebx
c0033f20:	c1 fb 10             	sar    $0x10,%ebx
c0033f23:	0f b7 c9             	movzwl %cx,%ecx
c0033f26:	01 de                	add    %ebx,%esi
c0033f28:	89 f7                	mov    %esi,%edi
c0033f2a:	c1 e6 10             	shl    $0x10,%esi
c0033f2d:	09 ce                	or     %ecx,%esi
c0033f2f:	c1 ff 10             	sar    $0x10,%edi
c0033f32:	39 55 e4             	cmp    %edx,-0x1c(%ebp)
c0033f35:	89 70 fc             	mov    %esi,-0x4(%eax)
c0033f38:	73 a6                	jae    c0033ee0 <quorem+0x70>
c0033f3a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0033f3d:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0033f40:	8b 10                	mov    (%eax),%edx
c0033f42:	85 d2                	test   %edx,%edx
c0033f44:	75 36                	jne    c0033f7c <quorem+0x10c>
c0033f46:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0033f49:	89 c2                	mov    %eax,%edx
c0033f4b:	83 e8 04             	sub    $0x4,%eax
c0033f4e:	39 c1                	cmp    %eax,%ecx
c0033f50:	73 21                	jae    c0033f73 <quorem+0x103>
c0033f52:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033f55:	85 f6                	test   %esi,%esi
c0033f57:	75 1a                	jne    c0033f73 <quorem+0x103>
c0033f59:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0033f5c:	eb 08                	jmp    c0033f66 <quorem+0xf6>
c0033f5e:	66 90                	xchg   %ax,%ax
c0033f60:	8b 18                	mov    (%eax),%ebx
c0033f62:	85 db                	test   %ebx,%ebx
c0033f64:	75 0a                	jne    c0033f70 <quorem+0x100>
c0033f66:	83 e8 04             	sub    $0x4,%eax
c0033f69:	83 ea 01             	sub    $0x1,%edx
c0033f6c:	39 c1                	cmp    %eax,%ecx
c0033f6e:	72 f0                	jb     c0033f60 <quorem+0xf0>
c0033f70:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0033f73:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0033f76:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0033f79:	89 50 10             	mov    %edx,0x10(%eax)
c0033f7c:	8b 45 c8             	mov    -0x38(%ebp),%eax
c0033f7f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033f83:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0033f86:	89 04 24             	mov    %eax,(%esp)
c0033f89:	e8 a2 23 00 00       	call   c0036330 <__mcmp>
c0033f8e:	85 c0                	test   %eax,%eax
c0033f90:	0f 88 8e 00 00 00    	js     c0034024 <quorem+0x1b4>
c0033f96:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0033f99:	31 f6                	xor    %esi,%esi
c0033f9b:	83 c0 01             	add    $0x1,%eax
c0033f9e:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0033fa1:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0033fa4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033fa8:	83 c7 04             	add    $0x4,%edi
c0033fab:	8b 4f fc             	mov    -0x4(%edi),%ecx
c0033fae:	83 c0 04             	add    $0x4,%eax
c0033fb1:	8b 58 fc             	mov    -0x4(%eax),%ebx
c0033fb4:	0f b7 d1             	movzwl %cx,%edx
c0033fb7:	29 d6                	sub    %edx,%esi
c0033fb9:	0f b7 d3             	movzwl %bx,%edx
c0033fbc:	01 f2                	add    %esi,%edx
c0033fbe:	c1 e9 10             	shr    $0x10,%ecx
c0033fc1:	c1 eb 10             	shr    $0x10,%ebx
c0033fc4:	29 cb                	sub    %ecx,%ebx
c0033fc6:	89 d1                	mov    %edx,%ecx
c0033fc8:	c1 f9 10             	sar    $0x10,%ecx
c0033fcb:	0f b7 d2             	movzwl %dx,%edx
c0033fce:	01 cb                	add    %ecx,%ebx
c0033fd0:	89 de                	mov    %ebx,%esi
c0033fd2:	c1 e3 10             	shl    $0x10,%ebx
c0033fd5:	09 d3                	or     %edx,%ebx
c0033fd7:	c1 fe 10             	sar    $0x10,%esi
c0033fda:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
c0033fdd:	89 58 fc             	mov    %ebx,-0x4(%eax)
c0033fe0:	73 c6                	jae    c0033fa8 <quorem+0x138>
c0033fe2:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0033fe5:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0033fe8:	8d 14 b8             	lea    (%eax,%edi,4),%edx
c0033feb:	8b 02                	mov    (%edx),%eax
c0033fed:	85 c0                	test   %eax,%eax
c0033fef:	75 33                	jne    c0034024 <quorem+0x1b4>
c0033ff1:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0033ff4:	8d 42 fc             	lea    -0x4(%edx),%eax
c0033ff7:	39 c1                	cmp    %eax,%ecx
c0033ff9:	73 20                	jae    c003401b <quorem+0x1ab>
c0033ffb:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033ffe:	85 f6                	test   %esi,%esi
c0034000:	75 19                	jne    c003401b <quorem+0x1ab>
c0034002:	89 fa                	mov    %edi,%edx
c0034004:	eb 08                	jmp    c003400e <quorem+0x19e>
c0034006:	66 90                	xchg   %ax,%ax
c0034008:	8b 18                	mov    (%eax),%ebx
c003400a:	85 db                	test   %ebx,%ebx
c003400c:	75 0a                	jne    c0034018 <quorem+0x1a8>
c003400e:	83 e8 04             	sub    $0x4,%eax
c0034011:	83 ea 01             	sub    $0x1,%edx
c0034014:	39 c1                	cmp    %eax,%ecx
c0034016:	72 f0                	jb     c0034008 <quorem+0x198>
c0034018:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c003401b:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003401e:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0034021:	89 78 10             	mov    %edi,0x10(%eax)
c0034024:	8b 45 cc             	mov    -0x34(%ebp),%eax
c0034027:	83 c4 3c             	add    $0x3c,%esp
c003402a:	5b                   	pop    %ebx
c003402b:	5e                   	pop    %esi
c003402c:	5f                   	pop    %edi
c003402d:	5d                   	pop    %ebp
c003402e:	c3                   	ret    
c003402f:	90                   	nop
c0034030:	83 c4 3c             	add    $0x3c,%esp
c0034033:	31 c0                	xor    %eax,%eax
c0034035:	5b                   	pop    %ebx
c0034036:	5e                   	pop    %esi
c0034037:	5f                   	pop    %edi
c0034038:	5d                   	pop    %ebp
c0034039:	c3                   	ret    
c003403a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0034040 <_dtoa_r>:
c0034040:	55                   	push   %ebp
c0034041:	89 e5                	mov    %esp,%ebp
c0034043:	57                   	push   %edi
c0034044:	56                   	push   %esi
c0034045:	53                   	push   %ebx
c0034046:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
c003404c:	8b 75 08             	mov    0x8(%ebp),%esi
c003404f:	dd 45 0c             	fldl   0xc(%ebp)
c0034052:	8b 5d 20             	mov    0x20(%ebp),%ebx
c0034055:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034058:	8b 46 40             	mov    0x40(%esi),%eax
c003405b:	85 c0                	test   %eax,%eax
c003405d:	74 23                	je     c0034082 <_dtoa_r+0x42>
c003405f:	8b 4e 44             	mov    0x44(%esi),%ecx
c0034062:	ba 01 00 00 00       	mov    $0x1,%edx
c0034067:	d3 e2                	shl    %cl,%edx
c0034069:	89 48 04             	mov    %ecx,0x4(%eax)
c003406c:	89 50 08             	mov    %edx,0x8(%eax)
c003406f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034073:	89 34 24             	mov    %esi,(%esp)
c0034076:	e8 95 1b 00 00       	call   c0035c10 <_Bfree>
c003407b:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
c0034082:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c0034085:	85 ff                	test   %edi,%edi
c0034087:	0f 88 3b 02 00 00    	js     c00342c8 <_dtoa_r+0x288>
c003408d:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0034093:	89 f8                	mov    %edi,%eax
c0034095:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
c003409a:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
c003409f:	0f 84 e3 01 00 00    	je     c0034288 <_dtoa_r+0x248>
c00340a5:	dd 45 c0             	fldl   -0x40(%ebp)
c00340a8:	d9 ee                	fldz   
c00340aa:	d9 c9                	fxch   %st(1)
c00340ac:	db e9                	fucomi %st(1),%st
c00340ae:	dd d9                	fstp   %st(1)
c00340b0:	7a 36                	jp     c00340e8 <_dtoa_r+0xa8>
c00340b2:	75 34                	jne    c00340e8 <_dtoa_r+0xa8>
c00340b4:	dd d8                	fstp   %st(0)
c00340b6:	8b 4d 24             	mov    0x24(%ebp),%ecx
c00340b9:	8b 45 1c             	mov    0x1c(%ebp),%eax
c00340bc:	85 c9                	test   %ecx,%ecx
c00340be:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
c00340c4:	0f 84 4e 02 00 00    	je     c0034318 <_dtoa_r+0x2d8>
c00340ca:	8b 45 24             	mov    0x24(%ebp),%eax
c00340cd:	c7 00 bc 8f 03 c0    	movl   $0xc0038fbc,(%eax)
c00340d3:	b8 bb 8f 03 c0       	mov    $0xc0038fbb,%eax
c00340d8:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00340de:	5b                   	pop    %ebx
c00340df:	5e                   	pop    %esi
c00340e0:	5f                   	pop    %edi
c00340e1:	5d                   	pop    %ebp
c00340e2:	c3                   	ret    
c00340e3:	90                   	nop
c00340e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00340e8:	8d 45 e0             	lea    -0x20(%ebp),%eax
c00340eb:	89 fb                	mov    %edi,%ebx
c00340ed:	89 44 24 10          	mov    %eax,0x10(%esp)
c00340f1:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c00340f4:	dd 54 24 04          	fstl   0x4(%esp)
c00340f8:	89 44 24 0c          	mov    %eax,0xc(%esp)
c00340fc:	dd 5d b8             	fstpl  -0x48(%ebp)
c00340ff:	89 34 24             	mov    %esi,(%esp)
c0034102:	c1 eb 14             	shr    $0x14,%ebx
c0034105:	e8 76 25 00 00       	call   c0036680 <__d2b>
c003410a:	85 db                	test   %ebx,%ebx
c003410c:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c003410f:	0f 85 db 01 00 00    	jne    c00342f0 <_dtoa_r+0x2b0>
c0034115:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0034118:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c003411b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003411e:	01 c3                	add    %eax,%ebx
c0034120:	81 fb ef fb ff ff    	cmp    $0xfffffbef,%ebx
c0034126:	0f 8c ec 07 00 00    	jl     c0034918 <_dtoa_r+0x8d8>
c003412c:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003412f:	b9 0e fc ff ff       	mov    $0xfffffc0e,%ecx
c0034134:	89 f8                	mov    %edi,%eax
c0034136:	29 d9                	sub    %ebx,%ecx
c0034138:	d3 e0                	shl    %cl,%eax
c003413a:	8d 8b 12 04 00 00    	lea    0x412(%ebx),%ecx
c0034140:	d3 ea                	shr    %cl,%edx
c0034142:	09 d0                	or     %edx,%eax
c0034144:	31 d2                	xor    %edx,%edx
c0034146:	83 eb 01             	sub    $0x1,%ebx
c0034149:	89 55 cc             	mov    %edx,-0x34(%ebp)
c003414c:	8b 55 b4             	mov    -0x4c(%ebp),%edx
c003414f:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0034152:	df 6d c8             	fildll -0x38(%ebp)
c0034155:	dd 5d b8             	fstpl  -0x48(%ebp)
c0034158:	81 6d bc 00 00 f0 01 	subl   $0x1f00000,-0x44(%ebp)
c003415f:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034166:	dd 45 b8             	fldl   -0x48(%ebp)
c0034169:	d8 25 54 91 03 c0    	fsubs  0xc0039154
c003416f:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
c0034172:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034175:	dc 0d 70 91 03 c0    	fmull  0xc0039170
c003417b:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c003417f:	b4 0c                	mov    $0xc,%ah
c0034181:	dc 05 78 91 03 c0    	faddl  0xc0039178
c0034187:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c003418b:	db 45 d4             	fildl  -0x2c(%ebp)
c003418e:	dc 0d 80 91 03 c0    	fmull  0xc0039180
c0034194:	de c1                	faddp  %st,%st(1)
c0034196:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034199:	db 55 b8             	fistl  -0x48(%ebp)
c003419c:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003419f:	d9 ee                	fldz   
c00341a1:	df e9                	fucomip %st(1),%st
c00341a3:	0f 87 27 07 00 00    	ja     c00348d0 <_dtoa_r+0x890>
c00341a9:	dd d8                	fstp   %st(0)
c00341ab:	83 7d b8 16          	cmpl   $0x16,-0x48(%ebp)
c00341af:	c7 45 9c 01 00 00 00 	movl   $0x1,-0x64(%ebp)
c00341b6:	77 24                	ja     c00341dc <_dtoa_r+0x19c>
c00341b8:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00341bb:	dd 04 c5 40 92 03 c0 	fldl   -0x3ffc6dc0(,%eax,8)
c00341c2:	dd 45 c0             	fldl   -0x40(%ebp)
c00341c5:	d9 c9                	fxch   %st(1)
c00341c7:	df e9                	fucomip %st(1),%st
c00341c9:	dd d8                	fstp   %st(0)
c00341cb:	0f 86 5f 07 00 00    	jbe    c0034930 <_dtoa_r+0x8f0>
c00341d1:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c00341d5:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c00341dc:	89 d0                	mov    %edx,%eax
c00341de:	29 d8                	sub    %ebx,%eax
c00341e0:	83 e8 01             	sub    $0x1,%eax
c00341e3:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
c00341ea:	89 45 ac             	mov    %eax,-0x54(%ebp)
c00341ed:	0f 88 0d 07 00 00    	js     c0034900 <_dtoa_r+0x8c0>
c00341f3:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00341f6:	85 c0                	test   %eax,%eax
c00341f8:	0f 88 ea 06 00 00    	js     c00348e8 <_dtoa_r+0x8a8>
c00341fe:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034201:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0034204:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c003420b:	83 7d 14 09          	cmpl   $0x9,0x14(%ebp)
c003420f:	0f 87 0b 03 00 00    	ja     c0034520 <_dtoa_r+0x4e0>
c0034215:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c0034219:	0f 8e 23 10 00 00    	jle    c0035242 <_dtoa_r+0x1202>
c003421f:	83 6d 14 04          	subl   $0x4,0x14(%ebp)
c0034223:	31 c0                	xor    %eax,%eax
c0034225:	83 7d 14 03          	cmpl   $0x3,0x14(%ebp)
c0034229:	0f 84 43 0d 00 00    	je     c0034f72 <_dtoa_r+0xf32>
c003422f:	0f 8e f3 00 00 00    	jle    c0034328 <_dtoa_r+0x2e8>
c0034235:	83 7d 14 04          	cmpl   $0x4,0x14(%ebp)
c0034239:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034240:	0f 84 f3 00 00 00    	je     c0034339 <_dtoa_r+0x2f9>
c0034246:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c003424a:	0f 85 d7 02 00 00    	jne    c0034527 <_dtoa_r+0x4e7>
c0034250:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034253:	03 5d 18             	add    0x18(%ebp),%ebx
c0034256:	89 5d 90             	mov    %ebx,-0x70(%ebp)
c0034259:	83 c3 01             	add    $0x1,%ebx
c003425c:	83 fb 0e             	cmp    $0xe,%ebx
c003425f:	0f 96 c2             	setbe  %dl
c0034262:	85 db                	test   %ebx,%ebx
c0034264:	89 5d a8             	mov    %ebx,-0x58(%ebp)
c0034267:	0f 8e a7 08 00 00    	jle    c0034b14 <_dtoa_r+0xad4>
c003426d:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034270:	83 fb 0e             	cmp    $0xe,%ebx
c0034273:	89 df                	mov    %ebx,%edi
c0034275:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c0034279:	20 45 b4             	and    %al,-0x4c(%ebp)
c003427c:	e9 d6 00 00 00       	jmp    c0034357 <_dtoa_r+0x317>
c0034281:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034288:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003428b:	8b 45 1c             	mov    0x1c(%ebp),%eax
c003428e:	85 d2                	test   %edx,%edx
c0034290:	c7 00 0f 27 00 00    	movl   $0x270f,(%eax)
c0034296:	b8 4d 91 03 c0       	mov    $0xc003914d,%eax
c003429b:	74 43                	je     c00342e0 <_dtoa_r+0x2a0>
c003429d:	8b 5d 24             	mov    0x24(%ebp),%ebx
c00342a0:	85 db                	test   %ebx,%ebx
c00342a2:	0f 84 30 fe ff ff    	je     c00340d8 <_dtoa_r+0x98>
c00342a8:	8b 75 24             	mov    0x24(%ebp),%esi
c00342ab:	8d 50 08             	lea    0x8(%eax),%edx
c00342ae:	80 78 03 00          	cmpb   $0x0,0x3(%eax)
c00342b2:	8d 48 03             	lea    0x3(%eax),%ecx
c00342b5:	0f 44 d1             	cmove  %ecx,%edx
c00342b8:	89 16                	mov    %edx,(%esi)
c00342ba:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00342c0:	5b                   	pop    %ebx
c00342c1:	5e                   	pop    %esi
c00342c2:	5f                   	pop    %edi
c00342c3:	5d                   	pop    %ebp
c00342c4:	c3                   	ret    
c00342c5:	8d 76 00             	lea    0x0(%esi),%esi
c00342c8:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
c00342ce:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
c00342d4:	89 7d c4             	mov    %edi,-0x3c(%ebp)
c00342d7:	e9 b7 fd ff ff       	jmp    c0034093 <_dtoa_r+0x53>
c00342dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00342e0:	81 e7 ff ff 0f 00    	and    $0xfffff,%edi
c00342e6:	ba 44 91 03 c0       	mov    $0xc0039144,%edx
c00342eb:	0f 44 c2             	cmove  %edx,%eax
c00342ee:	eb ad                	jmp    c003429d <_dtoa_r+0x25d>
c00342f0:	8b 45 bc             	mov    -0x44(%ebp),%eax
c00342f3:	81 eb ff 03 00 00    	sub    $0x3ff,%ebx
c00342f9:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00342fc:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c0034303:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0034308:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
c003430d:	89 45 bc             	mov    %eax,-0x44(%ebp)
c0034310:	e9 51 fe ff ff       	jmp    c0034166 <_dtoa_r+0x126>
c0034315:	8d 76 00             	lea    0x0(%esi),%esi
c0034318:	b8 bb 8f 03 c0       	mov    $0xc0038fbb,%eax
c003431d:	e9 b6 fd ff ff       	jmp    c00340d8 <_dtoa_r+0x98>
c0034322:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034328:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c003432c:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0034333:	0f 85 ee 01 00 00    	jne    c0034527 <_dtoa_r+0x4e7>
c0034339:	8b 55 18             	mov    0x18(%ebp),%edx
c003433c:	85 d2                	test   %edx,%edx
c003433e:	0f 8e b6 07 00 00    	jle    c0034afa <_dtoa_r+0xaba>
c0034344:	8b 7d 18             	mov    0x18(%ebp),%edi
c0034347:	83 ff 0e             	cmp    $0xe,%edi
c003434a:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c003434e:	20 45 b4             	and    %al,-0x4c(%ebp)
c0034351:	89 7d 90             	mov    %edi,-0x70(%ebp)
c0034354:	89 7d a8             	mov    %edi,-0x58(%ebp)
c0034357:	83 ff 17             	cmp    $0x17,%edi
c003435a:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034361:	0f 86 e5 0e 00 00    	jbe    c003524c <_dtoa_r+0x120c>
c0034367:	b9 01 00 00 00       	mov    $0x1,%ecx
c003436c:	b8 04 00 00 00       	mov    $0x4,%eax
c0034371:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034378:	01 c0                	add    %eax,%eax
c003437a:	89 ca                	mov    %ecx,%edx
c003437c:	8d 58 14             	lea    0x14(%eax),%ebx
c003437f:	39 fb                	cmp    %edi,%ebx
c0034381:	8d 49 01             	lea    0x1(%ecx),%ecx
c0034384:	76 f2                	jbe    c0034378 <_dtoa_r+0x338>
c0034386:	89 56 44             	mov    %edx,0x44(%esi)
c0034389:	89 54 24 04          	mov    %edx,0x4(%esp)
c003438d:	89 34 24             	mov    %esi,(%esp)
c0034390:	e8 db 17 00 00       	call   c0035b70 <_Balloc>
c0034395:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
c0034399:	89 c7                	mov    %eax,%edi
c003439b:	89 46 40             	mov    %eax,0x40(%esi)
c003439e:	0f 84 bb 01 00 00    	je     c003455f <_dtoa_r+0x51f>
c00343a4:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c00343a7:	dd 45 c0             	fldl   -0x40(%ebp)
c00343aa:	85 db                	test   %ebx,%ebx
c00343ac:	0f 8e de 07 00 00    	jle    c0034b90 <_dtoa_r+0xb50>
c00343b2:	89 d8                	mov    %ebx,%eax
c00343b4:	83 e0 0f             	and    $0xf,%eax
c00343b7:	dd 04 c5 40 92 03 c0 	fldl   -0x3ffc6dc0(,%eax,8)
c00343be:	89 d8                	mov    %ebx,%eax
c00343c0:	c1 f8 04             	sar    $0x4,%eax
c00343c3:	a8 10                	test   $0x10,%al
c00343c5:	0f 84 cd 05 00 00    	je     c0034998 <_dtoa_r+0x958>
c00343cb:	dd 05 20 92 03 c0    	fldl   0xc0039220
c00343d1:	83 e0 0f             	and    $0xf,%eax
c00343d4:	b9 03 00 00 00       	mov    $0x3,%ecx
c00343d9:	d8 fa                	fdivr  %st(2),%st
c00343db:	85 c0                	test   %eax,%eax
c00343dd:	74 22                	je     c0034401 <_dtoa_r+0x3c1>
c00343df:	31 d2                	xor    %edx,%edx
c00343e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00343e8:	a8 01                	test   $0x1,%al
c00343ea:	74 0e                	je     c00343fa <_dtoa_r+0x3ba>
c00343ec:	d9 c9                	fxch   %st(1)
c00343ee:	dc 0c d5 00 92 03 c0 	fmull  -0x3ffc6e00(,%edx,8)
c00343f5:	d9 c9                	fxch   %st(1)
c00343f7:	83 c1 01             	add    $0x1,%ecx
c00343fa:	83 c2 01             	add    $0x1,%edx
c00343fd:	d1 f8                	sar    %eax
c00343ff:	75 e7                	jne    c00343e8 <_dtoa_r+0x3a8>
c0034401:	de f1                	fdivp  %st,%st(1)
c0034403:	8b 45 9c             	mov    -0x64(%ebp),%eax
c0034406:	85 c0                	test   %eax,%eax
c0034408:	74 0a                	je     c0034414 <_dtoa_r+0x3d4>
c003440a:	d9 e8                	fld1   
c003440c:	df e9                	fucomip %st(1),%st
c003440e:	0f 87 92 0b 00 00    	ja     c0034fa6 <_dtoa_r+0xf66>
c0034414:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034417:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003441a:	db 45 d4             	fildl  -0x2c(%ebp)
c003441d:	d8 c9                	fmul   %st(1),%st
c003441f:	d8 05 60 91 03 c0    	fadds  0xc0039160
c0034425:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034428:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c003442f:	85 c0                	test   %eax,%eax
c0034431:	0f 84 89 05 00 00    	je     c00349c0 <_dtoa_r+0x980>
c0034437:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003443a:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c003443d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034440:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034443:	85 c0                	test   %eax,%eax
c0034445:	0f 84 b5 07 00 00    	je     c0034c00 <_dtoa_r+0xbc0>
c003444b:	d9 05 68 91 03 c0    	flds   0xc0039168
c0034451:	8d 57 01             	lea    0x1(%edi),%edx
c0034454:	dc 34 cd 38 92 03 c0 	fdivl  -0x3ffc6dc8(,%ecx,8)
c003445b:	d9 7d d2             	fnstcw -0x2e(%ebp)
c003445e:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034462:	b4 0c                	mov    $0xc,%ah
c0034464:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034468:	dc 65 c0             	fsubl  -0x40(%ebp)
c003446b:	d9 c9                	fxch   %st(1)
c003446d:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034470:	db 55 d4             	fistl  -0x2c(%ebp)
c0034473:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034476:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034479:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003447c:	83 c0 30             	add    $0x30,%eax
c003447f:	db 45 d4             	fildl  -0x2c(%ebp)
c0034482:	de e9                	fsubrp %st,%st(1)
c0034484:	d9 c9                	fxch   %st(1)
c0034486:	88 07                	mov    %al,(%edi)
c0034488:	db e9                	fucomi %st(1),%st
c003448a:	77 7f                	ja     c003450b <_dtoa_r+0x4cb>
c003448c:	d9 c1                	fld    %st(1)
c003448e:	d8 2d 58 91 03 c0    	fsubrs 0xc0039158
c0034494:	d9 c9                	fxch   %st(1)
c0034496:	db e9                	fucomi %st(1),%st
c0034498:	dd d9                	fstp   %st(1)
c003449a:	0f 87 33 0c 00 00    	ja     c00350d3 <_dtoa_r+0x1093>
c00344a0:	83 f9 01             	cmp    $0x1,%ecx
c00344a3:	0f 8e c4 06 00 00    	jle    c0034b6d <_dtoa_r+0xb2d>
c00344a9:	01 f9                	add    %edi,%ecx
c00344ab:	d9 05 5c 91 03 c0    	flds   0xc003915c
c00344b1:	eb 25                	jmp    c00344d8 <_dtoa_r+0x498>
c00344b3:	90                   	nop
c00344b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00344b8:	d9 c1                	fld    %st(1)
c00344ba:	d8 2d 58 91 03 c0    	fsubrs 0xc0039158
c00344c0:	d9 c9                	fxch   %st(1)
c00344c2:	db e9                	fucomi %st(1),%st
c00344c4:	dd d9                	fstp   %st(1)
c00344c6:	0f 87 14 0c 00 00    	ja     c00350e0 <_dtoa_r+0x10a0>
c00344cc:	39 ca                	cmp    %ecx,%edx
c00344ce:	0f 84 a4 06 00 00    	je     c0034b78 <_dtoa_r+0xb38>
c00344d4:	d9 c9                	fxch   %st(1)
c00344d6:	d9 ca                	fxch   %st(2)
c00344d8:	dc c9                	fmul   %st,%st(1)
c00344da:	83 c2 01             	add    $0x1,%edx
c00344dd:	dc ca                	fmul   %st,%st(2)
c00344df:	d9 ca                	fxch   %st(2)
c00344e1:	d9 6d d0             	fldcw  -0x30(%ebp)
c00344e4:	db 55 d4             	fistl  -0x2c(%ebp)
c00344e7:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00344ea:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00344ed:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00344f0:	83 c0 30             	add    $0x30,%eax
c00344f3:	db 45 d4             	fildl  -0x2c(%ebp)
c00344f6:	de e9                	fsubrp %st,%st(1)
c00344f8:	d9 c9                	fxch   %st(1)
c00344fa:	88 42 ff             	mov    %al,-0x1(%edx)
c00344fd:	db e9                	fucomi %st(1),%st
c00344ff:	76 b7                	jbe    c00344b8 <_dtoa_r+0x478>
c0034501:	dd d8                	fstp   %st(0)
c0034503:	dd d8                	fstp   %st(0)
c0034505:	dd d8                	fstp   %st(0)
c0034507:	dd d8                	fstp   %st(0)
c0034509:	eb 06                	jmp    c0034511 <_dtoa_r+0x4d1>
c003450b:	dd d8                	fstp   %st(0)
c003450d:	dd d8                	fstp   %st(0)
c003450f:	dd d8                	fstp   %st(0)
c0034511:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034514:	89 fb                	mov    %edi,%ebx
c0034516:	89 d7                	mov    %edx,%edi
c0034518:	89 45 b8             	mov    %eax,-0x48(%ebp)
c003451b:	e9 70 03 00 00       	jmp    c0034890 <_dtoa_r+0x850>
c0034520:	c7 45 14 00 00 00 00 	movl   $0x0,0x14(%ebp)
c0034527:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c003452e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0034535:	00 
c0034536:	89 34 24             	mov    %esi,(%esp)
c0034539:	e8 32 16 00 00       	call   c0035b70 <_Balloc>
c003453e:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034545:	c7 45 a8 ff ff ff ff 	movl   $0xffffffff,-0x58(%ebp)
c003454c:	c7 45 90 ff ff ff ff 	movl   $0xffffffff,-0x70(%ebp)
c0034553:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%ebp)
c003455a:	89 c7                	mov    %eax,%edi
c003455c:	89 46 40             	mov    %eax,0x40(%esi)
c003455f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0034562:	85 c0                	test   %eax,%eax
c0034564:	0f 88 2e 01 00 00    	js     c0034698 <_dtoa_r+0x658>
c003456a:	83 7d b8 0e          	cmpl   $0xe,-0x48(%ebp)
c003456e:	0f 8f 24 01 00 00    	jg     c0034698 <_dtoa_r+0x658>
c0034574:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034577:	dd 04 c5 40 92 03 c0 	fldl   -0x3ffc6dc0(,%eax,8)
c003457e:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034581:	85 c0                	test   %eax,%eax
c0034583:	7f 0e                	jg     c0034593 <_dtoa_r+0x553>
c0034585:	8b 45 18             	mov    0x18(%ebp),%eax
c0034588:	c1 e8 1f             	shr    $0x1f,%eax
c003458b:	84 c0                	test   %al,%al
c003458d:	0f 85 9d 07 00 00    	jne    c0034d30 <_dtoa_r+0xcf0>
c0034593:	dd 45 c0             	fldl   -0x40(%ebp)
c0034596:	d9 c0                	fld    %st(0)
c0034598:	d8 f2                	fdiv   %st(2),%st
c003459a:	d9 7d d2             	fnstcw -0x2e(%ebp)
c003459d:	83 7d a8 01          	cmpl   $0x1,-0x58(%ebp)
c00345a1:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c00345a5:	b4 0c                	mov    $0xc,%ah
c00345a7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c00345ab:	8d 47 01             	lea    0x1(%edi),%eax
c00345ae:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00345b1:	d9 6d d0             	fldcw  -0x30(%ebp)
c00345b4:	db 5d d4             	fistpl -0x2c(%ebp)
c00345b7:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00345ba:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c00345bd:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c00345c0:	8d 42 30             	lea    0x30(%edx),%eax
c00345c3:	db 45 d4             	fildl  -0x2c(%ebp)
c00345c6:	d8 ca                	fmul   %st(2),%st
c00345c8:	88 07                	mov    %al,(%edi)
c00345ca:	de e9                	fsubrp %st,%st(1)
c00345cc:	74 66                	je     c0034634 <_dtoa_r+0x5f4>
c00345ce:	d8 0d 5c 91 03 c0    	fmuls  0xc003915c
c00345d4:	d9 ee                	fldz   
c00345d6:	d9 c9                	fxch   %st(1)
c00345d8:	db e9                	fucomi %st(1),%st
c00345da:	dd d9                	fstp   %st(1)
c00345dc:	0f 8b 33 0c 00 00    	jnp    c0035215 <_dtoa_r+0x11d5>
c00345e2:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c00345e5:	8d 47 02             	lea    0x2(%edi),%eax
c00345e8:	d9 05 5c 91 03 c0    	flds   0xc003915c
c00345ee:	01 fb                	add    %edi,%ebx
c00345f0:	eb 19                	jmp    c003460b <_dtoa_r+0x5cb>
c00345f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00345f8:	dc c9                	fmul   %st,%st(1)
c00345fa:	83 c0 01             	add    $0x1,%eax
c00345fd:	d9 ee                	fldz   
c00345ff:	d9 ca                	fxch   %st(2)
c0034601:	db ea                	fucomi %st(2),%st
c0034603:	dd da                	fstp   %st(2)
c0034605:	0f 8b 73 09 00 00    	jnp    c0034f7e <_dtoa_r+0xf3e>
c003460b:	d9 c1                	fld    %st(1)
c003460d:	39 d8                	cmp    %ebx,%eax
c003460f:	d8 f3                	fdiv   %st(3),%st
c0034611:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034614:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034617:	db 5d d4             	fistpl -0x2c(%ebp)
c003461a:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003461d:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0034620:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034623:	8d 4a 30             	lea    0x30(%edx),%ecx
c0034626:	db 45 d4             	fildl  -0x2c(%ebp)
c0034629:	d8 cb                	fmul   %st(3),%st
c003462b:	88 48 ff             	mov    %cl,-0x1(%eax)
c003462e:	de ea                	fsubrp %st,%st(2)
c0034630:	75 c6                	jne    c00345f8 <_dtoa_r+0x5b8>
c0034632:	dd d8                	fstp   %st(0)
c0034634:	d8 c0                	fadd   %st(0),%st
c0034636:	db e9                	fucomi %st(1),%st
c0034638:	77 1e                	ja     c0034658 <_dtoa_r+0x618>
c003463a:	d9 c9                	fxch   %st(1)
c003463c:	df e9                	fucomip %st(1),%st
c003463e:	dd d8                	fstp   %st(0)
c0034640:	0f 8a 44 09 00 00    	jp     c0034f8a <_dtoa_r+0xf4a>
c0034646:	0f 85 3e 09 00 00    	jne    c0034f8a <_dtoa_r+0xf4a>
c003464c:	83 e2 01             	and    $0x1,%edx
c003464f:	90                   	nop
c0034650:	0f 84 34 09 00 00    	je     c0034f8a <_dtoa_r+0xf4a>
c0034656:	eb 04                	jmp    c003465c <_dtoa_r+0x61c>
c0034658:	dd d8                	fstp   %st(0)
c003465a:	dd d8                	fstp   %st(0)
c003465c:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c003465f:	89 fb                	mov    %edi,%ebx
c0034661:	0f b6 41 ff          	movzbl -0x1(%ecx),%eax
c0034665:	89 cf                	mov    %ecx,%edi
c0034667:	8b 4d b8             	mov    -0x48(%ebp),%ecx
c003466a:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
c003466d:	eb 0f                	jmp    c003467e <_dtoa_r+0x63e>
c003466f:	90                   	nop
c0034670:	39 d3                	cmp    %edx,%ebx
c0034672:	0f 84 75 09 00 00    	je     c0034fed <_dtoa_r+0xfad>
c0034678:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c003467c:	89 d7                	mov    %edx,%edi
c003467e:	3c 39                	cmp    $0x39,%al
c0034680:	8d 57 ff             	lea    -0x1(%edi),%edx
c0034683:	74 eb                	je     c0034670 <_dtoa_r+0x630>
c0034685:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0034688:	83 c0 01             	add    $0x1,%eax
c003468b:	88 02                	mov    %al,(%edx)
c003468d:	89 4d b8             	mov    %ecx,-0x48(%ebp)
c0034690:	e9 fb 01 00 00       	jmp    c0034890 <_dtoa_r+0x850>
c0034695:	8d 76 00             	lea    0x0(%esi),%esi
c0034698:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c003469b:	85 c9                	test   %ecx,%ecx
c003469d:	0f 85 9d 02 00 00    	jne    c0034940 <_dtoa_r+0x900>
c00346a3:	8b 55 b0             	mov    -0x50(%ebp),%edx
c00346a6:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00346a9:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c00346b0:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00346b3:	85 c0                	test   %eax,%eax
c00346b5:	7e 14                	jle    c00346cb <_dtoa_r+0x68b>
c00346b7:	85 db                	test   %ebx,%ebx
c00346b9:	7e 10                	jle    c00346cb <_dtoa_r+0x68b>
c00346bb:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00346be:	39 d8                	cmp    %ebx,%eax
c00346c0:	0f 4f c3             	cmovg  %ebx,%eax
c00346c3:	29 45 a0             	sub    %eax,-0x60(%ebp)
c00346c6:	29 c3                	sub    %eax,%ebx
c00346c8:	29 45 ac             	sub    %eax,-0x54(%ebp)
c00346cb:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00346ce:	85 c0                	test   %eax,%eax
c00346d0:	7e 61                	jle    c0034733 <_dtoa_r+0x6f3>
c00346d2:	8b 45 98             	mov    -0x68(%ebp),%eax
c00346d5:	85 c0                	test   %eax,%eax
c00346d7:	0f 84 72 04 00 00    	je     c0034b4f <_dtoa_r+0xb0f>
c00346dd:	85 d2                	test   %edx,%edx
c00346df:	7e 47                	jle    c0034728 <_dtoa_r+0x6e8>
c00346e1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00346e4:	89 54 24 08          	mov    %edx,0x8(%esp)
c00346e8:	89 34 24             	mov    %esi,(%esp)
c00346eb:	89 55 88             	mov    %edx,-0x78(%ebp)
c00346ee:	89 44 24 04          	mov    %eax,0x4(%esp)
c00346f2:	e8 f9 19 00 00       	call   c00360f0 <__pow5mult>
c00346f7:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c00346fa:	89 34 24             	mov    %esi,(%esp)
c00346fd:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034701:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034705:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034708:	e8 13 18 00 00       	call   c0035f20 <__multiply>
c003470d:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c0034710:	89 34 24             	mov    %esi,(%esp)
c0034713:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034717:	89 45 8c             	mov    %eax,-0x74(%ebp)
c003471a:	e8 f1 14 00 00       	call   c0035c10 <_Bfree>
c003471f:	8b 45 8c             	mov    -0x74(%ebp),%eax
c0034722:	8b 55 88             	mov    -0x78(%ebp),%edx
c0034725:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034728:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003472b:	29 d0                	sub    %edx,%eax
c003472d:	0f 85 1f 04 00 00    	jne    c0034b52 <_dtoa_r+0xb12>
c0034733:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c003473a:	00 
c003473b:	89 34 24             	mov    %esi,(%esp)
c003473e:	e8 ad 17 00 00       	call   c0035ef0 <__i2b>
c0034743:	8b 4d 94             	mov    -0x6c(%ebp),%ecx
c0034746:	85 c9                	test   %ecx,%ecx
c0034748:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003474b:	7e 13                	jle    c0034760 <_dtoa_r+0x720>
c003474d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034751:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034755:	89 34 24             	mov    %esi,(%esp)
c0034758:	e8 93 19 00 00       	call   c00360f0 <__pow5mult>
c003475d:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034760:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0034764:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c003476b:	0f 8e f7 05 00 00    	jle    c0034d68 <_dtoa_r+0xd28>
c0034771:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0034774:	ba 01 00 00 00       	mov    $0x1,%edx
c0034779:	85 c0                	test   %eax,%eax
c003477b:	0f 85 27 05 00 00    	jne    c0034ca8 <_dtoa_r+0xc68>
c0034781:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034784:	01 d0                	add    %edx,%eax
c0034786:	83 e0 1f             	and    $0x1f,%eax
c0034789:	89 c2                	mov    %eax,%edx
c003478b:	0f 84 57 03 00 00    	je     c0034ae8 <_dtoa_r+0xaa8>
c0034791:	b8 20 00 00 00       	mov    $0x20,%eax
c0034796:	29 d0                	sub    %edx,%eax
c0034798:	83 f8 04             	cmp    $0x4,%eax
c003479b:	0f 8e 8c 0a 00 00    	jle    c003522d <_dtoa_r+0x11ed>
c00347a1:	b8 1c 00 00 00       	mov    $0x1c,%eax
c00347a6:	29 d0                	sub    %edx,%eax
c00347a8:	01 45 a0             	add    %eax,-0x60(%ebp)
c00347ab:	01 c3                	add    %eax,%ebx
c00347ad:	01 45 ac             	add    %eax,-0x54(%ebp)
c00347b0:	8b 45 a0             	mov    -0x60(%ebp),%eax
c00347b3:	85 c0                	test   %eax,%eax
c00347b5:	7e 16                	jle    c00347cd <_dtoa_r+0x78d>
c00347b7:	89 44 24 08          	mov    %eax,0x8(%esp)
c00347bb:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c00347be:	89 34 24             	mov    %esi,(%esp)
c00347c1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00347c5:	e8 46 1a 00 00       	call   c0036210 <__lshift>
c00347ca:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00347cd:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00347d0:	85 c0                	test   %eax,%eax
c00347d2:	7e 16                	jle    c00347ea <_dtoa_r+0x7aa>
c00347d4:	89 44 24 08          	mov    %eax,0x8(%esp)
c00347d8:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00347db:	89 34 24             	mov    %esi,(%esp)
c00347de:	89 44 24 04          	mov    %eax,0x4(%esp)
c00347e2:	e8 29 1a 00 00       	call   c0036210 <__lshift>
c00347e7:	89 45 b0             	mov    %eax,-0x50(%ebp)
c00347ea:	8b 45 9c             	mov    -0x64(%ebp),%eax
c00347ed:	85 c0                	test   %eax,%eax
c00347ef:	0f 85 d3 04 00 00    	jne    c0034cc8 <_dtoa_r+0xc88>
c00347f5:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c00347f9:	0f 8e 11 02 00 00    	jle    c0034a10 <_dtoa_r+0x9d0>
c00347ff:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034802:	85 c0                	test   %eax,%eax
c0034804:	0f 8f 06 02 00 00    	jg     c0034a10 <_dtoa_r+0x9d0>
c003480a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003480d:	85 c0                	test   %eax,%eax
c003480f:	0f 85 e0 01 00 00    	jne    c00349f5 <_dtoa_r+0x9b5>
c0034815:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034818:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c003481f:	00 
c0034820:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
c0034827:	00 
c0034828:	89 34 24             	mov    %esi,(%esp)
c003482b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003482f:	e8 fc 13 00 00       	call   c0035c30 <__multadd>
c0034834:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034837:	89 44 24 04          	mov    %eax,0x4(%esp)
c003483b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c003483e:	89 04 24             	mov    %eax,(%esp)
c0034841:	e8 ea 1a 00 00       	call   c0036330 <__mcmp>
c0034846:	85 c0                	test   %eax,%eax
c0034848:	0f 8e a7 01 00 00    	jle    c00349f5 <_dtoa_r+0x9b5>
c003484e:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0034852:	89 fb                	mov    %edi,%ebx
c0034854:	83 c7 01             	add    $0x1,%edi
c0034857:	c6 47 ff 31          	movb   $0x31,-0x1(%edi)
c003485b:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034862:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034865:	89 34 24             	mov    %esi,(%esp)
c0034868:	89 44 24 04          	mov    %eax,0x4(%esp)
c003486c:	e8 9f 13 00 00       	call   c0035c10 <_Bfree>
c0034871:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034874:	85 c0                	test   %eax,%eax
c0034876:	74 18                	je     c0034890 <_dtoa_r+0x850>
c0034878:	39 45 c0             	cmp    %eax,-0x40(%ebp)
c003487b:	0f 85 a7 02 00 00    	jne    c0034b28 <_dtoa_r+0xae8>
c0034881:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034884:	89 34 24             	mov    %esi,(%esp)
c0034887:	89 44 24 04          	mov    %eax,0x4(%esp)
c003488b:	e8 80 13 00 00       	call   c0035c10 <_Bfree>
c0034890:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034893:	89 34 24             	mov    %esi,(%esp)
c0034896:	89 44 24 04          	mov    %eax,0x4(%esp)
c003489a:	e8 71 13 00 00       	call   c0035c10 <_Bfree>
c003489f:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00348a2:	8b 75 1c             	mov    0x1c(%ebp),%esi
c00348a5:	c6 07 00             	movb   $0x0,(%edi)
c00348a8:	83 c0 01             	add    $0x1,%eax
c00348ab:	89 06                	mov    %eax,(%esi)
c00348ad:	8b 45 24             	mov    0x24(%ebp),%eax
c00348b0:	85 c0                	test   %eax,%eax
c00348b2:	0f 84 90 02 00 00    	je     c0034b48 <_dtoa_r+0xb08>
c00348b8:	8b 45 24             	mov    0x24(%ebp),%eax
c00348bb:	89 38                	mov    %edi,(%eax)
c00348bd:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00348c3:	89 d8                	mov    %ebx,%eax
c00348c5:	5b                   	pop    %ebx
c00348c6:	5e                   	pop    %esi
c00348c7:	5f                   	pop    %edi
c00348c8:	5d                   	pop    %ebp
c00348c9:	c3                   	ret    
c00348ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00348d0:	db 45 b8             	fildl  -0x48(%ebp)
c00348d3:	df e9                	fucomip %st(1),%st
c00348d5:	dd d8                	fstp   %st(0)
c00348d7:	7a 06                	jp     c00348df <_dtoa_r+0x89f>
c00348d9:	0f 84 cc f8 ff ff    	je     c00341ab <_dtoa_r+0x16b>
c00348df:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c00348e3:	e9 c3 f8 ff ff       	jmp    c00341ab <_dtoa_r+0x16b>
c00348e8:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00348eb:	29 45 a0             	sub    %eax,-0x60(%ebp)
c00348ee:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%ebp)
c00348f5:	f7 d8                	neg    %eax
c00348f7:	89 45 b0             	mov    %eax,-0x50(%ebp)
c00348fa:	e9 0c f9 ff ff       	jmp    c003420b <_dtoa_r+0x1cb>
c00348ff:	90                   	nop
c0034900:	f7 d8                	neg    %eax
c0034902:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034905:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
c003490c:	e9 e2 f8 ff ff       	jmp    c00341f3 <_dtoa_r+0x1b3>
c0034911:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034918:	8b 45 c0             	mov    -0x40(%ebp),%eax
c003491b:	b9 ee fb ff ff       	mov    $0xfffffbee,%ecx
c0034920:	29 d9                	sub    %ebx,%ecx
c0034922:	d3 e0                	shl    %cl,%eax
c0034924:	e9 1b f8 ff ff       	jmp    c0034144 <_dtoa_r+0x104>
c0034929:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034930:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c0034937:	e9 a0 f8 ff ff       	jmp    c00341dc <_dtoa_r+0x19c>
c003493c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034940:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0034944:	0f 8e fe 06 00 00    	jle    c0035048 <_dtoa_r+0x1008>
c003494a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003494d:	83 e8 01             	sub    $0x1,%eax
c0034950:	39 45 b0             	cmp    %eax,-0x50(%ebp)
c0034953:	0f 8c 3b 06 00 00    	jl     c0034f94 <_dtoa_r+0xf54>
c0034959:	8b 55 b0             	mov    -0x50(%ebp),%edx
c003495c:	29 c2                	sub    %eax,%edx
c003495e:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c0034961:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0034964:	85 c9                	test   %ecx,%ecx
c0034966:	89 c8                	mov    %ecx,%eax
c0034968:	0f 88 83 07 00 00    	js     c00350f1 <_dtoa_r+0x10b1>
c003496e:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0034975:	00 
c0034976:	89 34 24             	mov    %esi,(%esp)
c0034979:	89 55 8c             	mov    %edx,-0x74(%ebp)
c003497c:	01 45 a0             	add    %eax,-0x60(%ebp)
c003497f:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034982:	e8 69 15 00 00       	call   c0035ef0 <__i2b>
c0034987:	8b 55 8c             	mov    -0x74(%ebp),%edx
c003498a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003498d:	e9 1e fd ff ff       	jmp    c00346b0 <_dtoa_r+0x670>
c0034992:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034998:	d9 c1                	fld    %st(1)
c003499a:	b9 02 00 00 00       	mov    $0x2,%ecx
c003499f:	e9 37 fa ff ff       	jmp    c00343db <_dtoa_r+0x39b>
c00349a4:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c00349a7:	db 45 d4             	fildl  -0x2c(%ebp)
c00349aa:	d8 c9                	fmul   %st(1),%st
c00349ac:	d8 05 60 91 03 c0    	fadds  0xc0039160
c00349b2:	dd 5d c0             	fstpl  -0x40(%ebp)
c00349b5:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c00349bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00349c0:	d8 25 64 91 03 c0    	fsubs  0xc0039164
c00349c6:	dd 45 c0             	fldl   -0x40(%ebp)
c00349c9:	d9 c9                	fxch   %st(1)
c00349cb:	db e9                	fucomi %st(1),%st
c00349cd:	0f 87 0d 02 00 00    	ja     c0034be0 <_dtoa_r+0xba0>
c00349d3:	d9 c9                	fxch   %st(1)
c00349d5:	d9 e0                	fchs   
c00349d7:	df e9                	fucomip %st(1),%st
c00349d9:	dd d8                	fstp   %st(0)
c00349db:	0f 86 a7 01 00 00    	jbe    c0034b88 <_dtoa_r+0xb48>
c00349e1:	dd d8                	fstp   %st(0)
c00349e3:	eb 02                	jmp    c00349e7 <_dtoa_r+0x9a7>
c00349e5:	dd d8                	fstp   %st(0)
c00349e7:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c00349ee:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c00349f5:	8b 45 18             	mov    0x18(%ebp),%eax
c00349f8:	89 fb                	mov    %edi,%ebx
c00349fa:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034a01:	f7 d0                	not    %eax
c0034a03:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0034a06:	e9 57 fe ff ff       	jmp    c0034862 <_dtoa_r+0x822>
c0034a0b:	90                   	nop
c0034a0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034a10:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034a13:	85 c0                	test   %eax,%eax
c0034a15:	0f 85 c5 03 00 00    	jne    c0034de0 <_dtoa_r+0xda0>
c0034a1b:	89 75 08             	mov    %esi,0x8(%ebp)
c0034a1e:	bb 01 00 00 00       	mov    $0x1,%ebx
c0034a23:	8b 75 a4             	mov    -0x5c(%ebp),%esi
c0034a26:	eb 24                	jmp    c0034a4c <_dtoa_r+0xa0c>
c0034a28:	8b 45 08             	mov    0x8(%ebp),%eax
c0034a2b:	83 c3 01             	add    $0x1,%ebx
c0034a2e:	89 74 24 04          	mov    %esi,0x4(%esp)
c0034a32:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034a39:	00 
c0034a3a:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034a41:	00 
c0034a42:	89 04 24             	mov    %eax,(%esp)
c0034a45:	e8 e6 11 00 00       	call   c0035c30 <__multadd>
c0034a4a:	89 c6                	mov    %eax,%esi
c0034a4c:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034a4f:	89 f0                	mov    %esi,%eax
c0034a51:	e8 1a f4 ff ff       	call   c0033e70 <quorem>
c0034a56:	83 c0 30             	add    $0x30,%eax
c0034a59:	3b 5d a8             	cmp    -0x58(%ebp),%ebx
c0034a5c:	88 44 1f ff          	mov    %al,-0x1(%edi,%ebx,1)
c0034a60:	7c c6                	jl     c0034a28 <_dtoa_r+0x9e8>
c0034a62:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034a65:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034a68:	ba 01 00 00 00       	mov    $0x1,%edx
c0034a6d:	89 75 a4             	mov    %esi,-0x5c(%ebp)
c0034a70:	8b 75 08             	mov    0x8(%ebp),%esi
c0034a73:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034a7a:	85 c0                	test   %eax,%eax
c0034a7c:	0f 4f d0             	cmovg  %eax,%edx
c0034a7f:	01 fa                	add    %edi,%edx
c0034a81:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034a84:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0034a8b:	00 
c0034a8c:	89 34 24             	mov    %esi,(%esp)
c0034a8f:	89 55 ac             	mov    %edx,-0x54(%ebp)
c0034a92:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034a96:	e8 75 17 00 00       	call   c0036210 <__lshift>
c0034a9b:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0034a9e:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0034aa2:	89 04 24             	mov    %eax,(%esp)
c0034aa5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034aa8:	e8 83 18 00 00       	call   c0036330 <__mcmp>
c0034aad:	8b 55 ac             	mov    -0x54(%ebp),%edx
c0034ab0:	83 f8 00             	cmp    $0x0,%eax
c0034ab3:	0f 8e 41 06 00 00    	jle    c00350fa <_dtoa_r+0x10ba>
c0034ab9:	0f b6 4a ff          	movzbl -0x1(%edx),%ecx
c0034abd:	eb 0f                	jmp    c0034ace <_dtoa_r+0xa8e>
c0034abf:	90                   	nop
c0034ac0:	39 c7                	cmp    %eax,%edi
c0034ac2:	0f 84 70 05 00 00    	je     c0035038 <_dtoa_r+0xff8>
c0034ac8:	0f b6 48 ff          	movzbl -0x1(%eax),%ecx
c0034acc:	89 c2                	mov    %eax,%edx
c0034ace:	80 f9 39             	cmp    $0x39,%cl
c0034ad1:	8d 42 ff             	lea    -0x1(%edx),%eax
c0034ad4:	74 ea                	je     c0034ac0 <_dtoa_r+0xa80>
c0034ad6:	83 c1 01             	add    $0x1,%ecx
c0034ad9:	89 fb                	mov    %edi,%ebx
c0034adb:	88 08                	mov    %cl,(%eax)
c0034add:	89 d7                	mov    %edx,%edi
c0034adf:	e9 7e fd ff ff       	jmp    c0034862 <_dtoa_r+0x822>
c0034ae4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034ae8:	b8 1c 00 00 00       	mov    $0x1c,%eax
c0034aed:	01 45 a0             	add    %eax,-0x60(%ebp)
c0034af0:	01 c3                	add    %eax,%ebx
c0034af2:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034af5:	e9 b6 fc ff ff       	jmp    c00347b0 <_dtoa_r+0x770>
c0034afa:	ba 01 00 00 00       	mov    $0x1,%edx
c0034aff:	c7 45 90 01 00 00 00 	movl   $0x1,-0x70(%ebp)
c0034b06:	c7 45 a8 01 00 00 00 	movl   $0x1,-0x58(%ebp)
c0034b0d:	c7 45 18 01 00 00 00 	movl   $0x1,0x18(%ebp)
c0034b14:	21 c2                	and    %eax,%edx
c0034b16:	88 55 b4             	mov    %dl,-0x4c(%ebp)
c0034b19:	31 d2                	xor    %edx,%edx
c0034b1b:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034b22:	e9 62 f8 ff ff       	jmp    c0034389 <_dtoa_r+0x349>
c0034b27:	90                   	nop
c0034b28:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034b2b:	85 d2                	test   %edx,%edx
c0034b2d:	0f 84 4e fd ff ff    	je     c0034881 <_dtoa_r+0x841>
c0034b33:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034b36:	89 34 24             	mov    %esi,(%esp)
c0034b39:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034b3d:	e8 ce 10 00 00       	call   c0035c10 <_Bfree>
c0034b42:	e9 3a fd ff ff       	jmp    c0034881 <_dtoa_r+0x841>
c0034b47:	90                   	nop
c0034b48:	89 d8                	mov    %ebx,%eax
c0034b4a:	e9 89 f5 ff ff       	jmp    c00340d8 <_dtoa_r+0x98>
c0034b4f:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034b52:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034b56:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034b59:	89 34 24             	mov    %esi,(%esp)
c0034b5c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034b60:	e8 8b 15 00 00       	call   c00360f0 <__pow5mult>
c0034b65:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034b68:	e9 c6 fb ff ff       	jmp    c0034733 <_dtoa_r+0x6f3>
c0034b6d:	dd d8                	fstp   %st(0)
c0034b6f:	dd d8                	fstp   %st(0)
c0034b71:	eb 15                	jmp    c0034b88 <_dtoa_r+0xb48>
c0034b73:	90                   	nop
c0034b74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034b78:	dd d8                	fstp   %st(0)
c0034b7a:	dd d8                	fstp   %st(0)
c0034b7c:	dd d8                	fstp   %st(0)
c0034b7e:	eb 08                	jmp    c0034b88 <_dtoa_r+0xb48>
c0034b80:	dd d8                	fstp   %st(0)
c0034b82:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034b88:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034b8b:	e9 cf f9 ff ff       	jmp    c003455f <_dtoa_r+0x51f>
c0034b90:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034b93:	f7 d8                	neg    %eax
c0034b95:	0f 84 6a 04 00 00    	je     c0035005 <_dtoa_r+0xfc5>
c0034b9b:	89 c2                	mov    %eax,%edx
c0034b9d:	b9 02 00 00 00       	mov    $0x2,%ecx
c0034ba2:	83 e2 0f             	and    $0xf,%edx
c0034ba5:	c1 f8 04             	sar    $0x4,%eax
c0034ba8:	dd 04 d5 40 92 03 c0 	fldl   -0x3ffc6dc0(,%edx,8)
c0034baf:	85 c0                	test   %eax,%eax
c0034bb1:	d8 c9                	fmul   %st(1),%st
c0034bb3:	0f 84 4a f8 ff ff    	je     c0034403 <_dtoa_r+0x3c3>
c0034bb9:	31 d2                	xor    %edx,%edx
c0034bbb:	90                   	nop
c0034bbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034bc0:	a8 01                	test   $0x1,%al
c0034bc2:	74 0a                	je     c0034bce <_dtoa_r+0xb8e>
c0034bc4:	dc 0c d5 00 92 03 c0 	fmull  -0x3ffc6e00(,%edx,8)
c0034bcb:	83 c1 01             	add    $0x1,%ecx
c0034bce:	83 c2 01             	add    $0x1,%edx
c0034bd1:	d1 f8                	sar    %eax
c0034bd3:	75 eb                	jne    c0034bc0 <_dtoa_r+0xb80>
c0034bd5:	e9 29 f8 ff ff       	jmp    c0034403 <_dtoa_r+0x3c3>
c0034bda:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034be0:	dd d8                	fstp   %st(0)
c0034be2:	dd d8                	fstp   %st(0)
c0034be4:	dd d8                	fstp   %st(0)
c0034be6:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034bed:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034bf4:	e9 55 fc ff ff       	jmp    c003484e <_dtoa_r+0x80e>
c0034bf9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034c00:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034c03:	8d 41 ff             	lea    -0x1(%ecx),%eax
c0034c06:	dd 45 c0             	fldl   -0x40(%ebp)
c0034c09:	dc 0c c5 40 92 03 c0 	fmull  -0x3ffc6dc0(,%eax,8)
c0034c10:	d9 c9                	fxch   %st(1)
c0034c12:	89 45 88             	mov    %eax,-0x78(%ebp)
c0034c15:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034c19:	8d 57 01             	lea    0x1(%edi),%edx
c0034c1c:	8d 1c 0f             	lea    (%edi,%ecx,1),%ebx
c0034c1f:	b4 0c                	mov    $0xc,%ah
c0034c21:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034c25:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034c28:	db 55 d4             	fistl  -0x2c(%ebp)
c0034c2b:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034c2e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034c31:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034c34:	83 c0 30             	add    $0x30,%eax
c0034c37:	83 f9 01             	cmp    $0x1,%ecx
c0034c3a:	db 45 d4             	fildl  -0x2c(%ebp)
c0034c3d:	de e9                	fsubrp %st,%st(1)
c0034c3f:	88 07                	mov    %al,(%edi)
c0034c41:	89 d0                	mov    %edx,%eax
c0034c43:	74 37                	je     c0034c7c <_dtoa_r+0xc3c>
c0034c45:	d9 05 5c 91 03 c0    	flds   0xc003915c
c0034c4b:	eb 05                	jmp    c0034c52 <_dtoa_r+0xc12>
c0034c4d:	8d 76 00             	lea    0x0(%esi),%esi
c0034c50:	d9 c9                	fxch   %st(1)
c0034c52:	dc c9                	fmul   %st,%st(1)
c0034c54:	d9 c9                	fxch   %st(1)
c0034c56:	83 c0 01             	add    $0x1,%eax
c0034c59:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034c5c:	db 55 d4             	fistl  -0x2c(%ebp)
c0034c5f:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034c62:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
c0034c65:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034c68:	83 c1 30             	add    $0x30,%ecx
c0034c6b:	39 d8                	cmp    %ebx,%eax
c0034c6d:	db 45 d4             	fildl  -0x2c(%ebp)
c0034c70:	de e9                	fsubrp %st,%st(1)
c0034c72:	88 48 ff             	mov    %cl,-0x1(%eax)
c0034c75:	75 d9                	jne    c0034c50 <_dtoa_r+0xc10>
c0034c77:	dd d9                	fstp   %st(1)
c0034c79:	03 55 88             	add    -0x78(%ebp),%edx
c0034c7c:	d9 05 68 91 03 c0    	flds   0xc0039168
c0034c82:	d9 c2                	fld    %st(2)
c0034c84:	d8 c1                	fadd   %st(1),%st
c0034c86:	d9 ca                	fxch   %st(2)
c0034c88:	db ea                	fucomi %st(2),%st
c0034c8a:	dd da                	fstp   %st(2)
c0034c8c:	0f 86 7f 03 00 00    	jbe    c0035011 <_dtoa_r+0xfd1>
c0034c92:	dd d8                	fstp   %st(0)
c0034c94:	dd d8                	fstp   %st(0)
c0034c96:	dd d8                	fstp   %st(0)
c0034c98:	dd d8                	fstp   %st(0)
c0034c9a:	89 fb                	mov    %edi,%ebx
c0034c9c:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c0034ca0:	89 d7                	mov    %edx,%edi
c0034ca2:	e9 d7 f9 ff ff       	jmp    c003467e <_dtoa_r+0x63e>
c0034ca7:	90                   	nop
c0034ca8:	8b 4d b0             	mov    -0x50(%ebp),%ecx
c0034cab:	8b 41 10             	mov    0x10(%ecx),%eax
c0034cae:	8b 44 81 10          	mov    0x10(%ecx,%eax,4),%eax
c0034cb2:	89 04 24             	mov    %eax,(%esp)
c0034cb5:	e8 56 11 00 00       	call   c0035e10 <__hi0bits>
c0034cba:	ba 20 00 00 00       	mov    $0x20,%edx
c0034cbf:	29 c2                	sub    %eax,%edx
c0034cc1:	e9 bb fa ff ff       	jmp    c0034781 <_dtoa_r+0x741>
c0034cc6:	66 90                	xchg   %ax,%ax
c0034cc8:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034ccb:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034ccf:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034cd2:	89 04 24             	mov    %eax,(%esp)
c0034cd5:	e8 56 16 00 00       	call   c0036330 <__mcmp>
c0034cda:	85 c0                	test   %eax,%eax
c0034cdc:	0f 89 13 fb ff ff    	jns    c00347f5 <_dtoa_r+0x7b5>
c0034ce2:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034ce5:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034cec:	00 
c0034ced:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034cf4:	00 
c0034cf5:	89 34 24             	mov    %esi,(%esp)
c0034cf8:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034cfc:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034d00:	e8 2b 0f 00 00       	call   c0035c30 <__multadd>
c0034d05:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0034d08:	85 c9                	test   %ecx,%ecx
c0034d0a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034d0d:	0f 85 8d 00 00 00    	jne    c0034da0 <_dtoa_r+0xd60>
c0034d13:	83 7d 90 00          	cmpl   $0x0,-0x70(%ebp)
c0034d17:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034d1a:	7f 0a                	jg     c0034d26 <_dtoa_r+0xce6>
c0034d1c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034d20:	0f 8f ff 04 00 00    	jg     c0035225 <_dtoa_r+0x11e5>
c0034d26:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034d29:	e9 ed fc ff ff       	jmp    c0034a1b <_dtoa_r+0x9db>
c0034d2e:	66 90                	xchg   %ax,%ax
c0034d30:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034d33:	85 db                	test   %ebx,%ebx
c0034d35:	0f 85 aa fc ff ff    	jne    c00349e5 <_dtoa_r+0x9a5>
c0034d3b:	d8 0d 64 91 03 c0    	fmuls  0xc0039164
c0034d41:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034d48:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034d4f:	dd 45 c0             	fldl   -0x40(%ebp)
c0034d52:	d9 c9                	fxch   %st(1)
c0034d54:	df e9                	fucomip %st(1),%st
c0034d56:	dd d8                	fstp   %st(0)
c0034d58:	0f 83 97 fc ff ff    	jae    c00349f5 <_dtoa_r+0x9b5>
c0034d5e:	e9 eb fa ff ff       	jmp    c003484e <_dtoa_r+0x80e>
c0034d63:	90                   	nop
c0034d64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034d68:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034d6b:	85 c0                	test   %eax,%eax
c0034d6d:	0f 85 fe f9 ff ff    	jne    c0034771 <_dtoa_r+0x731>
c0034d73:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0034d76:	a9 ff ff 0f 00       	test   $0xfffff,%eax
c0034d7b:	0f 85 f0 f9 ff ff    	jne    c0034771 <_dtoa_r+0x731>
c0034d81:	a9 00 00 f0 7f       	test   $0x7ff00000,%eax
c0034d86:	0f 84 e5 f9 ff ff    	je     c0034771 <_dtoa_r+0x731>
c0034d8c:	83 45 a0 01          	addl   $0x1,-0x60(%ebp)
c0034d90:	83 45 ac 01          	addl   $0x1,-0x54(%ebp)
c0034d94:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034d9b:	e9 d1 f9 ff ff       	jmp    c0034771 <_dtoa_r+0x731>
c0034da0:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034da3:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034daa:	00 
c0034dab:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034db2:	00 
c0034db3:	89 34 24             	mov    %esi,(%esp)
c0034db6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034dba:	e8 71 0e 00 00       	call   c0035c30 <__multadd>
c0034dbf:	8b 55 90             	mov    -0x70(%ebp),%edx
c0034dc2:	85 d2                	test   %edx,%edx
c0034dc4:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034dc7:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034dca:	7f 0a                	jg     c0034dd6 <_dtoa_r+0xd96>
c0034dcc:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034dd0:	0f 8f 4f 04 00 00    	jg     c0035225 <_dtoa_r+0x11e5>
c0034dd6:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034dd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034de0:	85 db                	test   %ebx,%ebx
c0034de2:	7e 16                	jle    c0034dfa <_dtoa_r+0xdba>
c0034de4:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034de7:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0034deb:	89 34 24             	mov    %esi,(%esp)
c0034dee:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034df2:	e8 19 14 00 00       	call   c0036210 <__lshift>
c0034df7:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034dfa:	8b 5d 8c             	mov    -0x74(%ebp),%ebx
c0034dfd:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034e00:	85 db                	test   %ebx,%ebx
c0034e02:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034e05:	0f 85 11 03 00 00    	jne    c003511c <_dtoa_r+0x10dc>
c0034e0b:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034e0e:	8d 5f 01             	lea    0x1(%edi),%ebx
c0034e11:	89 7d 8c             	mov    %edi,-0x74(%ebp)
c0034e14:	01 f8                	add    %edi,%eax
c0034e16:	8b 7d a4             	mov    -0x5c(%ebp),%edi
c0034e19:	89 45 90             	mov    %eax,-0x70(%ebp)
c0034e1c:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034e1f:	83 e0 01             	and    $0x1,%eax
c0034e22:	89 45 9c             	mov    %eax,-0x64(%ebp)
c0034e25:	eb 2e                	jmp    c0034e55 <_dtoa_r+0xe15>
c0034e27:	90                   	nop
c0034e28:	e8 03 0e 00 00       	call   c0035c30 <__multadd>
c0034e2d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034e34:	00 
c0034e35:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034e3c:	00 
c0034e3d:	89 34 24             	mov    %esi,(%esp)
c0034e40:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034e43:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034e46:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034e4a:	e8 e1 0d 00 00       	call   c0035c30 <__multadd>
c0034e4f:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034e52:	83 c3 01             	add    $0x1,%ebx
c0034e55:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034e58:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0034e5b:	89 45 98             	mov    %eax,-0x68(%ebp)
c0034e5e:	89 f8                	mov    %edi,%eax
c0034e60:	e8 0b f0 ff ff       	call   c0033e70 <quorem>
c0034e65:	89 3c 24             	mov    %edi,(%esp)
c0034e68:	8d 48 30             	lea    0x30(%eax),%ecx
c0034e6b:	89 4d a0             	mov    %ecx,-0x60(%ebp)
c0034e6e:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0034e71:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0034e74:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034e78:	e8 b3 14 00 00       	call   c0036330 <__mcmp>
c0034e7d:	8b 4d ac             	mov    -0x54(%ebp),%ecx
c0034e80:	89 34 24             	mov    %esi,(%esp)
c0034e83:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034e87:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034e8a:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034e8d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034e91:	e8 ea 14 00 00       	call   c0036380 <__mdiff>
c0034e96:	8b 48 0c             	mov    0xc(%eax),%ecx
c0034e99:	89 c2                	mov    %eax,%edx
c0034e9b:	85 c9                	test   %ecx,%ecx
c0034e9d:	0f 85 c5 00 00 00    	jne    c0034f68 <_dtoa_r+0xf28>
c0034ea3:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034ea7:	89 3c 24             	mov    %edi,(%esp)
c0034eaa:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034ead:	e8 7e 14 00 00       	call   c0036330 <__mcmp>
c0034eb2:	8b 55 a8             	mov    -0x58(%ebp),%edx
c0034eb5:	89 54 24 04          	mov    %edx,0x4(%esp)
c0034eb9:	89 34 24             	mov    %esi,(%esp)
c0034ebc:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034ebf:	e8 4c 0d 00 00       	call   c0035c10 <_Bfree>
c0034ec4:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034ec7:	89 c1                	mov    %eax,%ecx
c0034ec9:	0b 4d 14             	or     0x14(%ebp),%ecx
c0034ecc:	75 0b                	jne    c0034ed9 <_dtoa_r+0xe99>
c0034ece:	8b 55 9c             	mov    -0x64(%ebp),%edx
c0034ed1:	85 d2                	test   %edx,%edx
c0034ed3:	0f 84 fb 02 00 00    	je     c00351d4 <_dtoa_r+0x1194>
c0034ed9:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034edc:	85 d2                	test   %edx,%edx
c0034ede:	0f 88 7f 01 00 00    	js     c0035063 <_dtoa_r+0x1023>
c0034ee4:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0034ee7:	0b 4d 14             	or     0x14(%ebp),%ecx
c0034eea:	75 0b                	jne    c0034ef7 <_dtoa_r+0xeb7>
c0034eec:	8b 4d 9c             	mov    -0x64(%ebp),%ecx
c0034eef:	85 c9                	test   %ecx,%ecx
c0034ef1:	0f 84 6c 01 00 00    	je     c0035063 <_dtoa_r+0x1023>
c0034ef7:	85 c0                	test   %eax,%eax
c0034ef9:	0f 8f 82 02 00 00    	jg     c0035181 <_dtoa_r+0x1141>
c0034eff:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0034f03:	89 da                	mov    %ebx,%edx
c0034f05:	3b 5d 90             	cmp    -0x70(%ebp),%ebx
c0034f08:	88 43 ff             	mov    %al,-0x1(%ebx)
c0034f0b:	0f 84 8d 02 00 00    	je     c003519e <_dtoa_r+0x115e>
c0034f11:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0034f15:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034f1c:	00 
c0034f1d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034f24:	00 
c0034f25:	89 34 24             	mov    %esi,(%esp)
c0034f28:	e8 03 0d 00 00       	call   c0035c30 <__multadd>
c0034f2d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034f34:	00 
c0034f35:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034f3c:	00 
c0034f3d:	89 34 24             	mov    %esi,(%esp)
c0034f40:	89 c7                	mov    %eax,%edi
c0034f42:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034f45:	39 45 b4             	cmp    %eax,-0x4c(%ebp)
c0034f48:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034f4b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034f4f:	0f 85 d3 fe ff ff    	jne    c0034e28 <_dtoa_r+0xde8>
c0034f55:	e8 d6 0c 00 00       	call   c0035c30 <__multadd>
c0034f5a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034f5d:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034f60:	e9 ed fe ff ff       	jmp    c0034e52 <_dtoa_r+0xe12>
c0034f65:	8d 76 00             	lea    0x0(%esi),%esi
c0034f68:	b8 01 00 00 00       	mov    $0x1,%eax
c0034f6d:	e9 43 ff ff ff       	jmp    c0034eb5 <_dtoa_r+0xe75>
c0034f72:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0034f79:	e9 d2 f2 ff ff       	jmp    c0034250 <_dtoa_r+0x210>
c0034f7e:	0f 85 87 f6 ff ff    	jne    c003460b <_dtoa_r+0x5cb>
c0034f84:	dd d8                	fstp   %st(0)
c0034f86:	dd d8                	fstp   %st(0)
c0034f88:	dd d8                	fstp   %st(0)
c0034f8a:	89 fb                	mov    %edi,%ebx
c0034f8c:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0034f8f:	e9 fc f8 ff ff       	jmp    c0034890 <_dtoa_r+0x850>
c0034f94:	89 c2                	mov    %eax,%edx
c0034f96:	2b 55 b0             	sub    -0x50(%ebp),%edx
c0034f99:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034f9c:	01 55 94             	add    %edx,-0x6c(%ebp)
c0034f9f:	31 d2                	xor    %edx,%edx
c0034fa1:	e9 b8 f9 ff ff       	jmp    c003495e <_dtoa_r+0x91e>
c0034fa6:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034fa9:	85 c0                	test   %eax,%eax
c0034fab:	0f 84 f3 f9 ff ff    	je     c00349a4 <_dtoa_r+0x964>
c0034fb1:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034fb4:	85 c0                	test   %eax,%eax
c0034fb6:	0f 8e c4 fb ff ff    	jle    c0034b80 <_dtoa_r+0xb40>
c0034fbc:	d8 0d 5c 91 03 c0    	fmuls  0xc003915c
c0034fc2:	83 c1 01             	add    $0x1,%ecx
c0034fc5:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034fc8:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034fcb:	89 c1                	mov    %eax,%ecx
c0034fcd:	83 eb 01             	sub    $0x1,%ebx
c0034fd0:	db 45 d4             	fildl  -0x2c(%ebp)
c0034fd3:	d8 c9                	fmul   %st(1),%st
c0034fd5:	89 5d b4             	mov    %ebx,-0x4c(%ebp)
c0034fd8:	d8 05 60 91 03 c0    	fadds  0xc0039160
c0034fde:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034fe1:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0034fe8:	e9 53 f4 ff ff       	jmp    c0034440 <_dtoa_r+0x400>
c0034fed:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034ff0:	c6 03 30             	movb   $0x30,(%ebx)
c0034ff3:	83 c0 01             	add    $0x1,%eax
c0034ff6:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0034ff9:	b8 31 00 00 00       	mov    $0x31,%eax
c0034ffe:	88 02                	mov    %al,(%edx)
c0035000:	e9 8b f8 ff ff       	jmp    c0034890 <_dtoa_r+0x850>
c0035005:	d9 c0                	fld    %st(0)
c0035007:	b9 02 00 00 00       	mov    $0x2,%ecx
c003500c:	e9 f2 f3 ff ff       	jmp    c0034403 <_dtoa_r+0x3c3>
c0035011:	de e2                	fsubp  %st,%st(2)
c0035013:	d9 c9                	fxch   %st(1)
c0035015:	df e9                	fucomip %st(1),%st
c0035017:	dd d8                	fstp   %st(0)
c0035019:	0f 86 69 fb ff ff    	jbe    c0034b88 <_dtoa_r+0xb48>
c003501f:	dd d8                	fstp   %st(0)
c0035021:	eb 07                	jmp    c003502a <_dtoa_r+0xfea>
c0035023:	90                   	nop
c0035024:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035028:	89 c2                	mov    %eax,%edx
c003502a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c003502e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035031:	74 f5                	je     c0035028 <_dtoa_r+0xfe8>
c0035033:	e9 d9 f4 ff ff       	jmp    c0034511 <_dtoa_r+0x4d1>
c0035038:	c6 07 31             	movb   $0x31,(%edi)
c003503b:	89 fb                	mov    %edi,%ebx
c003503d:	89 d7                	mov    %edx,%edi
c003503f:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0035043:	e9 1a f8 ff ff       	jmp    c0034862 <_dtoa_r+0x822>
c0035048:	8b 55 8c             	mov    -0x74(%ebp),%edx
c003504b:	85 d2                	test   %edx,%edx
c003504d:	0f 84 1b 01 00 00    	je     c003516e <_dtoa_r+0x112e>
c0035053:	05 33 04 00 00       	add    $0x433,%eax
c0035058:	8b 55 b0             	mov    -0x50(%ebp),%edx
c003505b:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c003505e:	e9 0b f9 ff ff       	jmp    c003496e <_dtoa_r+0x92e>
c0035063:	85 c0                	test   %eax,%eax
c0035065:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035068:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003506b:	7e 45                	jle    c00350b2 <_dtoa_r+0x1072>
c003506d:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0035070:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0035077:	00 
c0035078:	89 34 24             	mov    %esi,(%esp)
c003507b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003507f:	e8 8c 11 00 00       	call   c0036210 <__lshift>
c0035084:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0035087:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c003508b:	89 04 24             	mov    %eax,(%esp)
c003508e:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0035091:	e8 9a 12 00 00       	call   c0036330 <__mcmp>
c0035096:	83 f8 00             	cmp    $0x0,%eax
c0035099:	0f 8e 5b 01 00 00    	jle    c00351fa <_dtoa_r+0x11ba>
c003509f:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c00350a3:	0f 84 0c 01 00 00    	je     c00351b5 <_dtoa_r+0x1175>
c00350a9:	8b 45 94             	mov    -0x6c(%ebp),%eax
c00350ac:	83 c0 31             	add    $0x31,%eax
c00350af:	89 45 a0             	mov    %eax,-0x60(%ebp)
c00350b2:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00350b5:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c00350b9:	89 cb                	mov    %ecx,%ebx
c00350bb:	88 03                	mov    %al,(%ebx)
c00350bd:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00350c0:	89 fb                	mov    %edi,%ebx
c00350c2:	8d 79 01             	lea    0x1(%ecx),%edi
c00350c5:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00350c8:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00350cb:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00350ce:	e9 8f f7 ff ff       	jmp    c0034862 <_dtoa_r+0x822>
c00350d3:	dd d8                	fstp   %st(0)
c00350d5:	dd d8                	fstp   %st(0)
c00350d7:	dd d8                	fstp   %st(0)
c00350d9:	eb 0d                	jmp    c00350e8 <_dtoa_r+0x10a8>
c00350db:	90                   	nop
c00350dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00350e0:	dd d8                	fstp   %st(0)
c00350e2:	dd d8                	fstp   %st(0)
c00350e4:	dd d8                	fstp   %st(0)
c00350e6:	dd d8                	fstp   %st(0)
c00350e8:	89 fb                	mov    %edi,%ebx
c00350ea:	89 d7                	mov    %edx,%edi
c00350ec:	e9 8d f5 ff ff       	jmp    c003467e <_dtoa_r+0x63e>
c00350f1:	29 cb                	sub    %ecx,%ebx
c00350f3:	31 c0                	xor    %eax,%eax
c00350f5:	e9 74 f8 ff ff       	jmp    c003496e <_dtoa_r+0x92e>
c00350fa:	75 0e                	jne    c003510a <_dtoa_r+0x10ca>
c00350fc:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0035100:	74 08                	je     c003510a <_dtoa_r+0x10ca>
c0035102:	e9 b2 f9 ff ff       	jmp    c0034ab9 <_dtoa_r+0xa79>
c0035107:	90                   	nop
c0035108:	89 c2                	mov    %eax,%edx
c003510a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c003510e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035111:	74 f5                	je     c0035108 <_dtoa_r+0x10c8>
c0035113:	89 fb                	mov    %edi,%ebx
c0035115:	89 d7                	mov    %edx,%edi
c0035117:	e9 46 f7 ff ff       	jmp    c0034862 <_dtoa_r+0x822>
c003511c:	8b 40 04             	mov    0x4(%eax),%eax
c003511f:	89 34 24             	mov    %esi,(%esp)
c0035122:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035126:	e8 45 0a 00 00       	call   c0035b70 <_Balloc>
c003512b:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c003512e:	89 c3                	mov    %eax,%ebx
c0035130:	8b 41 10             	mov    0x10(%ecx),%eax
c0035133:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c003513a:	89 44 24 08          	mov    %eax,0x8(%esp)
c003513e:	89 c8                	mov    %ecx,%eax
c0035140:	83 c0 0c             	add    $0xc,%eax
c0035143:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035147:	8d 43 0c             	lea    0xc(%ebx),%eax
c003514a:	89 04 24             	mov    %eax,(%esp)
c003514d:	e8 62 cc ff ff       	call   c0031db4 <memcpy>
c0035152:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0035159:	00 
c003515a:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c003515e:	89 34 24             	mov    %esi,(%esp)
c0035161:	e8 aa 10 00 00       	call   c0036210 <__lshift>
c0035166:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0035169:	e9 9d fc ff ff       	jmp    c0034e0b <_dtoa_r+0xdcb>
c003516e:	b8 36 00 00 00       	mov    $0x36,%eax
c0035173:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0035176:	2b 45 e0             	sub    -0x20(%ebp),%eax
c0035179:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c003517c:	e9 ed f7 ff ff       	jmp    c003496e <_dtoa_r+0x92e>
c0035181:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c0035185:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035188:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003518b:	74 28                	je     c00351b5 <_dtoa_r+0x1175>
c003518d:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0035191:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035194:	83 c0 01             	add    $0x1,%eax
c0035197:	89 cb                	mov    %ecx,%ebx
c0035199:	e9 1d ff ff ff       	jmp    c00350bb <_dtoa_r+0x107b>
c003519e:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00351a1:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00351a4:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00351a7:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00351aa:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00351ad:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00351b0:	e9 cc f8 ff ff       	jmp    c0034a81 <_dtoa_r+0xa41>
c00351b5:	8b 45 98             	mov    -0x68(%ebp),%eax
c00351b8:	b9 39 00 00 00       	mov    $0x39,%ecx
c00351bd:	8d 50 01             	lea    0x1(%eax),%edx
c00351c0:	c6 00 39             	movb   $0x39,(%eax)
c00351c3:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00351c6:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00351c9:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00351cc:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00351cf:	e9 fa f8 ff ff       	jmp    c0034ace <_dtoa_r+0xa8e>
c00351d4:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00351d7:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00351da:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00351dd:	83 fb 39             	cmp    $0x39,%ebx
c00351e0:	74 d3                	je     c00351b5 <_dtoa_r+0x1175>
c00351e2:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c00351e5:	8b 45 94             	mov    -0x6c(%ebp),%eax
c00351e8:	83 c0 31             	add    $0x31,%eax
c00351eb:	85 c9                	test   %ecx,%ecx
c00351ed:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00351f0:	0f 4e c3             	cmovle %ebx,%eax
c00351f3:	89 cb                	mov    %ecx,%ebx
c00351f5:	e9 c1 fe ff ff       	jmp    c00350bb <_dtoa_r+0x107b>
c00351fa:	0f 85 b2 fe ff ff    	jne    c00350b2 <_dtoa_r+0x1072>
c0035200:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0035204:	0f 84 a8 fe ff ff    	je     c00350b2 <_dtoa_r+0x1072>
c003520a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035210:	e9 8a fe ff ff       	jmp    c003509f <_dtoa_r+0x105f>
c0035215:	0f 85 c7 f3 ff ff    	jne    c00345e2 <_dtoa_r+0x5a2>
c003521b:	dd d8                	fstp   %st(0)
c003521d:	dd d8                	fstp   %st(0)
c003521f:	90                   	nop
c0035220:	e9 65 fd ff ff       	jmp    c0034f8a <_dtoa_r+0xf4a>
c0035225:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0035228:	e9 dd f5 ff ff       	jmp    c003480a <_dtoa_r+0x7ca>
c003522d:	8d 76 00             	lea    0x0(%esi),%esi
c0035230:	0f 84 7a f5 ff ff    	je     c00347b0 <_dtoa_r+0x770>
c0035236:	b8 3c 00 00 00       	mov    $0x3c,%eax
c003523b:	29 d0                	sub    %edx,%eax
c003523d:	e9 ab f8 ff ff       	jmp    c0034aed <_dtoa_r+0xaad>
c0035242:	b8 01 00 00 00       	mov    $0x1,%eax
c0035247:	e9 d9 ef ff ff       	jmp    c0034225 <_dtoa_r+0x1e5>
c003524c:	31 d2                	xor    %edx,%edx
c003524e:	e9 36 f1 ff ff       	jmp    c0034389 <_dtoa_r+0x349>
c0035253:	66 90                	xchg   %ax,%ax
c0035255:	66 90                	xchg   %ax,%ax
c0035257:	66 90                	xchg   %ax,%ax
c0035259:	66 90                	xchg   %ax,%ax
c003525b:	66 90                	xchg   %ax,%ax
c003525d:	66 90                	xchg   %ax,%ax
c003525f:	90                   	nop

c0035260 <_setlocale_r>:
c0035260:	55                   	push   %ebp
c0035261:	89 e5                	mov    %esp,%ebp
c0035263:	53                   	push   %ebx
c0035264:	83 ec 14             	sub    $0x14,%esp
c0035267:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003526a:	85 db                	test   %ebx,%ebx
c003526c:	74 14                	je     c0035282 <_setlocale_r+0x22>
c003526e:	c7 44 24 04 88 91 03 	movl   $0xc0039188,0x4(%esp)
c0035275:	c0 
c0035276:	89 1c 24             	mov    %ebx,(%esp)
c0035279:	e8 82 17 00 00       	call   c0036a00 <strcmp>
c003527e:	85 c0                	test   %eax,%eax
c0035280:	75 0e                	jne    c0035290 <_setlocale_r+0x30>
c0035282:	83 c4 14             	add    $0x14,%esp
c0035285:	b8 80 8f 03 c0       	mov    $0xc0038f80,%eax
c003528a:	5b                   	pop    %ebx
c003528b:	5d                   	pop    %ebp
c003528c:	c3                   	ret    
c003528d:	8d 76 00             	lea    0x0(%esi),%esi
c0035290:	c7 44 24 04 80 8f 03 	movl   $0xc0038f80,0x4(%esp)
c0035297:	c0 
c0035298:	89 1c 24             	mov    %ebx,(%esp)
c003529b:	e8 60 17 00 00       	call   c0036a00 <strcmp>
c00352a0:	85 c0                	test   %eax,%eax
c00352a2:	74 de                	je     c0035282 <_setlocale_r+0x22>
c00352a4:	89 1c 24             	mov    %ebx,(%esp)
c00352a7:	c7 44 24 04 ba 8f 03 	movl   $0xc0038fba,0x4(%esp)
c00352ae:	c0 
c00352af:	e8 4c 17 00 00       	call   c0036a00 <strcmp>
c00352b4:	89 c2                	mov    %eax,%edx
c00352b6:	31 c0                	xor    %eax,%eax
c00352b8:	85 d2                	test   %edx,%edx
c00352ba:	ba 80 8f 03 c0       	mov    $0xc0038f80,%edx
c00352bf:	0f 44 c2             	cmove  %edx,%eax
c00352c2:	83 c4 14             	add    $0x14,%esp
c00352c5:	5b                   	pop    %ebx
c00352c6:	5d                   	pop    %ebp
c00352c7:	c3                   	ret    
c00352c8:	90                   	nop
c00352c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c00352d0 <__locale_charset>:
c00352d0:	55                   	push   %ebp
c00352d1:	b8 c0 c4 03 c0       	mov    $0xc003c4c0,%eax
c00352d6:	89 e5                	mov    %esp,%ebp
c00352d8:	5d                   	pop    %ebp
c00352d9:	c3                   	ret    
c00352da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c00352e0 <__locale_mb_cur_max>:
c00352e0:	55                   	push   %ebp
c00352e1:	a1 18 c5 03 c0       	mov    0xc003c518,%eax
c00352e6:	89 e5                	mov    %esp,%ebp
c00352e8:	5d                   	pop    %ebp
c00352e9:	c3                   	ret    
c00352ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c00352f0 <__locale_msgcharset>:
c00352f0:	55                   	push   %ebp
c00352f1:	b8 a0 c4 03 c0       	mov    $0xc003c4a0,%eax
c00352f6:	89 e5                	mov    %esp,%ebp
c00352f8:	5d                   	pop    %ebp
c00352f9:	c3                   	ret    
c00352fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035300 <__locale_cjk_lang>:
c0035300:	55                   	push   %ebp
c0035301:	31 c0                	xor    %eax,%eax
c0035303:	89 e5                	mov    %esp,%ebp
c0035305:	5d                   	pop    %ebp
c0035306:	c3                   	ret    
c0035307:	89 f6                	mov    %esi,%esi
c0035309:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035310 <_localeconv_r>:
c0035310:	55                   	push   %ebp
c0035311:	b8 e0 c4 03 c0       	mov    $0xc003c4e0,%eax
c0035316:	89 e5                	mov    %esp,%ebp
c0035318:	5d                   	pop    %ebp
c0035319:	c3                   	ret    
c003531a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035320 <setlocale>:
c0035320:	55                   	push   %ebp
c0035321:	89 e5                	mov    %esp,%ebp
c0035323:	83 ec 18             	sub    $0x18,%esp
c0035326:	e8 35 cc ff ff       	call   c0031f60 <__getreent>
c003532b:	8b 55 0c             	mov    0xc(%ebp),%edx
c003532e:	89 54 24 08          	mov    %edx,0x8(%esp)
c0035332:	8b 55 08             	mov    0x8(%ebp),%edx
c0035335:	89 04 24             	mov    %eax,(%esp)
c0035338:	89 54 24 04          	mov    %edx,0x4(%esp)
c003533c:	e8 1f ff ff ff       	call   c0035260 <_setlocale_r>
c0035341:	c9                   	leave  
c0035342:	c3                   	ret    
c0035343:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035349:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035350 <localeconv>:
c0035350:	55                   	push   %ebp
c0035351:	89 e5                	mov    %esp,%ebp
c0035353:	83 ec 08             	sub    $0x8,%esp
c0035356:	e8 05 cc ff ff       	call   c0031f60 <__getreent>
c003535b:	b8 e0 c4 03 c0       	mov    $0xc003c4e0,%eax
c0035360:	c9                   	leave  
c0035361:	c3                   	ret    
c0035362:	66 90                	xchg   %ax,%ax
c0035364:	66 90                	xchg   %ax,%ax
c0035366:	66 90                	xchg   %ax,%ax
c0035368:	66 90                	xchg   %ax,%ax
c003536a:	66 90                	xchg   %ax,%ax
c003536c:	66 90                	xchg   %ax,%ax
c003536e:	66 90                	xchg   %ax,%ax

c0035370 <_malloc_r>:
c0035370:	55                   	push   %ebp
c0035371:	89 e5                	mov    %esp,%ebp
c0035373:	57                   	push   %edi
c0035374:	56                   	push   %esi
c0035375:	53                   	push   %ebx
c0035376:	83 ec 2c             	sub    $0x2c,%esp
c0035379:	8b 45 0c             	mov    0xc(%ebp),%eax
c003537c:	8d 50 0b             	lea    0xb(%eax),%edx
c003537f:	83 fa 16             	cmp    $0x16,%edx
c0035382:	76 6c                	jbe    c00353f0 <_malloc_r+0x80>
c0035384:	89 d7                	mov    %edx,%edi
c0035386:	83 e7 f8             	and    $0xfffffff8,%edi
c0035389:	89 fe                	mov    %edi,%esi
c003538b:	c1 ee 1f             	shr    $0x1f,%esi
c003538e:	39 c7                	cmp    %eax,%edi
c0035390:	8b 45 08             	mov    0x8(%ebp),%eax
c0035393:	89 f2                	mov    %esi,%edx
c0035395:	72 67                	jb     c00353fe <_malloc_r+0x8e>
c0035397:	84 d2                	test   %dl,%dl
c0035399:	75 63                	jne    c00353fe <_malloc_r+0x8e>
c003539b:	89 04 24             	mov    %eax,(%esp)
c003539e:	e8 ad 07 00 00       	call   c0035b50 <__malloc_lock>
c00353a3:	81 ff f7 01 00 00    	cmp    $0x1f7,%edi
c00353a9:	77 65                	ja     c0035410 <_malloc_r+0xa0>
c00353ab:	89 fa                	mov    %edi,%edx
c00353ad:	c1 ea 03             	shr    $0x3,%edx
c00353b0:	8d 04 d5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%edx,8),%eax
c00353b7:	8b 58 0c             	mov    0xc(%eax),%ebx
c00353ba:	39 c3                	cmp    %eax,%ebx
c00353bc:	0f 84 3e 05 00 00    	je     c0035900 <_malloc_r+0x590>
c00353c2:	8b 43 04             	mov    0x4(%ebx),%eax
c00353c5:	83 e0 fc             	and    $0xfffffffc,%eax
c00353c8:	8b 53 0c             	mov    0xc(%ebx),%edx
c00353cb:	8b 4b 08             	mov    0x8(%ebx),%ecx
c00353ce:	89 51 0c             	mov    %edx,0xc(%ecx)
c00353d1:	89 4a 08             	mov    %ecx,0x8(%edx)
c00353d4:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c00353d9:	8b 45 08             	mov    0x8(%ebp),%eax
c00353dc:	89 04 24             	mov    %eax,(%esp)
c00353df:	e8 7c 07 00 00       	call   c0035b60 <__malloc_unlock>
c00353e4:	8d 43 08             	lea    0x8(%ebx),%eax
c00353e7:	83 c4 2c             	add    $0x2c,%esp
c00353ea:	5b                   	pop    %ebx
c00353eb:	5e                   	pop    %esi
c00353ec:	5f                   	pop    %edi
c00353ed:	5d                   	pop    %ebp
c00353ee:	c3                   	ret    
c00353ef:	90                   	nop
c00353f0:	bf 10 00 00 00       	mov    $0x10,%edi
c00353f5:	31 d2                	xor    %edx,%edx
c00353f7:	39 c7                	cmp    %eax,%edi
c00353f9:	8b 45 08             	mov    0x8(%ebp),%eax
c00353fc:	73 99                	jae    c0035397 <_malloc_r+0x27>
c00353fe:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0035404:	83 c4 2c             	add    $0x2c,%esp
c0035407:	31 c0                	xor    %eax,%eax
c0035409:	5b                   	pop    %ebx
c003540a:	5e                   	pop    %esi
c003540b:	5f                   	pop    %edi
c003540c:	5d                   	pop    %ebp
c003540d:	c3                   	ret    
c003540e:	66 90                	xchg   %ax,%ax
c0035410:	89 fe                	mov    %edi,%esi
c0035412:	c1 ee 09             	shr    $0x9,%esi
c0035415:	85 f6                	test   %esi,%esi
c0035417:	0f 84 ab 01 00 00    	je     c00355c8 <_malloc_r+0x258>
c003541d:	83 fe 04             	cmp    $0x4,%esi
c0035420:	0f 87 8a 03 00 00    	ja     c00357b0 <_malloc_r+0x440>
c0035426:	89 fe                	mov    %edi,%esi
c0035428:	c1 ee 06             	shr    $0x6,%esi
c003542b:	83 c6 38             	add    $0x38,%esi
c003542e:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035431:	8d 0c 85 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,4),%ecx
c0035438:	8b 59 0c             	mov    0xc(%ecx),%ebx
c003543b:	39 d9                	cmp    %ebx,%ecx
c003543d:	75 18                	jne    c0035457 <_malloc_r+0xe7>
c003543f:	eb 28                	jmp    c0035469 <_malloc_r+0xf9>
c0035441:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035448:	85 d2                	test   %edx,%edx
c003544a:	0f 89 78 ff ff ff    	jns    c00353c8 <_malloc_r+0x58>
c0035450:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035453:	39 d9                	cmp    %ebx,%ecx
c0035455:	74 12                	je     c0035469 <_malloc_r+0xf9>
c0035457:	8b 43 04             	mov    0x4(%ebx),%eax
c003545a:	83 e0 fc             	and    $0xfffffffc,%eax
c003545d:	89 c2                	mov    %eax,%edx
c003545f:	29 fa                	sub    %edi,%edx
c0035461:	83 fa 0f             	cmp    $0xf,%edx
c0035464:	7e e2                	jle    c0035448 <_malloc_r+0xd8>
c0035466:	83 ee 01             	sub    $0x1,%esi
c0035469:	8d 46 01             	lea    0x1(%esi),%eax
c003546c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c003546f:	8b 1d 50 c5 03 c0    	mov    0xc003c550,%ebx
c0035475:	a1 44 c5 03 c0       	mov    0xc003c544,%eax
c003547a:	81 fb 48 c5 03 c0    	cmp    $0xc003c548,%ebx
c0035480:	74 6b                	je     c00354ed <_malloc_r+0x17d>
c0035482:	8b 73 04             	mov    0x4(%ebx),%esi
c0035485:	83 e6 fc             	and    $0xfffffffc,%esi
c0035488:	89 f0                	mov    %esi,%eax
c003548a:	29 f8                	sub    %edi,%eax
c003548c:	83 f8 0f             	cmp    $0xf,%eax
c003548f:	0f 8f a3 03 00 00    	jg     c0035838 <_malloc_r+0x4c8>
c0035495:	85 c0                	test   %eax,%eax
c0035497:	c7 05 54 c5 03 c0 48 	movl   $0xc003c548,0xc003c554
c003549e:	c5 03 c0 
c00354a1:	c7 05 50 c5 03 c0 48 	movl   $0xc003c548,0xc003c550
c00354a8:	c5 03 c0 
c00354ab:	0f 89 27 01 00 00    	jns    c00355d8 <_malloc_r+0x268>
c00354b1:	81 fe ff 01 00 00    	cmp    $0x1ff,%esi
c00354b7:	0f 87 1b 03 00 00    	ja     c00357d8 <_malloc_r+0x468>
c00354bd:	c1 ee 03             	shr    $0x3,%esi
c00354c0:	b8 01 00 00 00       	mov    $0x1,%eax
c00354c5:	89 f1                	mov    %esi,%ecx
c00354c7:	8d 14 f5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%esi,8),%edx
c00354ce:	c1 f9 02             	sar    $0x2,%ecx
c00354d1:	d3 e0                	shl    %cl,%eax
c00354d3:	8b 4a 08             	mov    0x8(%edx),%ecx
c00354d6:	0b 05 44 c5 03 c0    	or     0xc003c544,%eax
c00354dc:	89 53 0c             	mov    %edx,0xc(%ebx)
c00354df:	89 4b 08             	mov    %ecx,0x8(%ebx)
c00354e2:	a3 44 c5 03 c0       	mov    %eax,0xc003c544
c00354e7:	89 5a 08             	mov    %ebx,0x8(%edx)
c00354ea:	89 59 0c             	mov    %ebx,0xc(%ecx)
c00354ed:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00354f0:	be 01 00 00 00       	mov    $0x1,%esi
c00354f5:	c1 f9 02             	sar    $0x2,%ecx
c00354f8:	d3 e6                	shl    %cl,%esi
c00354fa:	39 c6                	cmp    %eax,%esi
c00354fc:	0f 87 f6 00 00 00    	ja     c00355f8 <_malloc_r+0x288>
c0035502:	85 f0                	test   %esi,%eax
c0035504:	0f 85 76 03 00 00    	jne    c0035880 <_malloc_r+0x510>
c003550a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c003550d:	01 f6                	add    %esi,%esi
c003550f:	83 e2 fc             	and    $0xfffffffc,%edx
c0035512:	85 f0                	test   %esi,%eax
c0035514:	8d 4a 04             	lea    0x4(%edx),%ecx
c0035517:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003551a:	0f 85 60 03 00 00    	jne    c0035880 <_malloc_r+0x510>
c0035520:	89 ca                	mov    %ecx,%edx
c0035522:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035528:	01 f6                	add    %esi,%esi
c003552a:	83 c2 04             	add    $0x4,%edx
c003552d:	85 f0                	test   %esi,%eax
c003552f:	74 f7                	je     c0035528 <_malloc_r+0x1b8>
c0035531:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0035534:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0035537:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003553a:	8d 34 c5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,8),%esi
c0035541:	89 f1                	mov    %esi,%ecx
c0035543:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035546:	8b 59 0c             	mov    0xc(%ecx),%ebx
c0035549:	39 d9                	cmp    %ebx,%ecx
c003554b:	75 1e                	jne    c003556b <_malloc_r+0x1fb>
c003554d:	e9 36 03 00 00       	jmp    c0035888 <_malloc_r+0x518>
c0035552:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035558:	85 d2                	test   %edx,%edx
c003555a:	0f 89 c0 03 00 00    	jns    c0035920 <_malloc_r+0x5b0>
c0035560:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035563:	39 d9                	cmp    %ebx,%ecx
c0035565:	0f 84 1d 03 00 00    	je     c0035888 <_malloc_r+0x518>
c003556b:	8b 43 04             	mov    0x4(%ebx),%eax
c003556e:	83 e0 fc             	and    $0xfffffffc,%eax
c0035571:	89 c2                	mov    %eax,%edx
c0035573:	29 fa                	sub    %edi,%edx
c0035575:	83 fa 0f             	cmp    $0xf,%edx
c0035578:	7e de                	jle    c0035558 <_malloc_r+0x1e8>
c003557a:	8b 4b 0c             	mov    0xc(%ebx),%ecx
c003557d:	8d 04 3b             	lea    (%ebx,%edi,1),%eax
c0035580:	83 cf 01             	or     $0x1,%edi
c0035583:	8b 73 08             	mov    0x8(%ebx),%esi
c0035586:	89 7b 04             	mov    %edi,0x4(%ebx)
c0035589:	89 4e 0c             	mov    %ecx,0xc(%esi)
c003558c:	89 71 08             	mov    %esi,0x8(%ecx)
c003558f:	89 d1                	mov    %edx,%ecx
c0035591:	83 c9 01             	or     $0x1,%ecx
c0035594:	a3 54 c5 03 c0       	mov    %eax,0xc003c554
c0035599:	a3 50 c5 03 c0       	mov    %eax,0xc003c550
c003559e:	c7 40 0c 48 c5 03 c0 	movl   $0xc003c548,0xc(%eax)
c00355a5:	c7 40 08 48 c5 03 c0 	movl   $0xc003c548,0x8(%eax)
c00355ac:	89 48 04             	mov    %ecx,0x4(%eax)
c00355af:	89 14 10             	mov    %edx,(%eax,%edx,1)
c00355b2:	8b 45 08             	mov    0x8(%ebp),%eax
c00355b5:	89 04 24             	mov    %eax,(%esp)
c00355b8:	e8 a3 05 00 00       	call   c0035b60 <__malloc_unlock>
c00355bd:	8d 43 08             	lea    0x8(%ebx),%eax
c00355c0:	e9 22 fe ff ff       	jmp    c00353e7 <_malloc_r+0x77>
c00355c5:	8d 76 00             	lea    0x0(%esi),%esi
c00355c8:	b8 7e 00 00 00       	mov    $0x7e,%eax
c00355cd:	be 3f 00 00 00       	mov    $0x3f,%esi
c00355d2:	e9 5a fe ff ff       	jmp    c0035431 <_malloc_r+0xc1>
c00355d7:	90                   	nop
c00355d8:	8b 45 08             	mov    0x8(%ebp),%eax
c00355db:	83 4c 33 04 01       	orl    $0x1,0x4(%ebx,%esi,1)
c00355e0:	89 04 24             	mov    %eax,(%esp)
c00355e3:	e8 78 05 00 00       	call   c0035b60 <__malloc_unlock>
c00355e8:	83 c4 2c             	add    $0x2c,%esp
c00355eb:	8d 43 08             	lea    0x8(%ebx),%eax
c00355ee:	5b                   	pop    %ebx
c00355ef:	5e                   	pop    %esi
c00355f0:	5f                   	pop    %edi
c00355f1:	5d                   	pop    %ebp
c00355f2:	c3                   	ret    
c00355f3:	90                   	nop
c00355f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00355f8:	8b 1d 48 c5 03 c0    	mov    0xc003c548,%ebx
c00355fe:	8b 73 04             	mov    0x4(%ebx),%esi
c0035601:	83 e6 fc             	and    $0xfffffffc,%esi
c0035604:	39 f7                	cmp    %esi,%edi
c0035606:	77 0d                	ja     c0035615 <_malloc_r+0x2a5>
c0035608:	89 f0                	mov    %esi,%eax
c003560a:	29 f8                	sub    %edi,%eax
c003560c:	83 f8 0f             	cmp    $0xf,%eax
c003560f:	0f 8f 6b 01 00 00    	jg     c0035780 <_malloc_r+0x410>
c0035615:	8b 0d 50 f0 06 c0    	mov    0xc006f050,%ecx
c003561b:	8d 04 33             	lea    (%ebx,%esi,1),%eax
c003561e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035621:	01 f9                	add    %edi,%ecx
c0035623:	8d 81 0f 10 00 00    	lea    0x100f(%ecx),%eax
c0035629:	83 c1 10             	add    $0x10,%ecx
c003562c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0035631:	83 3d 20 c5 03 c0 ff 	cmpl   $0xffffffff,0xc003c520
c0035638:	0f 44 c1             	cmove  %ecx,%eax
c003563b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003563e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035642:	8b 45 08             	mov    0x8(%ebp),%eax
c0035645:	89 04 24             	mov    %eax,(%esp)
c0035648:	e8 03 13 00 00       	call   c0036950 <_sbrk_r>
c003564d:	83 f8 ff             	cmp    $0xffffffff,%eax
c0035650:	89 c1                	mov    %eax,%ecx
c0035652:	0f 84 17 03 00 00    	je     c003596f <_malloc_r+0x5ff>
c0035658:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c003565b:	0f 87 02 03 00 00    	ja     c0035963 <_malloc_r+0x5f3>
c0035661:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0035664:	03 15 20 f0 06 c0    	add    0xc006f020,%edx
c003566a:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
c003566d:	89 15 20 f0 06 c0    	mov    %edx,0xc006f020
c0035673:	0f 84 a9 03 00 00    	je     c0035a22 <_malloc_r+0x6b2>
c0035679:	83 3d 20 c5 03 c0 ff 	cmpl   $0xffffffff,0xc003c520
c0035680:	0f 84 ca 03 00 00    	je     c0035a50 <_malloc_r+0x6e0>
c0035686:	89 c8                	mov    %ecx,%eax
c0035688:	2b 45 e4             	sub    -0x1c(%ebp),%eax
c003568b:	01 d0                	add    %edx,%eax
c003568d:	a3 20 f0 06 c0       	mov    %eax,0xc006f020
c0035692:	89 c8                	mov    %ecx,%eax
c0035694:	ba 00 10 00 00       	mov    $0x1000,%edx
c0035699:	83 e0 07             	and    $0x7,%eax
c003569c:	74 0c                	je     c00356aa <_malloc_r+0x33a>
c003569e:	29 c1                	sub    %eax,%ecx
c00356a0:	ba 08 10 00 00       	mov    $0x1008,%edx
c00356a5:	8d 49 08             	lea    0x8(%ecx),%ecx
c00356a8:	29 c2                	sub    %eax,%edx
c00356aa:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00356ad:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00356b0:	01 c8                	add    %ecx,%eax
c00356b2:	25 ff 0f 00 00       	and    $0xfff,%eax
c00356b7:	29 c2                	sub    %eax,%edx
c00356b9:	8b 45 08             	mov    0x8(%ebp),%eax
c00356bc:	89 54 24 04          	mov    %edx,0x4(%esp)
c00356c0:	89 55 e0             	mov    %edx,-0x20(%ebp)
c00356c3:	89 04 24             	mov    %eax,(%esp)
c00356c6:	e8 85 12 00 00       	call   c0036950 <_sbrk_r>
c00356cb:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00356ce:	83 f8 ff             	cmp    $0xffffffff,%eax
c00356d1:	0f 84 6d 03 00 00    	je     c0035a44 <_malloc_r+0x6d4>
c00356d7:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00356da:	29 c8                	sub    %ecx,%eax
c00356dc:	01 d0                	add    %edx,%eax
c00356de:	83 c8 01             	or     $0x1,%eax
c00356e1:	03 15 20 f0 06 c0    	add    0xc006f020,%edx
c00356e7:	81 fb 40 c5 03 c0    	cmp    $0xc003c540,%ebx
c00356ed:	89 0d 48 c5 03 c0    	mov    %ecx,0xc003c548
c00356f3:	89 41 04             	mov    %eax,0x4(%ecx)
c00356f6:	89 15 20 f0 06 c0    	mov    %edx,0xc006f020
c00356fc:	0f 84 f2 02 00 00    	je     c00359f4 <_malloc_r+0x684>
c0035702:	83 fe 0f             	cmp    $0xf,%esi
c0035705:	0f 86 8d 02 00 00    	jbe    c0035998 <_malloc_r+0x628>
c003570b:	8b 43 04             	mov    0x4(%ebx),%eax
c003570e:	83 ee 0c             	sub    $0xc,%esi
c0035711:	83 e6 f8             	and    $0xfffffff8,%esi
c0035714:	83 e0 01             	and    $0x1,%eax
c0035717:	09 f0                	or     %esi,%eax
c0035719:	83 fe 0f             	cmp    $0xf,%esi
c003571c:	89 43 04             	mov    %eax,0x4(%ebx)
c003571f:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0035724:	c7 44 33 04 05 00 00 	movl   $0x5,0x4(%ebx,%esi,1)
c003572b:	00 
c003572c:	c7 44 33 08 05 00 00 	movl   $0x5,0x8(%ebx,%esi,1)
c0035733:	00 
c0035734:	0f 87 a2 02 00 00    	ja     c00359dc <_malloc_r+0x66c>
c003573a:	3b 15 4c f0 06 c0    	cmp    0xc006f04c,%edx
c0035740:	76 06                	jbe    c0035748 <_malloc_r+0x3d8>
c0035742:	89 15 4c f0 06 c0    	mov    %edx,0xc006f04c
c0035748:	3b 15 48 f0 06 c0    	cmp    0xc006f048,%edx
c003574e:	76 06                	jbe    c0035756 <_malloc_r+0x3e6>
c0035750:	89 15 48 f0 06 c0    	mov    %edx,0xc006f048
c0035756:	8b 50 04             	mov    0x4(%eax),%edx
c0035759:	89 c3                	mov    %eax,%ebx
c003575b:	83 e2 fc             	and    $0xfffffffc,%edx
c003575e:	89 d0                	mov    %edx,%eax
c0035760:	29 f8                	sub    %edi,%eax
c0035762:	39 d7                	cmp    %edx,%edi
c0035764:	77 05                	ja     c003576b <_malloc_r+0x3fb>
c0035766:	83 f8 0f             	cmp    $0xf,%eax
c0035769:	7f 15                	jg     c0035780 <_malloc_r+0x410>
c003576b:	8b 45 08             	mov    0x8(%ebp),%eax
c003576e:	89 04 24             	mov    %eax,(%esp)
c0035771:	e8 ea 03 00 00       	call   c0035b60 <__malloc_unlock>
c0035776:	31 c0                	xor    %eax,%eax
c0035778:	e9 6a fc ff ff       	jmp    c00353e7 <_malloc_r+0x77>
c003577d:	8d 76 00             	lea    0x0(%esi),%esi
c0035780:	89 fa                	mov    %edi,%edx
c0035782:	83 c8 01             	or     $0x1,%eax
c0035785:	83 ca 01             	or     $0x1,%edx
c0035788:	89 53 04             	mov    %edx,0x4(%ebx)
c003578b:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c003578e:	89 15 48 c5 03 c0    	mov    %edx,0xc003c548
c0035794:	89 42 04             	mov    %eax,0x4(%edx)
c0035797:	8b 45 08             	mov    0x8(%ebp),%eax
c003579a:	89 04 24             	mov    %eax,(%esp)
c003579d:	e8 be 03 00 00       	call   c0035b60 <__malloc_unlock>
c00357a2:	83 c4 2c             	add    $0x2c,%esp
c00357a5:	8d 43 08             	lea    0x8(%ebx),%eax
c00357a8:	5b                   	pop    %ebx
c00357a9:	5e                   	pop    %esi
c00357aa:	5f                   	pop    %edi
c00357ab:	5d                   	pop    %ebp
c00357ac:	c3                   	ret    
c00357ad:	8d 76 00             	lea    0x0(%esi),%esi
c00357b0:	83 fe 14             	cmp    $0x14,%esi
c00357b3:	0f 86 8f 01 00 00    	jbe    c0035948 <_malloc_r+0x5d8>
c00357b9:	83 fe 54             	cmp    $0x54,%esi
c00357bc:	0f 87 be 01 00 00    	ja     c0035980 <_malloc_r+0x610>
c00357c2:	89 fe                	mov    %edi,%esi
c00357c4:	c1 ee 0c             	shr    $0xc,%esi
c00357c7:	83 c6 6e             	add    $0x6e,%esi
c00357ca:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00357cd:	e9 5f fc ff ff       	jmp    c0035431 <_malloc_r+0xc1>
c00357d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00357d8:	89 f1                	mov    %esi,%ecx
c00357da:	c1 e9 09             	shr    $0x9,%ecx
c00357dd:	83 f9 04             	cmp    $0x4,%ecx
c00357e0:	0f 86 6d 01 00 00    	jbe    c0035953 <_malloc_r+0x5e3>
c00357e6:	83 f9 14             	cmp    $0x14,%ecx
c00357e9:	0f 87 0f 02 00 00    	ja     c00359fe <_malloc_r+0x68e>
c00357ef:	83 c1 5b             	add    $0x5b,%ecx
c00357f2:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c00357f5:	8d 04 85 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,4),%eax
c00357fc:	8b 50 08             	mov    0x8(%eax),%edx
c00357ff:	39 c2                	cmp    %eax,%edx
c0035801:	0f 84 a1 01 00 00    	je     c00359a8 <_malloc_r+0x638>
c0035807:	90                   	nop
c0035808:	8b 4a 04             	mov    0x4(%edx),%ecx
c003580b:	83 e1 fc             	and    $0xfffffffc,%ecx
c003580e:	39 ce                	cmp    %ecx,%esi
c0035810:	73 07                	jae    c0035819 <_malloc_r+0x4a9>
c0035812:	8b 52 08             	mov    0x8(%edx),%edx
c0035815:	39 d0                	cmp    %edx,%eax
c0035817:	75 ef                	jne    c0035808 <_malloc_r+0x498>
c0035819:	8b 4a 0c             	mov    0xc(%edx),%ecx
c003581c:	a1 44 c5 03 c0       	mov    0xc003c544,%eax
c0035821:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0035824:	89 53 08             	mov    %edx,0x8(%ebx)
c0035827:	89 59 08             	mov    %ebx,0x8(%ecx)
c003582a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c003582d:	e9 bb fc ff ff       	jmp    c00354ed <_malloc_r+0x17d>
c0035832:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035838:	89 c1                	mov    %eax,%ecx
c003583a:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c003583d:	83 c9 01             	or     $0x1,%ecx
c0035840:	83 cf 01             	or     $0x1,%edi
c0035843:	89 7b 04             	mov    %edi,0x4(%ebx)
c0035846:	89 15 54 c5 03 c0    	mov    %edx,0xc003c554
c003584c:	89 15 50 c5 03 c0    	mov    %edx,0xc003c550
c0035852:	c7 42 0c 48 c5 03 c0 	movl   $0xc003c548,0xc(%edx)
c0035859:	c7 42 08 48 c5 03 c0 	movl   $0xc003c548,0x8(%edx)
c0035860:	89 4a 04             	mov    %ecx,0x4(%edx)
c0035863:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0035866:	8b 45 08             	mov    0x8(%ebp),%eax
c0035869:	89 04 24             	mov    %eax,(%esp)
c003586c:	e8 ef 02 00 00       	call   c0035b60 <__malloc_unlock>
c0035871:	8d 43 08             	lea    0x8(%ebx),%eax
c0035874:	e9 6e fb ff ff       	jmp    c00353e7 <_malloc_r+0x77>
c0035879:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035880:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0035883:	e9 af fc ff ff       	jmp    c0035537 <_malloc_r+0x1c7>
c0035888:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
c003588c:	83 c1 08             	add    $0x8,%ecx
c003588f:	f6 45 e0 03          	testb  $0x3,-0x20(%ebp)
c0035893:	0f 85 ad fc ff ff    	jne    c0035546 <_malloc_r+0x1d6>
c0035899:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003589c:	eb 12                	jmp    c00358b0 <_malloc_r+0x540>
c003589e:	66 90                	xchg   %ax,%ax
c00358a0:	8d 56 f8             	lea    -0x8(%esi),%edx
c00358a3:	8b 36                	mov    (%esi),%esi
c00358a5:	83 e8 01             	sub    $0x1,%eax
c00358a8:	39 d6                	cmp    %edx,%esi
c00358aa:	0f 85 ea 01 00 00    	jne    c0035a9a <_malloc_r+0x72a>
c00358b0:	a8 03                	test   $0x3,%al
c00358b2:	75 ec                	jne    c00358a0 <_malloc_r+0x530>
c00358b4:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00358b7:	f7 d0                	not    %eax
c00358b9:	23 05 44 c5 03 c0    	and    0xc003c544,%eax
c00358bf:	a3 44 c5 03 c0       	mov    %eax,0xc003c544
c00358c4:	d1 65 dc             	shll   -0x24(%ebp)
c00358c7:	8b 55 dc             	mov    -0x24(%ebp),%edx
c00358ca:	39 c2                	cmp    %eax,%edx
c00358cc:	0f 87 26 fd ff ff    	ja     c00355f8 <_malloc_r+0x288>
c00358d2:	85 d2                	test   %edx,%edx
c00358d4:	0f 84 1e fd ff ff    	je     c00355f8 <_malloc_r+0x288>
c00358da:	85 c2                	test   %eax,%edx
c00358dc:	0f 85 c2 01 00 00    	jne    c0035aa4 <_malloc_r+0x734>
c00358e2:	8b 75 e0             	mov    -0x20(%ebp),%esi
c00358e5:	89 f1                	mov    %esi,%ecx
c00358e7:	01 d2                	add    %edx,%edx
c00358e9:	83 c1 04             	add    $0x4,%ecx
c00358ec:	85 d0                	test   %edx,%eax
c00358ee:	74 f7                	je     c00358e7 <_malloc_r+0x577>
c00358f0:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00358f3:	89 55 dc             	mov    %edx,-0x24(%ebp)
c00358f6:	e9 3c fc ff ff       	jmp    c0035537 <_malloc_r+0x1c7>
c00358fb:	90                   	nop
c00358fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035900:	8d 43 08             	lea    0x8(%ebx),%eax
c0035903:	8b 5b 14             	mov    0x14(%ebx),%ebx
c0035906:	39 d8                	cmp    %ebx,%eax
c0035908:	0f 85 b4 fa ff ff    	jne    c00353c2 <_malloc_r+0x52>
c003590e:	8d 42 02             	lea    0x2(%edx),%eax
c0035911:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035914:	e9 56 fb ff ff       	jmp    c003546f <_malloc_r+0xff>
c0035919:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035920:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0035925:	8b 53 08             	mov    0x8(%ebx),%edx
c0035928:	8b 43 0c             	mov    0xc(%ebx),%eax
c003592b:	89 42 0c             	mov    %eax,0xc(%edx)
c003592e:	89 50 08             	mov    %edx,0x8(%eax)
c0035931:	8b 45 08             	mov    0x8(%ebp),%eax
c0035934:	89 04 24             	mov    %eax,(%esp)
c0035937:	e8 24 02 00 00       	call   c0035b60 <__malloc_unlock>
c003593c:	8d 43 08             	lea    0x8(%ebx),%eax
c003593f:	e9 a3 fa ff ff       	jmp    c00353e7 <_malloc_r+0x77>
c0035944:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035948:	83 c6 5b             	add    $0x5b,%esi
c003594b:	8d 04 36             	lea    (%esi,%esi,1),%eax
c003594e:	e9 de fa ff ff       	jmp    c0035431 <_malloc_r+0xc1>
c0035953:	89 f1                	mov    %esi,%ecx
c0035955:	c1 e9 06             	shr    $0x6,%ecx
c0035958:	83 c1 38             	add    $0x38,%ecx
c003595b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c003595e:	e9 92 fe ff ff       	jmp    c00357f5 <_malloc_r+0x485>
c0035963:	81 fb 40 c5 03 c0    	cmp    $0xc003c540,%ebx
c0035969:	0f 84 f2 fc ff ff    	je     c0035661 <_malloc_r+0x2f1>
c003596f:	8b 1d 48 c5 03 c0    	mov    0xc003c548,%ebx
c0035975:	8b 53 04             	mov    0x4(%ebx),%edx
c0035978:	83 e2 fc             	and    $0xfffffffc,%edx
c003597b:	e9 de fd ff ff       	jmp    c003575e <_malloc_r+0x3ee>
c0035980:	81 fe 54 01 00 00    	cmp    $0x154,%esi
c0035986:	77 3c                	ja     c00359c4 <_malloc_r+0x654>
c0035988:	89 fe                	mov    %edi,%esi
c003598a:	c1 ee 0f             	shr    $0xf,%esi
c003598d:	83 c6 77             	add    $0x77,%esi
c0035990:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035993:	e9 99 fa ff ff       	jmp    c0035431 <_malloc_r+0xc1>
c0035998:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
c003599f:	89 cb                	mov    %ecx,%ebx
c00359a1:	31 d2                	xor    %edx,%edx
c00359a3:	e9 b6 fd ff ff       	jmp    c003575e <_malloc_r+0x3ee>
c00359a8:	c1 f9 02             	sar    $0x2,%ecx
c00359ab:	b8 01 00 00 00       	mov    $0x1,%eax
c00359b0:	d3 e0                	shl    %cl,%eax
c00359b2:	89 d1                	mov    %edx,%ecx
c00359b4:	0b 05 44 c5 03 c0    	or     0xc003c544,%eax
c00359ba:	a3 44 c5 03 c0       	mov    %eax,0xc003c544
c00359bf:	e9 5d fe ff ff       	jmp    c0035821 <_malloc_r+0x4b1>
c00359c4:	81 fe 54 05 00 00    	cmp    $0x554,%esi
c00359ca:	77 47                	ja     c0035a13 <_malloc_r+0x6a3>
c00359cc:	89 fe                	mov    %edi,%esi
c00359ce:	c1 ee 12             	shr    $0x12,%esi
c00359d1:	83 c6 7c             	add    $0x7c,%esi
c00359d4:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00359d7:	e9 55 fa ff ff       	jmp    c0035431 <_malloc_r+0xc1>
c00359dc:	8b 45 08             	mov    0x8(%ebp),%eax
c00359df:	83 c3 08             	add    $0x8,%ebx
c00359e2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c00359e6:	89 04 24             	mov    %eax,(%esp)
c00359e9:	e8 c2 22 00 00       	call   c0037cb0 <_free_r>
c00359ee:	8b 15 20 f0 06 c0    	mov    0xc006f020,%edx
c00359f4:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c00359f9:	e9 3c fd ff ff       	jmp    c003573a <_malloc_r+0x3ca>
c00359fe:	83 f9 54             	cmp    $0x54,%ecx
c0035a01:	77 58                	ja     c0035a5b <_malloc_r+0x6eb>
c0035a03:	89 f1                	mov    %esi,%ecx
c0035a05:	c1 e9 0c             	shr    $0xc,%ecx
c0035a08:	83 c1 6e             	add    $0x6e,%ecx
c0035a0b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035a0e:	e9 e2 fd ff ff       	jmp    c00357f5 <_malloc_r+0x485>
c0035a13:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035a18:	be 7e 00 00 00       	mov    $0x7e,%esi
c0035a1d:	e9 0f fa ff ff       	jmp    c0035431 <_malloc_r+0xc1>
c0035a22:	f7 45 e4 ff 0f 00 00 	testl  $0xfff,-0x1c(%ebp)
c0035a29:	0f 85 4a fc ff ff    	jne    c0035679 <_malloc_r+0x309>
c0035a2f:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0035a32:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0035a37:	01 f1                	add    %esi,%ecx
c0035a39:	83 c9 01             	or     $0x1,%ecx
c0035a3c:	89 48 04             	mov    %ecx,0x4(%eax)
c0035a3f:	e9 f6 fc ff ff       	jmp    c003573a <_malloc_r+0x3ca>
c0035a44:	b8 01 00 00 00       	mov    $0x1,%eax
c0035a49:	31 d2                	xor    %edx,%edx
c0035a4b:	e9 91 fc ff ff       	jmp    c00356e1 <_malloc_r+0x371>
c0035a50:	89 0d 20 c5 03 c0    	mov    %ecx,0xc003c520
c0035a56:	e9 37 fc ff ff       	jmp    c0035692 <_malloc_r+0x322>
c0035a5b:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0035a61:	77 10                	ja     c0035a73 <_malloc_r+0x703>
c0035a63:	89 f1                	mov    %esi,%ecx
c0035a65:	c1 e9 0f             	shr    $0xf,%ecx
c0035a68:	83 c1 77             	add    $0x77,%ecx
c0035a6b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035a6e:	e9 82 fd ff ff       	jmp    c00357f5 <_malloc_r+0x485>
c0035a73:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0035a79:	77 10                	ja     c0035a8b <_malloc_r+0x71b>
c0035a7b:	89 f1                	mov    %esi,%ecx
c0035a7d:	c1 e9 12             	shr    $0x12,%ecx
c0035a80:	83 c1 7c             	add    $0x7c,%ecx
c0035a83:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035a86:	e9 6a fd ff ff       	jmp    c00357f5 <_malloc_r+0x485>
c0035a8b:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035a90:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0035a95:	e9 5b fd ff ff       	jmp    c00357f5 <_malloc_r+0x485>
c0035a9a:	a1 44 c5 03 c0       	mov    0xc003c544,%eax
c0035a9f:	e9 20 fe ff ff       	jmp    c00358c4 <_malloc_r+0x554>
c0035aa4:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0035aa7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035aaa:	e9 88 fa ff ff       	jmp    c0035537 <_malloc_r+0x1c7>
c0035aaf:	90                   	nop

c0035ab0 <memchr>:
c0035ab0:	55                   	push   %ebp
c0035ab1:	89 e5                	mov    %esp,%ebp
c0035ab3:	57                   	push   %edi
c0035ab4:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0035ab8:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035abb:	8b 7d 08             	mov    0x8(%ebp),%edi
c0035abe:	31 d2                	xor    %edx,%edx
c0035ac0:	85 c9                	test   %ecx,%ecx
c0035ac2:	74 79                	je     c0035b3d <L20>
c0035ac4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035aca:	74 28                	je     c0035af4 <L5>
c0035acc:	3a 07                	cmp    (%edi),%al
c0035ace:	74 6a                	je     c0035b3a <L15>
c0035ad0:	47                   	inc    %edi
c0035ad1:	49                   	dec    %ecx
c0035ad2:	74 69                	je     c0035b3d <L20>
c0035ad4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035ada:	74 18                	je     c0035af4 <L5>
c0035adc:	3a 07                	cmp    (%edi),%al
c0035ade:	74 5a                	je     c0035b3a <L15>
c0035ae0:	47                   	inc    %edi
c0035ae1:	49                   	dec    %ecx
c0035ae2:	74 59                	je     c0035b3d <L20>
c0035ae4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035aea:	74 08                	je     c0035af4 <L5>
c0035aec:	3a 07                	cmp    (%edi),%al
c0035aee:	74 4a                	je     c0035b3a <L15>
c0035af0:	47                   	inc    %edi
c0035af1:	49                   	dec    %ecx
c0035af2:	74 49                	je     c0035b3d <L20>

c0035af4 <L5>:
c0035af4:	88 c4                	mov    %al,%ah
c0035af6:	89 c2                	mov    %eax,%edx
c0035af8:	c1 e2 10             	shl    $0x10,%edx
c0035afb:	09 d0                	or     %edx,%eax
c0035afd:	53                   	push   %ebx
c0035afe:	66 90                	xchg   %ax,%ax

c0035b00 <L8>:
c0035b00:	83 e9 04             	sub    $0x4,%ecx
c0035b03:	72 1c                	jb     c0035b21 <L9>
c0035b05:	8b 17                	mov    (%edi),%edx
c0035b07:	83 c7 04             	add    $0x4,%edi
c0035b0a:	31 c2                	xor    %eax,%edx
c0035b0c:	8d 9a ff fe fe fe    	lea    -0x1010101(%edx),%ebx
c0035b12:	f7 d2                	not    %edx
c0035b14:	21 d3                	and    %edx,%ebx
c0035b16:	f7 c3 80 80 80 80    	test   $0x80808080,%ebx
c0035b1c:	74 e2                	je     c0035b00 <L8>
c0035b1e:	83 ef 04             	sub    $0x4,%edi

c0035b21 <L9>:
c0035b21:	5b                   	pop    %ebx
c0035b22:	31 d2                	xor    %edx,%edx
c0035b24:	83 c1 04             	add    $0x4,%ecx
c0035b27:	74 14                	je     c0035b3d <L20>
c0035b29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035b30 <L10>:
c0035b30:	3a 07                	cmp    (%edi),%al
c0035b32:	74 06                	je     c0035b3a <L15>
c0035b34:	47                   	inc    %edi
c0035b35:	49                   	dec    %ecx
c0035b36:	75 f8                	jne    c0035b30 <L10>
c0035b38:	31 ff                	xor    %edi,%edi

c0035b3a <L15>:
c0035b3a:	4a                   	dec    %edx
c0035b3b:	21 fa                	and    %edi,%edx

c0035b3d <L20>:
c0035b3d:	89 d0                	mov    %edx,%eax
c0035b3f:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0035b42:	5f                   	pop    %edi
c0035b43:	c9                   	leave  
c0035b44:	c3                   	ret    
c0035b45:	66 90                	xchg   %ax,%ax
c0035b47:	66 90                	xchg   %ax,%ax
c0035b49:	66 90                	xchg   %ax,%ax
c0035b4b:	66 90                	xchg   %ax,%ax
c0035b4d:	66 90                	xchg   %ax,%ax
c0035b4f:	90                   	nop

c0035b50 <__malloc_lock>:
c0035b50:	55                   	push   %ebp
c0035b51:	89 e5                	mov    %esp,%ebp
c0035b53:	5d                   	pop    %ebp
c0035b54:	c3                   	ret    
c0035b55:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035b59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035b60 <__malloc_unlock>:
c0035b60:	55                   	push   %ebp
c0035b61:	89 e5                	mov    %esp,%ebp
c0035b63:	5d                   	pop    %ebp
c0035b64:	c3                   	ret    
c0035b65:	66 90                	xchg   %ax,%ax
c0035b67:	66 90                	xchg   %ax,%ax
c0035b69:	66 90                	xchg   %ax,%ax
c0035b6b:	66 90                	xchg   %ax,%ax
c0035b6d:	66 90                	xchg   %ax,%ax
c0035b6f:	90                   	nop

c0035b70 <_Balloc>:
c0035b70:	55                   	push   %ebp
c0035b71:	89 e5                	mov    %esp,%ebp
c0035b73:	57                   	push   %edi
c0035b74:	56                   	push   %esi
c0035b75:	53                   	push   %ebx
c0035b76:	83 ec 1c             	sub    $0x1c,%esp
c0035b79:	8b 75 08             	mov    0x8(%ebp),%esi
c0035b7c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0035b7f:	8b 46 4c             	mov    0x4c(%esi),%eax
c0035b82:	85 c0                	test   %eax,%eax
c0035b84:	74 2a                	je     c0035bb0 <_Balloc+0x40>
c0035b86:	8d 14 98             	lea    (%eax,%ebx,4),%edx
c0035b89:	8b 02                	mov    (%edx),%eax
c0035b8b:	85 c0                	test   %eax,%eax
c0035b8d:	74 49                	je     c0035bd8 <_Balloc+0x68>
c0035b8f:	8b 08                	mov    (%eax),%ecx
c0035b91:	89 0a                	mov    %ecx,(%edx)
c0035b93:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c0035b9a:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0035ba1:	83 c4 1c             	add    $0x1c,%esp
c0035ba4:	5b                   	pop    %ebx
c0035ba5:	5e                   	pop    %esi
c0035ba6:	5f                   	pop    %edi
c0035ba7:	5d                   	pop    %ebp
c0035ba8:	c3                   	ret    
c0035ba9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035bb0:	c7 44 24 08 21 00 00 	movl   $0x21,0x8(%esp)
c0035bb7:	00 
c0035bb8:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c0035bbf:	00 
c0035bc0:	89 34 24             	mov    %esi,(%esp)
c0035bc3:	e8 38 1f 00 00       	call   c0037b00 <_calloc_r>
c0035bc8:	85 c0                	test   %eax,%eax
c0035bca:	89 46 4c             	mov    %eax,0x4c(%esi)
c0035bcd:	75 b7                	jne    c0035b86 <_Balloc+0x16>
c0035bcf:	31 c0                	xor    %eax,%eax
c0035bd1:	eb ce                	jmp    c0035ba1 <_Balloc+0x31>
c0035bd3:	90                   	nop
c0035bd4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035bd8:	89 d9                	mov    %ebx,%ecx
c0035bda:	bf 01 00 00 00       	mov    $0x1,%edi
c0035bdf:	d3 e7                	shl    %cl,%edi
c0035be1:	8d 04 bd 14 00 00 00 	lea    0x14(,%edi,4),%eax
c0035be8:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035bec:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035bf3:	00 
c0035bf4:	89 34 24             	mov    %esi,(%esp)
c0035bf7:	e8 04 1f 00 00       	call   c0037b00 <_calloc_r>
c0035bfc:	85 c0                	test   %eax,%eax
c0035bfe:	74 cf                	je     c0035bcf <_Balloc+0x5f>
c0035c00:	89 58 04             	mov    %ebx,0x4(%eax)
c0035c03:	89 78 08             	mov    %edi,0x8(%eax)
c0035c06:	eb 8b                	jmp    c0035b93 <_Balloc+0x23>
c0035c08:	90                   	nop
c0035c09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035c10 <_Bfree>:
c0035c10:	55                   	push   %ebp
c0035c11:	89 e5                	mov    %esp,%ebp
c0035c13:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c16:	85 c0                	test   %eax,%eax
c0035c18:	74 12                	je     c0035c2c <_Bfree+0x1c>
c0035c1a:	8b 55 08             	mov    0x8(%ebp),%edx
c0035c1d:	8b 48 04             	mov    0x4(%eax),%ecx
c0035c20:	8b 52 4c             	mov    0x4c(%edx),%edx
c0035c23:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
c0035c26:	8b 0a                	mov    (%edx),%ecx
c0035c28:	89 08                	mov    %ecx,(%eax)
c0035c2a:	89 02                	mov    %eax,(%edx)
c0035c2c:	5d                   	pop    %ebp
c0035c2d:	c3                   	ret    
c0035c2e:	66 90                	xchg   %ax,%ax

c0035c30 <__multadd>:
c0035c30:	55                   	push   %ebp
c0035c31:	89 e5                	mov    %esp,%ebp
c0035c33:	57                   	push   %edi
c0035c34:	56                   	push   %esi
c0035c35:	53                   	push   %ebx
c0035c36:	83 ec 2c             	sub    $0x2c,%esp
c0035c39:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c3c:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0035c3f:	8b 40 10             	mov    0x10(%eax),%eax
c0035c42:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035c45:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c48:	8d 78 14             	lea    0x14(%eax),%edi
c0035c4b:	31 c0                	xor    %eax,%eax
c0035c4d:	8d 76 00             	lea    0x0(%esi),%esi
c0035c50:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
c0035c53:	0f b7 d1             	movzwl %cx,%edx
c0035c56:	0f af 55 10          	imul   0x10(%ebp),%edx
c0035c5a:	c1 e9 10             	shr    $0x10,%ecx
c0035c5d:	0f af 4d 10          	imul   0x10(%ebp),%ecx
c0035c61:	01 da                	add    %ebx,%edx
c0035c63:	89 d3                	mov    %edx,%ebx
c0035c65:	0f b7 d2             	movzwl %dx,%edx
c0035c68:	c1 eb 10             	shr    $0x10,%ebx
c0035c6b:	01 d9                	add    %ebx,%ecx
c0035c6d:	89 ce                	mov    %ecx,%esi
c0035c6f:	c1 e1 10             	shl    $0x10,%ecx
c0035c72:	01 d1                	add    %edx,%ecx
c0035c74:	c1 ee 10             	shr    $0x10,%esi
c0035c77:	89 0c 87             	mov    %ecx,(%edi,%eax,4)
c0035c7a:	83 c0 01             	add    $0x1,%eax
c0035c7d:	89 f3                	mov    %esi,%ebx
c0035c7f:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0035c82:	7f cc                	jg     c0035c50 <__multadd+0x20>
c0035c84:	85 f6                	test   %esi,%esi
c0035c86:	74 1b                	je     c0035ca3 <__multadd+0x73>
c0035c88:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c8b:	8b 7d e4             	mov    -0x1c(%ebp),%edi
c0035c8e:	3b 78 08             	cmp    0x8(%eax),%edi
c0035c91:	7d 1d                	jge    c0035cb0 <__multadd+0x80>
c0035c93:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035c96:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0035c99:	89 74 87 14          	mov    %esi,0x14(%edi,%eax,4)
c0035c9d:	83 c0 01             	add    $0x1,%eax
c0035ca0:	89 47 10             	mov    %eax,0x10(%edi)
c0035ca3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035ca6:	83 c4 2c             	add    $0x2c,%esp
c0035ca9:	5b                   	pop    %ebx
c0035caa:	5e                   	pop    %esi
c0035cab:	5f                   	pop    %edi
c0035cac:	5d                   	pop    %ebp
c0035cad:	c3                   	ret    
c0035cae:	66 90                	xchg   %ax,%ax
c0035cb0:	8b 40 04             	mov    0x4(%eax),%eax
c0035cb3:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035cb6:	83 c0 01             	add    $0x1,%eax
c0035cb9:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035cbd:	8b 45 08             	mov    0x8(%ebp),%eax
c0035cc0:	89 04 24             	mov    %eax,(%esp)
c0035cc3:	e8 a8 fe ff ff       	call   c0035b70 <_Balloc>
c0035cc8:	89 c3                	mov    %eax,%ebx
c0035cca:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035ccd:	8b 40 10             	mov    0x10(%eax),%eax
c0035cd0:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c0035cd7:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035cdb:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035cde:	83 c0 0c             	add    $0xc,%eax
c0035ce1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035ce5:	8d 43 0c             	lea    0xc(%ebx),%eax
c0035ce8:	89 04 24             	mov    %eax,(%esp)
c0035ceb:	e8 c4 c0 ff ff       	call   c0031db4 <memcpy>
c0035cf0:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035cf3:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035cf6:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0035cf9:	8b 50 04             	mov    0x4(%eax),%edx
c0035cfc:	8b 45 08             	mov    0x8(%ebp),%eax
c0035cff:	8b 40 4c             	mov    0x4c(%eax),%eax
c0035d02:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0035d05:	8b 10                	mov    (%eax),%edx
c0035d07:	89 17                	mov    %edx,(%edi)
c0035d09:	89 38                	mov    %edi,(%eax)
c0035d0b:	eb 86                	jmp    c0035c93 <__multadd+0x63>
c0035d0d:	8d 76 00             	lea    0x0(%esi),%esi

c0035d10 <__s2b>:
c0035d10:	55                   	push   %ebp
c0035d11:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
c0035d16:	89 e5                	mov    %esp,%ebp
c0035d18:	57                   	push   %edi
c0035d19:	56                   	push   %esi
c0035d1a:	53                   	push   %ebx
c0035d1b:	83 ec 2c             	sub    $0x2c,%esp
c0035d1e:	8b 45 14             	mov    0x14(%ebp),%eax
c0035d21:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035d24:	8b 75 0c             	mov    0xc(%ebp),%esi
c0035d27:	8d 48 08             	lea    0x8(%eax),%ecx
c0035d2a:	89 c8                	mov    %ecx,%eax
c0035d2c:	f7 ea                	imul   %edx
c0035d2e:	c1 f9 1f             	sar    $0x1f,%ecx
c0035d31:	d1 fa                	sar    %edx
c0035d33:	29 ca                	sub    %ecx,%edx
c0035d35:	83 fa 01             	cmp    $0x1,%edx
c0035d38:	0f 8e be 00 00 00    	jle    c0035dfc <__s2b+0xec>
c0035d3e:	b8 01 00 00 00       	mov    $0x1,%eax
c0035d43:	31 c9                	xor    %ecx,%ecx
c0035d45:	8d 76 00             	lea    0x0(%esi),%esi
c0035d48:	01 c0                	add    %eax,%eax
c0035d4a:	83 c1 01             	add    $0x1,%ecx
c0035d4d:	39 c2                	cmp    %eax,%edx
c0035d4f:	7f f7                	jg     c0035d48 <__s2b+0x38>
c0035d51:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0035d55:	89 1c 24             	mov    %ebx,(%esp)
c0035d58:	e8 13 fe ff ff       	call   c0035b70 <_Balloc>
c0035d5d:	8b 55 18             	mov    0x18(%ebp),%edx
c0035d60:	83 7d 10 09          	cmpl   $0x9,0x10(%ebp)
c0035d64:	89 50 14             	mov    %edx,0x14(%eax)
c0035d67:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0035d6e:	0f 8e 7c 00 00 00    	jle    c0035df0 <__s2b+0xe0>
c0035d74:	8d 4e 09             	lea    0x9(%esi),%ecx
c0035d77:	03 75 10             	add    0x10(%ebp),%esi
c0035d7a:	89 cf                	mov    %ecx,%edi
c0035d7c:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035d7f:	90                   	nop
c0035d80:	83 c7 01             	add    $0x1,%edi
c0035d83:	0f be 57 ff          	movsbl -0x1(%edi),%edx
c0035d87:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035d8e:	00 
c0035d8f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035d93:	89 1c 24             	mov    %ebx,(%esp)
c0035d96:	83 ea 30             	sub    $0x30,%edx
c0035d99:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035d9d:	e8 8e fe ff ff       	call   c0035c30 <__multadd>
c0035da2:	39 f7                	cmp    %esi,%edi
c0035da4:	75 da                	jne    c0035d80 <__s2b+0x70>
c0035da6:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035da9:	8b 7d 10             	mov    0x10(%ebp),%edi
c0035dac:	8d 74 39 f8          	lea    -0x8(%ecx,%edi,1),%esi
c0035db0:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035db3:	39 4d 14             	cmp    %ecx,0x14(%ebp)
c0035db6:	7e 2e                	jle    c0035de6 <__s2b+0xd6>
c0035db8:	8b 7d 14             	mov    0x14(%ebp),%edi
c0035dbb:	29 cf                	sub    %ecx,%edi
c0035dbd:	01 f7                	add    %esi,%edi
c0035dbf:	90                   	nop
c0035dc0:	83 c6 01             	add    $0x1,%esi
c0035dc3:	0f be 56 ff          	movsbl -0x1(%esi),%edx
c0035dc7:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035dce:	00 
c0035dcf:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035dd3:	89 1c 24             	mov    %ebx,(%esp)
c0035dd6:	83 ea 30             	sub    $0x30,%edx
c0035dd9:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035ddd:	e8 4e fe ff ff       	call   c0035c30 <__multadd>
c0035de2:	39 fe                	cmp    %edi,%esi
c0035de4:	75 da                	jne    c0035dc0 <__s2b+0xb0>
c0035de6:	83 c4 2c             	add    $0x2c,%esp
c0035de9:	5b                   	pop    %ebx
c0035dea:	5e                   	pop    %esi
c0035deb:	5f                   	pop    %edi
c0035dec:	5d                   	pop    %ebp
c0035ded:	c3                   	ret    
c0035dee:	66 90                	xchg   %ax,%ax
c0035df0:	83 c6 0a             	add    $0xa,%esi
c0035df3:	c7 45 10 09 00 00 00 	movl   $0x9,0x10(%ebp)
c0035dfa:	eb b4                	jmp    c0035db0 <__s2b+0xa0>
c0035dfc:	31 c9                	xor    %ecx,%ecx
c0035dfe:	e9 4e ff ff ff       	jmp    c0035d51 <__s2b+0x41>
c0035e03:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035e09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035e10 <__hi0bits>:
c0035e10:	55                   	push   %ebp
c0035e11:	31 c9                	xor    %ecx,%ecx
c0035e13:	89 e5                	mov    %esp,%ebp
c0035e15:	8b 55 08             	mov    0x8(%ebp),%edx
c0035e18:	f7 c2 00 00 ff ff    	test   $0xffff0000,%edx
c0035e1e:	75 05                	jne    c0035e25 <__hi0bits+0x15>
c0035e20:	c1 e2 10             	shl    $0x10,%edx
c0035e23:	b1 10                	mov    $0x10,%cl
c0035e25:	f7 c2 00 00 00 ff    	test   $0xff000000,%edx
c0035e2b:	75 06                	jne    c0035e33 <__hi0bits+0x23>
c0035e2d:	83 c1 08             	add    $0x8,%ecx
c0035e30:	c1 e2 08             	shl    $0x8,%edx
c0035e33:	f7 c2 00 00 00 f0    	test   $0xf0000000,%edx
c0035e39:	75 06                	jne    c0035e41 <__hi0bits+0x31>
c0035e3b:	83 c1 04             	add    $0x4,%ecx
c0035e3e:	c1 e2 04             	shl    $0x4,%edx
c0035e41:	f7 c2 00 00 00 c0    	test   $0xc0000000,%edx
c0035e47:	75 06                	jne    c0035e4f <__hi0bits+0x3f>
c0035e49:	83 c1 02             	add    $0x2,%ecx
c0035e4c:	c1 e2 02             	shl    $0x2,%edx
c0035e4f:	85 d2                	test   %edx,%edx
c0035e51:	89 c8                	mov    %ecx,%eax
c0035e53:	78 0d                	js     c0035e62 <__hi0bits+0x52>
c0035e55:	81 e2 00 00 00 40    	and    $0x40000000,%edx
c0035e5b:	b8 20 00 00 00       	mov    $0x20,%eax
c0035e60:	75 06                	jne    c0035e68 <__hi0bits+0x58>
c0035e62:	5d                   	pop    %ebp
c0035e63:	c3                   	ret    
c0035e64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035e68:	8d 41 01             	lea    0x1(%ecx),%eax
c0035e6b:	5d                   	pop    %ebp
c0035e6c:	c3                   	ret    
c0035e6d:	8d 76 00             	lea    0x0(%esi),%esi

c0035e70 <__lo0bits>:
c0035e70:	55                   	push   %ebp
c0035e71:	89 e5                	mov    %esp,%ebp
c0035e73:	53                   	push   %ebx
c0035e74:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035e77:	8b 13                	mov    (%ebx),%edx
c0035e79:	f6 c2 07             	test   $0x7,%dl
c0035e7c:	74 1a                	je     c0035e98 <__lo0bits+0x28>
c0035e7e:	31 c0                	xor    %eax,%eax
c0035e80:	f6 c2 01             	test   $0x1,%dl
c0035e83:	75 0f                	jne    c0035e94 <__lo0bits+0x24>
c0035e85:	f6 c2 02             	test   $0x2,%dl
c0035e88:	75 56                	jne    c0035ee0 <__lo0bits+0x70>
c0035e8a:	c1 ea 02             	shr    $0x2,%edx
c0035e8d:	b8 02 00 00 00       	mov    $0x2,%eax
c0035e92:	89 13                	mov    %edx,(%ebx)
c0035e94:	5b                   	pop    %ebx
c0035e95:	5d                   	pop    %ebp
c0035e96:	c3                   	ret    
c0035e97:	90                   	nop
c0035e98:	31 c9                	xor    %ecx,%ecx
c0035e9a:	66 85 d2             	test   %dx,%dx
c0035e9d:	75 05                	jne    c0035ea4 <__lo0bits+0x34>
c0035e9f:	c1 ea 10             	shr    $0x10,%edx
c0035ea2:	b1 10                	mov    $0x10,%cl
c0035ea4:	84 d2                	test   %dl,%dl
c0035ea6:	75 06                	jne    c0035eae <__lo0bits+0x3e>
c0035ea8:	83 c1 08             	add    $0x8,%ecx
c0035eab:	c1 ea 08             	shr    $0x8,%edx
c0035eae:	f6 c2 0f             	test   $0xf,%dl
c0035eb1:	75 06                	jne    c0035eb9 <__lo0bits+0x49>
c0035eb3:	83 c1 04             	add    $0x4,%ecx
c0035eb6:	c1 ea 04             	shr    $0x4,%edx
c0035eb9:	f6 c2 03             	test   $0x3,%dl
c0035ebc:	75 06                	jne    c0035ec4 <__lo0bits+0x54>
c0035ebe:	83 c1 02             	add    $0x2,%ecx
c0035ec1:	c1 ea 02             	shr    $0x2,%edx
c0035ec4:	f6 c2 01             	test   $0x1,%dl
c0035ec7:	75 0c                	jne    c0035ed5 <__lo0bits+0x65>
c0035ec9:	d1 ea                	shr    %edx
c0035ecb:	b8 20 00 00 00       	mov    $0x20,%eax
c0035ed0:	74 c2                	je     c0035e94 <__lo0bits+0x24>
c0035ed2:	83 c1 01             	add    $0x1,%ecx
c0035ed5:	89 13                	mov    %edx,(%ebx)
c0035ed7:	89 c8                	mov    %ecx,%eax
c0035ed9:	5b                   	pop    %ebx
c0035eda:	5d                   	pop    %ebp
c0035edb:	c3                   	ret    
c0035edc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035ee0:	d1 ea                	shr    %edx
c0035ee2:	b0 01                	mov    $0x1,%al
c0035ee4:	89 13                	mov    %edx,(%ebx)
c0035ee6:	5b                   	pop    %ebx
c0035ee7:	5d                   	pop    %ebp
c0035ee8:	c3                   	ret    
c0035ee9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035ef0 <__i2b>:
c0035ef0:	55                   	push   %ebp
c0035ef1:	89 e5                	mov    %esp,%ebp
c0035ef3:	83 ec 18             	sub    $0x18,%esp
c0035ef6:	8b 45 08             	mov    0x8(%ebp),%eax
c0035ef9:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035f00:	00 
c0035f01:	89 04 24             	mov    %eax,(%esp)
c0035f04:	e8 67 fc ff ff       	call   c0035b70 <_Balloc>
c0035f09:	8b 55 0c             	mov    0xc(%ebp),%edx
c0035f0c:	89 50 14             	mov    %edx,0x14(%eax)
c0035f0f:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0035f16:	c9                   	leave  
c0035f17:	c3                   	ret    
c0035f18:	90                   	nop
c0035f19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035f20 <__multiply>:
c0035f20:	55                   	push   %ebp
c0035f21:	89 e5                	mov    %esp,%ebp
c0035f23:	57                   	push   %edi
c0035f24:	56                   	push   %esi
c0035f25:	53                   	push   %ebx
c0035f26:	83 ec 3c             	sub    $0x3c,%esp
c0035f29:	8b 75 0c             	mov    0xc(%ebp),%esi
c0035f2c:	8b 45 10             	mov    0x10(%ebp),%eax
c0035f2f:	8b 7e 10             	mov    0x10(%esi),%edi
c0035f32:	8b 58 10             	mov    0x10(%eax),%ebx
c0035f35:	39 df                	cmp    %ebx,%edi
c0035f37:	7d 0e                	jge    c0035f47 <__multiply+0x27>
c0035f39:	89 f8                	mov    %edi,%eax
c0035f3b:	89 df                	mov    %ebx,%edi
c0035f3d:	89 c3                	mov    %eax,%ebx
c0035f3f:	89 f0                	mov    %esi,%eax
c0035f41:	8b 75 10             	mov    0x10(%ebp),%esi
c0035f44:	89 45 10             	mov    %eax,0x10(%ebp)
c0035f47:	8d 04 1f             	lea    (%edi,%ebx,1),%eax
c0035f4a:	3b 46 08             	cmp    0x8(%esi),%eax
c0035f4d:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0035f50:	0f 9f c0             	setg   %al
c0035f53:	0f b6 c0             	movzbl %al,%eax
c0035f56:	03 46 04             	add    0x4(%esi),%eax
c0035f59:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035f5d:	8b 45 08             	mov    0x8(%ebp),%eax
c0035f60:	89 04 24             	mov    %eax,(%esp)
c0035f63:	e8 08 fc ff ff       	call   c0035b70 <_Balloc>
c0035f68:	8b 55 c8             	mov    -0x38(%ebp),%edx
c0035f6b:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0035f6e:	8d 40 14             	lea    0x14(%eax),%eax
c0035f71:	8d 14 90             	lea    (%eax,%edx,4),%edx
c0035f74:	89 d1                	mov    %edx,%ecx
c0035f76:	39 c8                	cmp    %ecx,%eax
c0035f78:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0035f7b:	89 55 c4             	mov    %edx,-0x3c(%ebp)
c0035f7e:	73 15                	jae    c0035f95 <__multiply+0x75>
c0035f80:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c0035f83:	90                   	nop
c0035f84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035f88:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0035f8e:	83 c0 04             	add    $0x4,%eax
c0035f91:	39 c2                	cmp    %eax,%edx
c0035f93:	77 f3                	ja     c0035f88 <__multiply+0x68>
c0035f95:	8d 46 14             	lea    0x14(%esi),%eax
c0035f98:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0035f9b:	8d 04 b8             	lea    (%eax,%edi,4),%eax
c0035f9e:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0035fa1:	8b 45 10             	mov    0x10(%ebp),%eax
c0035fa4:	83 c0 14             	add    $0x14,%eax
c0035fa7:	8d 3c 98             	lea    (%eax,%ebx,4),%edi
c0035faa:	39 f8                	cmp    %edi,%eax
c0035fac:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0035faf:	89 7d cc             	mov    %edi,-0x34(%ebp)
c0035fb2:	0f 83 e8 00 00 00    	jae    c00360a0 <__multiply+0x180>
c0035fb8:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0035fbb:	8b 00                	mov    (%eax),%eax
c0035fbd:	0f b7 f8             	movzwl %ax,%edi
c0035fc0:	85 ff                	test   %edi,%edi
c0035fc2:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0035fc5:	74 5a                	je     c0036021 <__multiply+0x101>
c0035fc7:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0035fca:	31 db                	xor    %ebx,%ebx
c0035fcc:	8b 75 d0             	mov    -0x30(%ebp),%esi
c0035fcf:	eb 09                	jmp    c0035fda <__multiply+0xba>
c0035fd1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035fd8:	89 fa                	mov    %edi,%edx
c0035fda:	8b 0e                	mov    (%esi),%ecx
c0035fdc:	83 c6 04             	add    $0x4,%esi
c0035fdf:	0f b7 3a             	movzwl (%edx),%edi
c0035fe2:	0f b7 c1             	movzwl %cx,%eax
c0035fe5:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
c0035fe9:	c1 e9 10             	shr    $0x10,%ecx
c0035fec:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0035ff0:	01 f8                	add    %edi,%eax
c0035ff2:	01 d8                	add    %ebx,%eax
c0035ff4:	8b 1a                	mov    (%edx),%ebx
c0035ff6:	8d 7a 04             	lea    0x4(%edx),%edi
c0035ff9:	c1 eb 10             	shr    $0x10,%ebx
c0035ffc:	01 d9                	add    %ebx,%ecx
c0035ffe:	89 c3                	mov    %eax,%ebx
c0036000:	c1 eb 10             	shr    $0x10,%ebx
c0036003:	0f b7 c0             	movzwl %ax,%eax
c0036006:	01 d9                	add    %ebx,%ecx
c0036008:	89 cb                	mov    %ecx,%ebx
c003600a:	c1 e1 10             	shl    $0x10,%ecx
c003600d:	09 c1                	or     %eax,%ecx
c003600f:	c1 eb 10             	shr    $0x10,%ebx
c0036012:	39 75 dc             	cmp    %esi,-0x24(%ebp)
c0036015:	89 0a                	mov    %ecx,(%edx)
c0036017:	77 bf                	ja     c0035fd8 <__multiply+0xb8>
c0036019:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003601c:	89 5a 04             	mov    %ebx,0x4(%edx)
c003601f:	8b 00                	mov    (%eax),%eax
c0036021:	c1 e8 10             	shr    $0x10,%eax
c0036024:	85 c0                	test   %eax,%eax
c0036026:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036029:	74 61                	je     c003608c <__multiply+0x16c>
c003602b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003602e:	31 ff                	xor    %edi,%edi
c0036030:	89 fe                	mov    %edi,%esi
c0036032:	8b 10                	mov    (%eax),%edx
c0036034:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036037:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003603a:	89 d3                	mov    %edx,%ebx
c003603c:	eb 05                	jmp    c0036043 <__multiply+0x123>
c003603e:	66 90                	xchg   %ax,%ax
c0036040:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036043:	0f b7 08             	movzwl (%eax),%ecx
c0036046:	c1 eb 10             	shr    $0x10,%ebx
c0036049:	0f b7 d2             	movzwl %dx,%edx
c003604c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0036050:	83 c0 04             	add    $0x4,%eax
c0036053:	8d 3c 19             	lea    (%ecx,%ebx,1),%edi
c0036056:	01 f7                	add    %esi,%edi
c0036058:	8b 75 e0             	mov    -0x20(%ebp),%esi
c003605b:	89 fb                	mov    %edi,%ebx
c003605d:	c1 e3 10             	shl    $0x10,%ebx
c0036060:	09 d3                	or     %edx,%ebx
c0036062:	89 1e                	mov    %ebx,(%esi)
c0036064:	8b 5e 04             	mov    0x4(%esi),%ebx
c0036067:	8d 4e 04             	lea    0x4(%esi),%ecx
c003606a:	0f b7 50 fe          	movzwl -0x2(%eax),%edx
c003606e:	c1 ef 10             	shr    $0x10,%edi
c0036071:	0f af 55 e4          	imul   -0x1c(%ebp),%edx
c0036075:	0f b7 f3             	movzwl %bx,%esi
c0036078:	01 f2                	add    %esi,%edx
c003607a:	01 fa                	add    %edi,%edx
c003607c:	89 d6                	mov    %edx,%esi
c003607e:	c1 ee 10             	shr    $0x10,%esi
c0036081:	39 45 dc             	cmp    %eax,-0x24(%ebp)
c0036084:	77 ba                	ja     c0036040 <__multiply+0x120>
c0036086:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036089:	89 50 04             	mov    %edx,0x4(%eax)
c003608c:	83 45 d8 04          	addl   $0x4,-0x28(%ebp)
c0036090:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0036093:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
c0036097:	39 45 cc             	cmp    %eax,-0x34(%ebp)
c003609a:	0f 87 18 ff ff ff    	ja     c0035fb8 <__multiply+0x98>
c00360a0:	8b 75 c8             	mov    -0x38(%ebp),%esi
c00360a3:	85 f6                	test   %esi,%esi
c00360a5:	7e 29                	jle    c00360d0 <__multiply+0x1b0>
c00360a7:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c00360aa:	8b 5f fc             	mov    -0x4(%edi),%ebx
c00360ad:	85 db                	test   %ebx,%ebx
c00360af:	75 1f                	jne    c00360d0 <__multiply+0x1b0>
c00360b1:	8b 55 c8             	mov    -0x38(%ebp),%edx
c00360b4:	89 d0                	mov    %edx,%eax
c00360b6:	c1 e0 02             	shl    $0x2,%eax
c00360b9:	29 c7                	sub    %eax,%edi
c00360bb:	89 f8                	mov    %edi,%eax
c00360bd:	eb 09                	jmp    c00360c8 <__multiply+0x1a8>
c00360bf:	90                   	nop
c00360c0:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c00360c4:	85 c9                	test   %ecx,%ecx
c00360c6:	75 05                	jne    c00360cd <__multiply+0x1ad>
c00360c8:	83 ea 01             	sub    $0x1,%edx
c00360cb:	75 f3                	jne    c00360c0 <__multiply+0x1a0>
c00360cd:	89 55 c8             	mov    %edx,-0x38(%ebp)
c00360d0:	8b 45 c0             	mov    -0x40(%ebp),%eax
c00360d3:	8b 7d c8             	mov    -0x38(%ebp),%edi
c00360d6:	89 78 10             	mov    %edi,0x10(%eax)
c00360d9:	83 c4 3c             	add    $0x3c,%esp
c00360dc:	5b                   	pop    %ebx
c00360dd:	5e                   	pop    %esi
c00360de:	5f                   	pop    %edi
c00360df:	5d                   	pop    %ebp
c00360e0:	c3                   	ret    
c00360e1:	eb 0d                	jmp    c00360f0 <__pow5mult>
c00360e3:	90                   	nop
c00360e4:	90                   	nop
c00360e5:	90                   	nop
c00360e6:	90                   	nop
c00360e7:	90                   	nop
c00360e8:	90                   	nop
c00360e9:	90                   	nop
c00360ea:	90                   	nop
c00360eb:	90                   	nop
c00360ec:	90                   	nop
c00360ed:	90                   	nop
c00360ee:	90                   	nop
c00360ef:	90                   	nop

c00360f0 <__pow5mult>:
c00360f0:	55                   	push   %ebp
c00360f1:	89 e5                	mov    %esp,%ebp
c00360f3:	57                   	push   %edi
c00360f4:	56                   	push   %esi
c00360f5:	53                   	push   %ebx
c00360f6:	83 ec 2c             	sub    $0x2c,%esp
c00360f9:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00360fc:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00360ff:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0036102:	89 d8                	mov    %ebx,%eax
c0036104:	83 e0 03             	and    $0x3,%eax
c0036107:	0f 85 a3 00 00 00    	jne    c00361b0 <__pow5mult+0xc0>
c003610d:	c1 fb 02             	sar    $0x2,%ebx
c0036110:	85 db                	test   %ebx,%ebx
c0036112:	74 5c                	je     c0036170 <__pow5mult+0x80>
c0036114:	8b 71 48             	mov    0x48(%ecx),%esi
c0036117:	85 f6                	test   %esi,%esi
c0036119:	0f 84 bd 00 00 00    	je     c00361dc <__pow5mult+0xec>
c003611f:	f6 c3 01             	test   $0x1,%bl
c0036122:	75 15                	jne    c0036139 <__pow5mult+0x49>
c0036124:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036128:	d1 fb                	sar    %ebx
c003612a:	74 44                	je     c0036170 <__pow5mult+0x80>
c003612c:	8b 06                	mov    (%esi),%eax
c003612e:	85 c0                	test   %eax,%eax
c0036130:	74 4e                	je     c0036180 <__pow5mult+0x90>
c0036132:	89 c6                	mov    %eax,%esi
c0036134:	f6 c3 01             	test   $0x1,%bl
c0036137:	74 ef                	je     c0036128 <__pow5mult+0x38>
c0036139:	89 0c 24             	mov    %ecx,(%esp)
c003613c:	89 74 24 08          	mov    %esi,0x8(%esp)
c0036140:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0036144:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036147:	e8 d4 fd ff ff       	call   c0035f20 <__multiply>
c003614c:	85 ff                	test   %edi,%edi
c003614e:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036151:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036154:	74 52                	je     c00361a8 <__pow5mult+0xb8>
c0036156:	8b 57 04             	mov    0x4(%edi),%edx
c0036159:	d1 fb                	sar    %ebx
c003615b:	8b 41 4c             	mov    0x4c(%ecx),%eax
c003615e:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0036161:	8b 10                	mov    (%eax),%edx
c0036163:	89 17                	mov    %edx,(%edi)
c0036165:	89 38                	mov    %edi,(%eax)
c0036167:	8b 7d e0             	mov    -0x20(%ebp),%edi
c003616a:	75 c0                	jne    c003612c <__pow5mult+0x3c>
c003616c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036170:	83 c4 2c             	add    $0x2c,%esp
c0036173:	89 f8                	mov    %edi,%eax
c0036175:	5b                   	pop    %ebx
c0036176:	5e                   	pop    %esi
c0036177:	5f                   	pop    %edi
c0036178:	5d                   	pop    %ebp
c0036179:	c3                   	ret    
c003617a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036180:	89 74 24 08          	mov    %esi,0x8(%esp)
c0036184:	89 74 24 04          	mov    %esi,0x4(%esp)
c0036188:	89 0c 24             	mov    %ecx,(%esp)
c003618b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003618e:	e8 8d fd ff ff       	call   c0035f20 <__multiply>
c0036193:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036196:	89 06                	mov    %eax,(%esi)
c0036198:	89 c6                	mov    %eax,%esi
c003619a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c00361a0:	eb 92                	jmp    c0036134 <__pow5mult+0x44>
c00361a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00361a8:	8b 7d e0             	mov    -0x20(%ebp),%edi
c00361ab:	e9 78 ff ff ff       	jmp    c0036128 <__pow5mult+0x38>
c00361b0:	8b 04 85 9c 91 03 c0 	mov    -0x3ffc6e64(,%eax,4),%eax
c00361b7:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00361bb:	89 0c 24             	mov    %ecx,(%esp)
c00361be:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c00361c5:	00 
c00361c6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00361ca:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00361cd:	e8 5e fa ff ff       	call   c0035c30 <__multadd>
c00361d2:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00361d5:	89 c7                	mov    %eax,%edi
c00361d7:	e9 31 ff ff ff       	jmp    c003610d <__pow5mult+0x1d>
c00361dc:	89 0c 24             	mov    %ecx,(%esp)
c00361df:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00361e6:	00 
c00361e7:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00361ea:	e8 81 f9 ff ff       	call   c0035b70 <_Balloc>
c00361ef:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00361f2:	c7 40 14 71 02 00 00 	movl   $0x271,0x14(%eax)
c00361f9:	89 c6                	mov    %eax,%esi
c00361fb:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0036202:	89 41 48             	mov    %eax,0x48(%ecx)
c0036205:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c003620b:	e9 0f ff ff ff       	jmp    c003611f <__pow5mult+0x2f>

c0036210 <__lshift>:
c0036210:	55                   	push   %ebp
c0036211:	89 e5                	mov    %esp,%ebp
c0036213:	57                   	push   %edi
c0036214:	56                   	push   %esi
c0036215:	53                   	push   %ebx
c0036216:	83 ec 2c             	sub    $0x2c,%esp
c0036219:	8b 45 0c             	mov    0xc(%ebp),%eax
c003621c:	8b 75 10             	mov    0x10(%ebp),%esi
c003621f:	89 c7                	mov    %eax,%edi
c0036221:	8b 50 04             	mov    0x4(%eax),%edx
c0036224:	8b 40 10             	mov    0x10(%eax),%eax
c0036227:	89 f3                	mov    %esi,%ebx
c0036229:	c1 fb 05             	sar    $0x5,%ebx
c003622c:	01 d8                	add    %ebx,%eax
c003622e:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0036231:	83 c0 01             	add    $0x1,%eax
c0036234:	89 c1                	mov    %eax,%ecx
c0036236:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0036239:	8b 47 08             	mov    0x8(%edi),%eax
c003623c:	39 c1                	cmp    %eax,%ecx
c003623e:	7e 09                	jle    c0036249 <__lshift+0x39>
c0036240:	01 c0                	add    %eax,%eax
c0036242:	83 c2 01             	add    $0x1,%edx
c0036245:	39 c1                	cmp    %eax,%ecx
c0036247:	7f f7                	jg     c0036240 <__lshift+0x30>
c0036249:	8b 45 08             	mov    0x8(%ebp),%eax
c003624c:	89 54 24 04          	mov    %edx,0x4(%esp)
c0036250:	89 04 24             	mov    %eax,(%esp)
c0036253:	e8 18 f9 ff ff       	call   c0035b70 <_Balloc>
c0036258:	85 db                	test   %ebx,%ebx
c003625a:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003625d:	8d 50 14             	lea    0x14(%eax),%edx
c0036260:	7e 17                	jle    c0036279 <__lshift+0x69>
c0036262:	31 c0                	xor    %eax,%eax
c0036264:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036268:	c7 04 82 00 00 00 00 	movl   $0x0,(%edx,%eax,4)
c003626f:	83 c0 01             	add    $0x1,%eax
c0036272:	39 d8                	cmp    %ebx,%eax
c0036274:	75 f2                	jne    c0036268 <__lshift+0x58>
c0036276:	8d 14 82             	lea    (%edx,%eax,4),%edx
c0036279:	8b 7d 0c             	mov    0xc(%ebp),%edi
c003627c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003627f:	8b 4f 10             	mov    0x10(%edi),%ecx
c0036282:	83 c0 14             	add    $0x14,%eax
c0036285:	83 e6 1f             	and    $0x1f,%esi
c0036288:	89 75 e0             	mov    %esi,-0x20(%ebp)
c003628b:	8d 3c 88             	lea    (%eax,%ecx,4),%edi
c003628e:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0036291:	74 7d                	je     c0036310 <__lshift+0x100>
c0036293:	c7 45 dc 20 00 00 00 	movl   $0x20,-0x24(%ebp)
c003629a:	29 75 dc             	sub    %esi,-0x24(%ebp)
c003629d:	31 f6                	xor    %esi,%esi
c003629f:	eb 09                	jmp    c00362aa <__lshift+0x9a>
c00362a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00362a8:	89 fa                	mov    %edi,%edx
c00362aa:	8b 18                	mov    (%eax),%ebx
c00362ac:	83 c0 04             	add    $0x4,%eax
c00362af:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c00362b3:	8d 7a 04             	lea    0x4(%edx),%edi
c00362b6:	d3 e3                	shl    %cl,%ebx
c00362b8:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
c00362bc:	09 f3                	or     %esi,%ebx
c00362be:	89 1a                	mov    %ebx,(%edx)
c00362c0:	8b 70 fc             	mov    -0x4(%eax),%esi
c00362c3:	d3 ee                	shr    %cl,%esi
c00362c5:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c00362c8:	77 de                	ja     c00362a8 <__lshift+0x98>
c00362ca:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00362cd:	89 72 04             	mov    %esi,0x4(%edx)
c00362d0:	83 c0 02             	add    $0x2,%eax
c00362d3:	85 f6                	test   %esi,%esi
c00362d5:	0f 44 45 d8          	cmove  -0x28(%ebp),%eax
c00362d9:	89 45 d8             	mov    %eax,-0x28(%ebp)
c00362dc:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00362df:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c00362e2:	8b 75 0c             	mov    0xc(%ebp),%esi
c00362e5:	83 e8 01             	sub    $0x1,%eax
c00362e8:	89 47 10             	mov    %eax,0x10(%edi)
c00362eb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00362ee:	8b 50 04             	mov    0x4(%eax),%edx
c00362f1:	8b 45 08             	mov    0x8(%ebp),%eax
c00362f4:	8b 40 4c             	mov    0x4c(%eax),%eax
c00362f7:	8d 04 90             	lea    (%eax,%edx,4),%eax
c00362fa:	8b 10                	mov    (%eax),%edx
c00362fc:	89 16                	mov    %edx,(%esi)
c00362fe:	89 30                	mov    %esi,(%eax)
c0036300:	83 c4 2c             	add    $0x2c,%esp
c0036303:	89 f8                	mov    %edi,%eax
c0036305:	5b                   	pop    %ebx
c0036306:	5e                   	pop    %esi
c0036307:	5f                   	pop    %edi
c0036308:	5d                   	pop    %ebp
c0036309:	c3                   	ret    
c003630a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036310:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c0036313:	90                   	nop
c0036314:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036318:	83 c0 04             	add    $0x4,%eax
c003631b:	8b 48 fc             	mov    -0x4(%eax),%ecx
c003631e:	83 c2 04             	add    $0x4,%edx
c0036321:	39 c3                	cmp    %eax,%ebx
c0036323:	89 4a fc             	mov    %ecx,-0x4(%edx)
c0036326:	77 f0                	ja     c0036318 <__lshift+0x108>
c0036328:	eb b2                	jmp    c00362dc <__lshift+0xcc>
c003632a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0036330 <__mcmp>:
c0036330:	55                   	push   %ebp
c0036331:	89 e5                	mov    %esp,%ebp
c0036333:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0036336:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036339:	53                   	push   %ebx
c003633a:	8b 41 10             	mov    0x10(%ecx),%eax
c003633d:	8b 5a 10             	mov    0x10(%edx),%ebx
c0036340:	29 d8                	sub    %ebx,%eax
c0036342:	85 c0                	test   %eax,%eax
c0036344:	75 27                	jne    c003636d <__mcmp+0x3d>
c0036346:	c1 e3 02             	shl    $0x2,%ebx
c0036349:	83 c1 14             	add    $0x14,%ecx
c003634c:	8d 04 19             	lea    (%ecx,%ebx,1),%eax
c003634f:	8d 54 1a 14          	lea    0x14(%edx,%ebx,1),%edx
c0036353:	eb 07                	jmp    c003635c <__mcmp+0x2c>
c0036355:	8d 76 00             	lea    0x0(%esi),%esi
c0036358:	39 c1                	cmp    %eax,%ecx
c003635a:	73 14                	jae    c0036370 <__mcmp+0x40>
c003635c:	83 ea 04             	sub    $0x4,%edx
c003635f:	83 e8 04             	sub    $0x4,%eax
c0036362:	8b 1a                	mov    (%edx),%ebx
c0036364:	39 18                	cmp    %ebx,(%eax)
c0036366:	74 f0                	je     c0036358 <__mcmp+0x28>
c0036368:	19 c0                	sbb    %eax,%eax
c003636a:	83 c8 01             	or     $0x1,%eax
c003636d:	5b                   	pop    %ebx
c003636e:	5d                   	pop    %ebp
c003636f:	c3                   	ret    
c0036370:	31 c0                	xor    %eax,%eax
c0036372:	5b                   	pop    %ebx
c0036373:	5d                   	pop    %ebp
c0036374:	c3                   	ret    
c0036375:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036379:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036380 <__mdiff>:
c0036380:	55                   	push   %ebp
c0036381:	89 e5                	mov    %esp,%ebp
c0036383:	57                   	push   %edi
c0036384:	56                   	push   %esi
c0036385:	53                   	push   %ebx
c0036386:	83 ec 2c             	sub    $0x2c,%esp
c0036389:	8b 75 0c             	mov    0xc(%ebp),%esi
c003638c:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003638f:	89 34 24             	mov    %esi,(%esp)
c0036392:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0036396:	e8 95 ff ff ff       	call   c0036330 <__mcmp>
c003639b:	85 c0                	test   %eax,%eax
c003639d:	0f 84 25 01 00 00    	je     c00364c8 <__mdiff+0x148>
c00363a3:	0f 88 0f 01 00 00    	js     c00364b8 <__mdiff+0x138>
c00363a9:	31 ff                	xor    %edi,%edi
c00363ab:	8b 46 04             	mov    0x4(%esi),%eax
c00363ae:	83 c6 14             	add    $0x14,%esi
c00363b1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00363b5:	8b 45 08             	mov    0x8(%ebp),%eax
c00363b8:	89 04 24             	mov    %eax,(%esp)
c00363bb:	e8 b0 f7 ff ff       	call   c0035b70 <_Balloc>
c00363c0:	8d 4b 14             	lea    0x14(%ebx),%ecx
c00363c3:	89 c2                	mov    %eax,%edx
c00363c5:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00363c8:	89 78 0c             	mov    %edi,0xc(%eax)
c00363cb:	8b 46 fc             	mov    -0x4(%esi),%eax
c00363ce:	89 75 e4             	mov    %esi,-0x1c(%ebp)
c00363d1:	89 45 dc             	mov    %eax,-0x24(%ebp)
c00363d4:	8d 04 86             	lea    (%esi,%eax,4),%eax
c00363d7:	89 45 d8             	mov    %eax,-0x28(%ebp)
c00363da:	8b 43 10             	mov    0x10(%ebx),%eax
c00363dd:	31 db                	xor    %ebx,%ebx
c00363df:	8d 04 81             	lea    (%ecx,%eax,4),%eax
c00363e2:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00363e5:	89 d0                	mov    %edx,%eax
c00363e7:	83 c0 14             	add    $0x14,%eax
c00363ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00363f0:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c00363f3:	83 c0 04             	add    $0x4,%eax
c00363f6:	83 c1 04             	add    $0x4,%ecx
c00363f9:	83 45 e4 04          	addl   $0x4,-0x1c(%ebp)
c00363fd:	8b 3e                	mov    (%esi),%edi
c00363ff:	8b 71 fc             	mov    -0x4(%ecx),%esi
c0036402:	0f b7 d7             	movzwl %di,%edx
c0036405:	01 da                	add    %ebx,%edx
c0036407:	0f b7 de             	movzwl %si,%ebx
c003640a:	29 da                	sub    %ebx,%edx
c003640c:	c1 ef 10             	shr    $0x10,%edi
c003640f:	89 d3                	mov    %edx,%ebx
c0036411:	c1 ee 10             	shr    $0x10,%esi
c0036414:	0f b7 d2             	movzwl %dx,%edx
c0036417:	c1 fb 10             	sar    $0x10,%ebx
c003641a:	29 f7                	sub    %esi,%edi
c003641c:	01 df                	add    %ebx,%edi
c003641e:	89 fb                	mov    %edi,%ebx
c0036420:	c1 e7 10             	shl    $0x10,%edi
c0036423:	09 d7                	or     %edx,%edi
c0036425:	c1 fb 10             	sar    $0x10,%ebx
c0036428:	39 4d e0             	cmp    %ecx,-0x20(%ebp)
c003642b:	89 78 fc             	mov    %edi,-0x4(%eax)
c003642e:	77 c0                	ja     c00363f0 <__mdiff+0x70>
c0036430:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036433:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036436:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036439:	89 75 e0             	mov    %esi,-0x20(%ebp)
c003643c:	39 f1                	cmp    %esi,%ecx
c003643e:	76 3f                	jbe    c003647f <__mdiff+0xff>
c0036440:	8b 3e                	mov    (%esi),%edi
c0036442:	83 c6 04             	add    $0x4,%esi
c0036445:	83 c0 04             	add    $0x4,%eax
c0036448:	0f b7 d7             	movzwl %di,%edx
c003644b:	01 da                	add    %ebx,%edx
c003644d:	89 d3                	mov    %edx,%ebx
c003644f:	0f b7 d2             	movzwl %dx,%edx
c0036452:	c1 fb 10             	sar    $0x10,%ebx
c0036455:	c1 ef 10             	shr    $0x10,%edi
c0036458:	01 df                	add    %ebx,%edi
c003645a:	89 fb                	mov    %edi,%ebx
c003645c:	c1 e7 10             	shl    $0x10,%edi
c003645f:	09 d7                	or     %edx,%edi
c0036461:	c1 fb 10             	sar    $0x10,%ebx
c0036464:	39 f1                	cmp    %esi,%ecx
c0036466:	89 78 fc             	mov    %edi,-0x4(%eax)
c0036469:	77 d5                	ja     c0036440 <__mdiff+0xc0>
c003646b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003646e:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036471:	f7 d0                	not    %eax
c0036473:	01 c8                	add    %ecx,%eax
c0036475:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036478:	c1 e8 02             	shr    $0x2,%eax
c003647b:	8d 44 81 04          	lea    0x4(%ecx,%eax,4),%eax
c003647f:	85 ff                	test   %edi,%edi
c0036481:	75 23                	jne    c00364a6 <__mdiff+0x126>
c0036483:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c0036486:	8d 14 8d 00 00 00 00 	lea    0x0(,%ecx,4),%edx
c003648d:	29 d0                	sub    %edx,%eax
c003648f:	89 ca                	mov    %ecx,%edx
c0036491:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036498:	83 ea 01             	sub    $0x1,%edx
c003649b:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c003649f:	85 c9                	test   %ecx,%ecx
c00364a1:	74 f5                	je     c0036498 <__mdiff+0x118>
c00364a3:	89 55 dc             	mov    %edx,-0x24(%ebp)
c00364a6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00364a9:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c00364ac:	89 48 10             	mov    %ecx,0x10(%eax)
c00364af:	83 c4 2c             	add    $0x2c,%esp
c00364b2:	5b                   	pop    %ebx
c00364b3:	5e                   	pop    %esi
c00364b4:	5f                   	pop    %edi
c00364b5:	5d                   	pop    %ebp
c00364b6:	c3                   	ret    
c00364b7:	90                   	nop
c00364b8:	89 f0                	mov    %esi,%eax
c00364ba:	bf 01 00 00 00       	mov    $0x1,%edi
c00364bf:	89 de                	mov    %ebx,%esi
c00364c1:	89 c3                	mov    %eax,%ebx
c00364c3:	e9 e3 fe ff ff       	jmp    c00363ab <__mdiff+0x2b>
c00364c8:	8b 45 08             	mov    0x8(%ebp),%eax
c00364cb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00364d2:	00 
c00364d3:	89 04 24             	mov    %eax,(%esp)
c00364d6:	e8 95 f6 ff ff       	call   c0035b70 <_Balloc>
c00364db:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c00364e2:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
c00364e9:	83 c4 2c             	add    $0x2c,%esp
c00364ec:	5b                   	pop    %ebx
c00364ed:	5e                   	pop    %esi
c00364ee:	5f                   	pop    %edi
c00364ef:	5d                   	pop    %ebp
c00364f0:	c3                   	ret    
c00364f1:	eb 0d                	jmp    c0036500 <__ulp>
c00364f3:	90                   	nop
c00364f4:	90                   	nop
c00364f5:	90                   	nop
c00364f6:	90                   	nop
c00364f7:	90                   	nop
c00364f8:	90                   	nop
c00364f9:	90                   	nop
c00364fa:	90                   	nop
c00364fb:	90                   	nop
c00364fc:	90                   	nop
c00364fd:	90                   	nop
c00364fe:	90                   	nop
c00364ff:	90                   	nop

c0036500 <__ulp>:
c0036500:	55                   	push   %ebp
c0036501:	89 e5                	mov    %esp,%ebp
c0036503:	83 ec 08             	sub    $0x8,%esp
c0036506:	dd 45 08             	fldl   0x8(%ebp)
c0036509:	dd 5d f8             	fstpl  -0x8(%ebp)
c003650c:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c003650f:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
c0036515:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
c003651b:	85 c9                	test   %ecx,%ecx
c003651d:	7e 11                	jle    c0036530 <__ulp+0x30>
c003651f:	89 4d fc             	mov    %ecx,-0x4(%ebp)
c0036522:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036529:	dd 45 f8             	fldl   -0x8(%ebp)
c003652c:	c9                   	leave  
c003652d:	c3                   	ret    
c003652e:	66 90                	xchg   %ax,%ax
c0036530:	f7 d9                	neg    %ecx
c0036532:	c1 f9 14             	sar    $0x14,%ecx
c0036535:	83 f9 13             	cmp    $0x13,%ecx
c0036538:	7e 26                	jle    c0036560 <__ulp+0x60>
c003653a:	83 f9 32             	cmp    $0x32,%ecx
c003653d:	b8 01 00 00 00       	mov    $0x1,%eax
c0036542:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0036549:	7f 0b                	jg     c0036556 <__ulp+0x56>
c003654b:	ba 33 00 00 00       	mov    $0x33,%edx
c0036550:	29 ca                	sub    %ecx,%edx
c0036552:	89 d1                	mov    %edx,%ecx
c0036554:	d3 e0                	shl    %cl,%eax
c0036556:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0036559:	dd 45 f8             	fldl   -0x8(%ebp)
c003655c:	c9                   	leave  
c003655d:	c3                   	ret    
c003655e:	66 90                	xchg   %ax,%ax
c0036560:	b8 00 00 08 00       	mov    $0x80000,%eax
c0036565:	d3 f8                	sar    %cl,%eax
c0036567:	89 45 fc             	mov    %eax,-0x4(%ebp)
c003656a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036571:	dd 45 f8             	fldl   -0x8(%ebp)
c0036574:	c9                   	leave  
c0036575:	c3                   	ret    
c0036576:	8d 76 00             	lea    0x0(%esi),%esi
c0036579:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036580 <__b2d>:
c0036580:	55                   	push   %ebp
c0036581:	89 e5                	mov    %esp,%ebp
c0036583:	57                   	push   %edi
c0036584:	56                   	push   %esi
c0036585:	53                   	push   %ebx
c0036586:	83 ec 18             	sub    $0x18,%esp
c0036589:	8b 45 08             	mov    0x8(%ebp),%eax
c003658c:	8d 78 14             	lea    0x14(%eax),%edi
c003658f:	8b 40 10             	mov    0x10(%eax),%eax
c0036592:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
c0036595:	8b 73 fc             	mov    -0x4(%ebx),%esi
c0036598:	8d 43 fc             	lea    -0x4(%ebx),%eax
c003659b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c003659e:	89 34 24             	mov    %esi,(%esp)
c00365a1:	e8 6a f8 ff ff       	call   c0035e10 <__hi0bits>
c00365a6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c00365a9:	ba 20 00 00 00       	mov    $0x20,%edx
c00365ae:	29 c2                	sub    %eax,%edx
c00365b0:	83 f8 0a             	cmp    $0xa,%eax
c00365b3:	89 11                	mov    %edx,(%ecx)
c00365b5:	7f 41                	jg     c00365f8 <__b2d+0x78>
c00365b7:	b9 0b 00 00 00       	mov    $0xb,%ecx
c00365bc:	89 f2                	mov    %esi,%edx
c00365be:	29 c1                	sub    %eax,%ecx
c00365c0:	d3 ea                	shr    %cl,%edx
c00365c2:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
c00365c8:	89 55 ec             	mov    %edx,-0x14(%ebp)
c00365cb:	31 d2                	xor    %edx,%edx
c00365cd:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c00365d0:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c00365d7:	73 05                	jae    c00365de <__b2d+0x5e>
c00365d9:	8b 53 f8             	mov    -0x8(%ebx),%edx
c00365dc:	d3 ea                	shr    %cl,%edx
c00365de:	8d 48 15             	lea    0x15(%eax),%ecx
c00365e1:	d3 e6                	shl    %cl,%esi
c00365e3:	09 f2                	or     %esi,%edx
c00365e5:	89 55 e8             	mov    %edx,-0x18(%ebp)
c00365e8:	dd 45 e8             	fldl   -0x18(%ebp)
c00365eb:	83 c4 18             	add    $0x18,%esp
c00365ee:	5b                   	pop    %ebx
c00365ef:	5e                   	pop    %esi
c00365f0:	5f                   	pop    %edi
c00365f1:	5d                   	pop    %ebp
c00365f2:	c3                   	ret    
c00365f3:	90                   	nop
c00365f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00365f8:	31 d2                	xor    %edx,%edx
c00365fa:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c00365fd:	73 09                	jae    c0036608 <__b2d+0x88>
c00365ff:	8b 53 f8             	mov    -0x8(%ebx),%edx
c0036602:	8d 4b f8             	lea    -0x8(%ebx),%ecx
c0036605:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036608:	89 c3                	mov    %eax,%ebx
c003660a:	83 eb 0b             	sub    $0xb,%ebx
c003660d:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0036610:	74 4e                	je     c0036660 <__b2d+0xe0>
c0036612:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036616:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c003661b:	29 c3                	sub    %eax,%ebx
c003661d:	89 d0                	mov    %edx,%eax
c003661f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0036626:	d3 e6                	shl    %cl,%esi
c0036628:	89 d9                	mov    %ebx,%ecx
c003662a:	d3 e8                	shr    %cl,%eax
c003662c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c003662f:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036635:	09 c6                	or     %eax,%esi
c0036637:	31 c0                	xor    %eax,%eax
c0036639:	89 75 ec             	mov    %esi,-0x14(%ebp)
c003663c:	39 f9                	cmp    %edi,%ecx
c003663e:	76 07                	jbe    c0036647 <__b2d+0xc7>
c0036640:	8b 41 fc             	mov    -0x4(%ecx),%eax
c0036643:	89 d9                	mov    %ebx,%ecx
c0036645:	d3 e8                	shr    %cl,%eax
c0036647:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c003664b:	d3 e2                	shl    %cl,%edx
c003664d:	09 d0                	or     %edx,%eax
c003664f:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0036652:	dd 45 e8             	fldl   -0x18(%ebp)
c0036655:	83 c4 18             	add    $0x18,%esp
c0036658:	5b                   	pop    %ebx
c0036659:	5e                   	pop    %esi
c003665a:	5f                   	pop    %edi
c003665b:	5d                   	pop    %ebp
c003665c:	c3                   	ret    
c003665d:	8d 76 00             	lea    0x0(%esi),%esi
c0036660:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036666:	89 75 ec             	mov    %esi,-0x14(%ebp)
c0036669:	89 55 e8             	mov    %edx,-0x18(%ebp)
c003666c:	dd 45 e8             	fldl   -0x18(%ebp)
c003666f:	83 c4 18             	add    $0x18,%esp
c0036672:	5b                   	pop    %ebx
c0036673:	5e                   	pop    %esi
c0036674:	5f                   	pop    %edi
c0036675:	5d                   	pop    %ebp
c0036676:	c3                   	ret    
c0036677:	89 f6                	mov    %esi,%esi
c0036679:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036680 <__d2b>:
c0036680:	55                   	push   %ebp
c0036681:	89 e5                	mov    %esp,%ebp
c0036683:	57                   	push   %edi
c0036684:	56                   	push   %esi
c0036685:	53                   	push   %ebx
c0036686:	83 ec 2c             	sub    $0x2c,%esp
c0036689:	8b 45 08             	mov    0x8(%ebp),%eax
c003668c:	dd 45 0c             	fldl   0xc(%ebp)
c003668f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0036696:	00 
c0036697:	dd 5d d0             	fstpl  -0x30(%ebp)
c003669a:	89 04 24             	mov    %eax,(%esp)
c003669d:	e8 ce f4 ff ff       	call   c0035b70 <_Balloc>
c00366a2:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
c00366a5:	89 c6                	mov    %eax,%esi
c00366a7:	89 d8                	mov    %ebx,%eax
c00366a9:	81 e3 ff ff ff 7f    	and    $0x7fffffff,%ebx
c00366af:	25 ff ff 0f 00       	and    $0xfffff,%eax
c00366b4:	c1 eb 14             	shr    $0x14,%ebx
c00366b7:	85 db                	test   %ebx,%ebx
c00366b9:	74 05                	je     c00366c0 <__d2b+0x40>
c00366bb:	0d 00 00 10 00       	or     $0x100000,%eax
c00366c0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00366c3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00366c6:	85 c0                	test   %eax,%eax
c00366c8:	74 56                	je     c0036720 <__d2b+0xa0>
c00366ca:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00366cd:	8d 45 e0             	lea    -0x20(%ebp),%eax
c00366d0:	89 04 24             	mov    %eax,(%esp)
c00366d3:	e8 98 f7 ff ff       	call   c0035e70 <__lo0bits>
c00366d8:	85 c0                	test   %eax,%eax
c00366da:	0f 85 90 00 00 00    	jne    c0036770 <__d2b+0xf0>
c00366e0:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00366e3:	89 56 14             	mov    %edx,0x14(%esi)
c00366e6:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c00366e9:	83 fa 01             	cmp    $0x1,%edx
c00366ec:	19 ff                	sbb    %edi,%edi
c00366ee:	83 c7 02             	add    $0x2,%edi
c00366f1:	85 db                	test   %ebx,%ebx
c00366f3:	89 56 18             	mov    %edx,0x18(%esi)
c00366f6:	89 7e 10             	mov    %edi,0x10(%esi)
c00366f9:	74 49                	je     c0036744 <__d2b+0xc4>
c00366fb:	8b 4d 14             	mov    0x14(%ebp),%ecx
c00366fe:	8d 94 18 cd fb ff ff 	lea    -0x433(%eax,%ebx,1),%edx
c0036705:	89 11                	mov    %edx,(%ecx)
c0036707:	ba 35 00 00 00       	mov    $0x35,%edx
c003670c:	29 c2                	sub    %eax,%edx
c003670e:	8b 45 18             	mov    0x18(%ebp),%eax
c0036711:	89 10                	mov    %edx,(%eax)
c0036713:	83 c4 2c             	add    $0x2c,%esp
c0036716:	89 f0                	mov    %esi,%eax
c0036718:	5b                   	pop    %ebx
c0036719:	5e                   	pop    %esi
c003671a:	5f                   	pop    %edi
c003671b:	5d                   	pop    %ebp
c003671c:	c3                   	ret    
c003671d:	8d 76 00             	lea    0x0(%esi),%esi
c0036720:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0036723:	bf 01 00 00 00       	mov    $0x1,%edi
c0036728:	89 04 24             	mov    %eax,(%esp)
c003672b:	e8 40 f7 ff ff       	call   c0035e70 <__lo0bits>
c0036730:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036733:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
c003673a:	89 56 14             	mov    %edx,0x14(%esi)
c003673d:	83 c0 20             	add    $0x20,%eax
c0036740:	85 db                	test   %ebx,%ebx
c0036742:	75 b7                	jne    c00366fb <__d2b+0x7b>
c0036744:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0036747:	2d 32 04 00 00       	sub    $0x432,%eax
c003674c:	89 01                	mov    %eax,(%ecx)
c003674e:	8b 44 be 10          	mov    0x10(%esi,%edi,4),%eax
c0036752:	c1 e7 05             	shl    $0x5,%edi
c0036755:	89 04 24             	mov    %eax,(%esp)
c0036758:	e8 b3 f6 ff ff       	call   c0035e10 <__hi0bits>
c003675d:	29 c7                	sub    %eax,%edi
c003675f:	8b 45 18             	mov    0x18(%ebp),%eax
c0036762:	89 38                	mov    %edi,(%eax)
c0036764:	83 c4 2c             	add    $0x2c,%esp
c0036767:	89 f0                	mov    %esi,%eax
c0036769:	5b                   	pop    %ebx
c003676a:	5e                   	pop    %esi
c003676b:	5f                   	pop    %edi
c003676c:	5d                   	pop    %ebp
c003676d:	c3                   	ret    
c003676e:	66 90                	xchg   %ax,%ax
c0036770:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036773:	b9 20 00 00 00       	mov    $0x20,%ecx
c0036778:	29 c1                	sub    %eax,%ecx
c003677a:	89 d7                	mov    %edx,%edi
c003677c:	d3 e7                	shl    %cl,%edi
c003677e:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036781:	09 f9                	or     %edi,%ecx
c0036783:	89 4e 14             	mov    %ecx,0x14(%esi)
c0036786:	89 c1                	mov    %eax,%ecx
c0036788:	d3 ea                	shr    %cl,%edx
c003678a:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c003678d:	e9 57 ff ff ff       	jmp    c00366e9 <__d2b+0x69>
c0036792:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036799:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00367a0 <__ratio>:
c00367a0:	55                   	push   %ebp
c00367a1:	89 e5                	mov    %esp,%ebp
c00367a3:	56                   	push   %esi
c00367a4:	53                   	push   %ebx
c00367a5:	83 ec 30             	sub    $0x30,%esp
c00367a8:	8b 75 08             	mov    0x8(%ebp),%esi
c00367ab:	8d 45 f0             	lea    -0x10(%ebp),%eax
c00367ae:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c00367b1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00367b5:	89 34 24             	mov    %esi,(%esp)
c00367b8:	e8 c3 fd ff ff       	call   c0036580 <__b2d>
c00367bd:	8d 45 f4             	lea    -0xc(%ebp),%eax
c00367c0:	89 44 24 04          	mov    %eax,0x4(%esp)
c00367c4:	89 1c 24             	mov    %ebx,(%esp)
c00367c7:	dd 55 e0             	fstl   -0x20(%ebp)
c00367ca:	dd 5d d8             	fstpl  -0x28(%ebp)
c00367cd:	e8 ae fd ff ff       	call   c0036580 <__b2d>
c00367d2:	8b 46 10             	mov    0x10(%esi),%eax
c00367d5:	2b 43 10             	sub    0x10(%ebx),%eax
c00367d8:	8b 55 f0             	mov    -0x10(%ebp),%edx
c00367db:	2b 55 f4             	sub    -0xc(%ebp),%edx
c00367de:	c1 e0 05             	shl    $0x5,%eax
c00367e1:	01 d0                	add    %edx,%eax
c00367e3:	dd 55 d0             	fstl   -0x30(%ebp)
c00367e6:	85 c0                	test   %eax,%eax
c00367e8:	dd 45 d8             	fldl   -0x28(%ebp)
c00367eb:	7e 1b                	jle    c0036808 <__ratio+0x68>
c00367ed:	dd d8                	fstp   %st(0)
c00367ef:	c1 e0 14             	shl    $0x14,%eax
c00367f2:	01 45 e4             	add    %eax,-0x1c(%ebp)
c00367f5:	dd 45 e0             	fldl   -0x20(%ebp)
c00367f8:	83 c4 30             	add    $0x30,%esp
c00367fb:	5b                   	pop    %ebx
c00367fc:	de f1                	fdivp  %st,%st(1)
c00367fe:	5e                   	pop    %esi
c00367ff:	5d                   	pop    %ebp
c0036800:	c3                   	ret    
c0036801:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036808:	dd d9                	fstp   %st(1)
c003680a:	c1 e0 14             	shl    $0x14,%eax
c003680d:	29 45 d4             	sub    %eax,-0x2c(%ebp)
c0036810:	dd 45 d0             	fldl   -0x30(%ebp)
c0036813:	83 c4 30             	add    $0x30,%esp
c0036816:	5b                   	pop    %ebx
c0036817:	de f9                	fdivrp %st,%st(1)
c0036819:	5e                   	pop    %esi
c003681a:	5d                   	pop    %ebp
c003681b:	c3                   	ret    
c003681c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0036820 <_mprec_log10>:
c0036820:	55                   	push   %ebp
c0036821:	89 e5                	mov    %esp,%ebp
c0036823:	8b 45 08             	mov    0x8(%ebp),%eax
c0036826:	83 f8 17             	cmp    $0x17,%eax
c0036829:	7e 1d                	jle    c0036848 <_mprec_log10+0x28>
c003682b:	d9 e8                	fld1   
c003682d:	d9 05 5c 91 03 c0    	flds   0xc003915c
c0036833:	90                   	nop
c0036834:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036838:	83 e8 01             	sub    $0x1,%eax
c003683b:	dc c9                	fmul   %st,%st(1)
c003683d:	75 f9                	jne    c0036838 <_mprec_log10+0x18>
c003683f:	dd d8                	fstp   %st(0)
c0036841:	5d                   	pop    %ebp
c0036842:	c3                   	ret    
c0036843:	90                   	nop
c0036844:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036848:	dd 04 c5 40 92 03 c0 	fldl   -0x3ffc6dc0(,%eax,8)
c003684f:	5d                   	pop    %ebp
c0036850:	c3                   	ret    
c0036851:	eb 0d                	jmp    c0036860 <__copybits>
c0036853:	90                   	nop
c0036854:	90                   	nop
c0036855:	90                   	nop
c0036856:	90                   	nop
c0036857:	90                   	nop
c0036858:	90                   	nop
c0036859:	90                   	nop
c003685a:	90                   	nop
c003685b:	90                   	nop
c003685c:	90                   	nop
c003685d:	90                   	nop
c003685e:	90                   	nop
c003685f:	90                   	nop

c0036860 <__copybits>:
c0036860:	55                   	push   %ebp
c0036861:	89 e5                	mov    %esp,%ebp
c0036863:	57                   	push   %edi
c0036864:	8b 7d 10             	mov    0x10(%ebp),%edi
c0036867:	56                   	push   %esi
c0036868:	8b 75 0c             	mov    0xc(%ebp),%esi
c003686b:	8b 45 08             	mov    0x8(%ebp),%eax
c003686e:	53                   	push   %ebx
c003686f:	8b 4f 10             	mov    0x10(%edi),%ecx
c0036872:	8d 56 ff             	lea    -0x1(%esi),%edx
c0036875:	c1 fa 05             	sar    $0x5,%edx
c0036878:	8d 74 90 04          	lea    0x4(%eax,%edx,4),%esi
c003687c:	8d 57 14             	lea    0x14(%edi),%edx
c003687f:	8d 1c 8a             	lea    (%edx,%ecx,4),%ebx
c0036882:	39 da                	cmp    %ebx,%edx
c0036884:	73 34                	jae    c00368ba <__copybits+0x5a>
c0036886:	89 c1                	mov    %eax,%ecx
c0036888:	83 c2 04             	add    $0x4,%edx
c003688b:	8b 42 fc             	mov    -0x4(%edx),%eax
c003688e:	83 c1 04             	add    $0x4,%ecx
c0036891:	39 d3                	cmp    %edx,%ebx
c0036893:	89 41 fc             	mov    %eax,-0x4(%ecx)
c0036896:	77 f0                	ja     c0036888 <__copybits+0x28>
c0036898:	8b 45 08             	mov    0x8(%ebp),%eax
c003689b:	29 fb                	sub    %edi,%ebx
c003689d:	8d 53 eb             	lea    -0x15(%ebx),%edx
c00368a0:	c1 ea 02             	shr    $0x2,%edx
c00368a3:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
c00368a7:	39 c6                	cmp    %eax,%esi
c00368a9:	76 13                	jbe    c00368be <__copybits+0x5e>
c00368ab:	90                   	nop
c00368ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00368b0:	83 c0 04             	add    $0x4,%eax
c00368b3:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
c00368ba:	39 c6                	cmp    %eax,%esi
c00368bc:	77 f2                	ja     c00368b0 <__copybits+0x50>
c00368be:	5b                   	pop    %ebx
c00368bf:	5e                   	pop    %esi
c00368c0:	5f                   	pop    %edi
c00368c1:	5d                   	pop    %ebp
c00368c2:	c3                   	ret    
c00368c3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00368c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00368d0 <__any_on>:
c00368d0:	55                   	push   %ebp
c00368d1:	89 e5                	mov    %esp,%ebp
c00368d3:	8b 45 08             	mov    0x8(%ebp),%eax
c00368d6:	57                   	push   %edi
c00368d7:	56                   	push   %esi
c00368d8:	53                   	push   %ebx
c00368d9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c00368dc:	8d 50 14             	lea    0x14(%eax),%edx
c00368df:	8b 40 10             	mov    0x10(%eax),%eax
c00368e2:	c1 fb 05             	sar    $0x5,%ebx
c00368e5:	39 d8                	cmp    %ebx,%eax
c00368e7:	7d 2f                	jge    c0036918 <__any_on+0x48>
c00368e9:	8d 1c 82             	lea    (%edx,%eax,4),%ebx
c00368ec:	39 da                	cmp    %ebx,%edx
c00368ee:	73 1d                	jae    c003690d <__any_on+0x3d>
c00368f0:	8d 43 fc             	lea    -0x4(%ebx),%eax
c00368f3:	8b 5b fc             	mov    -0x4(%ebx),%ebx
c00368f6:	85 db                	test   %ebx,%ebx
c00368f8:	74 0f                	je     c0036909 <__any_on+0x39>
c00368fa:	eb 44                	jmp    c0036940 <__any_on+0x70>
c00368fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036900:	83 e8 04             	sub    $0x4,%eax
c0036903:	8b 08                	mov    (%eax),%ecx
c0036905:	85 c9                	test   %ecx,%ecx
c0036907:	75 37                	jne    c0036940 <__any_on+0x70>
c0036909:	39 c2                	cmp    %eax,%edx
c003690b:	72 f3                	jb     c0036900 <__any_on+0x30>
c003690d:	31 c0                	xor    %eax,%eax
c003690f:	5b                   	pop    %ebx
c0036910:	5e                   	pop    %esi
c0036911:	5f                   	pop    %edi
c0036912:	5d                   	pop    %ebp
c0036913:	c3                   	ret    
c0036914:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036918:	7e 1e                	jle    c0036938 <__any_on+0x68>
c003691a:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c003691d:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c0036920:	83 e1 1f             	and    $0x1f,%ecx
c0036923:	74 c7                	je     c00368ec <__any_on+0x1c>
c0036925:	8b 3b                	mov    (%ebx),%edi
c0036927:	b8 01 00 00 00       	mov    $0x1,%eax
c003692c:	89 fe                	mov    %edi,%esi
c003692e:	d3 ee                	shr    %cl,%esi
c0036930:	d3 e6                	shl    %cl,%esi
c0036932:	39 fe                	cmp    %edi,%esi
c0036934:	75 d9                	jne    c003690f <__any_on+0x3f>
c0036936:	eb b4                	jmp    c00368ec <__any_on+0x1c>
c0036938:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c003693b:	eb af                	jmp    c00368ec <__any_on+0x1c>
c003693d:	8d 76 00             	lea    0x0(%esi),%esi
c0036940:	5b                   	pop    %ebx
c0036941:	b8 01 00 00 00       	mov    $0x1,%eax
c0036946:	5e                   	pop    %esi
c0036947:	5f                   	pop    %edi
c0036948:	5d                   	pop    %ebp
c0036949:	c3                   	ret    
c003694a:	66 90                	xchg   %ax,%ax
c003694c:	66 90                	xchg   %ax,%ax
c003694e:	66 90                	xchg   %ax,%ax

c0036950 <_sbrk_r>:
c0036950:	55                   	push   %ebp
c0036951:	89 e5                	mov    %esp,%ebp
c0036953:	83 ec 18             	sub    $0x18,%esp
c0036956:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036959:	c7 05 70 31 09 c0 00 	movl   $0x0,0xc0093170
c0036960:	00 00 00 
c0036963:	89 04 24             	mov    %eax,(%esp)
c0036966:	e8 20 ad ff ff       	call   c003168b <sbrk>
c003696b:	83 f8 ff             	cmp    $0xffffffff,%eax
c003696e:	74 08                	je     c0036978 <_sbrk_r+0x28>
c0036970:	c9                   	leave  
c0036971:	c3                   	ret    
c0036972:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036978:	8b 15 70 31 09 c0    	mov    0xc0093170,%edx
c003697e:	85 d2                	test   %edx,%edx
c0036980:	74 ee                	je     c0036970 <_sbrk_r+0x20>
c0036982:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0036985:	89 11                	mov    %edx,(%ecx)
c0036987:	c9                   	leave  
c0036988:	c3                   	ret    
c0036989:	66 90                	xchg   %ax,%ax
c003698b:	66 90                	xchg   %ax,%ax
c003698d:	66 90                	xchg   %ax,%ax
c003698f:	90                   	nop

c0036990 <__fpclassifyd>:
c0036990:	55                   	push   %ebp
c0036991:	b8 02 00 00 00       	mov    $0x2,%eax
c0036996:	89 e5                	mov    %esp,%ebp
c0036998:	53                   	push   %ebx
c0036999:	83 ec 0c             	sub    $0xc,%esp
c003699c:	dd 45 08             	fldl   0x8(%ebp)
c003699f:	dd 5d f0             	fstpl  -0x10(%ebp)
c00369a2:	8b 55 f0             	mov    -0x10(%ebp),%edx
c00369a5:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c00369a8:	89 d3                	mov    %edx,%ebx
c00369aa:	09 cb                	or     %ecx,%ebx
c00369ac:	75 0a                	jne    c00369b8 <__fpclassifyd+0x28>
c00369ae:	83 c4 0c             	add    $0xc,%esp
c00369b1:	5b                   	pop    %ebx
c00369b2:	5d                   	pop    %ebp
c00369b3:	c3                   	ret    
c00369b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00369b8:	85 d2                	test   %edx,%edx
c00369ba:	0f 94 c2             	sete   %dl
c00369bd:	75 08                	jne    c00369c7 <__fpclassifyd+0x37>
c00369bf:	81 f9 00 00 00 80    	cmp    $0x80000000,%ecx
c00369c5:	74 e7                	je     c00369ae <__fpclassifyd+0x1e>
c00369c7:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
c00369cd:	b8 04 00 00 00       	mov    $0x4,%eax
c00369d2:	8d 99 00 00 f0 ff    	lea    -0x100000(%ecx),%ebx
c00369d8:	81 fb ff ff df 7f    	cmp    $0x7fdfffff,%ebx
c00369de:	76 ce                	jbe    c00369ae <__fpclassifyd+0x1e>
c00369e0:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
c00369e6:	b0 03                	mov    $0x3,%al
c00369e8:	76 c4                	jbe    c00369ae <__fpclassifyd+0x1e>
c00369ea:	31 c0                	xor    %eax,%eax
c00369ec:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
c00369f2:	0f 94 c0             	sete   %al
c00369f5:	21 d0                	and    %edx,%eax
c00369f7:	eb b5                	jmp    c00369ae <__fpclassifyd+0x1e>
c00369f9:	66 90                	xchg   %ax,%ax
c00369fb:	66 90                	xchg   %ax,%ax
c00369fd:	66 90                	xchg   %ax,%ax
c00369ff:	90                   	nop

c0036a00 <strcmp>:
c0036a00:	55                   	push   %ebp
c0036a01:	89 e5                	mov    %esp,%ebp
c0036a03:	8b 45 08             	mov    0x8(%ebp),%eax
c0036a06:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036a09:	53                   	push   %ebx
c0036a0a:	89 c1                	mov    %eax,%ecx
c0036a0c:	09 d1                	or     %edx,%ecx
c0036a0e:	83 e1 03             	and    $0x3,%ecx
c0036a11:	75 17                	jne    c0036a2a <strcmp+0x2a>
c0036a13:	8b 08                	mov    (%eax),%ecx
c0036a15:	3b 0a                	cmp    (%edx),%ecx
c0036a17:	74 33                	je     c0036a4c <strcmp+0x4c>
c0036a19:	eb 0f                	jmp    c0036a2a <strcmp+0x2a>
c0036a1b:	90                   	nop
c0036a1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a20:	3a 0a                	cmp    (%edx),%cl
c0036a22:	75 0d                	jne    c0036a31 <strcmp+0x31>
c0036a24:	83 c0 01             	add    $0x1,%eax
c0036a27:	83 c2 01             	add    $0x1,%edx
c0036a2a:	0f b6 08             	movzbl (%eax),%ecx
c0036a2d:	84 c9                	test   %cl,%cl
c0036a2f:	75 ef                	jne    c0036a20 <strcmp+0x20>
c0036a31:	0f b6 00             	movzbl (%eax),%eax
c0036a34:	0f b6 12             	movzbl (%edx),%edx
c0036a37:	5b                   	pop    %ebx
c0036a38:	5d                   	pop    %ebp
c0036a39:	29 d0                	sub    %edx,%eax
c0036a3b:	c3                   	ret    
c0036a3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a40:	83 c0 04             	add    $0x4,%eax
c0036a43:	83 c2 04             	add    $0x4,%edx
c0036a46:	8b 08                	mov    (%eax),%ecx
c0036a48:	3b 0a                	cmp    (%edx),%ecx
c0036a4a:	75 de                	jne    c0036a2a <strcmp+0x2a>
c0036a4c:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
c0036a52:	f7 d1                	not    %ecx
c0036a54:	21 cb                	and    %ecx,%ebx
c0036a56:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
c0036a5c:	74 e2                	je     c0036a40 <strcmp+0x40>
c0036a5e:	31 c0                	xor    %eax,%eax
c0036a60:	5b                   	pop    %ebx
c0036a61:	5d                   	pop    %ebp
c0036a62:	c3                   	ret    
c0036a63:	66 90                	xchg   %ax,%ax
c0036a65:	66 90                	xchg   %ax,%ax
c0036a67:	66 90                	xchg   %ax,%ax
c0036a69:	66 90                	xchg   %ax,%ax
c0036a6b:	66 90                	xchg   %ax,%ax
c0036a6d:	66 90                	xchg   %ax,%ax
c0036a6f:	90                   	nop

c0036a70 <strlen>:
c0036a70:	55                   	push   %ebp
c0036a71:	89 e5                	mov    %esp,%ebp
c0036a73:	57                   	push   %edi
c0036a74:	8b 55 08             	mov    0x8(%ebp),%edx
c0036a77:	89 d7                	mov    %edx,%edi
c0036a79:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036a7f:	74 25                	je     c0036aa6 <L5>
c0036a81:	8a 0f                	mov    (%edi),%cl
c0036a83:	47                   	inc    %edi
c0036a84:	84 c9                	test   %cl,%cl
c0036a86:	74 56                	je     c0036ade <L15>
c0036a88:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036a8e:	74 16                	je     c0036aa6 <L5>
c0036a90:	8a 0f                	mov    (%edi),%cl
c0036a92:	47                   	inc    %edi
c0036a93:	84 c9                	test   %cl,%cl
c0036a95:	74 47                	je     c0036ade <L15>
c0036a97:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036a9d:	74 07                	je     c0036aa6 <L5>
c0036a9f:	8a 0f                	mov    (%edi),%cl
c0036aa1:	47                   	inc    %edi
c0036aa2:	84 c9                	test   %cl,%cl
c0036aa4:	74 38                	je     c0036ade <L15>

c0036aa6 <L5>:
c0036aa6:	83 ef 04             	sub    $0x4,%edi
c0036aa9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0036ab0 <L10>:
c0036ab0:	83 c7 04             	add    $0x4,%edi
c0036ab3:	8b 0f                	mov    (%edi),%ecx
c0036ab5:	8d 81 ff fe fe fe    	lea    -0x1010101(%ecx),%eax
c0036abb:	f7 d1                	not    %ecx
c0036abd:	21 c8                	and    %ecx,%eax
c0036abf:	a9 80 80 80 80       	test   $0x80808080,%eax
c0036ac4:	74 ea                	je     c0036ab0 <L10>
c0036ac6:	f7 d1                	not    %ecx
c0036ac8:	47                   	inc    %edi
c0036ac9:	84 c9                	test   %cl,%cl
c0036acb:	74 11                	je     c0036ade <L15>
c0036acd:	47                   	inc    %edi
c0036ace:	c1 e9 08             	shr    $0x8,%ecx
c0036ad1:	84 c9                	test   %cl,%cl
c0036ad3:	74 09                	je     c0036ade <L15>
c0036ad5:	47                   	inc    %edi
c0036ad6:	c1 e9 08             	shr    $0x8,%ecx
c0036ad9:	84 c9                	test   %cl,%cl
c0036adb:	74 01                	je     c0036ade <L15>
c0036add:	47                   	inc    %edi

c0036ade <L15>:
c0036ade:	29 d7                	sub    %edx,%edi
c0036ae0:	8d 47 ff             	lea    -0x1(%edi),%eax
c0036ae3:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0036ae6:	5f                   	pop    %edi
c0036ae7:	c9                   	leave  
c0036ae8:	c3                   	ret    
c0036ae9:	66 90                	xchg   %ax,%ax
c0036aeb:	66 90                	xchg   %ax,%ax
c0036aed:	66 90                	xchg   %ax,%ax
c0036aef:	90                   	nop

c0036af0 <__ssprint_r>:
c0036af0:	55                   	push   %ebp
c0036af1:	89 e5                	mov    %esp,%ebp
c0036af3:	57                   	push   %edi
c0036af4:	56                   	push   %esi
c0036af5:	53                   	push   %ebx
c0036af6:	83 ec 2c             	sub    $0x2c,%esp
c0036af9:	8b 45 10             	mov    0x10(%ebp),%eax
c0036afc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036aff:	8b 00                	mov    (%eax),%eax
c0036b01:	89 c7                	mov    %eax,%edi
c0036b03:	8b 45 10             	mov    0x10(%ebp),%eax
c0036b06:	8b 40 08             	mov    0x8(%eax),%eax
c0036b09:	85 c0                	test   %eax,%eax
c0036b0b:	0f 84 af 01 00 00    	je     c0036cc0 <__ssprint_r+0x1d0>
c0036b11:	31 c9                	xor    %ecx,%ecx
c0036b13:	31 d2                	xor    %edx,%edx
c0036b15:	8b 03                	mov    (%ebx),%eax
c0036b17:	89 ce                	mov    %ecx,%esi
c0036b19:	85 f6                	test   %esi,%esi
c0036b1b:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0036b1e:	0f 84 ec 00 00 00    	je     c0036c10 <__ssprint_r+0x120>
c0036b24:	8b 53 08             	mov    0x8(%ebx),%edx
c0036b27:	39 d6                	cmp    %edx,%esi
c0036b29:	0f 82 fc 00 00 00    	jb     c0036c2b <__ssprint_r+0x13b>
c0036b2f:	0f b7 4b 0c          	movzwl 0xc(%ebx),%ecx
c0036b33:	66 f7 c1 80 04       	test   $0x480,%cx
c0036b38:	0f 84 fa 00 00 00    	je     c0036c38 <__ssprint_r+0x148>
c0036b3e:	8b 53 10             	mov    0x10(%ebx),%edx
c0036b41:	29 d0                	sub    %edx,%eax
c0036b43:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036b46:	8b 43 14             	mov    0x14(%ebx),%eax
c0036b49:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036b4c:	8d 04 40             	lea    (%eax,%eax,2),%eax
c0036b4f:	89 c2                	mov    %eax,%edx
c0036b51:	c1 ea 1f             	shr    $0x1f,%edx
c0036b54:	01 d0                	add    %edx,%eax
c0036b56:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036b59:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036b5c:	d1 7d e0             	sarl   -0x20(%ebp)
c0036b5f:	8d 44 06 01          	lea    0x1(%esi,%eax,1),%eax
c0036b63:	39 45 e0             	cmp    %eax,-0x20(%ebp)
c0036b66:	0f 83 34 01 00 00    	jae    c0036ca0 <__ssprint_r+0x1b0>
c0036b6c:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036b6f:	80 e5 04             	and    $0x4,%ch
c0036b72:	0f 84 c8 00 00 00    	je     c0036c40 <__ssprint_r+0x150>
c0036b78:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036b7c:	8b 45 08             	mov    0x8(%ebp),%eax
c0036b7f:	89 04 24             	mov    %eax,(%esp)
c0036b82:	e8 e9 e7 ff ff       	call   c0035370 <_malloc_r>
c0036b87:	85 c0                	test   %eax,%eax
c0036b89:	89 c2                	mov    %eax,%edx
c0036b8b:	0f 84 e1 00 00 00    	je     c0036c72 <__ssprint_r+0x182>
c0036b91:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036b94:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036b97:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036b9b:	8b 43 10             	mov    0x10(%ebx),%eax
c0036b9e:	89 14 24             	mov    %edx,(%esp)
c0036ba1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036ba5:	e8 0a b2 ff ff       	call   c0031db4 <memcpy>
c0036baa:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
c0036bae:	8b 55 d8             	mov    -0x28(%ebp),%edx
c0036bb1:	66 25 7f fb          	and    $0xfb7f,%ax
c0036bb5:	0c 80                	or     $0x80,%al
c0036bb7:	66 89 43 0c          	mov    %ax,0xc(%ebx)
c0036bbb:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036bbe:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036bc1:	89 53 10             	mov    %edx,0x10(%ebx)
c0036bc4:	89 4b 14             	mov    %ecx,0x14(%ebx)
c0036bc7:	2b 4d dc             	sub    -0x24(%ebp),%ecx
c0036bca:	01 d0                	add    %edx,%eax
c0036bcc:	89 03                	mov    %eax,(%ebx)
c0036bce:	89 f2                	mov    %esi,%edx
c0036bd0:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0036bd3:	89 f1                	mov    %esi,%ecx
c0036bd5:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0036bd9:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036bdc:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036bdf:	89 04 24             	mov    %eax,(%esp)
c0036be2:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0036be5:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0036be9:	e8 22 13 00 00       	call   c0037f10 <memmove>
c0036bee:	8b 03                	mov    (%ebx),%eax
c0036bf0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036bf3:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0036bf6:	29 53 08             	sub    %edx,0x8(%ebx)
c0036bf9:	01 c8                	add    %ecx,%eax
c0036bfb:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0036bfe:	89 03                	mov    %eax,(%ebx)
c0036c00:	8b 51 08             	mov    0x8(%ecx),%edx
c0036c03:	29 f2                	sub    %esi,%edx
c0036c05:	85 d2                	test   %edx,%edx
c0036c07:	89 51 08             	mov    %edx,0x8(%ecx)
c0036c0a:	0f 84 98 00 00 00    	je     c0036ca8 <__ssprint_r+0x1b8>
c0036c10:	8b 77 04             	mov    0x4(%edi),%esi
c0036c13:	83 c7 08             	add    $0x8,%edi
c0036c16:	8b 4f f8             	mov    -0x8(%edi),%ecx
c0036c19:	85 f6                	test   %esi,%esi
c0036c1b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036c1e:	74 f0                	je     c0036c10 <__ssprint_r+0x120>
c0036c20:	8b 53 08             	mov    0x8(%ebx),%edx
c0036c23:	39 d6                	cmp    %edx,%esi
c0036c25:	0f 83 04 ff ff ff    	jae    c0036b2f <__ssprint_r+0x3f>
c0036c2b:	89 f2                	mov    %esi,%edx
c0036c2d:	89 f1                	mov    %esi,%ecx
c0036c2f:	eb a4                	jmp    c0036bd5 <__ssprint_r+0xe5>
c0036c31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036c38:	89 d1                	mov    %edx,%ecx
c0036c3a:	eb 99                	jmp    c0036bd5 <__ssprint_r+0xe5>
c0036c3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036c40:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036c44:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0036c47:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036c4b:	8b 45 08             	mov    0x8(%ebp),%eax
c0036c4e:	89 04 24             	mov    %eax,(%esp)
c0036c51:	e8 4a 13 00 00       	call   c0037fa0 <_realloc_r>
c0036c56:	85 c0                	test   %eax,%eax
c0036c58:	89 c2                	mov    %eax,%edx
c0036c5a:	0f 85 5b ff ff ff    	jne    c0036bbb <__ssprint_r+0xcb>
c0036c60:	8b 43 10             	mov    0x10(%ebx),%eax
c0036c63:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036c67:	8b 45 08             	mov    0x8(%ebp),%eax
c0036c6a:	89 04 24             	mov    %eax,(%esp)
c0036c6d:	e8 3e 10 00 00       	call   c0037cb0 <_free_r>
c0036c72:	8b 45 08             	mov    0x8(%ebp),%eax
c0036c75:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0036c7b:	8b 45 10             	mov    0x10(%ebp),%eax
c0036c7e:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
c0036c83:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c0036c8a:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036c91:	83 c4 2c             	add    $0x2c,%esp
c0036c94:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0036c99:	5b                   	pop    %ebx
c0036c9a:	5e                   	pop    %esi
c0036c9b:	5f                   	pop    %edi
c0036c9c:	5d                   	pop    %ebp
c0036c9d:	c3                   	ret    
c0036c9e:	66 90                	xchg   %ax,%ax
c0036ca0:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036ca3:	e9 c7 fe ff ff       	jmp    c0036b6f <__ssprint_r+0x7f>
c0036ca8:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
c0036caf:	83 c4 2c             	add    $0x2c,%esp
c0036cb2:	31 c0                	xor    %eax,%eax
c0036cb4:	5b                   	pop    %ebx
c0036cb5:	5e                   	pop    %esi
c0036cb6:	5f                   	pop    %edi
c0036cb7:	5d                   	pop    %ebp
c0036cb8:	c3                   	ret    
c0036cb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036cc0:	8b 45 10             	mov    0x10(%ebp),%eax
c0036cc3:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036cca:	83 c4 2c             	add    $0x2c,%esp
c0036ccd:	31 c0                	xor    %eax,%eax
c0036ccf:	5b                   	pop    %ebx
c0036cd0:	5e                   	pop    %esi
c0036cd1:	5f                   	pop    %edi
c0036cd2:	5d                   	pop    %ebp
c0036cd3:	c3                   	ret    
c0036cd4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036cda:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c0036ce0 <_svfiprintf_r>:
c0036ce0:	55                   	push   %ebp
c0036ce1:	89 e5                	mov    %esp,%ebp
c0036ce3:	57                   	push   %edi
c0036ce4:	56                   	push   %esi
c0036ce5:	53                   	push   %ebx
c0036ce6:	81 ec cc 00 00 00    	sub    $0xcc,%esp
c0036cec:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036cef:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0036cf3:	74 0b                	je     c0036d00 <_svfiprintf_r+0x20>
c0036cf5:	8b 50 10             	mov    0x10(%eax),%edx
c0036cf8:	85 d2                	test   %edx,%edx
c0036cfa:	0f 84 1c 0d 00 00    	je     c0037a1c <_svfiprintf_r+0xd3c>
c0036d00:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036d03:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0036d06:	89 c6                	mov    %eax,%esi
c0036d08:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c0036d0e:	29 d8                	sub    %ebx,%eax
c0036d10:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c0036d17:	00 00 00 
c0036d1a:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0036d21:	00 00 00 
c0036d24:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0036d2b:	00 00 00 
c0036d2e:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
c0036d35:	00 00 00 
c0036d38:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
c0036d3e:	8b 45 10             	mov    0x10(%ebp),%eax
c0036d41:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0036d44:	0f b6 00             	movzbl (%eax),%eax
c0036d47:	84 c0                	test   %al,%al
c0036d49:	74 58                	je     c0036da3 <_svfiprintf_r+0xc3>
c0036d4b:	3c 25                	cmp    $0x25,%al
c0036d4d:	75 13                	jne    c0036d62 <_svfiprintf_r+0x82>
c0036d4f:	eb 52                	jmp    c0036da3 <_svfiprintf_r+0xc3>
c0036d51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036d58:	84 c0                	test   %al,%al
c0036d5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036d60:	74 0a                	je     c0036d6c <_svfiprintf_r+0x8c>
c0036d62:	83 c3 01             	add    $0x1,%ebx
c0036d65:	0f b6 03             	movzbl (%ebx),%eax
c0036d68:	3c 25                	cmp    $0x25,%al
c0036d6a:	75 ec                	jne    c0036d58 <_svfiprintf_r+0x78>
c0036d6c:	89 df                	mov    %ebx,%edi
c0036d6e:	2b 7d 10             	sub    0x10(%ebp),%edi
c0036d71:	74 30                	je     c0036da3 <_svfiprintf_r+0xc3>
c0036d73:	8b 45 10             	mov    0x10(%ebp),%eax
c0036d76:	83 c6 08             	add    $0x8,%esi
c0036d79:	89 7e fc             	mov    %edi,-0x4(%esi)
c0036d7c:	01 bd 7c ff ff ff    	add    %edi,-0x84(%ebp)
c0036d82:	89 46 f8             	mov    %eax,-0x8(%esi)
c0036d85:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036d8b:	83 c0 01             	add    $0x1,%eax
c0036d8e:	83 f8 07             	cmp    $0x7,%eax
c0036d91:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036d97:	0f 8f eb 0a 00 00    	jg     c0037888 <_svfiprintf_r+0xba8>
c0036d9d:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
c0036da3:	80 3b 00             	cmpb   $0x0,(%ebx)
c0036da6:	0f 84 11 09 00 00    	je     c00376bd <_svfiprintf_r+0x9dd>
c0036dac:	8d 43 01             	lea    0x1(%ebx),%eax
c0036daf:	31 ff                	xor    %edi,%edi
c0036db1:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036db8:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0036dbf:	ff ff ff 
c0036dc2:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
c0036dc9:	00 00 00 
c0036dcc:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
c0036dd3:	00 00 00 
c0036dd6:	8d 50 01             	lea    0x1(%eax),%edx
c0036dd9:	0f be 00             	movsbl (%eax),%eax
c0036ddc:	8d 48 e0             	lea    -0x20(%eax),%ecx
c0036ddf:	83 f9 58             	cmp    $0x58,%ecx
c0036de2:	0f 87 63 03 00 00    	ja     c003714b <_svfiprintf_r+0x46b>
c0036de8:	ff 24 8d 08 93 03 c0 	jmp    *-0x3ffc6cf8(,%ecx,4)
c0036def:	90                   	nop
c0036df0:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0036df7:	89 d0                	mov    %edx,%eax
c0036df9:	eb db                	jmp    c0036dd6 <_svfiprintf_r+0xf6>
c0036dfb:	8b 45 14             	mov    0x14(%ebp),%eax
c0036dfe:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0036e01:	8b 00                	mov    (%eax),%eax
c0036e03:	83 c3 04             	add    $0x4,%ebx
c0036e06:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0036e09:	85 c0                	test   %eax,%eax
c0036e0b:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
c0036e11:	79 e4                	jns    c0036df7 <_svfiprintf_r+0x117>
c0036e13:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
c0036e19:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
c0036e20:	89 d0                	mov    %edx,%eax
c0036e22:	eb b2                	jmp    c0036dd6 <_svfiprintf_r+0xf6>
c0036e24:	bf 2b 00 00 00       	mov    $0x2b,%edi
c0036e29:	89 d0                	mov    %edx,%eax
c0036e2b:	eb a9                	jmp    c0036dd6 <_svfiprintf_r+0xf6>
c0036e2d:	8b 45 14             	mov    0x14(%ebp),%eax
c0036e30:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0036e37:	89 55 10             	mov    %edx,0x10(%ebp)
c0036e3a:	ba 02 00 00 00       	mov    $0x2,%edx
c0036e3f:	8b 08                	mov    (%eax),%ecx
c0036e41:	83 c0 04             	add    $0x4,%eax
c0036e44:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c0036e4b:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
c0036e52:	89 45 14             	mov    %eax,0x14(%ebp)
c0036e55:	c7 85 44 ff ff ff a3 	movl   $0xc0038fa3,-0xbc(%ebp)
c0036e5c:	8f 03 c0 
c0036e5f:	90                   	nop
c0036e60:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036e67:	31 ff                	xor    %edi,%edi
c0036e69:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
c0036e6f:	89 d8                	mov    %ebx,%eax
c0036e71:	24 7f                	and    $0x7f,%al
c0036e73:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
c0036e7a:	0f 48 c3             	cmovs  %ebx,%eax
c0036e7d:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
c0036e83:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0036e89:	85 c0                	test   %eax,%eax
c0036e8b:	75 08                	jne    c0036e95 <_svfiprintf_r+0x1b5>
c0036e8d:	85 c9                	test   %ecx,%ecx
c0036e8f:	0f 84 03 08 00 00    	je     c0037698 <_svfiprintf_r+0x9b8>
c0036e95:	80 fa 01             	cmp    $0x1,%dl
c0036e98:	0f 84 8a 0a 00 00    	je     c0037928 <_svfiprintf_r+0xc48>
c0036e9e:	80 fa 02             	cmp    $0x2,%dl
c0036ea1:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0036ea4:	0f 85 86 01 00 00    	jne    c0037030 <_svfiprintf_r+0x350>
c0036eaa:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0036eb0:	89 c8                	mov    %ecx,%eax
c0036eb2:	83 eb 01             	sub    $0x1,%ebx
c0036eb5:	83 e0 0f             	and    $0xf,%eax
c0036eb8:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c0036ebc:	c1 e9 04             	shr    $0x4,%ecx
c0036ebf:	85 c9                	test   %ecx,%ecx
c0036ec1:	88 03                	mov    %al,(%ebx)
c0036ec3:	75 eb                	jne    c0036eb0 <_svfiprintf_r+0x1d0>
c0036ec5:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036ec8:	29 d8                	sub    %ebx,%eax
c0036eca:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0036ed0:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0036ed6:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
c0036edc:	39 c1                	cmp    %eax,%ecx
c0036ede:	0f 4d c1             	cmovge %ecx,%eax
c0036ee1:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0036ee7:	89 f8                	mov    %edi,%eax
c0036ee9:	3c 01                	cmp    $0x1,%al
c0036eeb:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
c0036ef2:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0036ef8:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
c0036efe:	89 d0                	mov    %edx,%eax
c0036f00:	89 cf                	mov    %ecx,%edi
c0036f02:	83 c0 02             	add    $0x2,%eax
c0036f05:	83 e7 02             	and    $0x2,%edi
c0036f08:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
c0036f0e:	89 cf                	mov    %ecx,%edi
c0036f10:	0f 44 c2             	cmove  %edx,%eax
c0036f13:	81 e7 84 00 00 00    	and    $0x84,%edi
c0036f19:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0036f1f:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0036f25:	0f 85 cd 04 00 00    	jne    c00373f8 <_svfiprintf_r+0x718>
c0036f2b:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0036f31:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0036f37:	85 ff                	test   %edi,%edi
c0036f39:	0f 8e b9 04 00 00    	jle    c00373f8 <_svfiprintf_r+0x718>
c0036f3f:	83 ff 10             	cmp    $0x10,%edi
c0036f42:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0036f48:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036f4e:	7e 7c                	jle    c0036fcc <_svfiprintf_r+0x2ec>
c0036f50:	89 9d 40 ff ff ff    	mov    %ebx,-0xc0(%ebp)
c0036f56:	89 f1                	mov    %esi,%ecx
c0036f58:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0036f5b:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036f5e:	eb 08                	jmp    c0036f68 <_svfiprintf_r+0x288>
c0036f60:	83 ef 10             	sub    $0x10,%edi
c0036f63:	83 ff 10             	cmp    $0x10,%edi
c0036f66:	7e 5c                	jle    c0036fc4 <_svfiprintf_r+0x2e4>
c0036f68:	83 c0 01             	add    $0x1,%eax
c0036f6b:	83 c2 10             	add    $0x10,%edx
c0036f6e:	c7 01 7c 94 03 c0    	movl   $0xc003947c,(%ecx)
c0036f74:	83 c1 08             	add    $0x8,%ecx
c0036f77:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c0036f7e:	83 f8 07             	cmp    $0x7,%eax
c0036f81:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0036f87:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036f8d:	7e d1                	jle    c0036f60 <_svfiprintf_r+0x280>
c0036f8f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0036f95:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036f99:	89 74 24 04          	mov    %esi,0x4(%esp)
c0036f9d:	89 1c 24             	mov    %ebx,(%esp)
c0036fa0:	e8 4b fb ff ff       	call   c0036af0 <__ssprint_r>
c0036fa5:	85 c0                	test   %eax,%eax
c0036fa7:	0f 85 3b 07 00 00    	jne    c00376e8 <_svfiprintf_r+0xa08>
c0036fad:	83 ef 10             	sub    $0x10,%edi
c0036fb0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0036fb6:	83 ff 10             	cmp    $0x10,%edi
c0036fb9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036fbf:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0036fc2:	7f a4                	jg     c0036f68 <_svfiprintf_r+0x288>
c0036fc4:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
c0036fca:	89 ce                	mov    %ecx,%esi
c0036fcc:	83 c0 01             	add    $0x1,%eax
c0036fcf:	01 fa                	add    %edi,%edx
c0036fd1:	c7 06 7c 94 03 c0    	movl   $0xc003947c,(%esi)
c0036fd7:	83 c6 08             	add    $0x8,%esi
c0036fda:	89 7e fc             	mov    %edi,-0x4(%esi)
c0036fdd:	83 f8 07             	cmp    $0x7,%eax
c0036fe0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0036fe6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036fec:	0f 8e 12 04 00 00    	jle    c0037404 <_svfiprintf_r+0x724>
c0036ff2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0036ff8:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036ffc:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036fff:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037003:	8b 45 08             	mov    0x8(%ebp),%eax
c0037006:	89 04 24             	mov    %eax,(%esp)
c0037009:	e8 e2 fa ff ff       	call   c0036af0 <__ssprint_r>
c003700e:	85 c0                	test   %eax,%eax
c0037010:	0f 85 d2 06 00 00    	jne    c00376e8 <_svfiprintf_r+0xa08>
c0037016:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003701c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003701f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037025:	e9 da 03 00 00       	jmp    c0037404 <_svfiprintf_r+0x724>
c003702a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037030:	89 c8                	mov    %ecx,%eax
c0037032:	83 eb 01             	sub    $0x1,%ebx
c0037035:	83 e0 07             	and    $0x7,%eax
c0037038:	c1 e9 03             	shr    $0x3,%ecx
c003703b:	83 c0 30             	add    $0x30,%eax
c003703e:	85 c9                	test   %ecx,%ecx
c0037040:	88 03                	mov    %al,(%ebx)
c0037042:	75 ec                	jne    c0037030 <_svfiprintf_r+0x350>
c0037044:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c003704b:	89 da                	mov    %ebx,%edx
c003704d:	0f 84 72 fe ff ff    	je     c0036ec5 <_svfiprintf_r+0x1e5>
c0037053:	3c 30                	cmp    $0x30,%al
c0037055:	0f 84 6a fe ff ff    	je     c0036ec5 <_svfiprintf_r+0x1e5>
c003705b:	83 eb 01             	sub    $0x1,%ebx
c003705e:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0037061:	29 d8                	sub    %ebx,%eax
c0037063:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0037067:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c003706d:	e9 5e fe ff ff       	jmp    c0036ed0 <_svfiprintf_r+0x1f0>
c0037072:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0037079:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037080:	89 55 10             	mov    %edx,0x10(%ebp)
c0037083:	8b 45 14             	mov    0x14(%ebp),%eax
c0037086:	0f 85 48 01 00 00    	jne    c00371d4 <_svfiprintf_r+0x4f4>
c003708c:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037093:	0f 84 3b 01 00 00    	je     c00371d4 <_svfiprintf_r+0x4f4>
c0037099:	0f b7 08             	movzwl (%eax),%ecx
c003709c:	83 c0 04             	add    $0x4,%eax
c003709f:	31 d2                	xor    %edx,%edx
c00370a1:	89 45 14             	mov    %eax,0x14(%ebp)
c00370a4:	e9 b7 fd ff ff       	jmp    c0036e60 <_svfiprintf_r+0x180>
c00370a9:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c00370b0:	89 f8                	mov    %edi,%eax
c00370b2:	89 55 10             	mov    %edx,0x10(%ebp)
c00370b5:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c00370bb:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00370c2:	8b 45 14             	mov    0x14(%ebp),%eax
c00370c5:	75 0d                	jne    c00370d4 <_svfiprintf_r+0x3f4>
c00370c7:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00370ce:	0f 85 f2 08 00 00    	jne    c00379c6 <_svfiprintf_r+0xce6>
c00370d4:	8b 08                	mov    (%eax),%ecx
c00370d6:	83 c0 04             	add    $0x4,%eax
c00370d9:	89 45 14             	mov    %eax,0x14(%ebp)
c00370dc:	85 c9                	test   %ecx,%ecx
c00370de:	0f 88 f3 08 00 00    	js     c00379d7 <_svfiprintf_r+0xcf7>
c00370e4:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c00370eb:	ba 01 00 00 00       	mov    $0x1,%edx
c00370f0:	e9 74 fd ff ff       	jmp    c0036e69 <_svfiprintf_r+0x189>
c00370f5:	0f be 02             	movsbl (%edx),%eax
c00370f8:	8d 5a 01             	lea    0x1(%edx),%ebx
c00370fb:	83 f8 2a             	cmp    $0x2a,%eax
c00370fe:	0f 84 af 09 00 00    	je     c0037ab3 <_svfiprintf_r+0xdd3>
c0037104:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037107:	31 d2                	xor    %edx,%edx
c0037109:	83 f9 09             	cmp    $0x9,%ecx
c003710c:	0f 87 90 09 00 00    	ja     c0037aa2 <_svfiprintf_r+0xdc2>
c0037112:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037118:	8d 04 92             	lea    (%edx,%edx,4),%eax
c003711b:	83 c3 01             	add    $0x1,%ebx
c003711e:	8d 14 41             	lea    (%ecx,%eax,2),%edx
c0037121:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
c0037125:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037128:	83 f9 09             	cmp    $0x9,%ecx
c003712b:	76 eb                	jbe    c0037118 <_svfiprintf_r+0x438>
c003712d:	85 d2                	test   %edx,%edx
c003712f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0037134:	0f 48 d1             	cmovs  %ecx,%edx
c0037137:	8d 48 e0             	lea    -0x20(%eax),%ecx
c003713a:	83 f9 58             	cmp    $0x58,%ecx
c003713d:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
c0037143:	89 da                	mov    %ebx,%edx
c0037145:	0f 86 9d fc ff ff    	jbe    c0036de8 <_svfiprintf_r+0x108>
c003714b:	89 fb                	mov    %edi,%ebx
c003714d:	85 c0                	test   %eax,%eax
c003714f:	89 55 10             	mov    %edx,0x10(%ebp)
c0037152:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037158:	0f 84 5f 05 00 00    	je     c00376bd <_svfiprintf_r+0x9dd>
c003715e:	88 45 80             	mov    %al,-0x80(%ebp)
c0037161:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c0037164:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c003716b:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c0037172:	00 00 00 
c0037175:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c003717c:	00 00 00 
c003717f:	e9 5a 01 00 00       	jmp    c00372de <_svfiprintf_r+0x5fe>
c0037184:	31 db                	xor    %ebx,%ebx
c0037186:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037189:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037190:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
c0037193:	83 c2 01             	add    $0x1,%edx
c0037196:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
c0037199:	0f be 42 ff          	movsbl -0x1(%edx),%eax
c003719d:	8d 48 d0             	lea    -0x30(%eax),%ecx
c00371a0:	83 f9 09             	cmp    $0x9,%ecx
c00371a3:	76 eb                	jbe    c0037190 <_svfiprintf_r+0x4b0>
c00371a5:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
c00371ab:	e9 2c fc ff ff       	jmp    c0036ddc <_svfiprintf_r+0xfc>
c00371b0:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
c00371b7:	00 00 00 
c00371ba:	89 d0                	mov    %edx,%eax
c00371bc:	e9 15 fc ff ff       	jmp    c0036dd6 <_svfiprintf_r+0xf6>
c00371c1:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00371c8:	89 55 10             	mov    %edx,0x10(%ebp)
c00371cb:	8b 45 14             	mov    0x14(%ebp),%eax
c00371ce:	0f 84 b8 fe ff ff    	je     c003708c <_svfiprintf_r+0x3ac>
c00371d4:	8b 08                	mov    (%eax),%ecx
c00371d6:	83 c0 04             	add    $0x4,%eax
c00371d9:	31 d2                	xor    %edx,%edx
c00371db:	89 45 14             	mov    %eax,0x14(%ebp)
c00371de:	e9 7d fc ff ff       	jmp    c0036e60 <_svfiprintf_r+0x180>
c00371e3:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00371ea:	89 f8                	mov    %edi,%eax
c00371ec:	89 55 10             	mov    %edx,0x10(%ebp)
c00371ef:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c00371f5:	0f 85 a2 07 00 00    	jne    c003799d <_svfiprintf_r+0xcbd>
c00371fb:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037202:	0f 84 95 07 00 00    	je     c003799d <_svfiprintf_r+0xcbd>
c0037208:	8b 45 14             	mov    0x14(%ebp),%eax
c003720b:	0f b7 9d 50 ff ff ff 	movzwl -0xb0(%ebp),%ebx
c0037212:	8b 00                	mov    (%eax),%eax
c0037214:	66 89 18             	mov    %bx,(%eax)
c0037217:	8b 45 14             	mov    0x14(%ebp),%eax
c003721a:	83 c0 04             	add    $0x4,%eax
c003721d:	89 45 14             	mov    %eax,0x14(%ebp)
c0037220:	e9 19 fb ff ff       	jmp    c0036d3e <_svfiprintf_r+0x5e>
c0037225:	89 fb                	mov    %edi,%ebx
c0037227:	89 55 10             	mov    %edx,0x10(%ebp)
c003722a:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037230:	c7 85 44 ff ff ff a3 	movl   $0xc0038fa3,-0xbc(%ebp)
c0037237:	8f 03 c0 
c003723a:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037241:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0037244:	75 0d                	jne    c0037253 <_svfiprintf_r+0x573>
c0037246:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c003724d:	0f 85 65 07 00 00    	jne    c00379b8 <_svfiprintf_r+0xcd8>
c0037253:	8b 0b                	mov    (%ebx),%ecx
c0037255:	83 c3 04             	add    $0x4,%ebx
c0037258:	89 5d 14             	mov    %ebx,0x14(%ebp)
c003725b:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0037262:	ba 02 00 00 00       	mov    $0x2,%edx
c0037267:	0f 84 f3 fb ff ff    	je     c0036e60 <_svfiprintf_r+0x180>
c003726d:	85 c9                	test   %ecx,%ecx
c003726f:	0f 84 eb fb ff ff    	je     c0036e60 <_svfiprintf_r+0x180>
c0037275:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c003727c:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
c0037282:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0037289:	e9 d2 fb ff ff       	jmp    c0036e60 <_svfiprintf_r+0x180>
c003728e:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
c0037295:	89 d0                	mov    %edx,%eax
c0037297:	e9 3a fb ff ff       	jmp    c0036dd6 <_svfiprintf_r+0xf6>
c003729c:	89 f8                	mov    %edi,%eax
c003729e:	89 55 10             	mov    %edx,0x10(%ebp)
c00372a1:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c00372a7:	e9 0f fe ff ff       	jmp    c00370bb <_svfiprintf_r+0x3db>
c00372ac:	8b 45 14             	mov    0x14(%ebp),%eax
c00372af:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c00372b2:	89 55 10             	mov    %edx,0x10(%ebp)
c00372b5:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c00372bc:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c00372c3:	00 00 00 
c00372c6:	8b 00                	mov    (%eax),%eax
c00372c8:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c00372cf:	00 00 00 
c00372d2:	88 45 80             	mov    %al,-0x80(%ebp)
c00372d5:	8b 45 14             	mov    0x14(%ebp),%eax
c00372d8:	83 c0 04             	add    $0x4,%eax
c00372db:	89 45 14             	mov    %eax,0x14(%ebp)
c00372de:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c00372e5:	00 00 00 
c00372e8:	e9 05 fc ff ff       	jmp    c0036ef2 <_svfiprintf_r+0x212>
c00372ed:	89 fb                	mov    %edi,%ebx
c00372ef:	89 55 10             	mov    %edx,0x10(%ebp)
c00372f2:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c00372f8:	c7 85 44 ff ff ff 92 	movl   $0xc0038f92,-0xbc(%ebp)
c00372ff:	8f 03 c0 
c0037302:	e9 33 ff ff ff       	jmp    c003723a <_svfiprintf_r+0x55a>
c0037307:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c003730e:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037315:	89 55 10             	mov    %edx,0x10(%ebp)
c0037318:	8b 45 14             	mov    0x14(%ebp),%eax
c003731b:	75 39                	jne    c0037356 <_svfiprintf_r+0x676>
c003731d:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037324:	74 30                	je     c0037356 <_svfiprintf_r+0x676>
c0037326:	0f b7 08             	movzwl (%eax),%ecx
c0037329:	83 c0 04             	add    $0x4,%eax
c003732c:	ba 01 00 00 00       	mov    $0x1,%edx
c0037331:	89 45 14             	mov    %eax,0x14(%ebp)
c0037334:	e9 27 fb ff ff       	jmp    c0036e60 <_svfiprintf_r+0x180>
c0037339:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
c0037340:	89 d0                	mov    %edx,%eax
c0037342:	e9 8f fa ff ff       	jmp    c0036dd6 <_svfiprintf_r+0xf6>
c0037347:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c003734e:	89 55 10             	mov    %edx,0x10(%ebp)
c0037351:	8b 45 14             	mov    0x14(%ebp),%eax
c0037354:	74 c7                	je     c003731d <_svfiprintf_r+0x63d>
c0037356:	8b 08                	mov    (%eax),%ecx
c0037358:	83 c0 04             	add    $0x4,%eax
c003735b:	ba 01 00 00 00       	mov    $0x1,%edx
c0037360:	89 45 14             	mov    %eax,0x14(%ebp)
c0037363:	e9 f8 fa ff ff       	jmp    c0036e60 <_svfiprintf_r+0x180>
c0037368:	8b 45 14             	mov    0x14(%ebp),%eax
c003736b:	89 55 10             	mov    %edx,0x10(%ebp)
c003736e:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0037375:	8b 18                	mov    (%eax),%ebx
c0037377:	8d 50 04             	lea    0x4(%eax),%edx
c003737a:	85 db                	test   %ebx,%ebx
c003737c:	0f 84 cc 06 00 00    	je     c0037a4e <_svfiprintf_r+0xd6e>
c0037382:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037388:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
c003738e:	85 ff                	test   %edi,%edi
c0037390:	0f 88 59 06 00 00    	js     c00379ef <_svfiprintf_r+0xd0f>
c0037396:	89 7c 24 08          	mov    %edi,0x8(%esp)
c003739a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00373a1:	00 
c00373a2:	89 1c 24             	mov    %ebx,(%esp)
c00373a5:	e8 06 e7 ff ff       	call   c0035ab0 <memchr>
c00373aa:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c00373b0:	85 c0                	test   %eax,%eax
c00373b2:	0f 84 c5 06 00 00    	je     c0037a7d <_svfiprintf_r+0xd9d>
c00373b8:	29 d8                	sub    %ebx,%eax
c00373ba:	39 f8                	cmp    %edi,%eax
c00373bc:	0f 4f c7             	cmovg  %edi,%eax
c00373bf:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c00373c6:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00373cc:	89 55 14             	mov    %edx,0x14(%ebp)
c00373cf:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c00373d6:	00 00 00 
c00373d9:	e9 f2 fa ff ff       	jmp    c0036ed0 <_svfiprintf_r+0x1f0>
c00373de:	89 f8                	mov    %edi,%eax
c00373e0:	84 c0                	test   %al,%al
c00373e2:	b8 20 00 00 00       	mov    $0x20,%eax
c00373e7:	0f 44 f8             	cmove  %eax,%edi
c00373ea:	89 d0                	mov    %edx,%eax
c00373ec:	e9 e5 f9 ff ff       	jmp    c0036dd6 <_svfiprintf_r+0xf6>
c00373f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00373f8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00373fe:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037404:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
c003740b:	74 2e                	je     c003743b <_svfiprintf_r+0x75b>
c003740d:	83 c0 01             	add    $0x1,%eax
c0037410:	83 c2 01             	add    $0x1,%edx
c0037413:	8d 8d 71 ff ff ff    	lea    -0x8f(%ebp),%ecx
c0037419:	83 c6 08             	add    $0x8,%esi
c003741c:	89 4e f8             	mov    %ecx,-0x8(%esi)
c003741f:	c7 46 fc 01 00 00 00 	movl   $0x1,-0x4(%esi)
c0037426:	83 f8 07             	cmp    $0x7,%eax
c0037429:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003742f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037435:	0f 8f b5 04 00 00    	jg     c00378f0 <_svfiprintf_r+0xc10>
c003743b:	8b 8d 4c ff ff ff    	mov    -0xb4(%ebp),%ecx
c0037441:	85 c9                	test   %ecx,%ecx
c0037443:	74 2e                	je     c0037473 <_svfiprintf_r+0x793>
c0037445:	83 c0 01             	add    $0x1,%eax
c0037448:	83 c2 02             	add    $0x2,%edx
c003744b:	8d 8d 72 ff ff ff    	lea    -0x8e(%ebp),%ecx
c0037451:	83 c6 08             	add    $0x8,%esi
c0037454:	89 4e f8             	mov    %ecx,-0x8(%esi)
c0037457:	c7 46 fc 02 00 00 00 	movl   $0x2,-0x4(%esi)
c003745e:	83 f8 07             	cmp    $0x7,%eax
c0037461:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037467:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003746d:	0f 8f 45 04 00 00    	jg     c00378b8 <_svfiprintf_r+0xbd8>
c0037473:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
c003747a:	00 00 00 
c003747d:	0f 84 9d 02 00 00    	je     c0037720 <_svfiprintf_r+0xa40>
c0037483:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037489:	2b bd 58 ff ff ff    	sub    -0xa8(%ebp),%edi
c003748f:	85 ff                	test   %edi,%edi
c0037491:	0f 8e e1 00 00 00    	jle    c0037578 <_svfiprintf_r+0x898>
c0037497:	83 ff 10             	cmp    $0x10,%edi
c003749a:	0f 8e 7c 00 00 00    	jle    c003751c <_svfiprintf_r+0x83c>
c00374a0:	89 9d 5c ff ff ff    	mov    %ebx,-0xa4(%ebp)
c00374a6:	89 f1                	mov    %esi,%ecx
c00374a8:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00374ab:	8b 75 0c             	mov    0xc(%ebp),%esi
c00374ae:	eb 08                	jmp    c00374b8 <_svfiprintf_r+0x7d8>
c00374b0:	83 ef 10             	sub    $0x10,%edi
c00374b3:	83 ff 10             	cmp    $0x10,%edi
c00374b6:	7e 5c                	jle    c0037514 <_svfiprintf_r+0x834>
c00374b8:	83 c0 01             	add    $0x1,%eax
c00374bb:	83 c2 10             	add    $0x10,%edx
c00374be:	c7 01 6c 94 03 c0    	movl   $0xc003946c,(%ecx)
c00374c4:	83 c1 08             	add    $0x8,%ecx
c00374c7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c00374ce:	83 f8 07             	cmp    $0x7,%eax
c00374d1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00374d7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00374dd:	7e d1                	jle    c00374b0 <_svfiprintf_r+0x7d0>
c00374df:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00374e5:	89 44 24 08          	mov    %eax,0x8(%esp)
c00374e9:	89 74 24 04          	mov    %esi,0x4(%esp)
c00374ed:	89 1c 24             	mov    %ebx,(%esp)
c00374f0:	e8 fb f5 ff ff       	call   c0036af0 <__ssprint_r>
c00374f5:	85 c0                	test   %eax,%eax
c00374f7:	0f 85 eb 01 00 00    	jne    c00376e8 <_svfiprintf_r+0xa08>
c00374fd:	83 ef 10             	sub    $0x10,%edi
c0037500:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037506:	83 ff 10             	cmp    $0x10,%edi
c0037509:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003750f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037512:	7f a4                	jg     c00374b8 <_svfiprintf_r+0x7d8>
c0037514:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c003751a:	89 ce                	mov    %ecx,%esi
c003751c:	83 c0 01             	add    $0x1,%eax
c003751f:	01 fa                	add    %edi,%edx
c0037521:	c7 06 6c 94 03 c0    	movl   $0xc003946c,(%esi)
c0037527:	83 c6 08             	add    $0x8,%esi
c003752a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003752d:	83 f8 07             	cmp    $0x7,%eax
c0037530:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037536:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003753c:	7e 3a                	jle    c0037578 <_svfiprintf_r+0x898>
c003753e:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037544:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037548:	8b 45 0c             	mov    0xc(%ebp),%eax
c003754b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003754f:	8b 45 08             	mov    0x8(%ebp),%eax
c0037552:	89 04 24             	mov    %eax,(%esp)
c0037555:	e8 96 f5 ff ff       	call   c0036af0 <__ssprint_r>
c003755a:	85 c0                	test   %eax,%eax
c003755c:	0f 85 86 01 00 00    	jne    c00376e8 <_svfiprintf_r+0xa08>
c0037562:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037568:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003756b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037571:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037578:	89 1e                	mov    %ebx,(%esi)
c003757a:	8b 9d 58 ff ff ff    	mov    -0xa8(%ebp),%ebx
c0037580:	83 c0 01             	add    $0x1,%eax
c0037583:	83 c6 08             	add    $0x8,%esi
c0037586:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003758c:	89 5e fc             	mov    %ebx,-0x4(%esi)
c003758f:	01 da                	add    %ebx,%edx
c0037591:	83 f8 07             	cmp    $0x7,%eax
c0037594:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003759a:	0f 8f 80 02 00 00    	jg     c0037820 <_svfiprintf_r+0xb40>
c00375a0:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
c00375a7:	0f 84 b9 00 00 00    	je     c0037666 <_svfiprintf_r+0x986>
c00375ad:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c00375b3:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c00375b9:	85 ff                	test   %edi,%edi
c00375bb:	0f 8e a5 00 00 00    	jle    c0037666 <_svfiprintf_r+0x986>
c00375c1:	83 ff 10             	cmp    $0x10,%edi
c00375c4:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00375ca:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00375d0:	7e 71                	jle    c0037643 <_svfiprintf_r+0x963>
c00375d2:	89 f1                	mov    %esi,%ecx
c00375d4:	8b 75 08             	mov    0x8(%ebp),%esi
c00375d7:	eb 0f                	jmp    c00375e8 <_svfiprintf_r+0x908>
c00375d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00375e0:	83 ef 10             	sub    $0x10,%edi
c00375e3:	83 ff 10             	cmp    $0x10,%edi
c00375e6:	7e 59                	jle    c0037641 <_svfiprintf_r+0x961>
c00375e8:	83 c0 01             	add    $0x1,%eax
c00375eb:	83 c2 10             	add    $0x10,%edx
c00375ee:	c7 01 7c 94 03 c0    	movl   $0xc003947c,(%ecx)
c00375f4:	83 c1 08             	add    $0x8,%ecx
c00375f7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c00375fe:	83 f8 07             	cmp    $0x7,%eax
c0037601:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037607:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003760d:	7e d1                	jle    c00375e0 <_svfiprintf_r+0x900>
c003760f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037612:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0037616:	89 34 24             	mov    %esi,(%esp)
c0037619:	89 44 24 04          	mov    %eax,0x4(%esp)
c003761d:	e8 ce f4 ff ff       	call   c0036af0 <__ssprint_r>
c0037622:	85 c0                	test   %eax,%eax
c0037624:	0f 85 be 00 00 00    	jne    c00376e8 <_svfiprintf_r+0xa08>
c003762a:	83 ef 10             	sub    $0x10,%edi
c003762d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037633:	83 ff 10             	cmp    $0x10,%edi
c0037636:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003763c:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c003763f:	7f a7                	jg     c00375e8 <_svfiprintf_r+0x908>
c0037641:	89 ce                	mov    %ecx,%esi
c0037643:	83 c0 01             	add    $0x1,%eax
c0037646:	01 fa                	add    %edi,%edx
c0037648:	83 f8 07             	cmp    $0x7,%eax
c003764b:	c7 06 7c 94 03 c0    	movl   $0xc003947c,(%esi)
c0037651:	89 7e 04             	mov    %edi,0x4(%esi)
c0037654:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003765a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037660:	0f 8f ee 02 00 00    	jg     c0037954 <_svfiprintf_r+0xc74>
c0037666:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
c003766c:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
c0037672:	39 c6                	cmp    %eax,%esi
c0037674:	0f 4d c6             	cmovge %esi,%eax
c0037677:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
c003767d:	85 d2                	test   %edx,%edx
c003767f:	0f 85 d3 01 00 00    	jne    c0037858 <_svfiprintf_r+0xb78>
c0037685:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c003768c:	00 00 00 
c003768f:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037692:	e9 a7 f6 ff ff       	jmp    c0036d3e <_svfiprintf_r+0x5e>
c0037697:	90                   	nop
c0037698:	84 d2                	test   %dl,%dl
c003769a:	75 6c                	jne    c0037708 <_svfiprintf_r+0xa28>
c003769c:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c00376a3:	74 63                	je     c0037708 <_svfiprintf_r+0xa28>
c00376a5:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c00376ab:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c00376ae:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c00376b2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00376b8:	e9 13 f8 ff ff       	jmp    c0036ed0 <_svfiprintf_r+0x1f0>
c00376bd:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c00376c3:	85 c0                	test   %eax,%eax
c00376c5:	74 21                	je     c00376e8 <_svfiprintf_r+0xa08>
c00376c7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00376cd:	89 44 24 08          	mov    %eax,0x8(%esp)
c00376d1:	8b 45 0c             	mov    0xc(%ebp),%eax
c00376d4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00376d8:	8b 45 08             	mov    0x8(%ebp),%eax
c00376db:	89 04 24             	mov    %eax,(%esp)
c00376de:	e8 0d f4 ff ff       	call   c0036af0 <__ssprint_r>
c00376e3:	90                   	nop
c00376e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00376e8:	8b 75 0c             	mov    0xc(%ebp),%esi
c00376eb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00376f0:	f6 46 0c 40          	testb  $0x40,0xc(%esi)
c00376f4:	0f 44 85 50 ff ff ff 	cmove  -0xb0(%ebp),%eax
c00376fb:	81 c4 cc 00 00 00    	add    $0xcc,%esp
c0037701:	5b                   	pop    %ebx
c0037702:	5e                   	pop    %esi
c0037703:	5f                   	pop    %edi
c0037704:	5d                   	pop    %ebp
c0037705:	c3                   	ret    
c0037706:	66 90                	xchg   %ax,%ax
c0037708:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
c003770f:	00 00 00 
c0037712:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037715:	e9 b6 f7 ff ff       	jmp    c0036ed0 <_svfiprintf_r+0x1f0>
c003771a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037720:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037726:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c003772c:	85 ff                	test   %edi,%edi
c003772e:	0f 8e 4f fd ff ff    	jle    c0037483 <_svfiprintf_r+0x7a3>
c0037734:	83 ff 10             	cmp    $0x10,%edi
c0037737:	0f 8e 7f 00 00 00    	jle    c00377bc <_svfiprintf_r+0xadc>
c003773d:	89 9d 4c ff ff ff    	mov    %ebx,-0xb4(%ebp)
c0037743:	89 f1                	mov    %esi,%ecx
c0037745:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0037748:	8b 75 0c             	mov    0xc(%ebp),%esi
c003774b:	eb 0b                	jmp    c0037758 <_svfiprintf_r+0xa78>
c003774d:	8d 76 00             	lea    0x0(%esi),%esi
c0037750:	83 ef 10             	sub    $0x10,%edi
c0037753:	83 ff 10             	cmp    $0x10,%edi
c0037756:	7e 5c                	jle    c00377b4 <_svfiprintf_r+0xad4>
c0037758:	83 c0 01             	add    $0x1,%eax
c003775b:	83 c2 10             	add    $0x10,%edx
c003775e:	c7 01 6c 94 03 c0    	movl   $0xc003946c,(%ecx)
c0037764:	83 c1 08             	add    $0x8,%ecx
c0037767:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003776e:	83 f8 07             	cmp    $0x7,%eax
c0037771:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037777:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003777d:	7e d1                	jle    c0037750 <_svfiprintf_r+0xa70>
c003777f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037785:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037789:	89 74 24 04          	mov    %esi,0x4(%esp)
c003778d:	89 1c 24             	mov    %ebx,(%esp)
c0037790:	e8 5b f3 ff ff       	call   c0036af0 <__ssprint_r>
c0037795:	85 c0                	test   %eax,%eax
c0037797:	0f 85 4b ff ff ff    	jne    c00376e8 <_svfiprintf_r+0xa08>
c003779d:	83 ef 10             	sub    $0x10,%edi
c00377a0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00377a6:	83 ff 10             	cmp    $0x10,%edi
c00377a9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00377af:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c00377b2:	7f a4                	jg     c0037758 <_svfiprintf_r+0xa78>
c00377b4:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
c00377ba:	89 ce                	mov    %ecx,%esi
c00377bc:	83 c0 01             	add    $0x1,%eax
c00377bf:	01 fa                	add    %edi,%edx
c00377c1:	c7 06 6c 94 03 c0    	movl   $0xc003946c,(%esi)
c00377c7:	83 c6 08             	add    $0x8,%esi
c00377ca:	89 7e fc             	mov    %edi,-0x4(%esi)
c00377cd:	83 f8 07             	cmp    $0x7,%eax
c00377d0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00377d6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00377dc:	0f 8e a1 fc ff ff    	jle    c0037483 <_svfiprintf_r+0x7a3>
c00377e2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00377e8:	89 44 24 08          	mov    %eax,0x8(%esp)
c00377ec:	8b 45 0c             	mov    0xc(%ebp),%eax
c00377ef:	89 44 24 04          	mov    %eax,0x4(%esp)
c00377f3:	8b 45 08             	mov    0x8(%ebp),%eax
c00377f6:	89 04 24             	mov    %eax,(%esp)
c00377f9:	e8 f2 f2 ff ff       	call   c0036af0 <__ssprint_r>
c00377fe:	85 c0                	test   %eax,%eax
c0037800:	0f 85 e2 fe ff ff    	jne    c00376e8 <_svfiprintf_r+0xa08>
c0037806:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003780c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003780f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037815:	e9 69 fc ff ff       	jmp    c0037483 <_svfiprintf_r+0x7a3>
c003781a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037820:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037826:	89 44 24 08          	mov    %eax,0x8(%esp)
c003782a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003782d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037831:	8b 45 08             	mov    0x8(%ebp),%eax
c0037834:	89 04 24             	mov    %eax,(%esp)
c0037837:	e8 b4 f2 ff ff       	call   c0036af0 <__ssprint_r>
c003783c:	85 c0                	test   %eax,%eax
c003783e:	0f 85 a4 fe ff ff    	jne    c00376e8 <_svfiprintf_r+0xa08>
c0037844:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003784a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003784d:	e9 4e fd ff ff       	jmp    c00375a0 <_svfiprintf_r+0x8c0>
c0037852:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037858:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003785e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037862:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037865:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037869:	8b 45 08             	mov    0x8(%ebp),%eax
c003786c:	89 04 24             	mov    %eax,(%esp)
c003786f:	e8 7c f2 ff ff       	call   c0036af0 <__ssprint_r>
c0037874:	85 c0                	test   %eax,%eax
c0037876:	0f 84 09 fe ff ff    	je     c0037685 <_svfiprintf_r+0x9a5>
c003787c:	e9 67 fe ff ff       	jmp    c00376e8 <_svfiprintf_r+0xa08>
c0037881:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037888:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003788e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037892:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037895:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037899:	8b 45 08             	mov    0x8(%ebp),%eax
c003789c:	89 04 24             	mov    %eax,(%esp)
c003789f:	e8 4c f2 ff ff       	call   c0036af0 <__ssprint_r>
c00378a4:	85 c0                	test   %eax,%eax
c00378a6:	0f 85 3c fe ff ff    	jne    c00376e8 <_svfiprintf_r+0xa08>
c00378ac:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00378af:	e9 e9 f4 ff ff       	jmp    c0036d9d <_svfiprintf_r+0xbd>
c00378b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00378b8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00378be:	89 44 24 08          	mov    %eax,0x8(%esp)
c00378c2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00378c5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00378c9:	8b 45 08             	mov    0x8(%ebp),%eax
c00378cc:	89 04 24             	mov    %eax,(%esp)
c00378cf:	e8 1c f2 ff ff       	call   c0036af0 <__ssprint_r>
c00378d4:	85 c0                	test   %eax,%eax
c00378d6:	0f 85 0c fe ff ff    	jne    c00376e8 <_svfiprintf_r+0xa08>
c00378dc:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00378e2:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00378e5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00378eb:	e9 83 fb ff ff       	jmp    c0037473 <_svfiprintf_r+0x793>
c00378f0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00378f6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00378fa:	8b 45 0c             	mov    0xc(%ebp),%eax
c00378fd:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037901:	8b 45 08             	mov    0x8(%ebp),%eax
c0037904:	89 04 24             	mov    %eax,(%esp)
c0037907:	e8 e4 f1 ff ff       	call   c0036af0 <__ssprint_r>
c003790c:	85 c0                	test   %eax,%eax
c003790e:	0f 85 d4 fd ff ff    	jne    c00376e8 <_svfiprintf_r+0xa08>
c0037914:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003791a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003791d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037923:	e9 13 fb ff ff       	jmp    c003743b <_svfiprintf_r+0x75b>
c0037928:	83 f9 09             	cmp    $0x9,%ecx
c003792b:	76 56                	jbe    c0037983 <_svfiprintf_r+0xca3>
c003792d:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037930:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
c0037935:	83 eb 01             	sub    $0x1,%ebx
c0037938:	f7 e1                	mul    %ecx
c003793a:	c1 ea 03             	shr    $0x3,%edx
c003793d:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0037940:	01 c0                	add    %eax,%eax
c0037942:	29 c1                	sub    %eax,%ecx
c0037944:	83 c1 30             	add    $0x30,%ecx
c0037947:	85 d2                	test   %edx,%edx
c0037949:	88 0b                	mov    %cl,(%ebx)
c003794b:	89 d1                	mov    %edx,%ecx
c003794d:	75 e1                	jne    c0037930 <_svfiprintf_r+0xc50>
c003794f:	e9 71 f5 ff ff       	jmp    c0036ec5 <_svfiprintf_r+0x1e5>
c0037954:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003795a:	89 44 24 08          	mov    %eax,0x8(%esp)
c003795e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037961:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037965:	8b 45 08             	mov    0x8(%ebp),%eax
c0037968:	89 04 24             	mov    %eax,(%esp)
c003796b:	e8 80 f1 ff ff       	call   c0036af0 <__ssprint_r>
c0037970:	85 c0                	test   %eax,%eax
c0037972:	0f 85 70 fd ff ff    	jne    c00376e8 <_svfiprintf_r+0xa08>
c0037978:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003797e:	e9 e3 fc ff ff       	jmp    c0037666 <_svfiprintf_r+0x986>
c0037983:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c0037989:	83 c1 30             	add    $0x30,%ecx
c003798c:	88 4d a7             	mov    %cl,-0x59(%ebp)
c003798f:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0037992:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037998:	e9 33 f5 ff ff       	jmp    c0036ed0 <_svfiprintf_r+0x1f0>
c003799d:	8b 45 14             	mov    0x14(%ebp),%eax
c00379a0:	8b 9d 50 ff ff ff    	mov    -0xb0(%ebp),%ebx
c00379a6:	8b 00                	mov    (%eax),%eax
c00379a8:	89 18                	mov    %ebx,(%eax)
c00379aa:	8b 45 14             	mov    0x14(%ebp),%eax
c00379ad:	83 c0 04             	add    $0x4,%eax
c00379b0:	89 45 14             	mov    %eax,0x14(%ebp)
c00379b3:	e9 86 f3 ff ff       	jmp    c0036d3e <_svfiprintf_r+0x5e>
c00379b8:	0f b7 0b             	movzwl (%ebx),%ecx
c00379bb:	83 c3 04             	add    $0x4,%ebx
c00379be:	89 5d 14             	mov    %ebx,0x14(%ebp)
c00379c1:	e9 95 f8 ff ff       	jmp    c003725b <_svfiprintf_r+0x57b>
c00379c6:	0f bf 08             	movswl (%eax),%ecx
c00379c9:	83 c0 04             	add    $0x4,%eax
c00379cc:	89 45 14             	mov    %eax,0x14(%ebp)
c00379cf:	85 c9                	test   %ecx,%ecx
c00379d1:	0f 89 0d f7 ff ff    	jns    c00370e4 <_svfiprintf_r+0x404>
c00379d7:	f7 d9                	neg    %ecx
c00379d9:	bf 2d 00 00 00       	mov    $0x2d,%edi
c00379de:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
c00379e5:	ba 01 00 00 00       	mov    $0x1,%edx
c00379ea:	e9 7a f4 ff ff       	jmp    c0036e69 <_svfiprintf_r+0x189>
c00379ef:	89 1c 24             	mov    %ebx,(%esp)
c00379f2:	e8 79 f0 ff ff       	call   c0036a70 <strlen>
c00379f7:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c00379fd:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037a04:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037a0b:	00 00 00 
c0037a0e:	89 55 14             	mov    %edx,0x14(%ebp)
c0037a11:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037a17:	e9 b4 f4 ff ff       	jmp    c0036ed0 <_svfiprintf_r+0x1f0>
c0037a1c:	8b 45 08             	mov    0x8(%ebp),%eax
c0037a1f:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c0037a26:	00 
c0037a27:	89 04 24             	mov    %eax,(%esp)
c0037a2a:	e8 41 d9 ff ff       	call   c0035370 <_malloc_r>
c0037a2f:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037a32:	85 c0                	test   %eax,%eax
c0037a34:	89 06                	mov    %eax,(%esi)
c0037a36:	89 46 10             	mov    %eax,0x10(%esi)
c0037a39:	0f 84 a3 00 00 00    	je     c0037ae2 <_svfiprintf_r+0xe02>
c0037a3f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037a42:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0037a49:	e9 b2 f2 ff ff       	jmp    c0036d00 <_svfiprintf_r+0x20>
c0037a4e:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037a54:	b8 06 00 00 00       	mov    $0x6,%eax
c0037a59:	89 55 14             	mov    %edx,0x14(%ebp)
c0037a5c:	83 ff 06             	cmp    $0x6,%edi
c0037a5f:	0f 46 c7             	cmovbe %edi,%eax
c0037a62:	85 c0                	test   %eax,%eax
c0037a64:	0f 49 d8             	cmovns %eax,%ebx
c0037a67:	89 9d 60 ff ff ff    	mov    %ebx,-0xa0(%ebp)
c0037a6d:	bb b4 8f 03 c0       	mov    $0xc0038fb4,%ebx
c0037a72:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037a78:	e9 61 f8 ff ff       	jmp    c00372de <_svfiprintf_r+0x5fe>
c0037a7d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0037a83:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037a8a:	89 55 14             	mov    %edx,0x14(%ebp)
c0037a8d:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037a94:	00 00 00 
c0037a97:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037a9d:	e9 2e f4 ff ff       	jmp    c0036ed0 <_svfiprintf_r+0x1f0>
c0037aa2:	89 da                	mov    %ebx,%edx
c0037aa4:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037aab:	00 00 00 
c0037aae:	e9 29 f3 ff ff       	jmp    c0036ddc <_svfiprintf_r+0xfc>
c0037ab3:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0037ab6:	89 da                	mov    %ebx,%edx
c0037ab8:	8b 45 14             	mov    0x14(%ebp),%eax
c0037abb:	8b 09                	mov    (%ecx),%ecx
c0037abd:	83 c0 04             	add    $0x4,%eax
c0037ac0:	89 45 14             	mov    %eax,0x14(%ebp)
c0037ac3:	85 c9                	test   %ecx,%ecx
c0037ac5:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0037acb:	0f 89 26 f3 ff ff    	jns    c0036df7 <_svfiprintf_r+0x117>
c0037ad1:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0037ad8:	ff ff ff 
c0037adb:	89 d0                	mov    %edx,%eax
c0037add:	e9 f4 f2 ff ff       	jmp    c0036dd6 <_svfiprintf_r+0xf6>
c0037ae2:	8b 45 08             	mov    0x8(%ebp),%eax
c0037ae5:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0037aeb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037af0:	e9 06 fc ff ff       	jmp    c00376fb <_svfiprintf_r+0xa1b>
c0037af5:	66 90                	xchg   %ax,%ax
c0037af7:	66 90                	xchg   %ax,%ax
c0037af9:	66 90                	xchg   %ax,%ax
c0037afb:	66 90                	xchg   %ax,%ax
c0037afd:	66 90                	xchg   %ax,%ax
c0037aff:	90                   	nop

c0037b00 <_calloc_r>:
c0037b00:	55                   	push   %ebp
c0037b01:	89 e5                	mov    %esp,%ebp
c0037b03:	53                   	push   %ebx
c0037b04:	83 ec 14             	sub    $0x14,%esp
c0037b07:	8b 45 10             	mov    0x10(%ebp),%eax
c0037b0a:	0f af 45 0c          	imul   0xc(%ebp),%eax
c0037b0e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037b12:	8b 45 08             	mov    0x8(%ebp),%eax
c0037b15:	89 04 24             	mov    %eax,(%esp)
c0037b18:	e8 53 d8 ff ff       	call   c0035370 <_malloc_r>
c0037b1d:	85 c0                	test   %eax,%eax
c0037b1f:	89 c3                	mov    %eax,%ebx
c0037b21:	0f 84 91 00 00 00    	je     c0037bb8 <_calloc_r+0xb8>
c0037b27:	8b 40 fc             	mov    -0x4(%eax),%eax
c0037b2a:	83 e0 fc             	and    $0xfffffffc,%eax
c0037b2d:	83 e8 04             	sub    $0x4,%eax
c0037b30:	83 f8 24             	cmp    $0x24,%eax
c0037b33:	77 63                	ja     c0037b98 <_calloc_r+0x98>
c0037b35:	83 f8 13             	cmp    $0x13,%eax
c0037b38:	89 da                	mov    %ebx,%edx
c0037b3a:	77 1c                	ja     c0037b58 <_calloc_r+0x58>
c0037b3c:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
c0037b42:	89 d8                	mov    %ebx,%eax
c0037b44:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
c0037b4b:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
c0037b52:	83 c4 14             	add    $0x14,%esp
c0037b55:	5b                   	pop    %ebx
c0037b56:	5d                   	pop    %ebp
c0037b57:	c3                   	ret    
c0037b58:	83 f8 1b             	cmp    $0x1b,%eax
c0037b5b:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0037b61:	8d 53 08             	lea    0x8(%ebx),%edx
c0037b64:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
c0037b6b:	76 cf                	jbe    c0037b3c <_calloc_r+0x3c>
c0037b6d:	83 f8 24             	cmp    $0x24,%eax
c0037b70:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
c0037b77:	8d 53 10             	lea    0x10(%ebx),%edx
c0037b7a:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
c0037b81:	75 b9                	jne    c0037b3c <_calloc_r+0x3c>
c0037b83:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
c0037b8a:	8d 53 18             	lea    0x18(%ebx),%edx
c0037b8d:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
c0037b94:	eb a6                	jmp    c0037b3c <_calloc_r+0x3c>
c0037b96:	66 90                	xchg   %ax,%ax
c0037b98:	89 1c 24             	mov    %ebx,(%esp)
c0037b9b:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037b9f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037ba6:	00 
c0037ba7:	e8 50 a2 ff ff       	call   c0031dfc <memset>
c0037bac:	83 c4 14             	add    $0x14,%esp
c0037baf:	89 d8                	mov    %ebx,%eax
c0037bb1:	5b                   	pop    %ebx
c0037bb2:	5d                   	pop    %ebp
c0037bb3:	c3                   	ret    
c0037bb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037bb8:	31 c0                	xor    %eax,%eax
c0037bba:	eb 96                	jmp    c0037b52 <_calloc_r+0x52>
c0037bbc:	66 90                	xchg   %ax,%ax
c0037bbe:	66 90                	xchg   %ax,%ax

c0037bc0 <_malloc_trim_r>:
c0037bc0:	55                   	push   %ebp
c0037bc1:	89 e5                	mov    %esp,%ebp
c0037bc3:	57                   	push   %edi
c0037bc4:	56                   	push   %esi
c0037bc5:	53                   	push   %ebx
c0037bc6:	83 ec 1c             	sub    $0x1c,%esp
c0037bc9:	8b 75 08             	mov    0x8(%ebp),%esi
c0037bcc:	89 34 24             	mov    %esi,(%esp)
c0037bcf:	e8 7c df ff ff       	call   c0035b50 <__malloc_lock>
c0037bd4:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0037bd9:	8b 58 04             	mov    0x4(%eax),%ebx
c0037bdc:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037bdf:	89 d8                	mov    %ebx,%eax
c0037be1:	2b 45 0c             	sub    0xc(%ebp),%eax
c0037be4:	05 ef 0f 00 00       	add    $0xfef,%eax
c0037be9:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0037bee:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi
c0037bf4:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
c0037bfa:	7e 1c                	jle    c0037c18 <_malloc_trim_r+0x58>
c0037bfc:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037c03:	00 
c0037c04:	89 34 24             	mov    %esi,(%esp)
c0037c07:	e8 44 ed ff ff       	call   c0036950 <_sbrk_r>
c0037c0c:	8b 15 48 c5 03 c0    	mov    0xc003c548,%edx
c0037c12:	01 da                	add    %ebx,%edx
c0037c14:	39 d0                	cmp    %edx,%eax
c0037c16:	74 18                	je     c0037c30 <_malloc_trim_r+0x70>
c0037c18:	89 34 24             	mov    %esi,(%esp)
c0037c1b:	e8 40 df ff ff       	call   c0035b60 <__malloc_unlock>
c0037c20:	83 c4 1c             	add    $0x1c,%esp
c0037c23:	31 c0                	xor    %eax,%eax
c0037c25:	5b                   	pop    %ebx
c0037c26:	5e                   	pop    %esi
c0037c27:	5f                   	pop    %edi
c0037c28:	5d                   	pop    %ebp
c0037c29:	c3                   	ret    
c0037c2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037c30:	89 f8                	mov    %edi,%eax
c0037c32:	f7 d8                	neg    %eax
c0037c34:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037c38:	89 34 24             	mov    %esi,(%esp)
c0037c3b:	e8 10 ed ff ff       	call   c0036950 <_sbrk_r>
c0037c40:	83 f8 ff             	cmp    $0xffffffff,%eax
c0037c43:	74 2b                	je     c0037c70 <_malloc_trim_r+0xb0>
c0037c45:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0037c4a:	29 fb                	sub    %edi,%ebx
c0037c4c:	83 cb 01             	or     $0x1,%ebx
c0037c4f:	29 3d 20 f0 06 c0    	sub    %edi,0xc006f020
c0037c55:	89 58 04             	mov    %ebx,0x4(%eax)
c0037c58:	89 34 24             	mov    %esi,(%esp)
c0037c5b:	e8 00 df ff ff       	call   c0035b60 <__malloc_unlock>
c0037c60:	83 c4 1c             	add    $0x1c,%esp
c0037c63:	b8 01 00 00 00       	mov    $0x1,%eax
c0037c68:	5b                   	pop    %ebx
c0037c69:	5e                   	pop    %esi
c0037c6a:	5f                   	pop    %edi
c0037c6b:	5d                   	pop    %ebp
c0037c6c:	c3                   	ret    
c0037c6d:	8d 76 00             	lea    0x0(%esi),%esi
c0037c70:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037c77:	00 
c0037c78:	89 34 24             	mov    %esi,(%esp)
c0037c7b:	e8 d0 ec ff ff       	call   c0036950 <_sbrk_r>
c0037c80:	8b 15 48 c5 03 c0    	mov    0xc003c548,%edx
c0037c86:	89 c1                	mov    %eax,%ecx
c0037c88:	29 d1                	sub    %edx,%ecx
c0037c8a:	83 f9 0f             	cmp    $0xf,%ecx
c0037c8d:	7e 89                	jle    c0037c18 <_malloc_trim_r+0x58>
c0037c8f:	2b 05 20 c5 03 c0    	sub    0xc003c520,%eax
c0037c95:	83 c9 01             	or     $0x1,%ecx
c0037c98:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037c9b:	a3 20 f0 06 c0       	mov    %eax,0xc006f020
c0037ca0:	e9 73 ff ff ff       	jmp    c0037c18 <_malloc_trim_r+0x58>
c0037ca5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037ca9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0037cb0 <_free_r>:
c0037cb0:	55                   	push   %ebp
c0037cb1:	89 e5                	mov    %esp,%ebp
c0037cb3:	57                   	push   %edi
c0037cb4:	56                   	push   %esi
c0037cb5:	53                   	push   %ebx
c0037cb6:	83 ec 1c             	sub    $0x1c,%esp
c0037cb9:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037cbc:	8b 45 08             	mov    0x8(%ebp),%eax
c0037cbf:	85 f6                	test   %esi,%esi
c0037cc1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0037cc4:	0f 84 fe 00 00 00    	je     c0037dc8 <_free_r+0x118>
c0037cca:	89 04 24             	mov    %eax,(%esp)
c0037ccd:	e8 7e de ff ff       	call   c0035b50 <__malloc_lock>
c0037cd2:	8b 7e fc             	mov    -0x4(%esi),%edi
c0037cd5:	8d 56 f8             	lea    -0x8(%esi),%edx
c0037cd8:	89 f8                	mov    %edi,%eax
c0037cda:	83 e0 fe             	and    $0xfffffffe,%eax
c0037cdd:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c0037ce0:	8b 59 04             	mov    0x4(%ecx),%ebx
c0037ce3:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037ce6:	39 0d 48 c5 03 c0    	cmp    %ecx,0xc003c548
c0037cec:	0f 84 0e 01 00 00    	je     c0037e00 <_free_r+0x150>
c0037cf2:	83 e7 01             	and    $0x1,%edi
c0037cf5:	89 59 04             	mov    %ebx,0x4(%ecx)
c0037cf8:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
c0037cff:	75 1f                	jne    c0037d20 <_free_r+0x70>
c0037d01:	8b 76 f8             	mov    -0x8(%esi),%esi
c0037d04:	29 f2                	sub    %esi,%edx
c0037d06:	01 f0                	add    %esi,%eax
c0037d08:	8b 72 08             	mov    0x8(%edx),%esi
c0037d0b:	81 fe 48 c5 03 c0    	cmp    $0xc003c548,%esi
c0037d11:	0f 84 39 01 00 00    	je     c0037e50 <_free_r+0x1a0>
c0037d17:	8b 7a 0c             	mov    0xc(%edx),%edi
c0037d1a:	89 7e 0c             	mov    %edi,0xc(%esi)
c0037d1d:	89 77 08             	mov    %esi,0x8(%edi)
c0037d20:	f6 44 19 04 01       	testb  $0x1,0x4(%ecx,%ebx,1)
c0037d25:	75 21                	jne    c0037d48 <_free_r+0x98>
c0037d27:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0037d2a:	01 d8                	add    %ebx,%eax
c0037d2c:	8b 59 08             	mov    0x8(%ecx),%ebx
c0037d2f:	85 f6                	test   %esi,%esi
c0037d31:	75 0c                	jne    c0037d3f <_free_r+0x8f>
c0037d33:	81 fb 48 c5 03 c0    	cmp    $0xc003c548,%ebx
c0037d39:	0f 84 21 01 00 00    	je     c0037e60 <_free_r+0x1b0>
c0037d3f:	8b 49 0c             	mov    0xc(%ecx),%ecx
c0037d42:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037d45:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037d48:	89 c1                	mov    %eax,%ecx
c0037d4a:	83 c9 01             	or     $0x1,%ecx
c0037d4d:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037d50:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0037d53:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037d56:	85 c9                	test   %ecx,%ecx
c0037d58:	75 56                	jne    c0037db0 <_free_r+0x100>
c0037d5a:	3d ff 01 00 00       	cmp    $0x1ff,%eax
c0037d5f:	76 6f                	jbe    c0037dd0 <_free_r+0x120>
c0037d61:	89 c1                	mov    %eax,%ecx
c0037d63:	c1 e9 09             	shr    $0x9,%ecx
c0037d66:	83 f9 04             	cmp    $0x4,%ecx
c0037d69:	0f 87 21 01 00 00    	ja     c0037e90 <_free_r+0x1e0>
c0037d6f:	89 c1                	mov    %eax,%ecx
c0037d71:	c1 e9 06             	shr    $0x6,%ecx
c0037d74:	83 c1 38             	add    $0x38,%ecx
c0037d77:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037d7a:	8d 34 9d 40 c5 03 c0 	lea    -0x3ffc3ac0(,%ebx,4),%esi
c0037d81:	8b 5e 08             	mov    0x8(%esi),%ebx
c0037d84:	39 f3                	cmp    %esi,%ebx
c0037d86:	0f 84 14 01 00 00    	je     c0037ea0 <_free_r+0x1f0>
c0037d8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037d90:	8b 4b 04             	mov    0x4(%ebx),%ecx
c0037d93:	83 e1 fc             	and    $0xfffffffc,%ecx
c0037d96:	39 c8                	cmp    %ecx,%eax
c0037d98:	73 07                	jae    c0037da1 <_free_r+0xf1>
c0037d9a:	8b 5b 08             	mov    0x8(%ebx),%ebx
c0037d9d:	39 de                	cmp    %ebx,%esi
c0037d9f:	75 ef                	jne    c0037d90 <_free_r+0xe0>
c0037da1:	8b 43 0c             	mov    0xc(%ebx),%eax
c0037da4:	89 42 0c             	mov    %eax,0xc(%edx)
c0037da7:	89 5a 08             	mov    %ebx,0x8(%edx)
c0037daa:	89 50 08             	mov    %edx,0x8(%eax)
c0037dad:	89 53 0c             	mov    %edx,0xc(%ebx)
c0037db0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037db3:	89 45 08             	mov    %eax,0x8(%ebp)
c0037db6:	83 c4 1c             	add    $0x1c,%esp
c0037db9:	5b                   	pop    %ebx
c0037dba:	5e                   	pop    %esi
c0037dbb:	5f                   	pop    %edi
c0037dbc:	5d                   	pop    %ebp
c0037dbd:	e9 9e dd ff ff       	jmp    c0035b60 <__malloc_unlock>
c0037dc2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037dc8:	83 c4 1c             	add    $0x1c,%esp
c0037dcb:	5b                   	pop    %ebx
c0037dcc:	5e                   	pop    %esi
c0037dcd:	5f                   	pop    %edi
c0037dce:	5d                   	pop    %ebp
c0037dcf:	c3                   	ret    
c0037dd0:	c1 e8 03             	shr    $0x3,%eax
c0037dd3:	bb 01 00 00 00       	mov    $0x1,%ebx
c0037dd8:	89 c1                	mov    %eax,%ecx
c0037dda:	c1 f9 02             	sar    $0x2,%ecx
c0037ddd:	8d 04 c5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,8),%eax
c0037de4:	d3 e3                	shl    %cl,%ebx
c0037de6:	8b 48 08             	mov    0x8(%eax),%ecx
c0037de9:	09 1d 44 c5 03 c0    	or     %ebx,0xc003c544
c0037def:	89 42 0c             	mov    %eax,0xc(%edx)
c0037df2:	89 4a 08             	mov    %ecx,0x8(%edx)
c0037df5:	89 50 08             	mov    %edx,0x8(%eax)
c0037df8:	89 51 0c             	mov    %edx,0xc(%ecx)
c0037dfb:	eb b3                	jmp    c0037db0 <_free_r+0x100>
c0037dfd:	8d 76 00             	lea    0x0(%esi),%esi
c0037e00:	01 d8                	add    %ebx,%eax
c0037e02:	83 e7 01             	and    $0x1,%edi
c0037e05:	75 13                	jne    c0037e1a <_free_r+0x16a>
c0037e07:	8b 4e f8             	mov    -0x8(%esi),%ecx
c0037e0a:	29 ca                	sub    %ecx,%edx
c0037e0c:	01 c8                	add    %ecx,%eax
c0037e0e:	8b 5a 08             	mov    0x8(%edx),%ebx
c0037e11:	8b 4a 0c             	mov    0xc(%edx),%ecx
c0037e14:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037e17:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037e1a:	89 c1                	mov    %eax,%ecx
c0037e1c:	83 c9 01             	or     $0x1,%ecx
c0037e1f:	3b 05 24 c5 03 c0    	cmp    0xc003c524,%eax
c0037e25:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037e28:	89 15 48 c5 03 c0    	mov    %edx,0xc003c548
c0037e2e:	72 80                	jb     c0037db0 <_free_r+0x100>
c0037e30:	a1 50 f0 06 c0       	mov    0xc006f050,%eax
c0037e35:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037e39:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037e3c:	89 04 24             	mov    %eax,(%esp)
c0037e3f:	e8 7c fd ff ff       	call   c0037bc0 <_malloc_trim_r>
c0037e44:	e9 67 ff ff ff       	jmp    c0037db0 <_free_r+0x100>
c0037e49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037e50:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
c0037e57:	e9 c4 fe ff ff       	jmp    c0037d20 <_free_r+0x70>
c0037e5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037e60:	89 c1                	mov    %eax,%ecx
c0037e62:	83 c9 01             	or     $0x1,%ecx
c0037e65:	89 15 54 c5 03 c0    	mov    %edx,0xc003c554
c0037e6b:	89 15 50 c5 03 c0    	mov    %edx,0xc003c550
c0037e71:	c7 42 0c 48 c5 03 c0 	movl   $0xc003c548,0xc(%edx)
c0037e78:	c7 42 08 48 c5 03 c0 	movl   $0xc003c548,0x8(%edx)
c0037e7f:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037e82:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037e85:	e9 26 ff ff ff       	jmp    c0037db0 <_free_r+0x100>
c0037e8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037e90:	83 f9 14             	cmp    $0x14,%ecx
c0037e93:	77 23                	ja     c0037eb8 <_free_r+0x208>
c0037e95:	83 c1 5b             	add    $0x5b,%ecx
c0037e98:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037e9b:	e9 da fe ff ff       	jmp    c0037d7a <_free_r+0xca>
c0037ea0:	c1 f9 02             	sar    $0x2,%ecx
c0037ea3:	b8 01 00 00 00       	mov    $0x1,%eax
c0037ea8:	d3 e0                	shl    %cl,%eax
c0037eaa:	09 05 44 c5 03 c0    	or     %eax,0xc003c544
c0037eb0:	89 d8                	mov    %ebx,%eax
c0037eb2:	e9 ed fe ff ff       	jmp    c0037da4 <_free_r+0xf4>
c0037eb7:	90                   	nop
c0037eb8:	83 f9 54             	cmp    $0x54,%ecx
c0037ebb:	77 10                	ja     c0037ecd <_free_r+0x21d>
c0037ebd:	89 c1                	mov    %eax,%ecx
c0037ebf:	c1 e9 0c             	shr    $0xc,%ecx
c0037ec2:	83 c1 6e             	add    $0x6e,%ecx
c0037ec5:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037ec8:	e9 ad fe ff ff       	jmp    c0037d7a <_free_r+0xca>
c0037ecd:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0037ed3:	77 10                	ja     c0037ee5 <_free_r+0x235>
c0037ed5:	89 c1                	mov    %eax,%ecx
c0037ed7:	c1 e9 0f             	shr    $0xf,%ecx
c0037eda:	83 c1 77             	add    $0x77,%ecx
c0037edd:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037ee0:	e9 95 fe ff ff       	jmp    c0037d7a <_free_r+0xca>
c0037ee5:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0037eeb:	77 10                	ja     c0037efd <_free_r+0x24d>
c0037eed:	89 c1                	mov    %eax,%ecx
c0037eef:	c1 e9 12             	shr    $0x12,%ecx
c0037ef2:	83 c1 7c             	add    $0x7c,%ecx
c0037ef5:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037ef8:	e9 7d fe ff ff       	jmp    c0037d7a <_free_r+0xca>
c0037efd:	bb fc 00 00 00       	mov    $0xfc,%ebx
c0037f02:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0037f07:	e9 6e fe ff ff       	jmp    c0037d7a <_free_r+0xca>
c0037f0c:	66 90                	xchg   %ax,%ax
c0037f0e:	66 90                	xchg   %ax,%ax

c0037f10 <memmove>:
c0037f10:	55                   	push   %ebp
c0037f11:	89 e5                	mov    %esp,%ebp
c0037f13:	56                   	push   %esi
c0037f14:	57                   	push   %edi
c0037f15:	53                   	push   %ebx
c0037f16:	8b 7d 08             	mov    0x8(%ebp),%edi
c0037f19:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0037f1c:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037f1f:	fc                   	cld    
c0037f20:	39 fe                	cmp    %edi,%esi
c0037f22:	73 43                	jae    c0037f67 <memmove+0x57>
c0037f24:	8d 5c 31 ff          	lea    -0x1(%ecx,%esi,1),%ebx
c0037f28:	39 df                	cmp    %ebx,%edi
c0037f2a:	77 3b                	ja     c0037f67 <memmove+0x57>
c0037f2c:	01 ce                	add    %ecx,%esi
c0037f2e:	01 cf                	add    %ecx,%edi
c0037f30:	fd                   	std    
c0037f31:	83 f9 08             	cmp    $0x8,%ecx
c0037f34:	76 2b                	jbe    c0037f61 <memmove+0x51>
c0037f36:	89 fa                	mov    %edi,%edx
c0037f38:	89 cb                	mov    %ecx,%ebx
c0037f3a:	83 e2 03             	and    $0x3,%edx
c0037f3d:	74 0c                	je     c0037f4b <memmove+0x3b>
c0037f3f:	89 d1                	mov    %edx,%ecx
c0037f41:	4e                   	dec    %esi
c0037f42:	4f                   	dec    %edi
c0037f43:	29 cb                	sub    %ecx,%ebx
c0037f45:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037f47:	89 d9                	mov    %ebx,%ecx
c0037f49:	46                   	inc    %esi
c0037f4a:	47                   	inc    %edi
c0037f4b:	c1 e9 02             	shr    $0x2,%ecx
c0037f4e:	83 ee 04             	sub    $0x4,%esi
c0037f51:	83 ef 04             	sub    $0x4,%edi
c0037f54:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0037f56:	83 c6 04             	add    $0x4,%esi
c0037f59:	83 c7 04             	add    $0x4,%edi
c0037f5c:	89 d9                	mov    %ebx,%ecx
c0037f5e:	83 e1 03             	and    $0x3,%ecx
c0037f61:	4e                   	dec    %esi
c0037f62:	4f                   	dec    %edi
c0037f63:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037f65:	eb 2a                	jmp    c0037f91 <memmove+0x81>
c0037f67:	83 f9 08             	cmp    $0x8,%ecx
c0037f6a:	76 23                	jbe    c0037f8f <memmove+0x7f>
c0037f6c:	89 fa                	mov    %edi,%edx
c0037f6e:	89 cb                	mov    %ecx,%ebx
c0037f70:	83 e2 03             	and    $0x3,%edx
c0037f73:	74 10                	je     c0037f85 <memmove+0x75>
c0037f75:	b9 04 00 00 00       	mov    $0x4,%ecx
c0037f7a:	29 d1                	sub    %edx,%ecx
c0037f7c:	83 e1 03             	and    $0x3,%ecx
c0037f7f:	29 cb                	sub    %ecx,%ebx
c0037f81:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037f83:	89 d9                	mov    %ebx,%ecx
c0037f85:	c1 e9 02             	shr    $0x2,%ecx
c0037f88:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0037f8a:	89 d9                	mov    %ebx,%ecx
c0037f8c:	83 e1 03             	and    $0x3,%ecx
c0037f8f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037f91:	8b 45 08             	mov    0x8(%ebp),%eax
c0037f94:	fc                   	cld    
c0037f95:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0037f98:	5b                   	pop    %ebx
c0037f99:	5f                   	pop    %edi
c0037f9a:	5e                   	pop    %esi
c0037f9b:	c9                   	leave  
c0037f9c:	c3                   	ret    
c0037f9d:	66 90                	xchg   %ax,%ax
c0037f9f:	90                   	nop

c0037fa0 <_realloc_r>:
c0037fa0:	55                   	push   %ebp
c0037fa1:	89 e5                	mov    %esp,%ebp
c0037fa3:	57                   	push   %edi
c0037fa4:	56                   	push   %esi
c0037fa5:	53                   	push   %ebx
c0037fa6:	83 ec 3c             	sub    $0x3c,%esp
c0037fa9:	8b 45 08             	mov    0x8(%ebp),%eax
c0037fac:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0037faf:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0037fb2:	8b 45 10             	mov    0x10(%ebp),%eax
c0037fb5:	85 ff                	test   %edi,%edi
c0037fb7:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0037fba:	0f 84 50 02 00 00    	je     c0038210 <_realloc_r+0x270>
c0037fc0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037fc3:	8d 77 f8             	lea    -0x8(%edi),%esi
c0037fc6:	89 04 24             	mov    %eax,(%esp)
c0037fc9:	e8 82 db ff ff       	call   c0035b50 <__malloc_lock>
c0037fce:	8b 47 fc             	mov    -0x4(%edi),%eax
c0037fd1:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0037fd4:	89 c3                	mov    %eax,%ebx
c0037fd6:	8d 51 0b             	lea    0xb(%ecx),%edx
c0037fd9:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037fdc:	83 fa 16             	cmp    $0x16,%edx
c0037fdf:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0037fe2:	0f 87 00 01 00 00    	ja     c00380e8 <_realloc_r+0x148>
c0037fe8:	31 d2                	xor    %edx,%edx
c0037fea:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%ebp)
c0037ff1:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
c0037ff8:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0037ffb:	39 4d dc             	cmp    %ecx,-0x24(%ebp)
c0037ffe:	0f 82 1c 02 00 00    	jb     c0038220 <_realloc_r+0x280>
c0038004:	84 d2                	test   %dl,%dl
c0038006:	0f 85 14 02 00 00    	jne    c0038220 <_realloc_r+0x280>
c003800c:	3b 5d d8             	cmp    -0x28(%ebp),%ebx
c003800f:	0f 8d eb 00 00 00    	jge    c0038100 <_realloc_r+0x160>
c0038015:	8b 0d 48 c5 03 c0    	mov    0xc003c548,%ecx
c003801b:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
c003801e:	39 d1                	cmp    %edx,%ecx
c0038020:	89 4d cc             	mov    %ecx,-0x34(%ebp)
c0038023:	0f 84 6f 02 00 00    	je     c0038298 <_realloc_r+0x2f8>
c0038029:	8b 4a 04             	mov    0x4(%edx),%ecx
c003802c:	89 c8                	mov    %ecx,%eax
c003802e:	83 e0 fe             	and    $0xfffffffe,%eax
c0038031:	f6 44 02 04 01       	testb  $0x1,0x4(%edx,%eax,1)
c0038036:	0f 84 f4 00 00 00    	je     c0038130 <_realloc_r+0x190>
c003803c:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
c0038043:	31 d2                	xor    %edx,%edx
c0038045:	f6 45 d4 01          	testb  $0x1,-0x2c(%ebp)
c0038049:	0f 85 39 01 00 00    	jne    c0038188 <_realloc_r+0x1e8>
c003804f:	89 f1                	mov    %esi,%ecx
c0038051:	2b 4f f8             	sub    -0x8(%edi),%ecx
c0038054:	8b 41 04             	mov    0x4(%ecx),%eax
c0038057:	83 e0 fc             	and    $0xfffffffc,%eax
c003805a:	85 d2                	test   %edx,%edx
c003805c:	0f 84 f6 02 00 00    	je     c0038358 <_realloc_r+0x3b8>
c0038062:	3b 55 cc             	cmp    -0x34(%ebp),%edx
c0038065:	0f 84 f5 02 00 00    	je     c0038360 <_realloc_r+0x3c0>
c003806b:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c003806e:	8b 55 d0             	mov    -0x30(%ebp),%edx
c0038071:	01 d8                	add    %ebx,%eax
c0038073:	01 c2                	add    %eax,%edx
c0038075:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0038078:	89 55 d0             	mov    %edx,-0x30(%ebp)
c003807b:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003807e:	0f 8c ac 01 00 00    	jl     c0038230 <_realloc_r+0x290>
c0038084:	8b 42 0c             	mov    0xc(%edx),%eax
c0038087:	83 eb 04             	sub    $0x4,%ebx
c003808a:	8b 52 08             	mov    0x8(%edx),%edx
c003808d:	83 fb 24             	cmp    $0x24,%ebx
c0038090:	8d 71 08             	lea    0x8(%ecx),%esi
c0038093:	89 42 0c             	mov    %eax,0xc(%edx)
c0038096:	89 50 08             	mov    %edx,0x8(%eax)
c0038099:	8b 41 0c             	mov    0xc(%ecx),%eax
c003809c:	8b 51 08             	mov    0x8(%ecx),%edx
c003809f:	89 42 0c             	mov    %eax,0xc(%edx)
c00380a2:	89 50 08             	mov    %edx,0x8(%eax)
c00380a5:	0f 87 85 03 00 00    	ja     c0038430 <_realloc_r+0x490>
c00380ab:	83 fb 13             	cmp    $0x13,%ebx
c00380ae:	89 f0                	mov    %esi,%eax
c00380b0:	76 1a                	jbe    c00380cc <_realloc_r+0x12c>
c00380b2:	8b 07                	mov    (%edi),%eax
c00380b4:	83 fb 1b             	cmp    $0x1b,%ebx
c00380b7:	89 41 08             	mov    %eax,0x8(%ecx)
c00380ba:	8b 47 04             	mov    0x4(%edi),%eax
c00380bd:	89 41 0c             	mov    %eax,0xc(%ecx)
c00380c0:	0f 87 8f 03 00 00    	ja     c0038455 <_realloc_r+0x4b5>
c00380c6:	8d 41 10             	lea    0x10(%ecx),%eax
c00380c9:	83 c7 08             	add    $0x8,%edi
c00380cc:	8b 17                	mov    (%edi),%edx
c00380ce:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c00380d1:	89 10                	mov    %edx,(%eax)
c00380d3:	8b 57 04             	mov    0x4(%edi),%edx
c00380d6:	89 50 04             	mov    %edx,0x4(%eax)
c00380d9:	8b 57 08             	mov    0x8(%edi),%edx
c00380dc:	89 f7                	mov    %esi,%edi
c00380de:	89 ce                	mov    %ecx,%esi
c00380e0:	89 50 08             	mov    %edx,0x8(%eax)
c00380e3:	8b 41 04             	mov    0x4(%ecx),%eax
c00380e6:	eb 1b                	jmp    c0038103 <_realloc_r+0x163>
c00380e8:	83 e2 f8             	and    $0xfffffff8,%edx
c00380eb:	89 55 dc             	mov    %edx,-0x24(%ebp)
c00380ee:	89 55 d8             	mov    %edx,-0x28(%ebp)
c00380f1:	c1 ea 1f             	shr    $0x1f,%edx
c00380f4:	e9 ff fe ff ff       	jmp    c0037ff8 <_realloc_r+0x58>
c00380f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0038100:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0038103:	89 da                	mov    %ebx,%edx
c0038105:	2b 55 dc             	sub    -0x24(%ebp),%edx
c0038108:	83 fa 0f             	cmp    $0xf,%edx
c003810b:	77 4b                	ja     c0038158 <_realloc_r+0x1b8>
c003810d:	83 e0 01             	and    $0x1,%eax
c0038110:	09 d8                	or     %ebx,%eax
c0038112:	89 46 04             	mov    %eax,0x4(%esi)
c0038115:	83 4c 1e 04 01       	orl    $0x1,0x4(%esi,%ebx,1)
c003811a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003811d:	89 04 24             	mov    %eax,(%esp)
c0038120:	e8 3b da ff ff       	call   c0035b60 <__malloc_unlock>
c0038125:	89 f8                	mov    %edi,%eax
c0038127:	83 c4 3c             	add    $0x3c,%esp
c003812a:	5b                   	pop    %ebx
c003812b:	5e                   	pop    %esi
c003812c:	5f                   	pop    %edi
c003812d:	5d                   	pop    %ebp
c003812e:	c3                   	ret    
c003812f:	90                   	nop
c0038130:	83 e1 fc             	and    $0xfffffffc,%ecx
c0038133:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0038136:	01 d9                	add    %ebx,%ecx
c0038138:	3b 4d d8             	cmp    -0x28(%ebp),%ecx
c003813b:	0f 8c 04 ff ff ff    	jl     c0038045 <_realloc_r+0xa5>
c0038141:	8b 5a 0c             	mov    0xc(%edx),%ebx
c0038144:	8b 52 08             	mov    0x8(%edx),%edx
c0038147:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003814a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c003814d:	89 53 08             	mov    %edx,0x8(%ebx)
c0038150:	89 cb                	mov    %ecx,%ebx
c0038152:	eb af                	jmp    c0038103 <_realloc_r+0x163>
c0038154:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038158:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c003815b:	83 e0 01             	and    $0x1,%eax
c003815e:	09 d8                	or     %ebx,%eax
c0038160:	89 46 04             	mov    %eax,0x4(%esi)
c0038163:	89 d0                	mov    %edx,%eax
c0038165:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
c0038168:	83 c8 01             	or     $0x1,%eax
c003816b:	89 41 04             	mov    %eax,0x4(%ecx)
c003816e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038171:	83 4c 11 04 01       	orl    $0x1,0x4(%ecx,%edx,1)
c0038176:	83 c1 08             	add    $0x8,%ecx
c0038179:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c003817d:	89 04 24             	mov    %eax,(%esp)
c0038180:	e8 2b fb ff ff       	call   c0037cb0 <_free_r>
c0038185:	eb 93                	jmp    c003811a <_realloc_r+0x17a>
c0038187:	90                   	nop
c0038188:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003818b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003818f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038192:	89 04 24             	mov    %eax,(%esp)
c0038195:	e8 d6 d1 ff ff       	call   c0035370 <_malloc_r>
c003819a:	85 c0                	test   %eax,%eax
c003819c:	89 c1                	mov    %eax,%ecx
c003819e:	0f 84 65 03 00 00    	je     c0038509 <_realloc_r+0x569>
c00381a4:	8b 47 fc             	mov    -0x4(%edi),%eax
c00381a7:	8d 51 f8             	lea    -0x8(%ecx),%edx
c00381aa:	89 55 e0             	mov    %edx,-0x20(%ebp)
c00381ad:	89 c2                	mov    %eax,%edx
c00381af:	83 e2 fe             	and    $0xfffffffe,%edx
c00381b2:	01 f2                	add    %esi,%edx
c00381b4:	39 55 e0             	cmp    %edx,-0x20(%ebp)
c00381b7:	0f 84 63 02 00 00    	je     c0038420 <_realloc_r+0x480>
c00381bd:	83 eb 04             	sub    $0x4,%ebx
c00381c0:	83 fb 24             	cmp    $0x24,%ebx
c00381c3:	0f 87 6f 01 00 00    	ja     c0038338 <_realloc_r+0x398>
c00381c9:	83 fb 13             	cmp    $0x13,%ebx
c00381cc:	0f 87 ee 00 00 00    	ja     c00382c0 <_realloc_r+0x320>
c00381d2:	89 c8                	mov    %ecx,%eax
c00381d4:	89 fa                	mov    %edi,%edx
c00381d6:	8b 1a                	mov    (%edx),%ebx
c00381d8:	89 18                	mov    %ebx,(%eax)
c00381da:	8b 5a 04             	mov    0x4(%edx),%ebx
c00381dd:	89 58 04             	mov    %ebx,0x4(%eax)
c00381e0:	8b 52 08             	mov    0x8(%edx),%edx
c00381e3:	89 50 08             	mov    %edx,0x8(%eax)
c00381e6:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c00381e9:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00381ed:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00381f0:	89 34 24             	mov    %esi,(%esp)
c00381f3:	e8 b8 fa ff ff       	call   c0037cb0 <_free_r>
c00381f8:	89 34 24             	mov    %esi,(%esp)
c00381fb:	e8 60 d9 ff ff       	call   c0035b60 <__malloc_unlock>
c0038200:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038203:	83 c4 3c             	add    $0x3c,%esp
c0038206:	5b                   	pop    %ebx
c0038207:	5e                   	pop    %esi
c0038208:	5f                   	pop    %edi
c0038209:	89 c8                	mov    %ecx,%eax
c003820b:	5d                   	pop    %ebp
c003820c:	c3                   	ret    
c003820d:	8d 76 00             	lea    0x0(%esi),%esi
c0038210:	89 45 0c             	mov    %eax,0xc(%ebp)
c0038213:	83 c4 3c             	add    $0x3c,%esp
c0038216:	5b                   	pop    %ebx
c0038217:	5e                   	pop    %esi
c0038218:	5f                   	pop    %edi
c0038219:	5d                   	pop    %ebp
c003821a:	e9 51 d1 ff ff       	jmp    c0035370 <_malloc_r>
c003821f:	90                   	nop
c0038220:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038223:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0038229:	31 c0                	xor    %eax,%eax
c003822b:	e9 f7 fe ff ff       	jmp    c0038127 <_realloc_r+0x187>
c0038230:	89 c2                	mov    %eax,%edx
c0038232:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0038235:	0f 8c 4d ff ff ff    	jl     c0038188 <_realloc_r+0x1e8>
c003823b:	8b 71 08             	mov    0x8(%ecx),%esi
c003823e:	83 eb 04             	sub    $0x4,%ebx
c0038241:	8b 41 0c             	mov    0xc(%ecx),%eax
c0038244:	83 fb 24             	cmp    $0x24,%ebx
c0038247:	89 46 0c             	mov    %eax,0xc(%esi)
c003824a:	89 70 08             	mov    %esi,0x8(%eax)
c003824d:	8d 71 08             	lea    0x8(%ecx),%esi
c0038250:	0f 87 88 00 00 00    	ja     c00382de <_realloc_r+0x33e>
c0038256:	83 fb 13             	cmp    $0x13,%ebx
c0038259:	89 f0                	mov    %esi,%eax
c003825b:	76 1a                	jbe    c0038277 <_realloc_r+0x2d7>
c003825d:	8b 07                	mov    (%edi),%eax
c003825f:	83 fb 1b             	cmp    $0x1b,%ebx
c0038262:	89 41 08             	mov    %eax,0x8(%ecx)
c0038265:	8b 47 04             	mov    0x4(%edi),%eax
c0038268:	89 41 0c             	mov    %eax,0xc(%ecx)
c003826b:	0f 87 17 02 00 00    	ja     c0038488 <_realloc_r+0x4e8>
c0038271:	8d 41 10             	lea    0x10(%ecx),%eax
c0038274:	83 c7 08             	add    $0x8,%edi
c0038277:	8b 1f                	mov    (%edi),%ebx
c0038279:	89 18                	mov    %ebx,(%eax)
c003827b:	8b 5f 04             	mov    0x4(%edi),%ebx
c003827e:	89 58 04             	mov    %ebx,0x4(%eax)
c0038281:	8b 5f 08             	mov    0x8(%edi),%ebx
c0038284:	89 f7                	mov    %esi,%edi
c0038286:	89 ce                	mov    %ecx,%esi
c0038288:	89 58 08             	mov    %ebx,0x8(%eax)
c003828b:	89 d3                	mov    %edx,%ebx
c003828d:	8b 41 04             	mov    0x4(%ecx),%eax
c0038290:	e9 6e fe ff ff       	jmp    c0038103 <_realloc_r+0x163>
c0038295:	8d 76 00             	lea    0x0(%esi),%esi
c0038298:	8b 45 cc             	mov    -0x34(%ebp),%eax
c003829b:	8b 55 dc             	mov    -0x24(%ebp),%edx
c003829e:	8b 48 04             	mov    0x4(%eax),%ecx
c00382a1:	83 c2 10             	add    $0x10,%edx
c00382a4:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c00382a7:	83 65 d0 fc          	andl   $0xfffffffc,-0x30(%ebp)
c00382ab:	8b 4d d0             	mov    -0x30(%ebp),%ecx
c00382ae:	01 d9                	add    %ebx,%ecx
c00382b0:	39 d1                	cmp    %edx,%ecx
c00382b2:	7d 54                	jge    c0038308 <_realloc_r+0x368>
c00382b4:	89 c2                	mov    %eax,%edx
c00382b6:	e9 8a fd ff ff       	jmp    c0038045 <_realloc_r+0xa5>
c00382bb:	90                   	nop
c00382bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00382c0:	8b 07                	mov    (%edi),%eax
c00382c2:	83 fb 1b             	cmp    $0x1b,%ebx
c00382c5:	89 01                	mov    %eax,(%ecx)
c00382c7:	8b 47 04             	mov    0x4(%edi),%eax
c00382ca:	89 41 04             	mov    %eax,0x4(%ecx)
c00382cd:	0f 87 2d 01 00 00    	ja     c0038400 <_realloc_r+0x460>
c00382d3:	8d 41 08             	lea    0x8(%ecx),%eax
c00382d6:	8d 57 08             	lea    0x8(%edi),%edx
c00382d9:	e9 f8 fe ff ff       	jmp    c00381d6 <_realloc_r+0x236>
c00382de:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00382e2:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00382e6:	89 f7                	mov    %esi,%edi
c00382e8:	89 34 24             	mov    %esi,(%esp)
c00382eb:	89 55 d8             	mov    %edx,-0x28(%ebp)
c00382ee:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00382f1:	e8 1a fc ff ff       	call   c0037f10 <memmove>
c00382f6:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00382f9:	8b 55 d8             	mov    -0x28(%ebp),%edx
c00382fc:	8b 41 04             	mov    0x4(%ecx),%eax
c00382ff:	89 ce                	mov    %ecx,%esi
c0038301:	89 d3                	mov    %edx,%ebx
c0038303:	e9 fb fd ff ff       	jmp    c0038103 <_realloc_r+0x163>
c0038308:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c003830b:	29 d9                	sub    %ebx,%ecx
c003830d:	01 de                	add    %ebx,%esi
c003830f:	83 c9 01             	or     $0x1,%ecx
c0038312:	89 35 48 c5 03 c0    	mov    %esi,0xc003c548
c0038318:	89 4e 04             	mov    %ecx,0x4(%esi)
c003831b:	8b 47 fc             	mov    -0x4(%edi),%eax
c003831e:	83 e0 01             	and    $0x1,%eax
c0038321:	09 d8                	or     %ebx,%eax
c0038323:	89 47 fc             	mov    %eax,-0x4(%edi)
c0038326:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038329:	89 04 24             	mov    %eax,(%esp)
c003832c:	e8 2f d8 ff ff       	call   c0035b60 <__malloc_unlock>
c0038331:	89 f8                	mov    %edi,%eax
c0038333:	e9 ef fd ff ff       	jmp    c0038127 <_realloc_r+0x187>
c0038338:	89 0c 24             	mov    %ecx,(%esp)
c003833b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003833f:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038343:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038346:	e8 c5 fb ff ff       	call   c0037f10 <memmove>
c003834b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c003834e:	e9 93 fe ff ff       	jmp    c00381e6 <_realloc_r+0x246>
c0038353:	90                   	nop
c0038354:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038358:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c003835b:	e9 d2 fe ff ff       	jmp    c0038232 <_realloc_r+0x292>
c0038360:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c0038363:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0038366:	01 d0                	add    %edx,%eax
c0038368:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003836b:	8b 45 dc             	mov    -0x24(%ebp),%eax
c003836e:	83 c0 10             	add    $0x10,%eax
c0038371:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
c0038374:	0f 8c b8 fe ff ff    	jl     c0038232 <_realloc_r+0x292>
c003837a:	8b 41 0c             	mov    0xc(%ecx),%eax
c003837d:	83 eb 04             	sub    $0x4,%ebx
c0038380:	8b 51 08             	mov    0x8(%ecx),%edx
c0038383:	83 fb 24             	cmp    $0x24,%ebx
c0038386:	8d 71 08             	lea    0x8(%ecx),%esi
c0038389:	89 42 0c             	mov    %eax,0xc(%edx)
c003838c:	89 50 08             	mov    %edx,0x8(%eax)
c003838f:	0f 87 3d 01 00 00    	ja     c00384d2 <_realloc_r+0x532>
c0038395:	83 fb 13             	cmp    $0x13,%ebx
c0038398:	89 f0                	mov    %esi,%eax
c003839a:	76 1a                	jbe    c00383b6 <_realloc_r+0x416>
c003839c:	8b 07                	mov    (%edi),%eax
c003839e:	83 fb 1b             	cmp    $0x1b,%ebx
c00383a1:	89 41 08             	mov    %eax,0x8(%ecx)
c00383a4:	8b 47 04             	mov    0x4(%edi),%eax
c00383a7:	89 41 0c             	mov    %eax,0xc(%ecx)
c00383aa:	0f 87 3d 01 00 00    	ja     c00384ed <_realloc_r+0x54d>
c00383b0:	8d 41 10             	lea    0x10(%ecx),%eax
c00383b3:	83 c7 08             	add    $0x8,%edi
c00383b6:	8b 17                	mov    (%edi),%edx
c00383b8:	89 10                	mov    %edx,(%eax)
c00383ba:	8b 57 04             	mov    0x4(%edi),%edx
c00383bd:	89 50 04             	mov    %edx,0x4(%eax)
c00383c0:	8b 57 08             	mov    0x8(%edi),%edx
c00383c3:	89 50 08             	mov    %edx,0x8(%eax)
c00383c6:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c00383c9:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c00383cc:	89 d8                	mov    %ebx,%eax
c00383ce:	29 df                	sub    %ebx,%edi
c00383d0:	01 c8                	add    %ecx,%eax
c00383d2:	83 cf 01             	or     $0x1,%edi
c00383d5:	a3 48 c5 03 c0       	mov    %eax,0xc003c548
c00383da:	89 78 04             	mov    %edi,0x4(%eax)
c00383dd:	8b 41 04             	mov    0x4(%ecx),%eax
c00383e0:	83 e0 01             	and    $0x1,%eax
c00383e3:	09 d8                	or     %ebx,%eax
c00383e5:	89 41 04             	mov    %eax,0x4(%ecx)
c00383e8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00383eb:	89 04 24             	mov    %eax,(%esp)
c00383ee:	e8 6d d7 ff ff       	call   c0035b60 <__malloc_unlock>
c00383f3:	89 f0                	mov    %esi,%eax
c00383f5:	e9 2d fd ff ff       	jmp    c0038127 <_realloc_r+0x187>
c00383fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0038400:	8b 47 08             	mov    0x8(%edi),%eax
c0038403:	83 fb 24             	cmp    $0x24,%ebx
c0038406:	89 41 08             	mov    %eax,0x8(%ecx)
c0038409:	8b 47 0c             	mov    0xc(%edi),%eax
c003840c:	89 41 0c             	mov    %eax,0xc(%ecx)
c003840f:	74 60                	je     c0038471 <_realloc_r+0x4d1>
c0038411:	8d 41 10             	lea    0x10(%ecx),%eax
c0038414:	8d 57 10             	lea    0x10(%edi),%edx
c0038417:	e9 ba fd ff ff       	jmp    c00381d6 <_realloc_r+0x236>
c003841c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038420:	8b 51 fc             	mov    -0x4(%ecx),%edx
c0038423:	83 e2 fc             	and    $0xfffffffc,%edx
c0038426:	01 d3                	add    %edx,%ebx
c0038428:	e9 d6 fc ff ff       	jmp    c0038103 <_realloc_r+0x163>
c003842d:	8d 76 00             	lea    0x0(%esi),%esi
c0038430:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038434:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038438:	89 f7                	mov    %esi,%edi
c003843a:	89 34 24             	mov    %esi,(%esp)
c003843d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038440:	e8 cb fa ff ff       	call   c0037f10 <memmove>
c0038445:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038448:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c003844b:	8b 41 04             	mov    0x4(%ecx),%eax
c003844e:	89 ce                	mov    %ecx,%esi
c0038450:	e9 ae fc ff ff       	jmp    c0038103 <_realloc_r+0x163>
c0038455:	8b 47 08             	mov    0x8(%edi),%eax
c0038458:	83 fb 24             	cmp    $0x24,%ebx
c003845b:	89 41 10             	mov    %eax,0x10(%ecx)
c003845e:	8b 47 0c             	mov    0xc(%edi),%eax
c0038461:	89 41 14             	mov    %eax,0x14(%ecx)
c0038464:	74 3e                	je     c00384a4 <_realloc_r+0x504>
c0038466:	8d 41 18             	lea    0x18(%ecx),%eax
c0038469:	83 c7 10             	add    $0x10,%edi
c003846c:	e9 5b fc ff ff       	jmp    c00380cc <_realloc_r+0x12c>
c0038471:	8b 47 10             	mov    0x10(%edi),%eax
c0038474:	8d 57 18             	lea    0x18(%edi),%edx
c0038477:	89 41 10             	mov    %eax,0x10(%ecx)
c003847a:	8b 5f 14             	mov    0x14(%edi),%ebx
c003847d:	8d 41 18             	lea    0x18(%ecx),%eax
c0038480:	89 59 14             	mov    %ebx,0x14(%ecx)
c0038483:	e9 4e fd ff ff       	jmp    c00381d6 <_realloc_r+0x236>
c0038488:	8b 47 08             	mov    0x8(%edi),%eax
c003848b:	83 fb 24             	cmp    $0x24,%ebx
c003848e:	89 41 10             	mov    %eax,0x10(%ecx)
c0038491:	8b 47 0c             	mov    0xc(%edi),%eax
c0038494:	89 41 14             	mov    %eax,0x14(%ecx)
c0038497:	74 22                	je     c00384bb <_realloc_r+0x51b>
c0038499:	8d 41 18             	lea    0x18(%ecx),%eax
c003849c:	83 c7 10             	add    $0x10,%edi
c003849f:	e9 d3 fd ff ff       	jmp    c0038277 <_realloc_r+0x2d7>
c00384a4:	8b 47 10             	mov    0x10(%edi),%eax
c00384a7:	83 c7 18             	add    $0x18,%edi
c00384aa:	89 41 18             	mov    %eax,0x18(%ecx)
c00384ad:	8b 57 fc             	mov    -0x4(%edi),%edx
c00384b0:	8d 41 20             	lea    0x20(%ecx),%eax
c00384b3:	89 51 1c             	mov    %edx,0x1c(%ecx)
c00384b6:	e9 11 fc ff ff       	jmp    c00380cc <_realloc_r+0x12c>
c00384bb:	8b 47 10             	mov    0x10(%edi),%eax
c00384be:	83 c7 18             	add    $0x18,%edi
c00384c1:	89 41 18             	mov    %eax,0x18(%ecx)
c00384c4:	8b 5f fc             	mov    -0x4(%edi),%ebx
c00384c7:	8d 41 20             	lea    0x20(%ecx),%eax
c00384ca:	89 59 1c             	mov    %ebx,0x1c(%ecx)
c00384cd:	e9 a5 fd ff ff       	jmp    c0038277 <_realloc_r+0x2d7>
c00384d2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00384d6:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00384da:	89 34 24             	mov    %esi,(%esp)
c00384dd:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00384e0:	e8 2b fa ff ff       	call   c0037f10 <memmove>
c00384e5:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00384e8:	e9 d9 fe ff ff       	jmp    c00383c6 <_realloc_r+0x426>
c00384ed:	8b 47 08             	mov    0x8(%edi),%eax
c00384f0:	83 fb 24             	cmp    $0x24,%ebx
c00384f3:	89 41 10             	mov    %eax,0x10(%ecx)
c00384f6:	8b 47 0c             	mov    0xc(%edi),%eax
c00384f9:	89 41 14             	mov    %eax,0x14(%ecx)
c00384fc:	74 1d                	je     c003851b <_realloc_r+0x57b>
c00384fe:	8d 41 18             	lea    0x18(%ecx),%eax
c0038501:	83 c7 10             	add    $0x10,%edi
c0038504:	e9 ad fe ff ff       	jmp    c00383b6 <_realloc_r+0x416>
c0038509:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003850c:	89 04 24             	mov    %eax,(%esp)
c003850f:	e8 4c d6 ff ff       	call   c0035b60 <__malloc_unlock>
c0038514:	31 c0                	xor    %eax,%eax
c0038516:	e9 0c fc ff ff       	jmp    c0038127 <_realloc_r+0x187>
c003851b:	8b 47 10             	mov    0x10(%edi),%eax
c003851e:	83 c7 18             	add    $0x18,%edi
c0038521:	89 41 18             	mov    %eax,0x18(%ecx)
c0038524:	8b 57 fc             	mov    -0x4(%edi),%edx
c0038527:	8d 41 20             	lea    0x20(%ecx),%eax
c003852a:	89 51 1c             	mov    %edx,0x1c(%ecx)
c003852d:	e9 84 fe ff ff       	jmp    c00383b6 <_realloc_r+0x416>
c0038532:	66 90                	xchg   %ax,%ax
c0038534:	66 90                	xchg   %ax,%ax
c0038536:	66 90                	xchg   %ax,%ax
c0038538:	66 90                	xchg   %ax,%ax
c003853a:	66 90                	xchg   %ax,%ax
c003853c:	66 90                	xchg   %ax,%ax
c003853e:	66 90                	xchg   %ax,%ax

c0038540 <cleanup_glue>:
c0038540:	55                   	push   %ebp
c0038541:	89 e5                	mov    %esp,%ebp
c0038543:	56                   	push   %esi
c0038544:	53                   	push   %ebx
c0038545:	83 ec 10             	sub    $0x10,%esp
c0038548:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c003854b:	8b 75 08             	mov    0x8(%ebp),%esi
c003854e:	8b 03                	mov    (%ebx),%eax
c0038550:	85 c0                	test   %eax,%eax
c0038552:	74 0c                	je     c0038560 <cleanup_glue+0x20>
c0038554:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038558:	89 34 24             	mov    %esi,(%esp)
c003855b:	e8 e0 ff ff ff       	call   c0038540 <cleanup_glue>
c0038560:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0038563:	89 75 08             	mov    %esi,0x8(%ebp)
c0038566:	83 c4 10             	add    $0x10,%esp
c0038569:	5b                   	pop    %ebx
c003856a:	5e                   	pop    %esi
c003856b:	5d                   	pop    %ebp
c003856c:	e9 3f f7 ff ff       	jmp    c0037cb0 <_free_r>
c0038571:	eb 0d                	jmp    c0038580 <_reclaim_reent>
c0038573:	90                   	nop
c0038574:	90                   	nop
c0038575:	90                   	nop
c0038576:	90                   	nop
c0038577:	90                   	nop
c0038578:	90                   	nop
c0038579:	90                   	nop
c003857a:	90                   	nop
c003857b:	90                   	nop
c003857c:	90                   	nop
c003857d:	90                   	nop
c003857e:	90                   	nop
c003857f:	90                   	nop

c0038580 <_reclaim_reent>:
c0038580:	55                   	push   %ebp
c0038581:	89 e5                	mov    %esp,%ebp
c0038583:	57                   	push   %edi
c0038584:	56                   	push   %esi
c0038585:	53                   	push   %ebx
c0038586:	83 ec 1c             	sub    $0x1c,%esp
c0038589:	8b 5d 08             	mov    0x8(%ebp),%ebx
c003858c:	3b 1d 40 c0 03 c0    	cmp    0xc003c040,%ebx
c0038592:	0f 84 a6 00 00 00    	je     c003863e <_reclaim_reent+0xbe>
c0038598:	8b 53 4c             	mov    0x4c(%ebx),%edx
c003859b:	85 d2                	test   %edx,%edx
c003859d:	74 46                	je     c00385e5 <_reclaim_reent+0x65>
c003859f:	31 c0                	xor    %eax,%eax
c00385a1:	31 f6                	xor    %esi,%esi
c00385a3:	90                   	nop
c00385a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00385a8:	8b 04 82             	mov    (%edx,%eax,4),%eax
c00385ab:	85 c0                	test   %eax,%eax
c00385ad:	75 0b                	jne    c00385ba <_reclaim_reent+0x3a>
c00385af:	eb 1e                	jmp    c00385cf <_reclaim_reent+0x4f>
c00385b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00385b8:	89 f8                	mov    %edi,%eax
c00385ba:	8b 38                	mov    (%eax),%edi
c00385bc:	89 44 24 04          	mov    %eax,0x4(%esp)
c00385c0:	89 1c 24             	mov    %ebx,(%esp)
c00385c3:	e8 e8 f6 ff ff       	call   c0037cb0 <_free_r>
c00385c8:	85 ff                	test   %edi,%edi
c00385ca:	75 ec                	jne    c00385b8 <_reclaim_reent+0x38>
c00385cc:	8b 53 4c             	mov    0x4c(%ebx),%edx
c00385cf:	83 c6 01             	add    $0x1,%esi
c00385d2:	83 fe 20             	cmp    $0x20,%esi
c00385d5:	89 f0                	mov    %esi,%eax
c00385d7:	75 cf                	jne    c00385a8 <_reclaim_reent+0x28>
c00385d9:	89 54 24 04          	mov    %edx,0x4(%esp)
c00385dd:	89 1c 24             	mov    %ebx,(%esp)
c00385e0:	e8 cb f6 ff ff       	call   c0037cb0 <_free_r>
c00385e5:	8b 43 40             	mov    0x40(%ebx),%eax
c00385e8:	85 c0                	test   %eax,%eax
c00385ea:	74 0c                	je     c00385f8 <_reclaim_reent+0x78>
c00385ec:	89 44 24 04          	mov    %eax,0x4(%esp)
c00385f0:	89 1c 24             	mov    %ebx,(%esp)
c00385f3:	e8 b8 f6 ff ff       	call   c0037cb0 <_free_r>
c00385f8:	8b 83 48 01 00 00    	mov    0x148(%ebx),%eax
c00385fe:	85 c0                	test   %eax,%eax
c0038600:	74 22                	je     c0038624 <_reclaim_reent+0xa4>
c0038602:	8d b3 4c 01 00 00    	lea    0x14c(%ebx),%esi
c0038608:	39 f0                	cmp    %esi,%eax
c003860a:	75 06                	jne    c0038612 <_reclaim_reent+0x92>
c003860c:	eb 16                	jmp    c0038624 <_reclaim_reent+0xa4>
c003860e:	66 90                	xchg   %ax,%ax
c0038610:	89 f8                	mov    %edi,%eax
c0038612:	8b 38                	mov    (%eax),%edi
c0038614:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038618:	89 1c 24             	mov    %ebx,(%esp)
c003861b:	e8 90 f6 ff ff       	call   c0037cb0 <_free_r>
c0038620:	39 fe                	cmp    %edi,%esi
c0038622:	75 ec                	jne    c0038610 <_reclaim_reent+0x90>
c0038624:	8b 43 54             	mov    0x54(%ebx),%eax
c0038627:	85 c0                	test   %eax,%eax
c0038629:	74 0c                	je     c0038637 <_reclaim_reent+0xb7>
c003862b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003862f:	89 1c 24             	mov    %ebx,(%esp)
c0038632:	e8 79 f6 ff ff       	call   c0037cb0 <_free_r>
c0038637:	8b 43 38             	mov    0x38(%ebx),%eax
c003863a:	85 c0                	test   %eax,%eax
c003863c:	75 08                	jne    c0038646 <_reclaim_reent+0xc6>
c003863e:	83 c4 1c             	add    $0x1c,%esp
c0038641:	5b                   	pop    %ebx
c0038642:	5e                   	pop    %esi
c0038643:	5f                   	pop    %edi
c0038644:	5d                   	pop    %ebp
c0038645:	c3                   	ret    
c0038646:	89 1c 24             	mov    %ebx,(%esp)
c0038649:	ff 53 3c             	call   *0x3c(%ebx)
c003864c:	8b 83 e0 02 00 00    	mov    0x2e0(%ebx),%eax
c0038652:	85 c0                	test   %eax,%eax
c0038654:	74 e8                	je     c003863e <_reclaim_reent+0xbe>
c0038656:	89 1c 24             	mov    %ebx,(%esp)
c0038659:	89 44 24 04          	mov    %eax,0x4(%esp)
c003865d:	e8 de fe ff ff       	call   c0038540 <cleanup_glue>
c0038662:	83 c4 1c             	add    $0x1c,%esp
c0038665:	5b                   	pop    %ebx
c0038666:	5e                   	pop    %esi
c0038667:	5f                   	pop    %edi
c0038668:	5d                   	pop    %ebp
c0038669:	c3                   	ret    
