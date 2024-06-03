	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"std.ll"
	.def	 fact;
	.scl	2;
	.type	32;
	.endef
	.globl	fact                            # -- Begin function fact
	.p2align	4, 0x90
fact:                                   # @fact
.seh_proc fact
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	cmpl	$1, %ecx
	jne	.LBB0_3
# %bb.1:                                # %bQPBGJomYp6iKKTPhAxPJHNZKvbNAb
	movl	$1, %eax
	jmp	.LBB0_2
.LBB0_3:                                # %r8gRJqOR3lS7Ktx4N8M3iOK1NgPt4T
	movl	%ecx, %esi
	leal	-1(%rsi), %ecx
	callq	fact
	imull	%esi, %eax
.LBB0_2:                                # %bQPBGJomYp6iKKTPhAxPJHNZKvbNAb
	addq	$32, %rsp
	popq	%rsi
	retq
	.seh_endproc
                                        # -- End function
	.def	 strcat;
	.scl	2;
	.type	32;
	.endef
	.globl	strcat                          # -- Begin function strcat
	.p2align	4, 0x90
strcat:                                 # @strcat
.seh_proc strcat
# %bb.0:
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$24, %rsp
	.seh_stackalloc 24
	leaq	16(%rsp), %rbp
	.seh_setframe %rbp, 16
	.seh_endprologue
	movq	%rdx, %r13
	movq	%rcx, %r12
	movb	$1, 7(%rbp)
	movl	$0, (%rbp)
	jmp	.LBB1_1
	.p2align	4, 0x90
.LBB1_3:                                # %P4JdW3oqsYtQhqN0hA1Qyhb5WZQNeE
                                        #   in Loop: Header=BB1_1 Depth=1
	incl	(%rbp)
	cmpb	$0, 7(%rbp)
	je	.LBB1_5
.LBB1_1:                                # %k6By8bx6wd44E1rgeyEFpDcIuNDI9w
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rbp), %rax
	cmpb	$0, (%r12,%rax)
	jne	.LBB1_3
# %bb.2:                                # %YSTnxRwmp4Nj39QQGPbmW6hOZbldmC
                                        #   in Loop: Header=BB1_1 Depth=1
	movb	$0, 7(%rbp)
	cmpb	$0, 7(%rbp)
	jne	.LBB1_1
.LBB1_5:                                # %Vi8lUWtNBW04Pfur6jr5N8EgBXuUPm
	movl	(%rbp), %eax
	movl	%eax, -4(%rbp)
	movb	$1, 7(%rbp)
	movl	$0, (%rbp)
	jmp	.LBB1_6
	.p2align	4, 0x90
.LBB1_8:                                # %kw3aty5K8o8etPlTvGjz9eRvZX6nHM
                                        #   in Loop: Header=BB1_6 Depth=1
	incl	(%rbp)
	cmpb	$0, 7(%rbp)
	je	.LBB1_10
.LBB1_6:                                # %QRm0s6Oj1AvSMRQFmGodqxPO7RzHGG
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rbp), %rax
	cmpb	$0, (%r13,%rax)
	jne	.LBB1_8
# %bb.7:                                # %pEF7LxtoDZrxjzzl1SamKGR6hZRuop
                                        #   in Loop: Header=BB1_6 Depth=1
	movb	$0, 7(%rbp)
	cmpb	$0, 7(%rbp)
	jne	.LBB1_6
.LBB1_10:                               # %Yrop8z1bxN51qMjukww3A80CVpalDp
	movl	(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	$16, %eax
	callq	__chkstk
	subq	%rax, %rsp
	movq	%rsp, %r14
	movl	$16, %eax
	callq	__chkstk
	subq	%rax, %rsp
	movq	%rsp, %rdi
	movl	$16, %eax
	callq	__chkstk
	subq	%rax, %rsp
	movq	%rsp, %rbx
	movl	$16, %eax
	callq	__chkstk
	subq	%rax, %rsp
	movq	%rsp, %rsi
	movl	$16, %eax
	callq	__chkstk
	subq	%rax, %rsp
	movq	%rsp, %r15
	movl	$0, (%rdi)
	movl	$0, (%rbx)
	movb	$1, (%rsi)
	movb	$1, (%r15)
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %ecx
	leal	1(%rcx,%rax), %ecx
	subq	$32, %rsp
	callq	malloc
	addq	$32, %rsp
	movq	%rax, (%r14)
	jmp	.LBB1_11
	.p2align	4, 0x90
.LBB1_13:                               # %KdWKoNAeDztzDJgiwv5BqlKucEboXK
                                        #   in Loop: Header=BB1_11 Depth=1
	movslq	(%rdi), %rax
	movzbl	(%r12,%rax), %ecx
	movq	(%r14), %rdx
	movb	%cl, (%rdx,%rax)
	incl	(%rdi)
	cmpb	$0, (%rsi)
	je	.LBB1_15
.LBB1_11:                               # %vqwUrAYtHSbsbzRv1E65z8U1ypCrjr
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rdi), %rax
	cmpb	$0, (%r12,%rax)
	jne	.LBB1_13
# %bb.12:                               # %s6LhFrHrD3aKsot9Ll03sS8eNHMkRG
                                        #   in Loop: Header=BB1_11 Depth=1
	movb	$0, (%rsi)
	cmpb	$0, (%rsi)
	jne	.LBB1_11
	jmp	.LBB1_15
	.p2align	4, 0x90
.LBB1_17:                               # %t2kurr9H9E0qoLKRLFg4O7eGNz802d
                                        #   in Loop: Header=BB1_15 Depth=1
	movslq	(%rbx), %rax
	movzbl	(%r13,%rax), %ecx
	movq	(%r14), %rdx
	movl	-4(%rbp), %edi
	addl	%eax, %edi
	movslq	%edi, %rax
	movb	%cl, (%rdx,%rax)
	incl	(%rbx)
	cmpb	$0, (%r15)
	je	.LBB1_18
.LBB1_15:                               # %a0UqEYtMn3KEuW935Vwk1Fv80hxaa0
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rbx), %rax
	cmpb	$0, (%r13,%rax)
	jne	.LBB1_17
# %bb.16:                               # %xPQDab6NLt49aIwa6BUvOaKNTQhhjn
                                        #   in Loop: Header=BB1_15 Depth=1
	movb	$0, (%r15)
	jmp	.LBB1_17
.LBB1_18:                               # %aitSUUT4lm2xPtI1YWXzGwnPvErSZo
	movq	(%r14), %rax
	leaq	8(%rbp), %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.seh_endproc
                                        # -- End function
