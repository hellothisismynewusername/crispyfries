	.text
	.file	"out.ll"
	.globl	factorial32                     // -- Begin function factorial32
	.p2align	2
	.type	factorial32,@function
factorial32:                            // @factorial32
	.cfi_startproc
// %bb.0:                               // %common.ret
	subs	w8, w0, #1
	mul	w8, w0, w8
	csinc	w0, w8, wzr, ne
	ret
.Lfunc_end0:
	.size	factorial32, .Lfunc_end0-factorial32
	.cfi_endproc
                                        // -- End function
	.globl	factorial64                     // -- Begin function factorial64
	.p2align	2
	.type	factorial64,@function
factorial64:                            // @factorial64
	.cfi_startproc
// %bb.0:                               // %common.ret
	subs	x8, x0, #1
	mul	x8, x0, x8
	csinc	x0, x8, xzr, ne
	ret
.Lfunc_end1:
	.size	factorial64, .Lfunc_end1-factorial64
	.cfi_endproc
                                        // -- End function
	.globl	itoc32                          // -- Begin function itoc32
	.p2align	2
	.type	itoc32,@function
itoc32:                                 // @itoc32
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	cbz	w0, .LBB2_12
// %bb.1:                               // %pufGkOTUraylyJHdo15C7im3p6tJKC
	cmp	w0, #1
	b.eq	.LBB2_13
.LBB2_2:                                // %FJLgefNbiVfUAv8B9UL4pNbyN8MK86
	cmp	w0, #2
	b.eq	.LBB2_14
.LBB2_3:                                // %a1nSABYqyGqg9STC7Du9eHMm3FJKlw
	cmp	w0, #3
	b.eq	.LBB2_15
.LBB2_4:                                // %omfvy0kXWq6NkgRBbAw8iJt1HKoXQh
	cmp	w0, #4
	b.eq	.LBB2_16
.LBB2_5:                                // %nyeseJFjixWOvaKuh2WfomPldZftuY
	cmp	w0, #5
	b.eq	.LBB2_17
.LBB2_6:                                // %ZrljYxgqMHKbjmewAzaSGcu5mc7BlP
	cmp	w0, #6
	b.eq	.LBB2_18
.LBB2_7:                                // %aiPnXlDBtKDHSFPnca0newIBOzEmsN
	cmp	w0, #7
	b.eq	.LBB2_19
.LBB2_8:                                // %pcOuDcUryjKWcZlAhrQqqysw0cs8o7
	cmp	w0, #8
	b.eq	.LBB2_20
.LBB2_9:                                // %aKwbcP0rq07ngskeH1uvsi99fOFtXQ
	cmp	w0, #9
	b.ne	.LBB2_11
.LBB2_10:                               // %ar4bddmsmPL7zRjYV7F4ZWJtPLC8jb
	mov	w8, #57
	strb	w8, [sp, #12]
.LBB2_11:                               // %V4vM6dVF0yRapbpJJiGoJxsoEZ8FD7
	ldrb	w0, [sp, #12]
	add	sp, sp, #16
	ret
.LBB2_12:                               // %ucRHB0PTG8zTPveW0cm1uIfdcbwetq
	mov	w8, #48
	strb	w8, [sp, #12]
	cmp	w0, #1
	b.ne	.LBB2_2
.LBB2_13:                               // %a5F4fS6ExX0InxPbrQvK2RpdR9PNMa
	mov	w8, #49
	strb	w8, [sp, #12]
	cmp	w0, #2
	b.ne	.LBB2_3
.LBB2_14:                               // %fLnVFMVTbMaAIIcVfG9LlQw9boDhgH
	mov	w8, #50
	strb	w8, [sp, #12]
	cmp	w0, #3
	b.ne	.LBB2_4
.LBB2_15:                               // %rJNnjk51wgI8xEmbwZP2OMrKYx0amc
	mov	w8, #51
	strb	w8, [sp, #12]
	cmp	w0, #4
	b.ne	.LBB2_5
.LBB2_16:                               // %bcS2LIK7NyH1d1GizsAOD8Azp81uQ1
	mov	w8, #52
	strb	w8, [sp, #12]
	cmp	w0, #5
	b.ne	.LBB2_6
.LBB2_17:                               // %kJoHfWKdGpIqIMGg96PS7cLc0y6rF9
	mov	w8, #53
	strb	w8, [sp, #12]
	cmp	w0, #6
	b.ne	.LBB2_7
.LBB2_18:                               // %ACvTpYGSVZdnS9B0catZVRMsvc9tF8
	mov	w8, #54
	strb	w8, [sp, #12]
	cmp	w0, #7
	b.ne	.LBB2_8
.LBB2_19:                               // %DD2jffsEDnctDKeOtvbhQnM3V6J15Z
	mov	w8, #55
	strb	w8, [sp, #12]
	cmp	w0, #8
	b.ne	.LBB2_9
.LBB2_20:                               // %gYo23K5t2whtNNWbCgM69ewkeEDAXg
	mov	w8, #56
	strb	w8, [sp, #12]
	cmp	w0, #9
	b.eq	.LBB2_10
	b	.LBB2_11
.Lfunc_end2:
	.size	itoc32, .Lfunc_end2-itoc32
	.cfi_endproc
                                        // -- End function
	.globl	itostr32                        // -- Begin function itostr32
	.p2align	2
	.type	itostr32,@function
itostr32:                               // @itostr32
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-80]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 80
	stp	x26, x25, [sp, #16]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             // 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 80
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -56
	.cfi_offset w26, -64
	.cfi_offset w30, -72
	.cfi_offset w29, -80
	sub	sp, sp, #32
	mov	w8, #26215
	mov	w19, w0
	mov	w9, #1
	movk	w8, #26214, lsl #16
	stp	wzr, w0, [x29, #-8]
	sturb	w9, [x29, #-9]
	b	.LBB3_2
.LBB3_1:                                // %K8fEjhJ2XyiVuvTRBu7LCiJtq7q3PP
                                        //   in Loop: Header=BB3_2 Depth=1
	ldp	w10, w9, [x29, #-8]
                                        // kill: def $w9 killed $w9 def $x9
	sxtw	x9, w9
	smull	x9, w9, w8
	add	w10, w10, #1
	lsr	x11, x9, #63
	asr	x9, x9, #34
	add	w9, w9, w11
	stp	w10, w9, [x29, #-8]
	ldurb	w9, [x29, #-9]
	tbz	w9, #0, .LBB3_4
.LBB3_2:                                // %AQzS9KPuhzWYpc6eF3lQM0UMCaRmOZ
                                        // =>This Inner Loop Header: Depth=1
	ldur	w9, [x29, #-4]
	cbnz	w9, .LBB3_1
// %bb.3:                               // %CDYPLIHVW19w0E6byW9fv8raunw22j
                                        //   in Loop: Header=BB3_2 Depth=1
	sturb	wzr, [x29, #-9]
	ldurb	w9, [x29, #-9]
	tbnz	w9, #0, .LBB3_2
.LBB3_4:                                // %bPsq5A0G9QIiXGUzXDKZNy2EBeDjq8
	mov	x25, sp
	sub	x20, x25, #16
	mov	sp, x20
	mov	x23, sp
	sub	x21, x23, #16
	mov	sp, x21
	mov	x26, sp
	sub	x22, x26, #16
	mov	sp, x22
	ldur	w8, [x29, #-8]
	add	w0, w8, #1
	bl	malloc
	mov	w8, #1
	ldur	w9, [x29, #-8]
	mov	w24, #10
	stur	x0, [x29, #-24]
	stur	w19, [x25, #-16]
	sturb	w8, [x23, #-16]
	mov	w23, #26215
	sub	w8, w9, #1
	movk	w23, #26214, lsl #16
	stur	w8, [x26, #-16]
	b	.LBB3_6
.LBB3_5:                                // %PUCDwIEPDZ5tHDye4qDgDGtHbeewEo
                                        //   in Loop: Header=BB3_6 Depth=1
	ldrsw	x8, [x20]
	smull	x9, w8, w23
	lsr	x10, x9, #63
	asr	x9, x9, #34
	add	w9, w9, w10
	msub	w0, w9, w24, w8
	bl	itoc32
	ldrsw	x8, [x20]
	ldr	w10, [x22]
	ldrsw	x9, [x22]
	smull	x8, w8, w23
	ldur	x12, [x29, #-24]
	sub	w10, w10, #1
	lsr	x11, x8, #63
	asr	x8, x8, #34
	add	w8, w8, w11
	strb	w0, [x12, x9]
	str	w10, [x22]
	str	w8, [x20]
	ldrb	w8, [x21]
	tbz	w8, #0, .LBB3_8
.LBB3_6:                                // %dUl27H53eqzWGGDHUMWBmoE4q2eYbW
                                        // =>This Inner Loop Header: Depth=1
	ldr	w8, [x20]
	cbnz	w8, .LBB3_5
// %bb.7:                               // %iaFivVZeXj8XAfGoI0jnjoz6BjYar6
                                        //   in Loop: Header=BB3_6 Depth=1
	ldursw	x8, [x29, #-8]
	strb	wzr, [x21]
	ldur	x9, [x29, #-24]
	strb	wzr, [x9, x8]
	ldrb	w8, [x21]
	tbnz	w8, #0, .LBB3_6
.LBB3_8:                                // %MWINi7nkjq0WjKRQAgIeboI3Zhvg0D
	ldur	x0, [x29, #-24]
	mov	sp, x29
	ldp	x20, x19, [sp, #64]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #80             // 16-byte Folded Reload
	ret
.Lfunc_end3:
	.size	itostr32, .Lfunc_end3-itostr32
	.cfi_endproc
                                        // -- End function
	.globl	strcat                          // -- Begin function strcat
	.p2align	2
	.type	strcat,@function
strcat:                                 // @strcat
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-80]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 80
	stp	x26, x25, [sp, #16]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             // 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 80
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -56
	.cfi_offset w26, -64
	.cfi_offset w30, -72
	.cfi_offset w29, -80
	sub	sp, sp, #16
	mov	x19, x1
	mov	x20, x0
	mov	w8, #1
	stur	wzr, [x29, #-16]
	sturb	w8, [x29, #-9]
	b	.LBB4_2
.LBB4_1:                                // %Q4fY2tFjj9XdhT0PL9B6XR1VsPt6dc
                                        //   in Loop: Header=BB4_2 Depth=1
	ldur	w8, [x29, #-16]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	ldurb	w8, [x29, #-9]
	tbz	w8, #0, .LBB4_4
.LBB4_2:                                // %W7YODItusv2haIzN5x9QowX7WHIsEN
                                        // =>This Inner Loop Header: Depth=1
	ldursw	x8, [x29, #-16]
	ldrb	w8, [x20, x8]
	cbnz	w8, .LBB4_1
// %bb.3:                               // %xNOK7JS7Ue49Xqn9IpOm4uV8Z1FP84
                                        //   in Loop: Header=BB4_2 Depth=1
	sturb	wzr, [x29, #-9]
	ldurb	w8, [x29, #-9]
	tbnz	w8, #0, .LBB4_2
.LBB4_4:                                // %nmW9gee3GRfgFNIblhBnv9fqMLy4QF
	ldur	w8, [x29, #-16]
	mov	w9, #1
	stur	wzr, [x29, #-16]
	stur	w8, [x29, #-4]
	sturb	w9, [x29, #-9]
	b	.LBB4_6
.LBB4_5:                                // %aeV74YNDGGDfx8NvnGaqqU659zC9Ef
                                        //   in Loop: Header=BB4_6 Depth=1
	ldur	w8, [x29, #-16]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	ldurb	w8, [x29, #-9]
	tbz	w8, #0, .LBB4_8
.LBB4_6:                                // %V8piBDKlUSmVizhbowIPYgzhP29nT9
                                        // =>This Inner Loop Header: Depth=1
	ldursw	x8, [x29, #-16]
	ldrb	w8, [x19, x8]
	cbnz	w8, .LBB4_5
// %bb.7:                               // %UuUNaTcSX0qlHF4KC7Rqz21nbHzTBU
                                        //   in Loop: Header=BB4_6 Depth=1
	sturb	wzr, [x29, #-9]
	ldurb	w8, [x29, #-9]
	tbnz	w8, #0, .LBB4_6
.LBB4_8:                                // %aimGeWqTO1YJIN9HiNNTWgxui7d2Lx
	mov	x26, sp
	ldur	w8, [x29, #-16]
	sub	x21, x26, #16
	stur	w8, [x29, #-8]
	mov	sp, x21
	mov	x8, sp
	sub	x24, x8, #16
	mov	sp, x24
	mov	x9, sp
	sub	x22, x9, #16
	mov	sp, x22
	mov	x10, sp
	sub	x25, x10, #16
	mov	sp, x25
	mov	x11, sp
	sub	x23, x11, #16
	mov	sp, x23
	ldp	w13, w12, [x29, #-8]
	stur	wzr, [x8, #-16]
	mov	w14, #1
	stur	wzr, [x9, #-16]
	add	w8, w13, w12
	sturb	w14, [x10, #-16]
	add	w0, w8, #1
	sturb	w14, [x11, #-16]
	bl	malloc
	stur	x0, [x26, #-16]
	b	.LBB4_10
.LBB4_9:                                // %L3IefQztlzDrmDM2OpjG5YazltCq0P
                                        //   in Loop: Header=BB4_10 Depth=1
	ldrsw	x8, [x24]
	ldr	x10, [x21]
	ldrb	w9, [x20, x8]
	add	w11, w8, #1
	strb	w9, [x10, x8]
	str	w11, [x24]
	ldrb	w8, [x25]
	tbz	w8, #0, .LBB4_13
.LBB4_10:                               // %DUGShcVKuFZ2cuzkwHhuw5vALdpCx8
                                        // =>This Inner Loop Header: Depth=1
	ldrsw	x8, [x24]
	ldrb	w8, [x20, x8]
	cbnz	w8, .LBB4_9
// %bb.11:                              // %Me86HOLm8hS0U6oFsTPl4YEZDANfno
                                        //   in Loop: Header=BB4_10 Depth=1
	strb	wzr, [x25]
	ldrb	w8, [x25]
	tbnz	w8, #0, .LBB4_10
	b	.LBB4_13
.LBB4_12:                               // %AxUc48WmBibmjym9JMX2yTVAgcmASK
                                        //   in Loop: Header=BB4_13 Depth=1
	ldrsw	x8, [x22]
	ldur	w9, [x29, #-4]
	ldrb	w12, [x23]
	ldrb	w11, [x19, x8]
	add	w9, w8, w9
	add	w8, w8, #1
	ldr	x10, [x21]
	strb	w11, [x10, w9, sxtw]
	str	w8, [x22]
	tbz	w12, #0, .LBB4_15
.LBB4_13:                               // %CsLL0d35ksGydRCb4TFFF64W12IDcL
                                        // =>This Inner Loop Header: Depth=1
	ldrsw	x8, [x22]
	ldrb	w8, [x19, x8]
	cbnz	w8, .LBB4_12
// %bb.14:                              // %uNpTPV57kynGIO6Gw2unJZ8jTLsKoQ
                                        //   in Loop: Header=BB4_13 Depth=1
	strb	wzr, [x23]
	b	.LBB4_12
.LBB4_15:                               // %aYSvp8qKYUaNzg8EbFJU2dsK0e5M1D
	ldr	x0, [x21]
	mov	sp, x29
	ldp	x20, x19, [sp, #64]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #80             // 16-byte Folded Reload
	ret
.Lfunc_end4:
	.size	strcat, .Lfunc_end4-strcat
	.cfi_endproc
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
