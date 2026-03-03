	.file	"matrix_multiplication.c"
	.text
	.globl	a
	.bss
	.align 32
a:
	.space 256
	.globl	b
	.align 32
b:
	.space 256
	.globl	c
	.align 32
c:
	.space 256
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
	movl	$0, -4(%rbp)
	jmp	.L2
.L7:
	movl	$0, -8(%rbp)
	jmp	.L3
.L6:
	movl	-8(%rbp), %eax
	cltq
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	c(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	$0, -12(%rbp)
	jmp	.L4
.L5:
	movl	-8(%rbp), %eax
	cltq
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	c(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-12(%rbp), %eax
	cltq
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	a(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-8(%rbp), %eax
	cltq
	movl	-12(%rbp), %r8d
	movslq	%r8d, %r8
	salq	$3, %r8
	addq	%r8, %rax
	leaq	0(,%rax,4), %r8
	leaq	b(%rip), %rax
	movl	(%r8,%rax), %eax
	imull	%edx, %eax
	addl	%eax, %ecx
	movl	-8(%rbp), %eax
	cltq
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	c(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	addl	$1, -12(%rbp)
.L4:
	cmpl	$7, -12(%rbp)
	jle	.L5
	addl	$1, -8(%rbp)
.L3:
	cmpl	$7, -8(%rbp)
	jle	.L6
	addl	$1, -4(%rbp)
.L2:
	cmpl	$7, -4(%rbp)
	jle	.L7
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev7, Built by MSYS2 project) 15.1.0"
