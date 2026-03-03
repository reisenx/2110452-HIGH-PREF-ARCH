	.file	"matrix_multiplication.c"
	.text
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	subq	$248, %rsp
	.seh_stackalloc	248
	movups	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	movups	%xmm7, 96(%rsp)
	.seh_savexmm	%xmm7, 96
	movups	%xmm8, 112(%rsp)
	.seh_savexmm	%xmm8, 112
	movups	%xmm9, 128(%rsp)
	.seh_savexmm	%xmm9, 128
	movups	%xmm10, 144(%rsp)
	.seh_savexmm	%xmm10, 144
	movups	%xmm11, 160(%rsp)
	.seh_savexmm	%xmm11, 160
	movups	%xmm12, 176(%rsp)
	.seh_savexmm	%xmm12, 176
	movups	%xmm13, 192(%rsp)
	.seh_savexmm	%xmm13, 192
	movups	%xmm14, 208(%rsp)
	.seh_savexmm	%xmm14, 208
	movups	%xmm15, 224(%rsp)
	.seh_savexmm	%xmm15, 224
	.seh_endprologue
	call	__main
	leaq	a(%rip), %rdx
	leaq	c(%rip), %rcx
	leaq	256(%rdx), %r8
	leaq	b(%rip), %rax
	.p2align 4
	.p2align 3
.L2:
	movd	(%rdx), %xmm3
	movdqu	(%rax), %xmm1
	addq	$32, %rdx
	addq	$32, %rcx
	movd	-28(%rdx), %xmm4
	movd	-24(%rdx), %xmm5
	pshufd	$0, %xmm3, %xmm8
	movdqa	%xmm8, %xmm13
	psrlq	$32, %xmm1
	movdqa	%xmm8, %xmm9
	psrlq	$32, %xmm13
	pshufd	$0, %xmm4, %xmm2
	movdqa	%xmm2, %xmm15
	pmuludq	b(%rip), %xmm9
	pmuludq	%xmm13, %xmm1
	pshufd	$8, %xmm9, %xmm9
	movdqa	%xmm2, %xmm10
	pmuludq	32+b(%rip), %xmm10
	psrlq	$32, %xmm15
	pshufd	$8, %xmm10, %xmm10
	pshufd	$0, %xmm5, %xmm0
	movdqa	%xmm0, %xmm12
	psrlq	$32, %xmm12
	movd	-20(%rdx), %xmm6
	movd	-16(%rdx), %xmm3
	movd	-12(%rdx), %xmm4
	pshufd	$0, %xmm6, %xmm7
	movdqa	%xmm7, %xmm11
	pshufd	$0, %xmm3, %xmm6
	movdqa	%xmm6, %xmm14
	pshufd	$8, %xmm1, %xmm1
	psrlq	$32, %xmm11
	pshufd	$0, %xmm4, %xmm5
	movd	-8(%rdx), %xmm3
	punpckldq	%xmm1, %xmm9
	movdqu	32(%rax), %xmm1
	movups	%xmm11, 32(%rsp)
	psrlq	$32, %xmm14
	movups	%xmm14, 48(%rsp)
	movdqa	%xmm5, %xmm11
	pshufd	$0, %xmm3, %xmm4
	movd	-4(%rdx), %xmm3
	psrlq	$32, %xmm1
	psrlq	$32, %xmm11
	pmuludq	%xmm15, %xmm1
	movups	%xmm11, 64(%rsp)
	pshufd	$0, %xmm3, %xmm3
	movdqa	%xmm3, %xmm14
	pmuludq	224+b(%rip), %xmm14
	pshufd	$8, %xmm14, %xmm14
	pshufd	$8, %xmm1, %xmm1
	punpckldq	%xmm1, %xmm10
	movdqu	64(%rax), %xmm1
	paddd	%xmm10, %xmm9
	movdqa	%xmm0, %xmm10
	pmuludq	64+b(%rip), %xmm10
	pshufd	$8, %xmm10, %xmm10
	psrlq	$32, %xmm1
	pmuludq	%xmm12, %xmm1
	pshufd	$8, %xmm1, %xmm1
	punpckldq	%xmm1, %xmm10
	movdqa	%xmm7, %xmm1
	pmuludq	96+b(%rip), %xmm1
	pshufd	$8, %xmm1, %xmm1
	paddd	%xmm10, %xmm9
	movdqu	96(%rax), %xmm10
	psrlq	$32, %xmm10
	pmuludq	32(%rsp), %xmm10
	pshufd	$8, %xmm10, %xmm10
	punpckldq	%xmm10, %xmm1
	movdqa	%xmm6, %xmm10
	pmuludq	128+b(%rip), %xmm10
	pshufd	$8, %xmm10, %xmm10
	paddd	%xmm9, %xmm1
	movdqu	128(%rax), %xmm9
	psrlq	$32, %xmm9
	pmuludq	48(%rsp), %xmm9
	pshufd	$8, %xmm9, %xmm9
	punpckldq	%xmm9, %xmm10
	movdqu	160(%rax), %xmm9
	paddd	%xmm10, %xmm1
	movdqa	%xmm5, %xmm10
	pmuludq	160+b(%rip), %xmm10
	pshufd	$8, %xmm10, %xmm10
	psrlq	$32, %xmm9
	pmuludq	64(%rsp), %xmm9
	pshufd	$8, %xmm9, %xmm9
	punpckldq	%xmm9, %xmm10
	movdqa	%xmm4, %xmm9
	psrlq	$32, %xmm9
	paddd	%xmm10, %xmm1
	movdqa	%xmm4, %xmm10
	pmuludq	192+b(%rip), %xmm10
	movdqa	%xmm9, %xmm11
	pshufd	$8, %xmm10, %xmm10
	movdqu	192(%rax), %xmm9
	psrlq	$32, %xmm9
	pmuludq	%xmm11, %xmm9
	pshufd	$8, %xmm9, %xmm9
	punpckldq	%xmm9, %xmm10
	movdqu	224(%rax), %xmm9
	paddd	%xmm10, %xmm1
	movdqa	%xmm3, %xmm10
	psrlq	$32, %xmm10
	psrlq	$32, %xmm9
	pmuludq	%xmm10, %xmm9
	pshufd	$8, %xmm9, %xmm9
	punpckldq	%xmm9, %xmm14
	paddd	%xmm14, %xmm1
	movups	%xmm1, -32(%rcx)
	pmuludq	48+b(%rip), %xmm2
	movdqu	48(%rax), %xmm1
	pshufd	$8, %xmm2, %xmm2
	pmuludq	80+b(%rip), %xmm0
	pshufd	$8, %xmm0, %xmm0
	pmuludq	16+b(%rip), %xmm8
	pshufd	$8, %xmm8, %xmm8
	psrlq	$32, %xmm1
	pmuludq	112+b(%rip), %xmm7
	pmuludq	144+b(%rip), %xmm6
	pmuludq	176+b(%rip), %xmm5
	pmuludq	%xmm15, %xmm1
	pmuludq	208+b(%rip), %xmm4
	pmuludq	240+b(%rip), %xmm3
	pshufd	$8, %xmm1, %xmm1
	punpckldq	%xmm1, %xmm2
	movdqu	16(%rax), %xmm1
	psrlq	$32, %xmm1
	pmuludq	%xmm1, %xmm13
	pshufd	$8, %xmm13, %xmm1
	punpckldq	%xmm1, %xmm8
	movdqu	80(%rax), %xmm1
	paddd	%xmm8, %xmm2
	psrlq	$32, %xmm1
	pmuludq	%xmm1, %xmm12
	pshufd	$8, %xmm12, %xmm1
	punpckldq	%xmm1, %xmm0
	movdqu	112(%rax), %xmm1
	paddd	%xmm2, %xmm0
	movdqu	32(%rsp), %xmm2
	psrlq	$32, %xmm1
	pmuludq	%xmm1, %xmm2
	pshufd	$8, %xmm7, %xmm1
	pshufd	$8, %xmm2, %xmm2
	punpckldq	%xmm2, %xmm1
	movdqu	48(%rsp), %xmm2
	paddd	%xmm1, %xmm0
	movdqu	144(%rax), %xmm1
	psrlq	$32, %xmm1
	pmuludq	%xmm1, %xmm2
	pshufd	$8, %xmm6, %xmm1
	pshufd	$8, %xmm2, %xmm2
	punpckldq	%xmm2, %xmm1
	movdqu	64(%rsp), %xmm2
	paddd	%xmm1, %xmm0
	movdqu	176(%rax), %xmm1
	psrlq	$32, %xmm1
	pmuludq	%xmm1, %xmm2
	pshufd	$8, %xmm5, %xmm1
	pshufd	$8, %xmm2, %xmm2
	punpckldq	%xmm2, %xmm1
	paddd	%xmm1, %xmm0
	movdqu	208(%rax), %xmm1
	psrlq	$32, %xmm1
	pmuludq	%xmm1, %xmm11
	pshufd	$8, %xmm4, %xmm1
	pshufd	$8, %xmm11, %xmm2
	punpckldq	%xmm2, %xmm1
	paddd	%xmm1, %xmm0
	movdqu	240(%rax), %xmm1
	psrlq	$32, %xmm1
	pmuludq	%xmm1, %xmm10
	pshufd	$8, %xmm3, %xmm1
	pshufd	$8, %xmm10, %xmm2
	punpckldq	%xmm2, %xmm1
	paddd	%xmm1, %xmm0
	movups	%xmm0, -16(%rcx)
	cmpq	%r8, %rdx
	jne	.L2
	movups	80(%rsp), %xmm6
	movups	96(%rsp), %xmm7
	xorl	%eax, %eax
	movups	128(%rsp), %xmm9
	movups	112(%rsp), %xmm8
	movups	144(%rsp), %xmm10
	movups	160(%rsp), %xmm11
	movups	176(%rsp), %xmm12
	movups	192(%rsp), %xmm13
	movups	208(%rsp), %xmm14
	movups	224(%rsp), %xmm15
	addq	$248, %rsp
	ret
	.seh_endproc
	.globl	c
	.bss
	.align 32
c:
	.space 256
	.globl	b
	.align 32
b:
	.space 256
	.globl	a
	.align 32
a:
	.space 256
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev7, Built by MSYS2 project) 15.1.0"
