	.arch armv7-a
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"term_cjh.c"
	.text
	.align	2
	.global	LedStageThread
	.type	LedStageThread, %function
LedStageThread:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	sub	sp, sp, #8
	ldr	r4, .L14
	ldr	r3, .L14+4
.LPIC0:
	add	r4, pc, r4
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	cmp	r3, #1
	moveq	r3, #128
	streq	r3, [sp, #4]
	beq	.L3
	cmp	r3, #2
	moveq	r3, #192
	streq	r3, [sp, #4]
	beq	.L3
	cmp	r3, #3
	moveq	r3, #224
	streq	r3, [sp, #4]
	beq	.L3
	cmp	r3, #4
	moveq	r3, #240
	streq	r3, [sp, #4]
	beq	.L3
	cmp	r3, #5
	moveq	r3, #248
	streq	r3, [sp, #4]
	beq	.L3
	cmp	r3, #6
	moveq	r3, #252
	streq	r3, [sp, #4]
	beq	.L3
	cmp	r3, #7
	moveq	r3, #254
	streq	r3, [sp, #4]
	beq	.L3
	cmp	r3, #8
	moveq	r3, #255
	streq	r3, [sp, #4]
.L3:
	add	r1, sp, #4
	mov	r2, #1
	bl	write(PLT)
	ldr	r3, .L14+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	cmp	r3, #1
	beq	.L13
.L11:
	add	sp, sp, #8
	ldmfd	sp!, {r4, pc}
.L13:
	mov	r0, #0
	bl	pthread_exit(PLT)
	b	.L11
.L15:
	.align	2
.L14:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+8)
	.word	stage(GOT)
	.word	stop(GOT)
	.size	LedStageThread, .-LedStageThread
	.align	2
	.global	FailPiThread
	.type	FailPiThread, %function
FailPiThread:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r8, r0
	ldr	r9, .L21
	sub	sp, sp, #96
	add	r7, sp, #48
	mov	r5, #0
.LPIC9:
	add	r9, pc, r9
	mov	sl, sp
	add	lr, r9, #48
	mov	ip, r7
	ldmia	r9!, {r0, r1, r2, r3}
	mov	r4, r5
	mov	r6, #1
	stmia	sl!, {r0, r1, r2, r3}
	ldmia	r9!, {r0, r1, r2, r3}
	stmia	sl!, {r0, r1, r2, r3}
	ldmia	r9, {r0, r1, r2, r3}
	stmia	sl, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	b	.L17
.L18:
	ldr	r0, [r7, r5]
	bl	usleep(PLT)
	cmp	r6, #48
	beq	.L20
.L19:
	add	r4, r4, #1
	add	r6, r6, #1
	add	r5, r5, #4
.L17:
	add	r3, sp, #0
	mov	r0, r8
	add	r1, r3, r4, asl #2
	mov	r2, #1
	bl	write(PLT)
	cmp	r4, #12
	bne	.L18
	mov	r0, #0
	bl	pthread_exit(PLT)
	ldr	r0, [r7, r5]
	bl	usleep(PLT)
	b	.L19
.L20:
	add	sp, sp, #96
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L22:
	.align	2
.L21:
	.word	.LANCHOR0-(.LPIC9+8)
	.size	FailPiThread, .-FailPiThread
	.align	2
	.global	SuccessPiThread
	.type	SuccessPiThread, %function
SuccessPiThread:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r8, r0
	ldr	lr, .L28
	sub	sp, sp, #48
	add	r7, sp, #24
	mov	r5, #0
.LPIC11:
	add	lr, pc, lr
	mov	sl, sp
	add	r9, lr, #96
	add	lr, lr, #120
	mov	ip, r7
	mov	r4, r5
	ldmia	r9!, {r0, r1, r2, r3}
	mov	r6, #1
	stmia	sl!, {r0, r1, r2, r3}
	ldmia	r9, {r0, r1}
	stmia	sl, {r0, r1}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr, {r0, r1}
	stmia	ip, {r0, r1}
	b	.L24
.L25:
	ldr	r0, [r7, r5]
	bl	usleep(PLT)
	cmp	r6, #24
	beq	.L27
.L26:
	add	r4, r4, #1
	add	r6, r6, #1
	add	r5, r5, #4
.L24:
	add	r3, sp, #0
	mov	r0, r8
	add	r1, r3, r4, asl #2
	mov	r2, #1
	bl	write(PLT)
	cmp	r4, #6
	bne	.L25
	mov	r0, #0
	bl	pthread_exit(PLT)
	ldr	r0, [r7, r5]
	bl	usleep(PLT)
	b	.L26
.L27:
	add	sp, sp, #48
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L29:
	.align	2
.L28:
	.word	.LANCHOR0-(.LPIC11+8)
	.size	SuccessPiThread, .-SuccessPiThread
	.align	2
	.global	CountKeypadThread
	.type	CountKeypadThread, %function
CountKeypadThread:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L35
	mov	r2, #0
	ldr	r0, .L35+4
	ldr	r1, .L35+8
.LPIC13:
	add	r3, pc, r3
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, #10
	ldr	r5, [r3, r0]
	ldr	r6, [r3, r1]
	b	.L33
.L31:
	movw	r0, #50000
	bl	usleep(PLT)
	subs	r4, r4, #1
	beq	.L32
.L34:
	ldr	r2, [r5, #0]
.L33:
	ldr	r3, [r6, #0]
	add	r2, r2, #1
	str	r2, [r5, #0]
	cmp	r3, #1
	bne	.L31
	mov	r0, #0
	bl	pthread_exit(PLT)
	movw	r0, #50000
	bl	usleep(PLT)
	subs	r4, r4, #1
	bne	.L34
.L32:
	mov	r0, r4
	bl	pthread_exit(PLT)
	ldmfd	sp!, {r4, r5, r6, pc}
.L36:
	.align	2
.L35:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC13+8)
	.word	key_timer(GOT)
	.word	stop(GOT)
	.size	CountKeypadThread, .-CountKeypadThread
	.align	2
	.global	PiezoBgmThread
	.type	PiezoBgmThread, %function
PiezoBgmThread:
	@ args = 0, pretend = 0, frame = 1728
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	sub	sp, sp, #1728
	ldr	r4, .L44
	sub	sp, sp, #4
	add	r7, sp, #864
	mov	r2, #864
.LPIC14:
	add	r4, pc, r4
	mov	sl, r0
	add	r1, r4, #144
	mov	r0, sp
	bl	memcpy(PLT)
	ldr	r8, .L44+4
	add	r1, r4, #1008
	mov	r0, r7
	mov	r2, #864
.LPIC16:
	add	r8, pc, r8
	bl	memcpy(PLT)
	ldr	r3, .L44+8
	mov	r5, #0
	mov	r6, #1
	mov	r4, r5
	ldr	r8, [r8, r3]
	b	.L38
.L39:
	cmp	r4, #215
	beq	.L42
.L40:
	ldr	r0, [r7, r5]
	bl	usleep(PLT)
	cmp	r6, #864
	beq	.L43
.L41:
	add	r4, r4, #1
	add	r6, r6, #1
	add	r5, r5, #4
.L38:
	add	r3, sp, #0
	mov	r0, sl
	add	r1, r3, r4, asl #2
	mov	r2, #1
	bl	write(PLT)
	ldr	r3, [r8, #0]
	cmp	r3, #1
	bne	.L39
	mov	r0, #0
	bl	pthread_exit(PLT)
	cmp	r4, #215
	bne	.L40
.L42:
	mov	r0, #0
	bl	pthread_exit(PLT)
	ldr	r0, [r7, r5]
	bl	usleep(PLT)
	b	.L41
.L43:
	add	sp, sp, #708
	add	sp, sp, #1024
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L45:
	.align	2
.L44:
	.word	.LANCHOR0-(.LPIC14+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC16+8)
	.word	stop(GOT)
	.size	PiezoBgmThread, .-PiezoBgmThread
	.align	2
	.global	StartPiezoThread
	.type	StartPiezoThread, %function
StartPiezoThread:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r8, r0
	ldr	lr, .L51
	sub	sp, sp, #64
	add	r7, sp, #32
	mov	r5, #0
.LPIC17:
	add	lr, pc, lr
	mov	sl, sp
	add	r9, lr, #1872
	add	lr, lr, #1904
	mov	ip, r7
	mov	r4, r5
	ldmia	r9!, {r0, r1, r2, r3}
	mov	r6, #1
	stmia	sl!, {r0, r1, r2, r3}
	ldmia	r9, {r0, r1, r2, r3}
	stmia	sl, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	b	.L47
.L48:
	ldr	r0, [r7, r5]
	bl	usleep(PLT)
	cmp	r6, #32
	beq	.L50
.L49:
	add	r4, r4, #1
	add	r6, r6, #1
	add	r5, r5, #4
.L47:
	add	r3, sp, #0
	mov	r0, r8
	add	r1, r3, r4, asl #2
	mov	r2, #1
	bl	write(PLT)
	cmp	r4, #7
	bne	.L48
	mov	r0, #0
	bl	pthread_exit(PLT)
	ldr	r0, [r7, r5]
	bl	usleep(PLT)
	b	.L49
.L50:
	add	sp, sp, #64
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L52:
	.align	2
.L51:
	.word	.LANCHOR0-(.LPIC17+8)
	.size	StartPiezoThread, .-StartPiezoThread
	.align	2
	.global	SuccessSegThread
	.type	SuccessSegThread, %function
SuccessSegThread:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L56
	ldr	r2, .L56+4
.LPIC20:
	add	r3, pc, r3
	stmfd	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #12
	ldr	r6, .L56+8
	mov	r7, r0
	ldr	r5, [r3, r2]
	mov	r4, #1000
.LPIC19:
	add	r6, pc, r6
.L54:
	mov	r1, r6
	ldr	r2, [r5, #0]
	mov	r0, sp
	bl	sprintf(PLT)
	mov	r0, r7
	mov	r1, sp
	mov	r2, #6
	bl	write(PLT)
	subs	r4, r4, #1
	bne	.L54
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L57:
	.align	2
.L56:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC20+8)
	.word	score(GOT)
	.word	.LC9-(.LPIC19+8)
	.size	SuccessSegThread, .-SuccessSegThread
	.align	2
	.global	ScoreThread
	.type	ScoreThread, %function
ScoreThread:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L60
	ldr	r2, .L60+4
.LPIC22:
	add	r3, pc, r3
	stmfd	sp!, {r4, r5, r6, lr}
	sub	sp, sp, #8
	ldr	r5, .L60+8
	mov	r6, r0
	ldr	r4, [r3, r2]
.LPIC21:
	add	r5, pc, r5
.L59:
	mov	r1, r5
	ldr	r2, [r4, #0]
	mov	r0, sp
	bl	sprintf(PLT)
	mov	r0, r6
	mov	r1, sp
	mov	r2, #6
	bl	write(PLT)
	b	.L59
.L61:
	.align	2
.L60:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC22+8)
	.word	score(GOT)
	.word	.LC9-(.LPIC21+8)
	.size	ScoreThread, .-ScoreThread
	.align	2
	.global	MainCountThread
	.type	MainCountThread, %function
MainCountThread:
	@ args = 0, pretend = 0, frame = 200
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #204
	ldr	r9, .L115
	mov	r2, #0
	ldr	r3, .L115+4
	ldr	sl, .L115+8
	str	r9, [sp, #0]
.LPIC31:
	add	r3, pc, r3
	ldr	r9, .L115+12
	str	r0, [sp, #64]
	str	r2, [sp, #40]
	str	r9, [sp, #4]
	ldr	r9, .L115+16
	ldr	r8, .L115+20
	ldr	r7, .L115+24
	str	r9, [sp, #8]
	ldr	r9, .L115+28
	ldr	r6, .L115+32
	ldr	r5, .L115+36
	str	r9, [sp, #12]
	ldr	r9, .L115+40
	ldr	r4, .L115+44
	ldr	lr, .L115+48
	str	r9, [sp, #16]
	ldr	r9, .L115+52
	ldr	ip, .L115+56
	ldr	r0, .L115+60
	str	r9, [sp, #20]
	ldr	r9, .L115+64
	ldr	r1, .L115+68
	ldr	r2, .L115+72
	str	r9, [sp, #24]
	ldr	r9, .L115+76
	ldr	fp, .L115+80
	str	r9, [sp, #28]
	ldr	r9, .L115+84
	str	r9, [sp, #32]
	ldr	r9, .L115+88
	str	r9, [sp, #36]
	ldr	sl, [r3, sl]
	str	sl, [sp, #92]
	ldr	r8, [r3, r8]
	str	r8, [sp, #140]
	ldr	r7, [r3, r7]
	str	r7, [sp, #136]
	ldr	r6, [r3, r6]
	str	r6, [sp, #132]
	ldr	r5, [r3, r5]
	str	r5, [sp, #128]
	ldr	r4, [r3, r4]
	str	r4, [sp, #120]
	ldr	lr, [r3, lr]
	str	lr, [sp, #112]
	ldr	ip, [r3, ip]
	str	ip, [sp, #108]
	ldr	r0, [r3, r0]
	str	r0, [sp, #104]
	ldr	r1, [r3, r1]
	str	r1, [sp, #100]
	ldr	r2, [r3, r2]
	str	r2, [sp, #144]
	ldr	r2, [sp, #0]
	ldr	r9, [sp, #4]
	ldr	r2, [r3, r2]
	str	r2, [sp, #96]
	ldr	fp, [r3, fp]
	ldr	r2, [sp, #12]
	str	fp, [sp, #80]
	ldr	r9, [r3, r9]
	ldr	fp, [sp, #8]
	str	r9, [sp, #76]
	ldr	fp, [r3, fp]
	ldr	r9, [sp, #16]
	str	fp, [sp, #116]
	ldr	r2, [r3, r2]
	ldr	fp, [sp, #20]
	str	r2, [sp, #68]
	ldr	r9, [r3, r9]
	ldr	r2, [sp, #24]
	str	r9, [sp, #72]
	ldr	fp, [r3, fp]
	ldr	r9, [sp, #28]
	str	fp, [sp, #88]
	ldr	r2, [r3, r2]
	str	r2, [sp, #124]
	ldr	r9, [r3, r9]
	ldr	r2, [sp, #32]
	str	r9, [sp, #84]
	ldr	r9, [sp, #36]
	ldr	fp, [r3, r2]
	ldr	r3, [r3, r9]
	ldr	r9, .L115+92
.LPIC51:
	add	r9, pc, r9
	str	r9, [sp, #172]
	ldr	r9, .L115+96
	str	r3, [sp, #148]
.LPIC50:
	add	r9, pc, r9
	str	r9, [sp, #168]
	ldr	r9, .L115+100
.LPIC49:
	add	r9, pc, r9
	str	r9, [sp, #164]
	ldr	r9, .L115+104
.LPIC48:
	add	r9, pc, r9
	str	r9, [sp, #160]
	ldr	r9, .L115+108
.LPIC47:
	add	r9, pc, r9
	str	r9, [sp, #156]
	ldr	r9, .L115+112
.LPIC46:
	add	r9, pc, r9
	str	r9, [sp, #152]
	mov	r9, #0
	cmp	r9, #1
	bgt	.L94
.L86:
	cmp	r9, #0
	movne	ip, #10
	bne	.L64
.L88:
	mov	ip, #0
.L64:
	add	r2, sp, #180
	add	r3, r9, r9, asl #2
	add	sl, r2, ip
	ldr	r2, [sp, #92]
	mov	r3, r3, asl #2
	mov	r4, #0
	add	r5, r2, r3
	ldr	r2, [sp, #140]
	add	r6, r2, r3
	ldr	r2, [sp, #136]
	add	r7, r2, r3
	ldr	r2, [sp, #132]
	add	r8, r2, r3
	ldr	r2, [sp, #128]
	add	r2, r2, r3
	str	r2, [sp, #0]
	ldr	r2, [sp, #120]
	add	r2, r2, r3
	str	r2, [sp, #4]
	ldr	r2, [sp, #112]
	add	r2, r2, r3
	str	r2, [sp, #8]
	ldr	r2, [sp, #108]
	add	r2, r2, r3
	str	r2, [sp, #12]
	ldr	r2, [sp, #104]
	add	r2, r2, r3
	str	r2, [sp, #16]
	ldr	r2, [sp, #100]
	add	r2, r2, r3
	str	r2, [sp, #20]
	ldr	r2, [sp, #144]
	add	r2, r2, r3
	str	r2, [sp, #24]
	ldr	r2, [sp, #96]
	add	r2, r2, r3
	str	r2, [sp, #28]
	ldr	r2, [sp, #80]
	add	r2, r2, r3
	str	r2, [sp, #32]
	ldr	r2, [sp, #76]
	add	r2, r2, r3
	str	r2, [sp, #36]
	ldr	r2, [sp, #116]
	add	r2, r2, r3
	str	r2, [sp, #40]
	ldr	r2, [sp, #68]
	add	r2, r2, r3
	str	r2, [sp, #44]
	ldr	r2, [sp, #72]
	add	r2, r2, r3
	str	r2, [sp, #48]
	ldr	r2, [sp, #88]
	add	r2, r2, r3
	str	r2, [sp, #52]
	ldr	r2, [sp, #124]
	add	r2, r2, r3
	str	r2, [sp, #56]
	ldr	r2, [sp, #84]
	add	r3, r2, r3
	str	r3, [sp, #60]
.L85:
	ldr	r3, [fp, #0]
	cmp	r3, #20
	beq	.L95
	cmp	r3, #19
	beq	.L96
	cmp	r3, #18
	beq	.L97
	cmp	r3, #17
	beq	.L98
	cmp	r3, #16
	beq	.L99
	cmp	r3, #15
	beq	.L100
	cmp	r3, #14
	beq	.L101
	cmp	r3, #13
	beq	.L102
	cmp	r3, #12
	beq	.L103
	cmp	r3, #11
	beq	.L104
	cmp	r3, #10
	beq	.L105
	cmp	r3, #9
	beq	.L106
	cmp	r3, #8
	beq	.L107
	cmp	r3, #7
	beq	.L108
	cmp	r3, #6
	beq	.L109
	cmp	r3, #5
	beq	.L110
	cmp	r3, #4
	beq	.L111
	cmp	r3, #3
	beq	.L112
	cmp	r3, #2
	beq	.L113
	cmp	r3, #1
	beq	.L114
.L66:
	add	r4, r4, #4
	ldrb	r2, [sp, #176]	@ zero_extendqisi2
	ldrb	r3, [sp, #177]	@ zero_extendqisi2
	cmp	r4, #20
	strb	r2, [sl, #0]
	strb	r3, [sl, #1]
	add	sl, sl, #2
	bne	.L85
	mov	r0, #2000
	add	r9, r9, #1
	bl	usleep(PLT)
	ldr	r0, [sp, #64]
	add	r1, sp, #180
	mov	r2, r4
	bl	write(PLT)
	cmp	r9, #1
	ble	.L86
.L94:
	ldr	r9, [sp, #148]
	ldr	r3, [r9, #0]
	cmp	r3, #1
	movne	r9, #0
	bne	.L88
	mov	r0, #0
	mov	r9, r0
	bl	pthread_exit(PLT)
	b	.L88
.L95:
	ldr	r1, .L115+116
	add	r0, sp, #176
	ldr	ip, [r5, r4]
.LPIC32:
	add	r1, pc, r1
.L93:
	mov	r3, ip, asr #31
	cmp	ip, #0
	add	r2, ip, #15
	mov	r3, r3, lsr #28
	movge	r2, ip
	add	ip, ip, r3
	mov	r2, r2, asr #4
	and	ip, ip, #15
	rsb	r3, r3, ip
	bl	sprintf(PLT)
	b	.L66
.L96:
	ldr	r1, .L115+120
	add	r0, sp, #176
	ldr	ip, [r6, r4]
.LPIC33:
	add	r1, pc, r1
	b	.L93
.L97:
	ldr	r1, .L115+124
	add	r0, sp, #176
	ldr	ip, [r7, r4]
.LPIC34:
	add	r1, pc, r1
	b	.L93
.L98:
	ldr	r1, .L115+128
	add	r0, sp, #176
	ldr	ip, [r8, r4]
.LPIC35:
	add	r1, pc, r1
	b	.L93
.L99:
	ldr	r3, [sp, #0]
	add	r0, sp, #176
	ldr	r1, .L115+132
	ldr	ip, [r3, r4]
.LPIC36:
	add	r1, pc, r1
	b	.L93
.L100:
	ldr	r2, [sp, #4]
	add	r0, sp, #176
	ldr	r1, .L115+136
	ldr	ip, [r2, r4]
.LPIC37:
	add	r1, pc, r1
	b	.L93
.L101:
	ldr	r3, [sp, #8]
	add	r0, sp, #176
	ldr	r1, .L115+140
	ldr	ip, [r3, r4]
.LPIC38:
	add	r1, pc, r1
	b	.L93
.L102:
	ldr	r2, [sp, #12]
	add	r0, sp, #176
	ldr	r1, .L115+144
	ldr	ip, [r2, r4]
.LPIC39:
	add	r1, pc, r1
	b	.L93
.L103:
	ldr	r3, [sp, #16]
	add	r0, sp, #176
	ldr	r1, .L115+148
	ldr	ip, [r3, r4]
.LPIC40:
	add	r1, pc, r1
	b	.L93
.L104:
	ldr	r2, [sp, #20]
	add	r0, sp, #176
	ldr	r1, .L115+152
	ldr	ip, [r2, r4]
.LPIC41:
	add	r1, pc, r1
	b	.L93
.L105:
	ldr	r3, [sp, #24]
	add	r0, sp, #176
	ldr	r1, .L115+156
	ldr	ip, [r3, r4]
.LPIC42:
	add	r1, pc, r1
	b	.L93
.L106:
	ldr	r2, [sp, #28]
	add	r0, sp, #176
	ldr	r1, .L115+160
	ldr	ip, [r2, r4]
.LPIC43:
	add	r1, pc, r1
	b	.L93
.L107:
	ldr	r3, [sp, #32]
	add	r0, sp, #176
	ldr	r1, .L115+164
	ldr	ip, [r3, r4]
.LPIC44:
	add	r1, pc, r1
	b	.L93
.L108:
	ldr	r2, [sp, #36]
	add	r0, sp, #176
	ldr	r1, .L115+168
	ldr	ip, [r2, r4]
.LPIC45:
	add	r1, pc, r1
	b	.L93
.L109:
	ldr	r3, [sp, #40]
	add	r0, sp, #176
	ldr	r1, [sp, #152]
	ldr	ip, [r3, r4]
	b	.L93
.L110:
	ldr	r2, [sp, #44]
	add	r0, sp, #176
	ldr	r1, [sp, #156]
	ldr	ip, [r2, r4]
	b	.L93
.L111:
	ldr	r3, [sp, #48]
	add	r0, sp, #176
	ldr	r1, [sp, #160]
	ldr	ip, [r3, r4]
	b	.L93
.L112:
	ldr	r2, [sp, #52]
	add	r0, sp, #176
	ldr	r1, [sp, #164]
	ldr	ip, [r2, r4]
	b	.L93
.L113:
	ldr	r3, [sp, #56]
	add	r0, sp, #176
	ldr	r1, [sp, #168]
	ldr	ip, [r3, r4]
	b	.L93
.L114:
	ldr	r2, [sp, #60]
	add	r0, sp, #176
	ldr	r1, [sp, #172]
	ldr	ip, [r2, r4]
	b	.L93
.L116:
	.align	2
.L115:
	.word	font_nine(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC31+8)
	.word	font_20(GOT)
	.word	font_seven(GOT)
	.word	font_six(GOT)
	.word	font_19(GOT)
	.word	font_18(GOT)
	.word	font_five(GOT)
	.word	font_17(GOT)
	.word	font_16(GOT)
	.word	font_four(GOT)
	.word	font_15(GOT)
	.word	font_14(GOT)
	.word	font_three(GOT)
	.word	font_13(GOT)
	.word	font_12(GOT)
	.word	font_two(GOT)
	.word	font_11(GOT)
	.word	font_ten(GOT)
	.word	font_one(GOT)
	.word	font_eight(GOT)
	.word	dot_main_count(GOT)
	.word	stop(GOT)
	.word	.LC10-(.LPIC51+8)
	.word	.LC10-(.LPIC50+8)
	.word	.LC10-(.LPIC49+8)
	.word	.LC10-(.LPIC48+8)
	.word	.LC10-(.LPIC47+8)
	.word	.LC10-(.LPIC46+8)
	.word	.LC10-(.LPIC32+8)
	.word	.LC10-(.LPIC33+8)
	.word	.LC10-(.LPIC34+8)
	.word	.LC10-(.LPIC35+8)
	.word	.LC10-(.LPIC36+8)
	.word	.LC10-(.LPIC37+8)
	.word	.LC10-(.LPIC38+8)
	.word	.LC10-(.LPIC39+8)
	.word	.LC10-(.LPIC40+8)
	.word	.LC10-(.LPIC41+8)
	.word	.LC10-(.LPIC42+8)
	.word	.LC10-(.LPIC43+8)
	.word	.LC10-(.LPIC44+8)
	.word	.LC10-(.LPIC45+8)
	.size	MainCountThread, .-MainCountThread
	.align	2
	.global	StartDotThread
	.type	StartDotThread, %function
StartDotThread:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #84
	ldr	r4, .L140
	mov	r1, #0
	ldr	r2, .L140+4
	mov	r3, r1
.LPIC52:
	add	r4, pc, r4
	ldr	ip, .L140+8
	str	r0, [sp, #8]
	add	r0, sp, #56
	ldr	r2, [r4, r2]
.LPIC57:
	add	ip, pc, ip
	str	ip, [sp, #44]
	mov	r9, r1
	ldr	ip, .L140+12
	mov	fp, r9
	ldr	r5, .L140+16
.LPIC56:
	add	ip, pc, ip
	str	ip, [sp, #40]
	ldr	ip, .L140+20
.LPIC55:
	add	ip, pc, ip
	str	ip, [sp, #36]
	bl	pthread_create(PLT)
	ldr	r5, [r4, r5]
	ldr	r3, .L140+24
	ldr	lr, .L140+28
	ldr	r0, .L140+32
	ldr	r6, [r4, r3]
	str	r5, [sp, #12]
	ldr	lr, [r4, lr]
	ldr	r1, .L140+36
	ldr	r2, .L140+40
	str	lr, [sp, #24]
	ldr	r0, [r4, r0]
	ldr	ip, .L140+44
	ldr	r3, [r6, #0]
	str	r0, [sp, #16]
.LPIC54:
	add	ip, pc, ip
	ldr	r1, [r4, r1]
	str	r1, [sp, #20]
	ldr	r2, [r4, r2]
	str	ip, [sp, #32]
	ldr	ip, .L140+48
	str	r2, [sp, #28]
.LPIC53:
	add	ip, pc, ip
	str	ip, [sp, #0]
.L132:
	cmp	fp, #1
	ble	.L127
	cmp	r3, #4
	movne	fp, #0
	beq	.L134
.L129:
	mov	r4, #0
.L119:
	add	r9, fp, fp, asl #2
	ldr	ip, [sp, #12]
	cmp	r3, #0
	add	r2, sp, #60
	mov	r9, r9, asl #2
	add	r4, r2, r4
	add	r7, ip, r9
	ldr	ip, [sp, #24]
	mov	r5, #0
	add	r8, ip, r9
	ldr	ip, [sp, #16]
	add	sl, ip, r9
	ldr	ip, [sp, #20]
	add	ip, ip, r9
	str	ip, [sp, #4]
	ldr	ip, [sp, #28]
	add	r9, ip, r9
	beq	.L135
.L120:
	cmp	r3, #1
	beq	.L136
	cmp	r3, #2
	beq	.L137
	cmp	r3, #3
	beq	.L138
	cmp	r3, #4
	beq	.L139
.L121:
	add	r5, r5, #4
	ldrb	r2, [sp, #52]	@ zero_extendqisi2
	ldrb	r3, [sp, #53]	@ zero_extendqisi2
	cmp	r5, #20
	strb	r2, [r4, #0]
	strb	r3, [r4, #1]
	add	r4, r4, #2
	beq	.L125
	ldr	r3, [r6, #0]
	cmp	r3, #0
	bne	.L120
.L135:
	ldr	ip, [r7, r5]
	add	r0, sp, #52
	ldr	r1, [sp, #0]
.L133:
	mov	r3, ip, asr #31
	cmp	ip, #0
	add	r2, ip, #15
	mov	r3, r3, lsr #28
	movge	r2, ip
	add	ip, ip, r3
	mov	r2, r2, asr #4
	and	ip, ip, #15
	rsb	r3, r3, ip
	bl	sprintf(PLT)
	b	.L121
.L127:
	cmp	fp, #0
	movne	r4, #10
	bne	.L119
	b	.L129
.L125:
	mov	r0, #2000
	add	fp, fp, #1
	bl	usleep(PLT)
	ldr	r0, [sp, #8]
	add	r1, sp, #60
	mov	r2, r5
	bl	write(PLT)
	ldr	r3, [r6, #0]
	b	.L132
.L134:
	mov	r0, #0
	mov	fp, r0
	bl	pthread_exit(PLT)
	ldr	r3, [r6, #0]
	b	.L129
.L136:
	ldr	ip, [r8, r5]
	add	r0, sp, #52
	ldr	r1, [sp, #32]
	b	.L133
.L137:
	ldr	ip, [sl, r5]
	add	r0, sp, #52
	ldr	r1, [sp, #36]
	b	.L133
.L138:
	ldr	r2, [sp, #4]
	add	r0, sp, #52
	ldr	r1, [sp, #40]
	ldr	ip, [r2, r5]
	b	.L133
.L139:
	ldr	ip, [r9, r5]
	add	r0, sp, #52
	ldr	r1, [sp, #44]
	b	.L133
.L141:
	.align	2
.L140:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC52+8)
	.word	CountDotStageThread(GOT)
	.word	.LC10-(.LPIC57+8)
	.word	.LC10-(.LPIC56+8)
	.word	font_three(GOT)
	.word	.LC10-(.LPIC55+8)
	.word	dotstg_cntr(GOT)
	.word	font_two(GOT)
	.word	font_one(GOT)
	.word	font_sizak(GOT)
	.word	font_clr(GOT)
	.word	.LC10-(.LPIC54+8)
	.word	.LC10-(.LPIC53+8)
	.size	StartDotThread, .-StartDotThread
	.align	2
	.global	InputAnswerThread
	.type	InputAnswerThread, %function
InputAnswerThread:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #60
	ldr	r8, .L164
	mov	r2, #0
	ldr	lr, .L164+4
	mov	r1, r2
.LPIC58:
	add	r8, pc, r8
	str	r0, [sp, #8]
	mov	r3, r2
	mov	r9, r2
	str	r2, [sp, #32]
	add	r0, sp, #28
	str	r2, [sp, #36]
	mov	r7, r1
	strh	r2, [sp, #40]	@ movhi
	add	r4, sp, #32
	str	r2, [sp, #44]
	add	r5, sp, #44
	str	r2, [sp, #48]
	strh	r2, [sp, #52]	@ movhi
	ldr	r2, [r8, lr]
	str	r1, [sp, #4]
	bl	pthread_create(PLT)
	ldr	ip, .L164+8
	ldr	r2, .L164+12
	ldr	r1, .L164+16
	str	ip, [sp, #16]
	ldr	lr, .L164+20
	ldr	r2, [r8, r2]
	ldr	r0, .L164+24
	ldr	r3, .L164+28
	ldr	sl, [r8, lr]
	ldr	r6, [r8, r1]
	ldr	fp, [r8, r0]
	ldr	r1, [sp, #16]
	str	r2, [sp, #12]
	ldr	r3, [r8, r3]
	ldr	ip, .L164+32
	str	r3, [sp, #20]
	mov	r3, sl
	ldr	r1, [r8, r1]
	mov	sl, r9
	mov	r9, r3
	str	r1, [sp, #16]
	ldr	r8, [r8, ip]
.L151:
	mov	r2, #1
	ldr	r0, [sp, #8]
	mov	r1, r4
	bl	read(PLT)
	ldrb	r2, [sp, #32]	@ zero_extendqisi2
	cmp	r2, sl
	beq	.L161
.L154:
	mov	r3, #0
.L157:
	ldrb	r0, [r6, r3]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L162
	add	r3, r3, #1
	cmp	r3, #10
	bne	.L157
.L149:
	ldr	r3, [fp, #0]
	cmp	r3, #1
	beq	.L144
.L145:
	mov	r1, #6
	ldr	r0, [r8, #0]
	bl	ioctl(PLT)
	mov	r0, r6
	bl	strlen(PLT)
	mov	r1, r6
	mov	r2, r0
	ldr	r0, [r8, #0]
	bl	write(PLT)
	mov	r3, #0
.L150:
	ldrb	r2, [r4, r3]	@ zero_extendqisi2
	strb	r2, [r5, r3]
	add	r3, r3, #1
	cmp	r3, #10
	bne	.L150
	ldr	ip, [r9, #0]
	movw	r0, #5000
	str	ip, [sp, #4]
	bl	usleep(PLT)
	str	r7, [r4, #0]
	str	r7, [sp, #36]
	strh	r7, [sp, #40]	@ movhi
	ldrb	sl, [sp, #44]	@ zero_extendqisi2
	b	.L151
.L162:
	ldr	ip, [sp, #12]
	strb	r2, [r6, r3]
	ldrb	r1, [ip, r3]	@ zero_extendqisi2
	cmp	r1, r2
	beq	.L163
	cmp	r2, #0
	beq	.L148
	ldr	r3, [sp, #16]
	mov	r1, #1
	mvn	ip, #0
	str	r1, [fp, #0]
	str	ip, [r3, #0]
	bl	pthread_exit(PLT)
.L148:
	ldr	r3, [sp, #12]
	ldrb	r2, [r3, #9]	@ zero_extendqisi2
	ldrb	r3, [r6, #9]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L149
	ldr	ip, [sp, #16]
	mov	r1, #1
	str	r1, [fp, #0]
	str	r1, [ip, #0]
.L144:
	mov	r0, #0
	bl	pthread_exit(PLT)
	b	.L145
.L161:
	ldr	r3, [r9, #0]
	ldr	ip, [sp, #4]
	cmp	ip, r3
	bne	.L154
	b	.L149
.L163:
	ldr	ip, [sp, #20]
	ldr	r3, [ip, #0]
	add	r3, r3, #100
	str	r3, [ip, #0]
	b	.L148
.L165:
	.align	2
.L164:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC58+8)
	.word	CountKeypadThread(GOT)
	.word	res(GOT)
	.word	question(GOT)
	.word	answer(GOT)
	.word	key_timer(GOT)
	.word	stop(GOT)
	.word	score(GOT)
	.word	fd_text(GOT)
	.size	InputAnswerThread, .-InputAnswerThread
	.align	2
	.global	CountDotStageThread
	.type	CountDotStageThread, %function
CountDotStageThread:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, #3
	ldr	r3, .L169
	mov	r2, #0
	ldr	r1, .L169+4
.LPIC59:
	add	r3, pc, r3
	ldr	r5, [r3, r1]
	str	r2, [r5, #0]
.L167:
	mov	r0, #1
	bl	sleep(PLT)
	ldr	r3, [r5, #0]
	subs	r4, r4, #1
	add	r3, r3, #1
	str	r3, [r5, #0]
	bne	.L167
	movw	r0, #41248
	movt	r0, 7
	bl	usleep(PLT)
	mov	r0, r4
	mov	r3, #4
	str	r3, [r5, #0]
	bl	pthread_exit(PLT)
	ldmfd	sp!, {r3, r4, r5, pc}
.L170:
	.align	2
.L169:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC59+8)
	.word	dotstg_cntr(GOT)
	.size	CountDotStageThread, .-CountDotStageThread
	.align	2
	.global	StartLedThread
	.type	StartLedThread, %function
StartLedThread:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #8
	add	r5, sp, #8
	mov	r6, r0
	mov	r4, #3
	mov	r8, #129
	mov	r7, #195
	mov	r3, #231
	str	r3, [r5, #-4]!
.L174:
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	bl	write(PLT)
	ldr	r3, [sp, #4]
	cmp	r3, #231
	streq	r7, [sp, #4]
	beq	.L173
	cmp	r3, #195
	streq	r8, [sp, #4]
.L173:
	mov	r0, #1
	bl	sleep(PLT)
	subs	r4, r4, #1
	bne	.L174
	mov	r1, r5
	mov	r2, #1
	mov	r0, r6
	str	r4, [sp, #4]
	bl	write(PLT)
	mov	r0, #1
	bl	sleep(PLT)
	mov	r0, r4
	bl	pthread_exit(PLT)
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
	.size	StartLedThread, .-StartLedThread
	.align	2
	.global	CountMainDotThread
	.type	CountMainDotThread, %function
CountMainDotThread:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	ldr	r7, .L184
	ldr	r3, .L184+4
.LPIC60:
	add	r7, pc, r7
	ldr	r2, .L184+8
	ldr	r3, [r7, r3]
	ldr	r5, [r7, r2]
	ldr	r4, [r3, #0]
	rsb	r4, r4, #11
	mov	r4, r4, asl #1
	str	r4, [r5, #0]
	cmp	r4, #0
	ble	.L177
	ldr	r3, .L184+12
	ldr	r6, [r7, r3]
	b	.L179
.L178:
	subs	r4, r4, #1
	beq	.L180
.L179:
	mov	r0, #1
	bl	sleep(PLT)
	ldr	r2, [r6, #0]
	ldr	r3, [r5, #0]
	cmp	r2, #1
	sub	r3, r3, #1
	str	r3, [r5, #0]
	bne	.L178
	mov	r0, #0
	bl	pthread_exit(PLT)
	subs	r4, r4, #1
	bne	.L179
.L180:
	ldr	r3, .L184+16
	mov	r0, #0
	mvn	r2, #0
	mov	r1, #1
	ldr	r3, [r7, r3]
	str	r1, [r6, #0]
	str	r2, [r3, #0]
	bl	pthread_exit(PLT)
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.L177:
	ldmnefd	sp!, {r3, r4, r5, r6, r7, pc}
	ldr	r3, .L184+12
	ldr	r6, [r7, r3]
	b	.L180
.L185:
	.align	2
.L184:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC60+8)
	.word	stage(GOT)
	.word	dot_main_count(GOT)
	.word	stop(GOT)
	.word	res(GOT)
	.size	CountMainDotThread, .-CountMainDotThread
	.align	2
	.global	StageLCD
	.type	StageLCD, %function
StageLCD:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r0, .L187
	ldr	r7, .L187+4
.LPIC61:
	add	r0, pc, r0
	bl	puts(PLT)
	mov	r0, #16
	bl	malloc(PLT)
.LPIC64:
	add	r7, pc, r7
	mov	r5, r0
	mov	r0, #4
	bl	malloc(PLT)
	ldr	r2, .L187+8
	ldr	ip, .L187+12
	mov	r3, r5
.LPIC62:
	add	r2, pc, r2
	mov	r6, r0
	ldmia	r2, {r0, r1, r2}
	stmia	r3!, {r0, r1}
	mov	r0, r6
	strb	r2, [r3, #0]
	ldr	r3, [r7, ip]
	ldr	r1, .L187+16
	ldr	r2, [r3, #0]
.LPIC63:
	add	r1, pc, r1
	bl	sprintf(PLT)
	mov	r1, r6
	mov	r0, r5
	bl	strcat(PLT)
	mov	r0, r4
	mov	r1, #4
	bl	ioctl(PLT)
	mov	r0, r4
	mov	r1, #5
	bl	ioctl(PLT)
	ldr	r1, .L187+20
	mov	r2, #13
	mov	r0, r4
.LPIC65:
	add	r1, pc, r1
	bl	write(PLT)
	mov	r1, #6
	mov	r0, r4
	bl	ioctl(PLT)
	mov	r0, r5
	bl	strlen(PLT)
	mov	r1, r5
	mov	r2, r0
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, r6, r7, lr}
	b	write(PLT)
.L188:
	.align	2
.L187:
	.word	.LC11-(.LPIC61+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC64+8)
	.word	.LC12-(.LPIC62+8)
	.word	stage(GOT)
	.word	.LC13-(.LPIC63+8)
	.word	.LC14-(.LPIC65+8)
	.size	StageLCD, .-StageLCD
	.align	2
	.global	StageStartAlert
	.type	StageStartAlert, %function
StageStartAlert:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	mov	r7, r0
	ldr	r0, .L193
	sub	sp, sp, #20
	ldr	r4, .L193+4
	mov	r6, r1
.LPIC66:
	add	r0, pc, r0
	mov	r5, r2
	bl	puts(PLT)
	ldr	r2, .L193+8
.LPIC67:
	add	r4, pc, r4
	mov	r3, r7
	mov	r1, #0
	add	r0, sp, #4
	ldr	r2, [r4, r2]
	bl	pthread_create(PLT)
	ldr	r2, .L193+12
	mov	r3, r6
	mov	r1, #0
	add	r0, sp, #8
	ldr	r2, [r4, r2]
	bl	pthread_create(PLT)
	ldr	r2, .L193+16
	mov	r3, r5
	mov	r1, #0
	add	r0, sp, #12
	ldr	r2, [r4, r2]
	bl	pthread_create(PLT)
	mov	r1, #0
	ldr	r0, [sp, #4]
	bl	pthread_join(PLT)
	subs	r1, r0, #0
	beq	.L192
.L191:
.L189:
	add	sp, sp, #20
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L192:
	ldr	r0, [sp, #8]
	bl	pthread_join(PLT)
	subs	r1, r0, #0
	bne	.L191
	ldr	r0, [sp, #12]
	bl	pthread_join(PLT)
	cmp	r0, #0
	bne	.L191
	ldr	r0, .L193+20
.LPIC68:
	add	r0, pc, r0
	bl	puts(PLT)
	mov	r0, #1
	b	.L189
.L194:
	.align	2
.L193:
	.word	.LC15-(.LPIC66+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC67+8)
	.word	StartLedThread(GOT)
	.word	StartPiezoThread(GOT)
	.word	StartDotThread(GOT)
	.word	.LC16-(.LPIC68+8)
	.size	StageStartAlert, .-StageStartAlert
	.align	2
	.global	Compare_answer
	.type	Compare_answer, %function
Compare_answer:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	mov	r5, r0
	ldr	r0, .L198
	sub	sp, sp, #12
	mov	r4, r1
.LPIC69:
	add	r0, pc, r0
	bl	puts(PLT)
	ldr	r0, .L198+4
	mov	r1, r5
.LPIC70:
	add	r0, pc, r0
	bl	printf(PLT)
	ldr	r2, .L198+8
	ldr	ip, .L198+12
	mov	r3, r4
.LPIC71:
	add	r2, pc, r2
	mov	r1, #0
	add	r0, sp, #4
	ldr	r2, [r2, ip]
	bl	pthread_create(PLT)
	ldr	r0, [sp, #4]
	mov	r1, #0
	bl	pthread_join(PLT)
	cmp	r0, #0
	bne	.L197
	ldr	r0, .L198+16
.LPIC72:
	add	r0, pc, r0
	bl	puts(PLT)
.L197:
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, pc}
.L199:
	.align	2
.L198:
	.word	.LC17-(.LPIC69+8)
	.word	.LC18-(.LPIC70+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC71+8)
	.word	InputAnswerThread(GOT)
	.word	.LC19-(.LPIC72+8)
	.size	Compare_answer, .-Compare_answer
	.align	2
	.global	StageMain
	.type	StageMain, %function
StageMain:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	fp, r0
	ldr	r0, .L208
	sub	sp, sp, #44
	mov	r8, r1
	mov	r9, r3
.LPIC73:
	add	r0, pc, r0
	str	r2, [sp, #4]
	bl	puts(PLT)
	mov	r0, #0
	bl	time(PLT)
	ldr	r7, .L208+4
	bl	srand48(PLT)
	ldr	r3, .L208+8
	ldr	r4, .L208+12
.LPIC75:
	add	r7, pc, r7
.LPIC74:
	add	r3, pc, r3
	ldr	r5, .L208+16
	add	lr, sp, #24
	mov	sl, #0
	ldr	r0, [r3, #1936]!	@ unaligned
	mov	r6, sl
	ldr	r1, [r3, #4]	@ unaligned
	ldr	r2, [r3, #8]	@ unaligned
	ldr	r3, [r3, #12]	@ unaligned
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r4, [r7, r4]
	ldr	r5, [r7, r5]
.L201:
	bl	lrand48(PLT)
	add	r2, sp, #40
	strb	r6, [r5, sl]
	mov	r3, r0, asr #31
	mov	r3, r3, lsr #28
	add	r0, r0, r3
	and	r0, r0, #15
	rsb	r3, r3, r0
	add	r3, r2, r3
	ldrb	r3, [r3, #-16]	@ zero_extendqisi2
	strb	r3, [r4, sl]
	add	sl, sl, #1
	cmp	sl, #10
	bne	.L201
	ldr	r0, .L208+20
	mov	r1, r4
.LPIC76:
	add	r0, pc, r0
	bl	printf(PLT)
	ldr	r2, .L208+24
	ldr	r3, [sp, #80]
	mov	r1, #0
	add	r0, sp, #20
	ldr	r2, [r7, r2]
	bl	pthread_create(PLT)
	ldr	r2, .L208+28
	mov	r3, fp
	mov	r1, #0
	add	r0, sp, #8
	ldr	r2, [r7, r2]
	bl	pthread_create(PLT)
	ldr	r2, .L208+32
	mov	r3, r9
	mov	r1, #0
	add	r0, sp, #12
	ldr	r2, [r7, r2]
	bl	pthread_create(PLT)
	ldr	r2, .L208+36
	mov	r1, #0
	add	r0, sp, #16
	mov	r3, r1
	ldr	r2, [r7, r2]
	bl	pthread_create(PLT)
	mov	r1, #4
	mov	r0, r8
	bl	ioctl(PLT)
	mov	r1, #5
	mov	r0, r8
	bl	ioctl(PLT)
	mov	r0, r4
	bl	strlen(PLT)
	mov	r1, r4
	mov	r2, r0
	mov	r0, r8
	bl	write(PLT)
	ldr	r1, [sp, #4]
	mov	r0, r4
	bl	Compare_answer(PLT)
	mov	r1, #0
	ldr	r0, [sp, #20]
	bl	pthread_join(PLT)
	subs	r1, r0, #0
	beq	.L207
.L205:
	add	sp, sp, #44
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L207:
	ldr	r0, [sp, #8]
	bl	pthread_join(PLT)
	subs	r1, r0, #0
	bne	.L205
	ldr	r0, [sp, #12]
	bl	pthread_join(PLT)
	subs	r1, r0, #0
	bne	.L205
	ldr	r0, [sp, #16]
	bl	pthread_join(PLT)
	cmp	r0, #0
	bne	.L205
	ldr	r0, .L208+40
.LPIC77:
	add	r0, pc, r0
	bl	puts(PLT)
	b	.L205
.L209:
	.align	2
.L208:
	.word	.LC20-(.LPIC73+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC75+8)
	.word	.LANCHOR0-(.LPIC74+8)
	.word	question(GOT)
	.word	answer(GOT)
	.word	.LC21-(.LPIC76+8)
	.word	LedStageThread(GOT)
	.word	PiezoBgmThread(GOT)
	.word	MainCountThread(GOT)
	.word	CountMainDotThread(GOT)
	.word	.LC22-(.LPIC77+8)
	.size	StageMain, .-StageMain
	.align	2
	.global	SuccessAlert
	.type	SuccessAlert, %function
SuccessAlert:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	sub	sp, sp, #12
	ldr	r4, .L213
	mov	r3, r0
	ldr	r2, .L213+4
	mov	r5, r1
.LPIC78:
	add	r4, pc, r4
	mov	r0, sp
	mov	r1, #0
	ldr	r2, [r4, r2]
	bl	pthread_create(PLT)
	ldr	r2, .L213+8
	ldr	r2, [r4, r2]
	ldr	r2, [r2, #0]
	cmp	r2, #8
	beq	.L212
.L211:
	ldr	r0, [sp, #0]
	mov	r1, #0
	bl	pthread_join(PLT)
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, pc}
.L212:
	ldr	r2, .L213+12
	mov	r3, r5
	add	r0, sp, #4
	mov	r1, #0
	ldr	r2, [r4, r2]
	bl	pthread_create(PLT)
	b	.L211
.L214:
	.align	2
.L213:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC78+8)
	.word	SuccessPiThread(GOT)
	.word	stage(GOT)
	.word	SuccessSegThread(GOT)
	.size	SuccessAlert, .-SuccessAlert
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L239
	mov	r1, #1
	ldr	r2, .L239+4
	mov	r3, #0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.LPIC79:
	add	ip, pc, ip
	sub	sp, sp, #60
	ldr	r0, .L239+8
	str	ip, [sp, #32]
.LPIC80:
	add	r0, pc, r0
	ldr	sl, [ip, r2]
	str	r3, [sl, #0]
	bl	open(PLT)
	mov	r1, #1
	str	r0, [sp, #12]
	ldr	r0, .L239+12
.LPIC81:
	add	r0, pc, r0
	bl	open(PLT)
	mov	r1, #1
	str	r0, [sp, #36]
	ldr	r0, .L239+16
.LPIC82:
	add	r0, pc, r0
	bl	open(PLT)
	mov	r1, #1
	mov	r8, r0
	ldr	r0, .L239+20
.LPIC83:
	add	r0, pc, r0
	bl	open(PLT)
	mov	r1, #2
	mov	fp, r0
	ldr	r0, .L239+24
.LPIC84:
	add	r0, pc, r0
	bl	open(PLT)
	mov	r1, #1
	str	r0, [sp, #28]
	ldr	r0, .L239+28
.LPIC85:
	add	r0, pc, r0
	bl	open(PLT)
	ldr	ip, [sp, #12]
	ldr	r3, .L239+32
	cmn	ip, #1
	ldr	ip, [sp, #32]
	ldr	r7, [ip, r3]
	str	r0, [r7, #0]
	beq	.L230
.L216:
	ldr	ip, [sp, #36]
	cmn	ip, #1
	beq	.L231
.L217:
	cmn	r8, #1
	beq	.L232
.L218:
	cmn	fp, #1
	beq	.L233
.L219:
	ldr	ip, [sp, #28]
	cmn	ip, #1
	beq	.L234
.L220:
	ldr	r0, [r7, #0]
	cmn	r0, #1
	beq	.L235
.L221:
	mov	r1, #3
	ldr	r5, .L239+36
	bl	ioctl(PLT)
	ldr	ip, [sp, #32]
	ldr	r2, .L239+40
	mov	r1, #0
	ldr	r3, [sp, #36]
	add	r0, sp, #48
	mov	r6, #0
.LPIC105:
	add	r5, pc, r5
	ldr	r2, [ip, r2]
	bl	pthread_create(PLT)
	ldr	ip, [sp, #32]
	ldr	r2, .L239+44
	mov	r3, #1
	mov	r1, #1
	ldr	r4, [ip, r2]
	ldr	ip, .L239+48
	str	r3, [r4, #0]
.LPIC104:
	add	ip, pc, ip
	ldr	r3, .L239+52
	str	ip, [sp, #20]
	ldr	ip, [sp, #32]
	ldr	r3, [ip, r3]
	ldr	ip, .L239+56
.LPIC109:
	add	ip, pc, ip
	str	ip, [sp, #40]
	ldr	ip, .L239+60
	str	r3, [sp, #16]
.LPIC110:
	add	ip, pc, ip
	str	ip, [sp, #44]
	ldr	ip, .L239+64
.LPIC115:
	add	ip, pc, ip
	str	ip, [sp, #24]
	b	.L227
.L223:
	ldr	r0, [sp, #24]
	bl	puts(PLT)
	ldr	r1, [r4, #0]
	add	r1, r1, #1
	str	r1, [r4, #0]
	cmp	r1, #8
	bgt	.L236
.L227:
	ldr	r0, [sp, #20]
	bl	printf(PLT)
	ldr	ip, [sp, #16]
	mov	r1, #0
	mov	r0, r5
	str	r6, [sl, #0]
	str	r6, [ip, #0]
	bl	printf(PLT)
	ldr	r0, [r7, #0]
	bl	StageLCD(PLT)
	mov	r1, r8
	mov	r2, fp
	ldr	r0, [sp, #12]
	bl	StageStartAlert(PLT)
	mov	r9, r0
	mov	r0, r5
	mov	r1, r9
	bl	printf(PLT)
	cmp	r9, #1
	bne	.L223
	ldr	ip, [sp, #12]
	mov	r3, fp
	ldr	r1, [r7, #0]
	mov	r0, r8
	ldr	r2, [sp, #28]
	str	ip, [sp, #0]
	bl	StageMain(PLT)
	ldr	r3, [sl, #0]
	cmn	r3, #1
	beq	.L237
	cmp	r3, #1
	beq	.L238
.L226:
	ldr	r3, [r4, #0]
	cmp	r3, #8
	bne	.L223
	ldr	r3, [sl, #0]
	cmp	r3, #1
	bne	.L223
	ldr	r1, [sp, #36]
	mov	r0, r8
	bl	SuccessAlert(PLT)
	ldr	r0, .L239+68
.LPIC111:
	add	r0, pc, r0
	bl	puts(PLT)
	ldr	r0, .L239+72
.LPIC112:
	add	r0, pc, r0
	bl	puts(PLT)
	ldr	r0, .L239+76
.LPIC113:
	add	r0, pc, r0
	bl	puts(PLT)
	ldr	ip, [sp, #32]
	ldr	r3, .L239+80
	ldr	r0, .L239+84
	ldr	r3, [ip, r3]
.LPIC114:
	add	r0, pc, r0
	ldr	r1, [r3, #0]
	bl	printf(PLT)
	b	.L229
.L238:
	ldr	r1, [sp, #36]
	mov	r0, r8
	bl	SuccessAlert(PLT)
	ldr	ip, [sp, #32]
	ldr	r3, .L239+80
	ldr	r0, [sp, #40]
	ldr	r3, [ip, r3]
	ldr	r1, [r3, #0]
	bl	printf(PLT)
	ldr	r0, [sp, #44]
	bl	puts(PLT)
	b	.L226
.L236:
	mov	r1, #2
	ldr	r0, [r7, #0]
	bl	ioctl(PLT)
	ldr	r0, [sp, #12]
	bl	close(PLT)
	mov	r0, r8
	bl	close(PLT)
	ldr	r0, [sp, #36]
	bl	close(PLT)
	mov	r0, fp
	bl	close(PLT)
	ldr	r0, [sp, #28]
	bl	close(PLT)
	ldr	r0, [r7, #0]
	bl	close(PLT)
.L229:
	mov	r0, #0
	add	sp, sp, #60
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L237:
	ldr	ip, [sp, #32]
	mov	r3, r8
	ldr	r2, .L239+88
	add	r0, sp, #52
	mov	r1, #0
	ldr	r2, [ip, r2]
	bl	pthread_create(PLT)
	ldr	ip, [sp, #32]
	ldr	r3, .L239+80
	ldr	r0, .L239+92
	ldr	r3, [ip, r3]
.LPIC107:
	add	r0, pc, r0
	ldr	r1, [r3, #0]
	bl	printf(PLT)
	ldr	r0, .L239+96
.LPIC108:
	add	r0, pc, r0
	bl	puts(PLT)
	ldr	r0, [sp, #52]
	mov	r1, #0
	bl	pthread_join(PLT)
	b	.L229
.L230:
	ldr	r2, .L239+100
	mov	r1, #69
	ldr	r0, .L239+104
	ldr	r3, .L239+108
.LPIC87:
	add	r2, pc, r2
.LPIC86:
	add	r0, pc, r0
	add	r2, r2, #1952
.LPIC88:
	add	r3, pc, r3
	bl	__assert2(PLT)
	b	.L216
.L231:
	ldr	r2, .L239+112
	mov	r1, #70
	ldr	r0, .L239+116
	ldr	r3, .L239+120
.LPIC90:
	add	r2, pc, r2
.LPIC89:
	add	r0, pc, r0
	add	r2, r2, #1952
.LPIC91:
	add	r3, pc, r3
	bl	__assert2(PLT)
	b	.L217
.L232:
	ldr	r2, .L239+124
	mov	r1, #71
	ldr	r0, .L239+128
	ldr	r3, .L239+132
.LPIC93:
	add	r2, pc, r2
.LPIC92:
	add	r0, pc, r0
	add	r2, r2, #1952
.LPIC94:
	add	r3, pc, r3
	bl	__assert2(PLT)
	b	.L218
.L233:
	ldr	r2, .L239+136
	mov	r1, #72
	ldr	r0, .L239+140
	ldr	r3, .L239+144
.LPIC96:
	add	r2, pc, r2
.LPIC95:
	add	r0, pc, r0
	add	r2, r2, #1952
.LPIC97:
	add	r3, pc, r3
	bl	__assert2(PLT)
	b	.L219
.L234:
	ldr	r2, .L239+148
	mov	r1, #73
	ldr	r0, .L239+152
	ldr	r3, .L239+156
.LPIC99:
	add	r2, pc, r2
.LPIC98:
	add	r0, pc, r0
	add	r2, r2, #1952
.LPIC100:
	add	r3, pc, r3
	bl	__assert2(PLT)
	b	.L220
.L235:
	ldr	r2, .L239+160
	mov	r1, #74
	ldr	r0, .L239+164
	ldr	r3, .L239+168
.LPIC102:
	add	r2, pc, r2
.LPIC101:
	add	r0, pc, r0
	add	r2, r2, #1952
.LPIC103:
	add	r3, pc, r3
	bl	__assert2(PLT)
	ldr	r0, [r7, #0]
	b	.L221
.L240:
	.align	2
.L239:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC79+8)
	.word	res(GOT)
	.word	.LC23-(.LPIC80+8)
	.word	.LC24-(.LPIC81+8)
	.word	.LC25-(.LPIC82+8)
	.word	.LC26-(.LPIC83+8)
	.word	.LC27-(.LPIC84+8)
	.word	.LC28-(.LPIC85+8)
	.word	fd_text(GOT)
	.word	.LC37-(.LPIC105+8)
	.word	ScoreThread(GOT)
	.word	stage(GOT)
	.word	.LC36-(.LPIC104+8)
	.word	stop(GOT)
	.word	.LC40-(.LPIC109+8)
	.word	.LC41-(.LPIC110+8)
	.word	.LC46-(.LPIC115+8)
	.word	.LC42-(.LPIC111+8)
	.word	.LC43-(.LPIC112+8)
	.word	.LC44-(.LPIC113+8)
	.word	score(GOT)
	.word	.LC45-(.LPIC114+8)
	.word	FailPiThread(GOT)
	.word	.LC38-(.LPIC107+8)
	.word	.LC39-(.LPIC108+8)
	.word	.LANCHOR0-(.LPIC87+8)
	.word	.LC29-(.LPIC86+8)
	.word	.LC30-(.LPIC88+8)
	.word	.LANCHOR0-(.LPIC90+8)
	.word	.LC29-(.LPIC89+8)
	.word	.LC31-(.LPIC91+8)
	.word	.LANCHOR0-(.LPIC93+8)
	.word	.LC29-(.LPIC92+8)
	.word	.LC32-(.LPIC94+8)
	.word	.LANCHOR0-(.LPIC96+8)
	.word	.LC29-(.LPIC95+8)
	.word	.LC33-(.LPIC97+8)
	.word	.LANCHOR0-(.LPIC99+8)
	.word	.LC29-(.LPIC98+8)
	.word	.LC34-(.LPIC100+8)
	.word	.LANCHOR0-(.LPIC102+8)
	.word	.LC29-(.LPIC101+8)
	.word	.LC35-(.LPIC103+8)
	.size	main, .-main
	.global	dot_main_count
	.global	answer
	.global	question
	.global	res
	.global	key_timer
	.global	stop
	.global	score
	.comm	stage,4,4
	.comm	dotstg_cntr,4,4
	.comm	fd_text,4,4
	.global	font_fail
	.global	font_success
	.global	font_clr
	.global	font_sizak
	.global	font_one
	.global	font_two
	.global	font_three
	.global	font_four
	.global	font_five
	.global	font_six
	.global	font_seven
	.global	font_eight
	.global	font_nine
	.global	font_ten
	.global	font_11
	.global	font_12
	.global	font_13
	.global	font_14
	.global	font_15
	.global	font_16
	.global	font_17
	.global	font_18
	.global	font_19
	.global	font_20
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
.LC0:
	.word	6
	.word	0
	.word	6
	.word	0
	.word	5
	.word	0
	.word	6
	.word	0
	.word	6
	.word	0
	.word	5
	.word	0
.LC1:
	.word	300000
	.word	10000
	.word	300000
	.word	10000
	.word	400000
	.word	1000
	.word	300000
	.word	10000
	.word	300000
	.word	10000
	.word	700000
	.word	1000
.LC2:
	.word	1
	.word	0
	.word	17
	.word	0
	.word	33
	.word	0
.LC3:
	.word	300000
	.word	1000
	.word	300000
	.word	1000
	.word	300000
	.word	1000
.LC4:
	.word	3
	.word	0
	.word	3
	.word	0
	.word	3
	.word	0
	.word	5
	.word	0
	.word	4
	.word	0
	.word	3
	.word	0
	.word	7
	.word	0
	.word	6
	.word	0
	.word	5
	.word	0
	.word	6
	.word	0
	.word	5
	.word	0
	.word	4
	.word	0
	.word	3
	.word	0
	.word	3
	.word	0
	.word	3
	.word	0
	.word	5
	.word	0
	.word	4
	.word	0
	.word	3
	.word	0
	.word	18
	.word	0
	.word	6
	.word	0
	.word	3
	.word	0
	.word	3
	.word	0
	.word	3
	.word	0
	.word	5
	.word	0
	.word	4
	.word	0
	.word	3
	.word	0
	.word	7
	.word	0
	.word	6
	.word	0
	.word	5
	.word	0
	.word	6
	.word	0
	.word	5
	.word	0
	.word	4
	.word	0
	.word	17
	.word	0
	.word	17
	.word	0
	.word	7
	.word	0
	.word	7
	.word	0
	.word	3
	.word	0
	.word	3
	.word	0
	.word	3
	.word	0
	.word	5
	.word	0
	.word	4
	.word	0
	.word	3
	.word	0
	.word	7
	.word	0
	.word	6
	.word	0
	.word	5
	.word	0
	.word	6
	.word	0
	.word	5
	.word	0
	.word	4
	.word	0
	.word	3
	.word	0
	.word	3
	.word	0
	.word	3
	.word	0
	.word	5
	.word	0
	.word	4
	.word	0
	.word	3
	.word	0
	.word	18
	.word	0
	.word	6
	.word	0
	.word	3
	.word	0
	.word	3
	.word	0
	.word	3
	.word	0
	.word	5
	.word	0
	.word	4
	.word	0
	.word	3
	.word	0
	.word	7
	.word	0
	.word	6
	.word	0
	.word	5
	.word	0
	.word	6
	.word	0
	.word	5
	.word	0
	.word	4
	.word	0
	.word	17
	.word	0
	.word	17
	.word	0
	.word	7
	.word	0
	.word	7
	.word	0
	.word	3
	.word	0
	.word	3
	.word	0
	.word	3
	.word	0
	.word	5
	.word	0
	.word	4
	.word	0
	.word	3
	.word	0
	.word	7
	.word	0
	.word	6
	.word	0
	.word	5
	.word	0
	.word	6
	.word	0
	.word	5
	.word	0
	.word	4
	.word	0
	.word	3
	.word	0
	.word	3
	.word	0
	.word	3
	.word	0
	.word	5
	.word	0
	.word	4
	.word	0
	.word	3
	.word	0
	.word	18
	.word	0
	.word	6
	.word	0
	.word	3
	.word	0
	.word	3
	.word	0
	.word	3
	.word	0
	.word	5
	.word	0
	.word	4
	.word	0
	.word	3
	.word	0
	.word	7
	.word	0
	.word	6
	.word	0
	.word	5
	.word	0
	.word	6
	.word	0
	.word	5
	.word	0
	.word	4
	.word	0
	.word	17
	.word	0
	.word	17
	.word	0
	.word	7
	.word	0
	.word	7
	.word	0
.LC5:
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	500000
	.word	1000
	.word	500000
	.word	1000
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	100000
	.word	150000
	.word	3000
	.word	500000
	.word	150000
	.word	150000
	.word	3000
	.word	500000
	.word	50000
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	500000
	.word	1000
	.word	500000
	.word	1000
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	100000
	.word	150000
	.word	3000
	.word	500000
	.word	150000
	.word	150000
	.word	3000
	.word	500000
	.word	50000
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	500000
	.word	1000
	.word	500000
	.word	1000
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	1500
	.word	150000
	.word	100000
	.word	150000
	.word	3000
	.word	500000
	.word	150000
	.word	150000
	.word	3000
	.word	500000
	.word	50000
.LC6:
	.word	3
	.word	0
	.word	3
	.word	0
	.word	3
	.word	0
	.word	19
	.word	0
.LC7:
	.word	800000
	.word	200000
	.word	800000
	.word	200000
	.word	800000
	.word	200000
	.word	800000
	.word	200000
.LC8:
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	65
	.byte	66
	.byte	67
	.byte	68
	.byte	69
	.byte	70
	.type	__PRETTY_FUNCTION__.5930, %object
	.size	__PRETTY_FUNCTION__.5930, 5
__PRETTY_FUNCTION__.5930:
	.ascii	"main\000"
	.data
	.align	2
	.type	dot_main_count, %object
	.size	dot_main_count, 4
dot_main_count:
	.word	-1
	.type	font_fail, %object
	.size	font_fail, 400
font_fail:
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.word	28
	.word	28
	.word	28
	.word	28
	.word	20
	.word	28
	.word	20
	.word	20
	.word	20
	.word	28
	.word	62
	.word	42
	.word	42
	.word	42
	.word	34
	.word	62
	.word	50
	.word	50
	.word	50
	.word	62
	.word	127
	.word	73
	.word	73
	.word	73
	.word	65
	.word	127
	.word	81
	.word	81
	.word	81
	.word	127
	.word	127
	.word	9
	.word	9
	.word	9
	.word	1
	.word	126
	.word	17
	.word	17
	.word	17
	.word	126
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.word	20
	.word	20
	.word	28
	.word	20
	.word	20
	.word	28
	.word	20
	.word	20
	.word	20
	.word	20
	.word	34
	.word	34
	.word	62
	.word	34
	.word	34
	.word	62
	.word	34
	.word	34
	.word	34
	.word	34
	.word	65
	.word	65
	.word	127
	.word	65
	.word	65
	.word	127
	.word	65
	.word	65
	.word	65
	.word	65
	.word	0
	.word	65
	.word	127
	.word	65
	.word	0
	.word	127
	.word	64
	.word	64
	.word	64
	.word	64
	.type	font_success, %object
	.size	font_success, 40
font_success:
	.word	62
	.word	65
	.word	65
	.word	65
	.word	62
	.word	127
	.word	8
	.word	20
	.word	34
	.word	65
	.type	font_sizak, %object
	.size	font_sizak, 40
font_sizak:
	.word	120
	.word	7
	.word	120
	.word	0
	.word	127
	.word	41
	.word	39
	.word	41
	.word	111
	.word	2
	.type	font_one, %object
	.size	font_one, 40
font_one:
	.word	62
	.word	81
	.word	73
	.word	69
	.word	62
	.word	0
	.word	66
	.word	127
	.word	64
	.word	0
	.type	font_two, %object
	.size	font_two, 40
font_two:
	.word	62
	.word	81
	.word	73
	.word	69
	.word	62
	.word	66
	.word	97
	.word	81
	.word	73
	.word	70
	.type	font_three, %object
	.size	font_three, 40
font_three:
	.word	62
	.word	81
	.word	73
	.word	69
	.word	62
	.word	33
	.word	65
	.word	69
	.word	75
	.word	49
	.type	font_four, %object
	.size	font_four, 40
font_four:
	.word	62
	.word	81
	.word	73
	.word	69
	.word	62
	.word	24
	.word	20
	.word	18
	.word	127
	.word	16
	.type	font_five, %object
	.size	font_five, 40
font_five:
	.word	62
	.word	81
	.word	73
	.word	69
	.word	62
	.word	39
	.word	69
	.word	69
	.word	69
	.word	57
	.type	font_six, %object
	.size	font_six, 40
font_six:
	.word	62
	.word	81
	.word	73
	.word	69
	.word	62
	.word	60
	.word	74
	.word	73
	.word	73
	.word	48
	.type	font_seven, %object
	.size	font_seven, 40
font_seven:
	.word	62
	.word	81
	.word	73
	.word	69
	.word	62
	.word	1
	.word	113
	.word	9
	.word	5
	.word	3
	.type	font_eight, %object
	.size	font_eight, 40
font_eight:
	.word	62
	.word	81
	.word	73
	.word	69
	.word	62
	.word	54
	.word	73
	.word	73
	.word	73
	.word	54
	.type	font_nine, %object
	.size	font_nine, 40
font_nine:
	.word	62
	.word	81
	.word	73
	.word	69
	.word	62
	.word	6
	.word	73
	.word	73
	.word	41
	.word	30
	.type	font_ten, %object
	.size	font_ten, 40
font_ten:
	.word	0
	.word	66
	.word	127
	.word	64
	.word	0
	.word	62
	.word	81
	.word	73
	.word	69
	.word	62
	.type	font_11, %object
	.size	font_11, 40
font_11:
	.word	0
	.word	66
	.word	127
	.word	64
	.word	0
	.word	0
	.word	66
	.word	127
	.word	64
	.word	0
	.type	font_12, %object
	.size	font_12, 40
font_12:
	.word	0
	.word	66
	.word	127
	.word	64
	.word	0
	.word	66
	.word	97
	.word	81
	.word	73
	.word	70
	.type	font_13, %object
	.size	font_13, 40
font_13:
	.word	0
	.word	66
	.word	127
	.word	64
	.word	0
	.word	33
	.word	65
	.word	69
	.word	75
	.word	49
	.type	font_14, %object
	.size	font_14, 40
font_14:
	.word	0
	.word	66
	.word	127
	.word	64
	.word	0
	.word	24
	.word	20
	.word	18
	.word	127
	.word	16
	.type	font_15, %object
	.size	font_15, 40
font_15:
	.word	0
	.word	66
	.word	127
	.word	64
	.word	0
	.word	39
	.word	69
	.word	69
	.word	69
	.word	57
	.type	font_16, %object
	.size	font_16, 40
font_16:
	.word	0
	.word	66
	.word	127
	.word	64
	.word	0
	.word	60
	.word	74
	.word	73
	.word	73
	.word	48
	.type	font_17, %object
	.size	font_17, 40
font_17:
	.word	0
	.word	66
	.word	127
	.word	64
	.word	0
	.word	1
	.word	113
	.word	9
	.word	5
	.word	3
	.type	font_18, %object
	.size	font_18, 40
font_18:
	.word	0
	.word	66
	.word	127
	.word	64
	.word	0
	.word	54
	.word	73
	.word	73
	.word	73
	.word	54
	.type	font_19, %object
	.size	font_19, 40
font_19:
	.word	0
	.word	66
	.word	127
	.word	64
	.word	0
	.word	6
	.word	73
	.word	73
	.word	41
	.word	30
	.type	font_20, %object
	.size	font_20, 40
font_20:
	.word	66
	.word	97
	.word	81
	.word	73
	.word	70
	.word	62
	.word	81
	.word	73
	.word	69
	.word	62
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC9:
	.ascii	"%06d\000"
	.space	3
.LC10:
	.ascii	"%x%x\000"
	.space	3
.LC11:
	.ascii	"called StageLCD\000"
.LC12:
	.ascii	"        \000"
	.space	3
.LC13:
	.ascii	"%d\000"
	.space	1
.LC14:
	.ascii	"    ==STAGE==\000"
	.space	2
.LC15:
	.ascii	"called StageStartAlert\000"
	.space	1
.LC16:
	.ascii	"StageStartAlert function Job done\000"
	.space	2
.LC17:
	.ascii	"called Compare_answer\000"
	.space	2
.LC18:
	.ascii	"question on func = %s\012\000"
	.space	1
.LC19:
	.ascii	"Compare_answer function Job done\000"
	.space	3
.LC20:
	.ascii	"called StageMain\000"
	.space	3
.LC21:
	.ascii	"question = %s\012\000"
	.space	1
.LC22:
	.ascii	"StageMain done\000"
	.space	1
.LC23:
	.ascii	"/dev/fpga_led_cjh\000"
	.space	2
.LC24:
	.ascii	"/dev/fpga_segment_cjh\000"
	.space	2
.LC25:
	.ascii	"/dev/fpga_piezo_cjh\000"
.LC26:
	.ascii	"/dev/fpga_dotmatrix_cjh\000"
.LC27:
	.ascii	"/dev/fpga_keypad_cjh\000"
	.space	3
.LC28:
	.ascii	"/dev/fpga_textlcd_cjh\000"
	.space	2
.LC29:
	.ascii	"term_cjh.c\000"
	.space	1
.LC30:
	.ascii	"fd_led != -1\000"
	.space	3
.LC31:
	.ascii	"fd_seg != -1\000"
	.space	3
.LC32:
	.ascii	"fd_piezo != -1\000"
	.space	1
.LC33:
	.ascii	"fd_dot != -1\000"
	.space	3
.LC34:
	.ascii	"fd_keypad != -1\000"
.LC35:
	.ascii	"fd_text != -1\000"
	.space	2
.LC36:
	.ascii	"---stage %d ---\012\000"
	.space	3
.LC37:
	.ascii	"alert_checker = %d\012\000"
.LC38:
	.ascii	"\303\326\301\276 \275\272\304\332\276\356\264\302 %"
	.ascii	"d \300\324\264\317\264\331 \012\000"
	.space	2
.LC39:
	.ascii	"------FAILED------\012\000"
.LC40:
	.ascii	"\307\366\300\347 \275\272\304\332\276\356\264\302 %"
	.ascii	"d \300\324\264\317\264\331\012\000"
	.space	3
.LC41:
	.ascii	"-----WIN-----\000"
	.space	2
.LC42:
	.ascii	"\303\326\310\304\300\307 \275\302\300\332!!\000"
	.space	2
.LC43:
	.ascii	"===================\000"
.LC44:
	.ascii	" Y O U R S C O R E\000"
	.space	1
.LC45:
	.ascii	"=======%d======\012\012\000"
	.space	2
.LC46:
	.ascii	"\012\000"
	.bss
	.align	2
	.type	answer, %object
	.size	answer, 10
answer:
	.space	10
	.space	2
	.type	question, %object
	.size	question, 10
question:
	.space	10
	.space	2
	.type	res, %object
	.size	res, 4
res:
	.space	4
	.type	key_timer, %object
	.size	key_timer, 4
key_timer:
	.space	4
	.type	stop, %object
	.size	stop, 4
stop:
	.space	4
	.type	score, %object
	.size	score, 4
score:
	.space	4
	.type	font_clr, %object
	.size	font_clr, 40
font_clr:
	.space	40
	.ident	"GCC: (GNU) 4.7"
	.section	.note.GNU-stack,"",%progbits
