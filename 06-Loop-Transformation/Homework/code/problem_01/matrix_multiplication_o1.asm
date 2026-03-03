	.file	"matrix_multiplication.c"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	call	__main
	leaq	a(%rip), %rbx
	leaq	c(%rip), %rdi
	leaq	256(%rbx), %r12
	leaq	b(%rip), %rbp
	leaq	288(%rbp), %rsi
.L2:
	leaq	256(%rbp), %r9
	movq	%rdi, %r10
.L4:
	movq	%r10, %r11
	leaq	-256(%r9), %rax
	movq	%rbx, %rcx
	movl	$0, %r8d
	.p2align 5
.L3:
	movl	(%rcx), %edx
	imull	(%rax), %edx
	addl	%edx, %r8d
	addq	$4, %rcx
	addq	$32, %rax
	cmpq	%r9, %rax
	jne	.L3
	movl	%r8d, (%r11)
	addq	$4, %r10
	addq	$4, %r9
	cmpq	%rsi, %r9
	jne	.L4
	addq	$32, %rbx
	addq	$32, %rdi
	cmpq	%r12, %rbx
	jne	.L2
	movl	$0, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
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
