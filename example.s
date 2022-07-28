	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"example.c"
	.global	compressionchord
	.section	.rodata
	.align	2
	.type	compressionchord, %object
	.size	compressionchord, 1024
compressionchord:
	.word	0
	.word	0
	.word	1
	.word	1
	.word	2
	.word	2
	.word	2
	.word	2
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	4
	.word	4
	.word	4
	.word	4
	.word	4
	.word	4
	.word	4
	.word	4
	.word	4
	.word	4
	.word	4
	.word	4
	.word	4
	.word	4
	.word	4
	.word	4
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.align	2
.LC0:
	.ascii	"must add CLI arg for input .wav file.\000"
	.align	2
.LC1:
	.ascii	"rb\000"
	.align	2
.LC2:
	.ascii	"Error opening input file\000"
	.align	2
.LC4:
	.ascii	"wb\000"
	.align	2
.LC5:
	.ascii	"\012Writing WAV file\000"
	.align	2
.LC6:
	.ascii	"Unable to open output file.\000"
	.align	2
.LC7:
	.ascii	"done writing to output\000"
	.align	2
.LC3:
	.ascii	"output_\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-24]
	cmp	r3, #1
	bgt	.L2
	ldr	r0, .L8
	bl	puts
	mov	r0, #1
	bl	exit
.L2:
	ldr	r3, [fp, #-28]
	add	r3, r3, #4
	ldr	r3, [r3, #0]
	mov	r0, r3
	ldr	r1, .L8+4
	bl	fopen
	mov	r2, r0
	ldr	r3, .L8+8
	str	r2, [r3, #0]
	ldr	r3, .L8+8
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L3
	ldr	r0, .L8+12
	bl	puts
	mov	r0, #1
	bl	exit
.L3:
	ldr	r3, .L8+16
	sub	r2, fp, #20
	ldmia	r3, {r0, r1}
	stmia	r2, {r0, r1}
	ldr	r3, [fp, #-28]
	add	r3, r3, #4
	ldr	r2, [r3, #0]
	sub	r3, fp, #20
	mov	r0, r3
	mov	r1, r2
	bl	strcat
	sub	r3, fp, #20
	mov	r0, r3
	ldr	r1, .L8+20
	bl	fopen
	mov	r2, r0
	ldr	r3, .L8+24
	str	r2, [r3, #0]
	ldr	r3, .L8+24
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	readWaveHeader
	ldr	r3, .L8+8
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	readWaveFileSamples
	bl	compression
	bl	decompression
	ldr	r0, .L8+28
	bl	puts
	ldr	r3, .L8+24
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L4
	ldr	r0, .L8+32
	bl	puts
	mov	r0, #1
	bl	exit
.L4:
	ldr	r3, .L8+36
	ldr	r2, [r3, #24]
	ldr	r3, .L8+36
	ldr	r3, [r3, #40]
	mul	r3, r2, r3
	mov	r3, r3, lsr #3
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L5
.L6:
	ldr	r3, .L8+40
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #2
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	and	r3, r3, #255
	ldr	r2, .L8+44
	strb	r3, [r2, #0]
	ldr	r3, .L8+40
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #2
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	and	r3, r3, #65280
	mov	r3, r3, asr #8
	and	r3, r3, #255
	ldr	r2, .L8+44
	strb	r3, [r2, #1]
	ldr	r2, [fp, #-12]
	ldr	r3, .L8+24
	ldr	r3, [r3, #0]
	ldr	r0, .L8+44
	mov	r1, r2
	mov	r2, #1
	bl	fwrite
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L5:
	ldr	r3, .L8+48
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	cmp	r3, r2
	blt	.L6
	ldr	r0, .L8+52
	bl	puts
	ldr	r3, .L8+24
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	fclose
	sub	sp, fp, #4
	ldmfd	sp!, {fp, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	.LC0
	.word	.LC1
	.word	fp
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	outfile
	.word	.LC5
	.word	.LC6
	.word	header
	.word	sample_data
	.word	buffer2
	.word	num_samples
	.word	.LC7
	.size	main, .-main
	.section	.rodata
	.align	2
.LC8:
	.ascii	"LIST\000"
	.align	2
.LC9:
	.ascii	"Unable to read wave containing LIST\000"
	.align	2
.LC10:
	.ascii	"COMPLETED Reading Wave File Headers \012\000"
	.text
	.align	2
	.global	readWaveHeader
	.type	readWaveHeader, %function
readWaveHeader:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, .L13
	ldr	r3, [r3, #0]
	ldr	r0, .L13+4
	mov	r1, #4
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r0, .L13+4
	mov	r1, #4
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r3, .L13
	ldr	r3, [r3, #0]
	ldr	r0, .L13+8
	mov	r1, #4
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r0, .L13+8
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L13+12
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L13+16
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L13+20
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r3, .L13+8
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L13+8
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	orr	r2, r2, r3
	ldr	r3, .L13+8
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r3, r3, asl #16
	orr	r2, r2, r3
	ldr	r3, .L13+8
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	orr	r3, r2, r3
	mov	r2, r3
	ldr	r3, .L13+4
	str	r2, [r3, #4]
	ldr	r3, .L13
	ldr	r3, [r3, #0]
	ldr	r0, .L13+24
	mov	r1, #4
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r0, .L13+24
	mov	r1, #4
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r3, .L13
	ldr	r3, [r3, #0]
	ldr	r0, .L13+28
	mov	r1, #4
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r0, .L13+28
	mov	r1, #4
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r3, .L13
	ldr	r3, [r3, #0]
	ldr	r0, .L13+8
	mov	r1, #4
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r0, .L13+8
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L13+12
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L13+16
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L13+20
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r3, .L13+8
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L13+8
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	orr	r2, r2, r3
	ldr	r3, .L13+8
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r3, r3, asl #16
	orr	r2, r2, r3
	ldr	r3, .L13+8
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	orr	r3, r2, r3
	mov	r2, r3
	ldr	r3, .L13+4
	str	r2, [r3, #16]
	ldr	r3, .L13
	ldr	r3, [r3, #0]
	ldr	r0, .L13+32
	mov	r1, #2
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r0, .L13+32
	mov	r1, #2
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r3, .L13+32
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L13+32
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	orr	r3, r2, r3
	mov	r2, r3
	ldr	r3, .L13+4
	str	r2, [r3, #20]
	ldr	r3, .L13
	ldr	r3, [r3, #0]
	ldr	r0, .L13+32
	mov	r1, #2
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r0, .L13+32
	mov	r1, #2
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r3, .L13+32
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L13+32
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	orr	r3, r2, r3
	mov	r2, r3
	ldr	r3, .L13+4
	str	r2, [r3, #24]
	ldr	r3, .L13
	ldr	r3, [r3, #0]
	ldr	r0, .L13+8
	mov	r1, #4
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r0, .L13+8
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L13+12
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L13+16
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L13+20
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r3, .L13+8
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L13+8
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	orr	r2, r2, r3
	ldr	r3, .L13+8
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r3, r3, asl #16
	orr	r2, r2, r3
	ldr	r3, .L13+8
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	orr	r3, r2, r3
	mov	r2, r3
	ldr	r3, .L13+4
	str	r2, [r3, #28]
	ldr	r3, .L13
	ldr	r3, [r3, #0]
	ldr	r0, .L13+8
	mov	r1, #4
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r0, .L13+8
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L13+12
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L13+16
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L13+20
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r3, .L13+8
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L13+8
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	orr	r2, r2, r3
	ldr	r3, .L13+8
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r3, r3, asl #16
	orr	r2, r2, r3
	ldr	r3, .L13+8
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	orr	r3, r2, r3
	mov	r2, r3
	ldr	r3, .L13+4
	str	r2, [r3, #32]
	ldr	r3, .L13
	ldr	r3, [r3, #0]
	ldr	r0, .L13+32
	mov	r1, #2
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r0, .L13+32
	mov	r1, #2
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r3, .L13+32
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L13+32
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	orr	r3, r2, r3
	mov	r2, r3
	ldr	r3, .L13+4
	str	r2, [r3, #36]
	ldr	r3, .L13
	ldr	r3, [r3, #0]
	ldr	r0, .L13+32
	mov	r1, #2
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r0, .L13+32
	mov	r1, #2
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r3, .L13+32
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L13+32
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	orr	r3, r2, r3
	mov	r2, r3
	ldr	r3, .L13+4
	str	r2, [r3, #40]
	ldr	r3, .L13
	ldr	r3, [r3, #0]
	ldr	r0, .L13+36
	mov	r1, #4
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r0, .L13+36
	ldr	r1, .L13+40
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L11
	ldr	r0, .L13+44
	bl	printf
	mov	r0, #1
	bl	exit
.L11:
	ldr	r0, .L13+36
	mov	r1, #4
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r3, .L13
	ldr	r3, [r3, #0]
	ldr	r0, .L13+8
	mov	r1, #4
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r0, .L13+8
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L13+12
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L13+16
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L13+20
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r3, .L13+8
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L13+8
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	orr	r2, r2, r3
	ldr	r3, .L13+8
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r3, r3, asl #16
	orr	r2, r2, r3
	ldr	r3, .L13+8
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	orr	r3, r2, r3
	mov	r2, r3
	ldr	r3, .L13+4
	str	r2, [r3, #48]
	ldr	r0, .L13+48
	bl	puts
	sub	sp, fp, #4
	ldmfd	sp!, {fp, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	fp
	.word	header
	.word	buffer4
	.word	buffer4+1
	.word	buffer4+2
	.word	buffer4+3
	.word	header+8
	.word	header+12
	.word	buffer2
	.word	header+44
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.size	readWaveHeader, .-readWaveHeader
	.section	.rodata
	.align	2
.LC11:
	.ascii	"Starting reading WAV file samples\000"
	.align	2
.LC12:
	.ascii	"Number of channels %i\000"
	.global	__aeabi_uidiv
	.align	2
.LC13:
	.ascii	"Couldn't allocate memory\000"
	.align	2
.LC14:
	.ascii	"Finished reading WAV file samples\000"
	.align	2
.LC15:
	.ascii	"Can only read PCM.\000"
	.text
	.align	2
	.global	readWaveFileSamples
	.type	readWaveFileSamples, %function
readWaveFileSamples:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	ldr	r0, .L21
	bl	puts
	ldr	r3, .L21+4
	ldr	r3, [r3, #20]
	cmp	r3, #1
	bne	.L16
	ldr	r3, .L21+4
	ldr	r3, [r3, #24]
	ldr	r0, .L21+8
	mov	r1, r3
	bl	printf
	ldr	r3, .L21+4
	ldr	r2, [r3, #24]
	ldr	r3, .L21+4
	ldr	r3, [r3, #40]
	mul	r3, r2, r3
	mov	r3, r3, lsr #3
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-16]
	ldr	r3, .L21+4
	ldr	r3, [r3, #24]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_uidiv
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r3, .L21+4
	ldr	r3, [r3, #48]
	mov	r1, r3, asl #3
	ldr	r3, .L21+4
	ldr	r2, [r3, #24]
	ldr	r3, .L21+4
	ldr	r3, [r3, #40]
	mul	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_uidiv
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L21+12
	str	r2, [r3, #0]
	ldr	r3, .L21+12
	ldr	r3, [r3, #0]
	mov	r0, r3
	mov	r1, #4
	bl	calloc
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L21+16
	str	r2, [r3, #0]
	ldr	r3, .L21+16
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L17
	ldr	r0, .L21+20
	bl	puts
	mov	r0, #1
	bl	exit
.L17:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L18
.L19:
	ldr	r3, [fp, #-16]
	ldr	r0, .L21+24
	mov	r1, r3
	mov	r2, #1
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, .L21+16
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #2
	add	r1, r2, r3
	ldr	r3, .L21+24
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L21+24
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	orr	r3, r2, r3
	str	r3, [r1, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L18:
	ldr	r3, .L21+12
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	cmp	r3, r2
	blt	.L19
	ldr	r0, .L21+28
	bl	puts
	sub	sp, fp, #4
	ldmfd	sp!, {fp, lr}
	bx	lr
.L16:
	ldr	r0, .L21+32
	bl	printf
	mov	r0, #1
	bl	exit
.L22:
	.align	2
.L21:
	.word	.LC11
	.word	header
	.word	.LC12
	.word	num_samples
	.word	sample_data
	.word	.LC13
	.word	buffer2
	.word	.LC14
	.word	.LC15
	.size	readWaveFileSamples, .-readWaveFileSamples
	.align	2
	.global	codewordCompression
	.type	codewordCompression, %function
codewordCompression:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-16]
	mov	r2, r3, lsr #5
	ldr	r3, .L25
	ldr	r3, [r3, r2, asl #2]
	strb	r3, [fp, #-7]
	ldrb	r3, [fp, #-7]	@ zero_extendqisi2
	add	r2, r3, #1
	ldr	r3, [fp, #-16]
	mov	r3, r3, lsr r2
	and	r3, r3, #255
	and	r3, r3, #15
	strb	r3, [fp, #-6]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #7
	and	r2, r3, #255
	ldrb	r3, [fp, #-7]	@ zero_extendqisi2
	mov	r3, r3, asl #4
	and	r3, r3, #255
	orr	r3, r2, r3
	and	r3, r3, #255
	ldrb	r2, [fp, #-6]	@ zero_extendqisi2
	mov	r1, r3
	mov	r3, r2
	orr	r3, r1, r3
	and	r3, r3, #255
	strb	r3, [fp, #-5]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L26:
	.align	2
.L25:
	.word	compressionchord
	.size	codewordCompression, .-codewordCompression
	.align	2
	.global	codewordDecompression
	.type	codewordDecompression, %function
codewordDecompression:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	and	r3, r3, #112
	mov	r3, r3, asr #4
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-16]
	and	r3, r3, #15
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L28
.L37:
	.word	.L29
	.word	.L30
	.word	.L31
	.word	.L32
	.word	.L33
	.word	.L34
	.word	.L35
	.word	.L36
.L36:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #8
	orr	r3, r3, #4224
	str	r3, [fp, #-20]
	b	.L38
.L35:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #7
	orr	r3, r3, #2112
	str	r3, [fp, #-20]
	b	.L38
.L34:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #6
	orr	r3, r3, #1056
	str	r3, [fp, #-20]
	b	.L38
.L33:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #5
	orr	r3, r3, #528
	str	r3, [fp, #-20]
	b	.L38
.L32:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #4
	orr	r3, r3, #264
	str	r3, [fp, #-20]
	b	.L38
.L31:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #3
	orr	r3, r3, #132
	str	r3, [fp, #-20]
	b	.L38
.L30:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #2
	orr	r3, r3, #66
	str	r3, [fp, #-20]
	b	.L38
.L29:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #1
	orr	r3, r3, #33
	str	r3, [fp, #-20]
	b	.L38
.L28:
	b	.L27
.L38:
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-24]
.L27:
	ldr	r0, [fp, #-24]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	codewordDecompression, .-codewordDecompression
	.align	2
	.global	compression
	.type	compression, %function
compression:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	ldr	r3, .L44
	ldr	r3, [r3, #0]
	mov	r0, r3
	mov	r1, #4
	bl	calloc
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L44+4
	str	r2, [r3, #0]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L41
.L42:
	ldr	r3, .L44+8
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #2
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	mov	r3, r3, asr #2
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	mvn	r3, r3
	mov	r3, r3, lsr #31
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	rsblt	r3, r3, #0
	add	r3, r3, #33
	str	r3, [fp, #-12]
	ldr	r0, [fp, #-12]
	ldr	r1, [fp, #-16]
	bl	codewordCompression
	mov	r3, r0
	mvn	r3, r3
	str	r3, [fp, #-8]
	ldr	r3, .L44+4
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #2
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L41:
	ldr	r3, .L44
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	cmp	r3, r2
	blt	.L42
	sub	sp, fp, #4
	ldmfd	sp!, {fp, lr}
	bx	lr
.L45:
	.align	2
.L44:
	.word	num_samples
	.word	compressed_samples
	.word	sample_data
	.size	compression, .-compression
	.align	2
	.global	decompression
	.type	decompression, %function
decompression:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L47
.L50:
	ldr	r3, .L52
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #2
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	mvn	r3, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	and	r3, r3, #128
	mov	r3, r3, asr #7
	str	r3, [fp, #-12]
	ldr	r0, [fp, #-16]
	bl	codewordDecompression
	mov	r3, r0
	sub	r3, r3, #33
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	cmp	r3, #1
	beq	.L48
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #0
	str	r3, [fp, #-24]
	b	.L49
.L48:
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-24]
.L49:
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-16]
	ldr	r3, .L52+4
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #2
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #2
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L47:
	ldr	r3, .L52+8
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	cmp	r3, r2
	blt	.L50
	sub	sp, fp, #4
	ldmfd	sp!, {fp, lr}
	bx	lr
.L53:
	.align	2
.L52:
	.word	compressed_samples
	.word	sample_data
	.word	num_samples
	.size	decompression, .-decompression
	.comm	start,4,4
	.comm	stop,4,4
	.comm	fp,4,4
	.comm	outfile,4,4
	.comm	header,52,4
	.comm	buffer4,4,1
	.comm	buffer2,2,1
	.comm	sample_data,4,4
	.comm	compressed_samples,4,4
	.comm	num_samples,4,4
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
