	.file	"simple_code.c"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	call	__main
	leaq	b(%rip), %rdx
	leaq	a(%rip), %rcx
	leaq	512(%rdx), %r8
	movsd	.LC0(%rip), %xmm1
.L2:
	movl	$0, %eax
	.p2align 5
.L3:
	movapd	%xmm1, %xmm0
	addsd	(%rdx,%rax), %xmm0
	movsd	%xmm0, (%rcx,%rax)
	addq	$8, %rax
	cmpq	$64, %rax
	jne	.L3
	addq	$64, %rdx
	addq	$64, %rcx
	cmpq	%r8, %rdx
	jne	.L2
	movl	$0, %eax
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
.LC0:
	.long	0
	.long	1074003968
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev7, Built by MSYS2 project) 15.1.0"
