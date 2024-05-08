	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"hi.ll"
	.def	 main;
	.scl	2;
	.type	32;
	.endef
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
main:                                   # @main
.seh_proc main
# %bb.0:                                # %entry
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	.Lstr1(%rip), %rcx
	callq	puts
	movb	$65, %cl
	callq	putchar
	movb	$66, %cl
	callq	putchar
	xorl	%eax, %eax
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.section	.rdata,"dr"
.Lstr1:                                 # @str1
	.asciz	"greetings world"

.Lstr2:                                 # @str2
	.asciz	"goodbye world"

