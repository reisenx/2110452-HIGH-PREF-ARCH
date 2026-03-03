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
	leaq	b(%rip), %rdx
	movddup	.LC1(%rip), %xmm1
	leaq	a(%rip), %rcx
	leaq	512(%rdx), %r8
	.p2align 4
	.p2align 3
.L2:
	xorl	%eax, %eax
.L3:
	movupd	(%rdx,%rax), %xmm0
	addpd	%xmm1, %xmm0
	movups	%xmm0, (%rcx,%rax)
	addq	$16, %rax
	cmpq	$64, %rax
	jne	.L3
	addq	$64, %rdx
	addq	$64, %rcx
	cmpq	%r8, %rdx
	jne	.L2
	xorl	%eax, %eax
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
