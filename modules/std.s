	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"std.ll"
	.def	 factorial32;
	.scl	2;
	.type	32;
	.endef
	.globl	factorial32                     # -- Begin function factorial32
	.p2align	4, 0x90
factorial32:                            # @factorial32
# %bb.0:
                                        # kill: def $ecx killed $ecx def $rcx
	cmpl	$1, %ecx
	jne	.LBB0_2
# %bb.1:                                # %Jjv0Lz375q3Fr8FFBD6ZM72bKZhBpZ
	movl	$1, %eax
	retq
.LBB0_2:                                # %gmSwIEVbiEthKqz1DjjPoJj2lCBIkZ
	leal	-1(%rcx), %eax
	imull	%eax, %ecx
	movl	%ecx, %eax
	retq
                                        # -- End function
	.def	 factorial64;
	.scl	2;
	.type	32;
	.endef
	.globl	factorial64                     # -- Begin function factorial64
	.p2align	4, 0x90
factorial64:                            # @factorial64
# %bb.0:
	cmpq	$1, %rcx
	jne	.LBB1_2
# %bb.1:                                # %F8p2mmGiI8YrBk9i69ag4oRkZTJDBH
	movl	$1, %eax
	retq
.LBB1_2:                                # %mVsc4eH5fPQIGC0JewY6410mBP6vrX
	leaq	-1(%rcx), %rax
	imulq	%rcx, %rax
	retq
                                        # -- End function
	.def	 itoc32;
	.scl	2;
	.type	32;
	.endef
	.globl	itoc32                          # -- Begin function itoc32
	.p2align	4, 0x90
itoc32:                                 # @itoc32
.seh_proc itoc32
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	testl	%ecx, %ecx
	je	.LBB2_1
# %bb.2:                                # %HAJt4vfWvnb8t5k9me8eeRjec9QZyx
	cmpl	$1, %ecx
	je	.LBB2_3
.LBB2_4:                                # %u2feALl8IUK0Er4MGwnWYke7AW1yWt
	cmpl	$2, %ecx
	je	.LBB2_5
.LBB2_6:                                # %Jqd8r9ATvKhzboQzu0nrLsCUqK5pBM
	cmpl	$3, %ecx
	je	.LBB2_7
.LBB2_8:                                # %rDXdWoFpqlopMjjR2JN4oOtUirU4bc
	cmpl	$4, %ecx
	je	.LBB2_9
.LBB2_10:                               # %Dy0idC6ijygAcrP7gybsBqO7P3Ohi9
	cmpl	$5, %ecx
	je	.LBB2_11
.LBB2_12:                               # %vIq3od0EZFZqw4jmlyGxqfmgB5m74l
	cmpl	$6, %ecx
	je	.LBB2_13
.LBB2_14:                               # %X4Rid1qj8QQMYFkBwFpfqqWGR3phoR
	cmpl	$7, %ecx
	je	.LBB2_15
.LBB2_16:                               # %AAIw6pTet9KpbhS2IoPDoxgdQx0CWO
	cmpl	$8, %ecx
	je	.LBB2_17
.LBB2_18:                               # %VedXJy6wtKriKXbIJGL8d4EFiDOaDd
	cmpl	$9, %ecx
	jne	.LBB2_20
.LBB2_19:                               # %xqrPnLbu4eN6feh1JaOFkI8xkDTEbj
	movb	$57, 7(%rsp)
.LBB2_20:                               # %ksOG34QFDigOkJecbX2divV9zCtFWy
	movb	7(%rsp), %al
	popq	%rcx
	retq
.LBB2_1:                                # %OXzZwTyqsBrjICJVRETI0t3cxrEPhh
	movb	$48, 7(%rsp)
	cmpl	$1, %ecx
	jne	.LBB2_4
.LBB2_3:                                # %Ajx0QKh05fwFzV669dZhqwaazeh7fY
	movb	$49, 7(%rsp)
	cmpl	$2, %ecx
	jne	.LBB2_6
.LBB2_5:                                # %KskqYp1iUMFR8L8rIdQQHAmePDUlEe
	movb	$50, 7(%rsp)
	cmpl	$3, %ecx
	jne	.LBB2_8
.LBB2_7:                                # %jQxHUcHCAvFfsMdVefxYaTjCPjT0ia
	movb	$51, 7(%rsp)
	cmpl	$4, %ecx
	jne	.LBB2_10
.LBB2_9:                                # %IoHie5EnIVoQezIys6LqH4Ibi0gXEi
	movb	$52, 7(%rsp)
	cmpl	$5, %ecx
	jne	.LBB2_12
.LBB2_11:                               # %UHjLTjGWe41SN6tYqOlZjMWr9byquq
	movb	$53, 7(%rsp)
	cmpl	$6, %ecx
	jne	.LBB2_14
.LBB2_13:                               # %a6hU72Zq8o6WfrMYmDb8doOQNaBdVC
	movb	$54, 7(%rsp)
	cmpl	$7, %ecx
	jne	.LBB2_16
.LBB2_15:                               # %uXXyx3w9dl5jExM5a4Zw0m0Y1BLw8z
	movb	$55, 7(%rsp)
	cmpl	$8, %ecx
	jne	.LBB2_18
.LBB2_17:                               # %noOnSrdpBsaTC4mTsfATpJp7bnrVh2
	movb	$56, 7(%rsp)
	cmpl	$9, %ecx
	je	.LBB2_19
	jmp	.LBB2_20
	.seh_endproc
                                        # -- End function
	.def	 itostr32;
	.scl	2;
	.type	32;
	.endef
	.globl	itostr32                        # -- Begin function itostr32
	.p2align	4, 0x90
itostr32:                               # @itostr32
.seh_proc itostr32
# %bb.0:
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	leaq	32(%rsp), %rbp
	.seh_setframe %rbp, 32
	.seh_endprologue
	movl	%ecx, %r14d
	movl	%ecx, -12(%rbp)
	movl	$0, -8(%rbp)
	movb	$1, -1(%rbp)
	jmp	.LBB3_1
	.p2align	4, 0x90
.LBB3_3:                                # %BExcnLLOh3R2gHwwh7sXbAGG2tSdqe
                                        #   in Loop: Header=BB3_1 Depth=1
	movslq	-12(%rbp), %rax
	imulq	$1717986919, %rax, %rax         # imm = 0x66666667
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$34, %rax
	addl	%ecx, %eax
	movl	%eax, -12(%rbp)
	incl	-8(%rbp)
	cmpb	$0, -1(%rbp)
	je	.LBB3_5
.LBB3_1:                                # %Bc3apTVB0gWpsDceyyrNdfrcYYCbt3
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -12(%rbp)
	jne	.LBB3_3
# %bb.2:                                # %wdQfC7nihDsonc5CcSREuu7dJNu6sp
                                        #   in Loop: Header=BB3_1 Depth=1
	movb	$0, -1(%rbp)
	cmpb	$0, -1(%rbp)
	jne	.LBB3_1
.LBB3_5:                                # %oCexAZqPaPUbIrhQxWWigcHSLbMIVS
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
	movl	-8(%rbp), %ecx
	incl	%ecx
	subq	$32, %rsp
	callq	malloc
	addq	$32, %rsp
	movq	%rax, -24(%rbp)
	movb	$1, (%rbx)
	movl	%r14d, (%rdi)
	movl	-8(%rbp), %eax
	decl	%eax
	movl	%eax, (%rsi)
	jmp	.LBB3_6
	.p2align	4, 0x90
.LBB3_8:                                # %dX1t6btnpE3vM51GIk7cEq7DUmmGV4
                                        #   in Loop: Header=BB3_6 Depth=1
	movslq	(%rdi), %rcx
	imulq	$1717986919, %rcx, %rax         # imm = 0x66666667
	movq	%rax, %rdx
	shrq	$63, %rdx
	sarq	$34, %rax
	addl	%edx, %eax
	addl	%eax, %eax
	leal	(%rax,%rax,4), %eax
	subl	%eax, %ecx
	subq	$32, %rsp
                                        # kill: def $ecx killed $ecx killed $rcx
	callq	itoc32
	addq	$32, %rsp
	movq	-24(%rbp), %rcx
	movslq	(%rsi), %rdx
	movb	%al, (%rcx,%rdx)
	movslq	(%rdi), %rax
	imulq	$1717986919, %rax, %rax         # imm = 0x66666667
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$34, %rax
	addl	%ecx, %eax
	movl	%eax, (%rdi)
	decl	(%rsi)
	cmpb	$0, (%rbx)
	je	.LBB3_10
.LBB3_6:                                # %qVFxSkJbACrggamzkESmwt8viQ4uUf
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rdi)
	jne	.LBB3_8
# %bb.7:                                # %I2VGzFYEsVBKEh6XcOQQrIPxCiE5c4
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-24(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	movb	$0, (%rbx)
	cmpb	$0, (%rbx)
	jne	.LBB3_6
.LBB3_10:                               # %XYP67J8xzWnvbOlDNlbtRKOj19eLE5
	movq	-24(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%rbp
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
	jmp	.LBB4_1
	.p2align	4, 0x90
.LBB4_3:                                # %noRGoKkUXhocrzBle8Hpzzt4Q9zL3O
                                        #   in Loop: Header=BB4_1 Depth=1
	incl	(%rbp)
	cmpb	$0, 7(%rbp)
	je	.LBB4_5
.LBB4_1:                                # %ODIpDUtfi4hqiW8dXCYKOMLNFVEUgc
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rbp), %rax
	cmpb	$0, (%r12,%rax)
	jne	.LBB4_3
# %bb.2:                                # %WJGJmcKM0MaSvkqhU5tUHN0WsZ40JS
                                        #   in Loop: Header=BB4_1 Depth=1
	movb	$0, 7(%rbp)
	cmpb	$0, 7(%rbp)
	jne	.LBB4_1
.LBB4_5:                                # %qBNOrr6cyptezQ5tjukdCYKRhOD6Ku
	movl	(%rbp), %eax
	movl	%eax, -4(%rbp)
	movb	$1, 7(%rbp)
	movl	$0, (%rbp)
	jmp	.LBB4_6
	.p2align	4, 0x90
.LBB4_8:                                # %Cch1uEucvGUA7EgCgQ0sdiUOeI2p0h
                                        #   in Loop: Header=BB4_6 Depth=1
	incl	(%rbp)
	cmpb	$0, 7(%rbp)
	je	.LBB4_10
.LBB4_6:                                # %pXh9S7Ws8cH3xVrYnx3O0zSg66YI4r
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rbp), %rax
	cmpb	$0, (%r13,%rax)
	jne	.LBB4_8
# %bb.7:                                # %V5CiFHPAvF9SJ0sMs7SyA4cBgkijlS
                                        #   in Loop: Header=BB4_6 Depth=1
	movb	$0, 7(%rbp)
	cmpb	$0, 7(%rbp)
	jne	.LBB4_6
.LBB4_10:                               # %aYgHEEcn1GRRLbB6wpqnnuGqEkccrW
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
	jmp	.LBB4_11
	.p2align	4, 0x90
.LBB4_13:                               # %fPWZNKICHL9OIPzSUlFDWZY5R4vxqU
                                        #   in Loop: Header=BB4_11 Depth=1
	movslq	(%rdi), %rax
	movzbl	(%r12,%rax), %ecx
	movq	(%r14), %rdx
	movb	%cl, (%rdx,%rax)
	incl	(%rdi)
	cmpb	$0, (%rsi)
	je	.LBB4_15
.LBB4_11:                               # %h5GpZ7MiCvV37bjCfuEPXkyJnPUM0e
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rdi), %rax
	cmpb	$0, (%r12,%rax)
	jne	.LBB4_13
# %bb.12:                               # %Fw4IwPryuHYjPA4jnigfX23Gu3eZGu
                                        #   in Loop: Header=BB4_11 Depth=1
	movb	$0, (%rsi)
	cmpb	$0, (%rsi)
	jne	.LBB4_11
	jmp	.LBB4_15
	.p2align	4, 0x90
.LBB4_17:                               # %aengxSOc4iFK6JFy0fbbSTnrzxbXFp
                                        #   in Loop: Header=BB4_15 Depth=1
	movslq	(%rbx), %rax
	movzbl	(%r13,%rax), %ecx
	movq	(%r14), %rdx
	movl	-4(%rbp), %edi
	addl	%eax, %edi
	movslq	%edi, %rax
	movb	%cl, (%rdx,%rax)
	incl	(%rbx)
	cmpb	$0, (%r15)
	je	.LBB4_18
.LBB4_15:                               # %VsRWak9TpX1gXZQMp6lauOLPwvmJkb
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rbx), %rax
	cmpb	$0, (%r13,%rax)
	jne	.LBB4_17
# %bb.16:                               # %ycc5DUbDYIx4Zd73ug1Ka0mJT1pQy8
                                        #   in Loop: Header=BB4_15 Depth=1
	movb	$0, (%r15)
	jmp	.LBB4_17
.LBB4_18:                               # %zPxqJQpdVvES04H0iDu10Rbdygs5Ro
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
