	.file	"simple_code.c"
	.text
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	call	__main
	movddup	.LC1(%rip), %xmm0
	xorl	%eax, %eax
	movupd	16+b(%rip), %xmm3
	movupd	32+b(%rip), %xmm2
	movupd	48+b(%rip), %xmm1
	movupd	b(%rip), %xmm4
	addpd	%xmm0, %xmm3
	addpd	%xmm0, %xmm2
	addpd	%xmm0, %xmm1
	addpd	%xmm0, %xmm4
	movups	%xmm3, 16+a(%rip)
	movupd	80+b(%rip), %xmm3
	movups	%xmm2, 32+a(%rip)
	movupd	96+b(%rip), %xmm2
	movups	%xmm4, a(%rip)
	movupd	64+b(%rip), %xmm4
	addpd	%xmm0, %xmm3
	movups	%xmm1, 48+a(%rip)
	movupd	112+b(%rip), %xmm1
	addpd	%xmm0, %xmm2
	addpd	%xmm0, %xmm4
	addpd	%xmm0, %xmm1
	movups	%xmm3, 80+a(%rip)
	movupd	144+b(%rip), %xmm3
	movups	%xmm2, 96+a(%rip)
	movupd	160+b(%rip), %xmm2
	movups	%xmm4, 64+a(%rip)
	movupd	128+b(%rip), %xmm4
	addpd	%xmm0, %xmm3
	movups	%xmm1, 112+a(%rip)
	movupd	176+b(%rip), %xmm1
	addpd	%xmm0, %xmm2
	addpd	%xmm0, %xmm4
	addpd	%xmm0, %xmm1
	movups	%xmm3, 144+a(%rip)
	movupd	208+b(%rip), %xmm3
	movups	%xmm2, 160+a(%rip)
	movupd	224+b(%rip), %xmm2
	movups	%xmm4, 128+a(%rip)
	movupd	192+b(%rip), %xmm4
	addpd	%xmm0, %xmm3
	movups	%xmm1, 176+a(%rip)
	movupd	240+b(%rip), %xmm1
	addpd	%xmm0, %xmm2
	addpd	%xmm0, %xmm4
	addpd	%xmm0, %xmm1
	movups	%xmm3, 208+a(%rip)
	movups	%xmm2, 224+a(%rip)
	movups	%xmm4, 192+a(%rip)
	movups	%xmm1, 240+a(%rip)
	movupd	272+b(%rip), %xmm3
	movupd	288+b(%rip), %xmm2
	movupd	304+b(%rip), %xmm1
	movupd	256+b(%rip), %xmm4
	addpd	%xmm0, %xmm3
	addpd	%xmm0, %xmm2
	addpd	%xmm0, %xmm1
	addpd	%xmm0, %xmm4
	movups	%xmm3, 272+a(%rip)
	movupd	336+b(%rip), %xmm3
	movups	%xmm2, 288+a(%rip)
	movupd	352+b(%rip), %xmm2
	movups	%xmm1, 304+a(%rip)
	movupd	368+b(%rip), %xmm1
	addpd	%xmm0, %xmm3
	addpd	%xmm0, %xmm2
	movups	%xmm4, 256+a(%rip)
	movupd	320+b(%rip), %xmm4
	addpd	%xmm0, %xmm1
	movups	%xmm3, 336+a(%rip)
	movupd	400+b(%rip), %xmm3
	addpd	%xmm0, %xmm4
	movups	%xmm2, 352+a(%rip)
	movupd	416+b(%rip), %xmm2
	movups	%xmm1, 368+a(%rip)
	movupd	432+b(%rip), %xmm1
	addpd	%xmm0, %xmm3
	addpd	%xmm0, %xmm2
	movups	%xmm4, 320+a(%rip)
	movupd	384+b(%rip), %xmm4
	addpd	%xmm0, %xmm1
	movups	%xmm3, 400+a(%rip)
	movupd	464+b(%rip), %xmm3
	addpd	%xmm0, %xmm4
	movups	%xmm2, 416+a(%rip)
	movupd	480+b(%rip), %xmm2
	movups	%xmm1, 432+a(%rip)
	movupd	496+b(%rip), %xmm1
	addpd	%xmm0, %xmm3
	addpd	%xmm0, %xmm2
	movups	%xmm4, 384+a(%rip)
	addpd	%xmm0, %xmm1
	addpd	448+b(%rip), %xmm0
	movups	%xmm3, 464+a(%rip)
	movups	%xmm2, 480+a(%rip)
	movups	%xmm0, 448+a(%rip)
	movups	%xmm1, 496+a(%rip)
	addq	$40, %rsp
	ret
	.seh_endproc
	.globl	b
	.bss
	.align 32
b:
	.space 512
	.globl	a
	.align 32
a:
	.space 512
	.section .rdata,"dr"
	.align 8
.LC1:
	.long	0
	.long	1074003968
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev7, Built by MSYS2 project) 15.1.0"
