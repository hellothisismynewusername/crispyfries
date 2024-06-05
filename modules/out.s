	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"out.ll"
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
# %bb.1:                                # %YO2LwYAfSWumCzQ5aTGYu3be4x1nMk
	movl	$1, %eax
	retq
.LBB0_2:                                # %Fq1YMJ2Tg1yJtP9jW23yZ33SfygvRH
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
# %bb.1:                                # %ig6I2ghy8FIKbvzSNbjdg3e3c55nxz
	movl	$1, %eax
	retq
.LBB1_2:                                # %Pz4kXIx6nTNoGsD12KIvrLFUEjjVYa
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
# %bb.2:                                # %TRkNHXsGuC2TeBK6ccEtGT5QBK7oLa
	cmpl	$1, %ecx
	je	.LBB2_3
.LBB2_4:                                # %NQD0W6YQ4L6z5DVRsZwX0HB4JquGEP
	cmpl	$2, %ecx
	je	.LBB2_5
.LBB2_6:                                # %be3C5igrmQpM3Q0cOnr8PwLR2xNG7R
	cmpl	$3, %ecx
	je	.LBB2_7
.LBB2_8:                                # %k0nfcPhENHuiMyJbgmWYfUxzAA5QHp
	cmpl	$4, %ecx
	je	.LBB2_9
.LBB2_10:                               # %cl2n0KHWUnediusQffbqV8EUEk5TQf
	cmpl	$5, %ecx
	je	.LBB2_11
.LBB2_12:                               # %SLQbBgP2ndhIFDnJFSnjWjfI6Zkcng
	cmpl	$6, %ecx
	je	.LBB2_13
.LBB2_14:                               # %P8Y8JDUErgOucv4BAQ6r26AYeEb7wV
	cmpl	$7, %ecx
	je	.LBB2_15
.LBB2_16:                               # %Ik4O9Xwah9I4yn8qyn6oJgq7tz0Lqv
	cmpl	$8, %ecx
	je	.LBB2_17
.LBB2_18:                               # %IOlyUjH9ZH3BB8jZWp84312pbDtgor
	cmpl	$9, %ecx
	jne	.LBB2_20
.LBB2_19:                               # %rokvoat22EirMH21RIfMQj3ZQr0BpT
	movb	$57, 7(%rsp)
.LBB2_20:                               # %agclwJmPmL6ODHYjaN1NeFYfzfVlUo
	movb	7(%rsp), %al
	popq	%rcx
	retq
.LBB2_1:                                # %jzQflktNbnhmogGsaKv8hrmHjbSyFM
	movb	$48, 7(%rsp)
	cmpl	$1, %ecx
	jne	.LBB2_4
.LBB2_3:                                # %a80UDfM3eFgx36JvVvaNn0cQOR6asd
	movb	$49, 7(%rsp)
	cmpl	$2, %ecx
	jne	.LBB2_6
.LBB2_5:                                # %LQU6GN2i20yQ7iia32iRDx33KDZY6F
	movb	$50, 7(%rsp)
	cmpl	$3, %ecx
	jne	.LBB2_8
.LBB2_7:                                # %aIF2MeUraAT1BmLCzMGceIc8oRxGry
	movb	$51, 7(%rsp)
	cmpl	$4, %ecx
	jne	.LBB2_10
.LBB2_9:                                # %aMnVyx3Lpnel75F2W59nOf3q2YMFpc
	movb	$52, 7(%rsp)
	cmpl	$5, %ecx
	jne	.LBB2_12
.LBB2_11:                               # %jMYcL9NhAXs8XFSdSr50qdaUfmhzjF
	movb	$53, 7(%rsp)
	cmpl	$6, %ecx
	jne	.LBB2_14
.LBB2_13:                               # %aNUbKbSf7RRCngbMmpsjgGR18rkSSU
	movb	$54, 7(%rsp)
	cmpl	$7, %ecx
	jne	.LBB2_16
.LBB2_15:                               # %IqcwYoomkKyYnHOX52NYFgG96EN4OY
	movb	$55, 7(%rsp)
	cmpl	$8, %ecx
	jne	.LBB2_18
.LBB2_17:                               # %UE5gHfEr5vf9CcEt7exiO8rpcWLpdz
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
.LBB3_3:                                # %uF97z8BoCQ5EwpPFJopHJDE0GDuSc1
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
.LBB3_1:                                # %aSiWxuH6LpPrLo96KPAlKEe0vfUnva
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -12(%rbp)
	jne	.LBB3_3
# %bb.2:                                # %FJiDeILoewSIC8qvo3IjAuk39dAI5y
                                        #   in Loop: Header=BB3_1 Depth=1
	movb	$0, -1(%rbp)
	cmpb	$0, -1(%rbp)
	jne	.LBB3_1
.LBB3_5:                                # %o0qHhYbrLbn44Nq1K1G8aTQMcs3mfm
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
	movl	-8(%rbp), %eax
	incl	%eax
	movslq	%eax, %rcx
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
.LBB3_8:                                # %YRkoOnwuFj5P3b5960a7LuiN9vMhrd
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
.LBB3_6:                                # %e24CT2nBWJIxuxMg9FKLlb2TyXmOti
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rdi)
	jne	.LBB3_8
# %bb.7:                                # %ZKZ8OjS12YQosYTPIxJPI99wc02XHf
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-24(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	movb	$0, (%rbx)
	cmpb	$0, (%rbx)
	jne	.LBB3_6
.LBB3_10:                               # %qvMmQfhRAX0DHm6FuItDJYlyUdywQn
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
	.def	 strlen32;
	.scl	2;
	.type	32;
	.endef
	.globl	strlen32                        # -- Begin function strlen32
	.p2align	4, 0x90
strlen32:                               # @strlen32
.seh_proc strlen32
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movb	$1, 3(%rsp)
	movl	$0, 4(%rsp)
	jmp	.LBB4_1
	.p2align	4, 0x90
.LBB4_3:                                # %KiBv18Ch68sUUtmyIbKC2wCZPPKBEU
                                        #   in Loop: Header=BB4_1 Depth=1
	incl	4(%rsp)
	cmpb	$0, 3(%rsp)
	je	.LBB4_5
.LBB4_1:                                # %ejRgk28SWCeTKcHPQtrau9uavaEYhF
                                        # =>This Inner Loop Header: Depth=1
	movslq	4(%rsp), %rax
	cmpb	$0, (%rcx,%rax)
	jne	.LBB4_3
# %bb.2:                                # %ZhMxfylJkVT8HFRxyugVpCk53cEp3u
                                        #   in Loop: Header=BB4_1 Depth=1
	movb	$0, 3(%rsp)
	cmpb	$0, 3(%rsp)
	jne	.LBB4_1
.LBB4_5:                                # %VKpK5iiTeoAvrugfzlKmZ4I0NcmfNi
	movl	4(%rsp), %eax
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	 strlen64;
	.scl	2;
	.type	32;
	.endef
	.globl	strlen64                        # -- Begin function strlen64
	.p2align	4, 0x90
strlen64:                               # @strlen64
.seh_proc strlen64
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movb	$1, 7(%rsp)
	movq	$0, 8(%rsp)
	jmp	.LBB5_1
	.p2align	4, 0x90
.LBB5_3:                                # %aspl4mwKOH2iNZGpvBvXuOubLs9q5Z
                                        #   in Loop: Header=BB5_1 Depth=1
	incq	8(%rsp)
	cmpb	$0, 7(%rsp)
	je	.LBB5_5
.LBB5_1:                                # %uvbWmUEVlW57AAn2bNCna7InEI4ItZ
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rax
	cmpb	$0, (%rcx,%rax)
	jne	.LBB5_3
# %bb.2:                                # %bX62APjaAQGc5SACwf58fvy2DgoWWT
                                        #   in Loop: Header=BB5_1 Depth=1
	movb	$0, 7(%rsp)
	cmpb	$0, 7(%rsp)
	jne	.LBB5_1
.LBB5_5:                                # %aFzDN4oFEgqNiCKCwAxRNvetLeIeOb
	movq	8(%rsp), %rax
	addq	$16, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	 strdup;
	.scl	2;
	.type	32;
	.endef
	.globl	strdup                          # -- Begin function strdup
	.p2align	4, 0x90
strdup:                                 # @strdup
.seh_proc strdup
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$64, %rsp
	.seh_stackalloc 64
	.seh_endprologue
	movq	%rcx, %rsi
	callq	strlen64
	incq	%rax
	movq	%rax, 56(%rsp)
	movq	%rax, %rcx
	callq	malloc
	movq	%rax, 48(%rsp)
	movb	$1, 39(%rsp)
	movq	$0, 40(%rsp)
	jmp	.LBB6_1
	.p2align	4, 0x90
.LBB6_3:                                # %BRTdkkuywPrU1PCStXO75lrzdCxH9C
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	40(%rsp), %rax
	movzbl	(%rsi,%rax), %ecx
	movq	48(%rsp), %rdx
	movb	%cl, (%rdx,%rax)
	cmpb	$0, 39(%rsp)
	je	.LBB6_5
.LBB6_1:                                # %zEHnuDvfL05kZInZhyMI66Pw4Z0kby
                                        # =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rax
	cmpq	56(%rsp), %rax
	jne	.LBB6_3
# %bb.2:                                # %otDI8qv60qH8Vcm9841TKq71PyKC7z
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	$0, 39(%rsp)
	cmpb	$0, 39(%rsp)
	jne	.LBB6_1
.LBB6_5:                                # %YYqQQklG0KPjQ4Rnmh85uolYCfHiyD
	movq	48(%rsp), %rax
	addq	$64, %rsp
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
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rdx, %rsi
	movq	%rcx, %rdi
	callq	strlen32
	movl	%eax, 52(%rsp)
	movq	%rsi, %rcx
	callq	strlen32
                                        # kill: def $eax killed $eax def $rax
	movl	%eax, 68(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 44(%rsp)
	movb	$1, 43(%rsp)
	movb	$1, 42(%rsp)
	movl	52(%rsp), %ecx
	leal	1(%rax,%rcx), %eax
	movslq	%eax, %rcx
	callq	malloc
	movq	%rax, 56(%rsp)
	jmp	.LBB7_1
	.p2align	4, 0x90
.LBB7_3:                                # %aKC3pFwtTuWP4io7mzjw47jzGXRLYu
                                        #   in Loop: Header=BB7_1 Depth=1
	movslq	48(%rsp), %rax
	movzbl	(%rdi,%rax), %ecx
	movq	56(%rsp), %rdx
	movb	%cl, (%rdx,%rax)
	incl	48(%rsp)
	cmpb	$0, 43(%rsp)
	je	.LBB7_5
.LBB7_1:                                # %mL1AfnY0y2NbVxu28WQPpKc3hYNEO7
                                        # =>This Inner Loop Header: Depth=1
	movslq	48(%rsp), %rax
	cmpb	$0, (%rdi,%rax)
	jne	.LBB7_3
# %bb.2:                                # %pfKgtJP3ztobjLzTQBSbKXNk5JyDvS
                                        #   in Loop: Header=BB7_1 Depth=1
	movb	$0, 43(%rsp)
	cmpb	$0, 43(%rsp)
	jne	.LBB7_1
	jmp	.LBB7_5
	.p2align	4, 0x90
.LBB7_7:                                # %Z6X0eCLuKOC2LWjTN5LR2OwRgNgiq8
                                        #   in Loop: Header=BB7_5 Depth=1
	movslq	44(%rsp), %rax
	movzbl	(%rsi,%rax), %ecx
	movq	56(%rsp), %rdx
	movl	52(%rsp), %edi
	addl	%eax, %edi
	movslq	%edi, %rax
	movb	%cl, (%rdx,%rax)
	incl	44(%rsp)
	cmpb	$0, 42(%rsp)
	je	.LBB7_8
.LBB7_5:                                # %aN7KDKA3nSKsq3esHIZubiDxnHOPyk
                                        # =>This Inner Loop Header: Depth=1
	movslq	44(%rsp), %rax
	cmpb	$0, (%rsi,%rax)
	jne	.LBB7_7
# %bb.6:                                # %pVASffJxJubr4zLlRoxQm7GNXAMBtx
                                        #   in Loop: Header=BB7_5 Depth=1
	movb	$0, 42(%rsp)
	jmp	.LBB7_7
.LBB7_8:                                # %Mq5iOv2KW4waxxhjX9oyVNgyZxFFvL
	movq	56(%rsp), %rax
	addq	$72, %rsp
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc
                                        # -- End function
