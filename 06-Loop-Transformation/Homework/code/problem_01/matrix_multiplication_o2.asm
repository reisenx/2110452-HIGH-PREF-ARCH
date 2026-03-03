	.file	"matrix_multiplication.c"
	.text
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	call	__main
	leaq	a(%rip), %r9
	leaq	c(%rip), %r10
	leaq	256(%r9), %rbx
	leaq	256+b(%rip), %r11
	.p2align 4
	.p2align 3
.L2:
	movq	%r11, %rcx
	xorl	%r8d, %r8d
.L4:
	leaq	-256(%rcx), %rax
	movq	%r9, %rdx
	pxor	%xmm3, %xmm3
	.p2align 4
	.p2align 3
.L3:
	movd	(%rdx), %xmm4
	movdqu	(%rax), %xmm2
	addq	$32, %rax
	addq	$4, %rdx
	pshufd	$0, %xmm4, %xmm0
	psrlq	$32, %xmm2
	movdqa	%xmm0, %xmm1
	pmuludq	-32(%rax), %xmm1
	psrlq	$32, %xmm0
	pshufd	$8, %xmm1, %xmm1
	pmuludq	%xmm2, %xmm0
	pshufd	$8, %xmm0, %xmm0
	punpckldq	%xmm0, %xmm1
	paddd	%xmm1, %xmm3
	cmpq	%rcx, %rax
	jne	.L3
	movups	%xmm3, (%r10,%r8)
	leaq	16(%rax), %rcx
	cmpq	$16, %r8
	jne	.L6
	addq	$32, %r9
	addq	$32, %r10
	cmpq	%rbx, %r9
	jne	.L2
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	movl	$16, %r8d
	jmp	.L4
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
