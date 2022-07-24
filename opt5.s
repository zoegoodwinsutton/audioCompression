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
	.data
	.align	2
	.type	exp_lut, %object
	.size	exp_lut, 1024
exp_lut:
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
	.type	decompressionlut, %object
	.size	decompressionlut, 32
decompressionlut:
	.word	33
	.word	66
	.word	132
	.word	264
	.word	528
	.word	1056
	.word	2212
	.word	4224
	.section	.rodata
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
	.global	__aeabi_i2d
	.global	__aeabi_ddiv
	.align	2
.LC5:
	.ascii	"Audio Compression using Mu Law: %f seconds \012\000"
	.align	2
.LC6:
	.ascii	"Audio Compression using Mu Law: %d clock cycles \012"
	.ascii	"\012\000"
	.align	2
.LC7:
	.ascii	"Audio Decompression using Mu Law: %f seconds\012s\000"
	.align	2
.LC8:
	.ascii	"Audio Decompression using Mu Law: %d clock cycles\012"
	.ascii	"\012\000"
	.align	2
.LC9:
	.ascii	"\012Writing WAV file\000"
	.align	2
.LC10:
	.ascii	"Unable to open output file.\000"
	.align	2
.LC11:
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
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #76
	str	r0, [fp, #-80]
	str	r1, [fp, #-84]
	ldr	r3, [fp, #-80]
	cmp	r3, #1
	bgt	.L2
	ldr	r0, .L14
	bl	puts
	mov	r0, #1
	bl	exit
.L2:
	ldr	r3, [fp, #-84]
	add	r3, r3, #4
	ldr	r3, [r3, #0]
	mov	r0, r3
	ldr	r1, .L14+4
	bl	fopen
	mov	r2, r0
	ldr	r3, .L14+8
	str	r2, [r3, #0]
	ldr	r3, .L14+8
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L3
	ldr	r0, .L14+12
	bl	puts
	mov	r0, #1
	bl	exit
.L3:
	ldr	r3, .L14+16
	sub	r2, fp, #72
	ldmia	r3, {r0, r1}
	stmia	r2, {r0, r1}
	ldr	r3, [fp, #-84]
	add	r3, r3, #4
	ldr	r2, [r3, #0]
	sub	r3, fp, #72
	mov	r0, r3
	mov	r1, r2
	bl	strcat
	sub	r3, fp, #72
	mov	r0, r3
	ldr	r1, .L14+20
	bl	fopen
	mov	r3, r0
	str	r3, [fp, #-64]
	ldr	r0, [fp, #-64]
	bl	readWaveHeader
	ldr	r3, .L14+8
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	readWaveFileSamples
	bl	clock
	mov	r2, r0
	ldr	r3, .L14+24
	str	r2, [r3, #0]
	ldr	r3, .L14+28
	ldr	r3, [r3, #0]
	mov	r0, r3
	mov	r1, #4
	bl	calloc
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L14+32
	str	r2, [r3, #0]
	mov	r3, #0
	str	r3, [fp, #-60]
	b	.L4
.L5:
	ldr	r3, .L14+36
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-60]
	mov	r3, r3, asl #2
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	mov	r3, r3, asr #2
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	mvn	r3, r3
	mov	r3, r3, lsr #31
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	rsblt	r3, r3, #0
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	add	r3, r3, #33
	str	r3, [fp, #-40]
	ldr	r0, [fp, #-40]
	ldr	r1, [fp, #-44]
	bl	codewordCompression
	mov	r3, r0
	mvn	r3, r3
	str	r3, [fp, #-36]
	ldr	r3, .L14+32
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-60]
	mov	r3, r3, asl #2
	add	r2, r2, r3
	ldr	r3, [fp, #-36]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	str	r3, [fp, #-60]
.L4:
	ldr	r3, .L14+28
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-60]
	cmp	r3, r2
	blt	.L5
	bl	clock
	mov	r2, r0
	ldr	r3, .L14+40
	str	r2, [r3, #0]
	ldr	r3, .L14+40
	ldr	r2, [r3, #0]
	ldr	r3, .L14+24
	ldr	r3, [r3, #0]
	rsb	r3, r3, r2
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	mov	r5, #0
	mov	r6, #1090519040
	add	r6, r6, #3047424
	add	r6, r6, #1152
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	ldr	r0, .L14+44
	mov	r2, r3
	mov	r3, r4
	bl	printf
	ldr	r3, .L14+40
	ldr	r2, [r3, #0]
	ldr	r3, .L14+24
	ldr	r3, [r3, #0]
	rsb	r3, r3, r2
	ldr	r0, .L14+48
	mov	r1, r3
	bl	printf
	bl	clock
	mov	r2, r0
	ldr	r3, .L14+24
	str	r2, [r3, #0]
	mov	r3, #0
	str	r3, [fp, #-60]
	b	.L6
.L9:
	ldr	r3, .L14+32
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-60]
	mov	r3, r3, asl #2
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	mvn	r3, r3
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	and	r3, r3, #128
	mov	r3, r3, asr #7
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-32]
	bl	codewordDecompression
	mov	r3, r0
	sub	r3, r3, #33
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-28]
	cmp	r3, #1
	bne	.L7
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-32]
	b	.L8
.L7:
	ldr	r3, [fp, #-24]
	rsb	r3, r3, #0
	str	r3, [fp, #-32]
.L8:
	ldr	r3, .L14+36
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-60]
	mov	r3, r3, asl #2
	add	r2, r2, r3
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #2
	str	r3, [r2, #0]
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	str	r3, [fp, #-60]
.L6:
	ldr	r3, .L14+28
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-60]
	cmp	r3, r2
	blt	.L9
	bl	clock
	mov	r2, r0
	ldr	r3, .L14+40
	str	r2, [r3, #0]
	ldr	r3, .L14+40
	ldr	r2, [r3, #0]
	ldr	r3, .L14+24
	ldr	r3, [r3, #0]
	rsb	r3, r3, r2
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	mov	r5, #0
	mov	r6, #1090519040
	add	r6, r6, #3047424
	add	r6, r6, #1152
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	ldr	r0, .L14+52
	mov	r2, r3
	mov	r3, r4
	bl	printf
	ldr	r3, .L14+40
	ldr	r2, [r3, #0]
	ldr	r3, .L14+24
	ldr	r3, [r3, #0]
	rsb	r3, r3, r2
	ldr	r0, .L14+56
	mov	r1, r3
	bl	printf
	mov	r0, #10
	bl	putchar
	ldr	r0, .L14+60
	bl	puts
	ldr	r3, [fp, #-64]
	cmp	r3, #0
	bne	.L10
	ldr	r0, .L14+64
	bl	puts
	mov	r0, #1
	bl	exit
.L10:
	ldr	r3, .L14+68
	ldr	r2, [r3, #24]
	ldr	r3, .L14+68
	ldr	r3, [r3, #40]
	mul	r3, r2, r3
	mov	r3, r3, lsr #3
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-60]
	b	.L11
.L12:
	ldr	r3, .L14+36
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-60]
	mov	r3, r3, asl #2
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	and	r3, r3, #255
	ldr	r2, .L14+72
	strb	r3, [r2, #0]
	ldr	r3, .L14+36
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-60]
	mov	r3, r3, asl #2
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	and	r3, r3, #65280
	mov	r3, r3, asr #8
	and	r3, r3, #255
	ldr	r2, .L14+72
	strb	r3, [r2, #1]
	ldr	r3, [fp, #-52]
	ldr	r0, .L14+72
	mov	r1, r3
	mov	r2, #1
	ldr	r3, [fp, #-64]
	bl	fwrite
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	str	r3, [fp, #-60]
.L11:
	ldr	r3, .L14+28
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-60]
	cmp	r3, r2
	blt	.L12
	ldr	r0, .L14+76
	bl	puts
	ldr	r0, [fp, #-64]
	bl	fclose
	sub	sp, fp, #16
	ldmfd	sp!, {r4, r5, r6, fp, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	.LC0
	.word	.LC1
	.word	fp
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	start
	.word	num_samples
	.word	compressed_samples
	.word	sample_data
	.word	stop
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	header
	.word	buffer2
	.word	.LC11
	.size	main, .-main
	.section	.rodata
	.align	2
.LC12:
	.ascii	"Reading Wave File Headers.... \000"
	.align	2
.LC13:
	.ascii	"(1-4): %s \012\000"
	.align	2
.LC14:
	.ascii	"(5-8) Overall size: bytes:%u, Kb:%u \012\000"
	.align	2
.LC15:
	.ascii	"(9-12) Wave marker: %s\012\000"
	.align	2
.LC16:
	.ascii	"(13-16) Fmt marker: %s\012\000"
	.align	2
.LC17:
	.ascii	"(17-20) Length of Fmt header: %u \012\000"
	.align	2
.LC18:
	.ascii	"(21-22) Format type: %u \012\000"
	.align	2
.LC19:
	.ascii	"(23-24) Channels: %u \012\000"
	.align	2
.LC20:
	.ascii	"(25-28) Sample rate: %u\012\000"
	.align	2
.LC21:
	.ascii	"(29-32) Byte Rate: %u , Bit Rate:%u\012\000"
	.align	2
.LC22:
	.ascii	"(33-34) Block Alignment: %u \012\000"
	.align	2
.LC23:
	.ascii	"(35-36) Bits per sample: %u \012\000"
	.align	2
.LC24:
	.ascii	"LIST\000"
	.align	2
.LC25:
	.ascii	"I SEE A LIST!\000"
	.align	2
.LC26:
	.ascii	"(37-40) Data Marker: %s \012\000"
	.align	2
.LC27:
	.ascii	"(41-44) Size of data chunk: %u \012\000"
	.align	2
.LC28:
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
	str	r3, [fp, #-12]
	ldr	r0, .L21
	bl	puts
	ldr	r3, .L21+4
	ldr	r3, [r3, #0]
	ldr	r0, .L21+8
	mov	r1, #4
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r0, .L21+8
	mov	r1, #4
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L21+12
	ldr	r1, .L21+8
	bl	printf
	ldr	r3, .L21+4
	ldr	r3, [r3, #0]
	ldr	r0, .L21+16
	mov	r1, #4
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r0, .L21+16
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L21+20
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L21+24
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L21+28
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r3, .L21+16
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L21+16
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	orr	r2, r2, r3
	ldr	r3, .L21+16
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r3, r3, asl #16
	orr	r2, r2, r3
	ldr	r3, .L21+16
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	orr	r3, r2, r3
	mov	r2, r3
	ldr	r3, .L21+8
	str	r2, [r3, #4]
	ldr	r3, .L21+8
	ldr	r2, [r3, #4]
	ldr	r3, .L21+8
	ldr	r3, [r3, #4]
	mov	r3, r3, lsr #10
	ldr	r0, .L21+32
	mov	r1, r2
	mov	r2, r3
	bl	printf
	ldr	r3, .L21+4
	ldr	r3, [r3, #0]
	ldr	r0, .L21+36
	mov	r1, #4
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r0, .L21+36
	mov	r1, #4
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L21+40
	ldr	r1, .L21+36
	bl	printf
	ldr	r3, .L21+4
	ldr	r3, [r3, #0]
	ldr	r0, .L21+44
	mov	r1, #4
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r0, .L21+44
	mov	r1, #4
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L21+48
	ldr	r1, .L21+44
	bl	printf
	ldr	r3, .L21+4
	ldr	r3, [r3, #0]
	ldr	r0, .L21+16
	mov	r1, #4
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r0, .L21+16
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L21+20
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L21+24
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L21+28
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r3, .L21+16
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L21+16
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	orr	r2, r2, r3
	ldr	r3, .L21+16
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r3, r3, asl #16
	orr	r2, r2, r3
	ldr	r3, .L21+16
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	orr	r3, r2, r3
	mov	r2, r3
	ldr	r3, .L21+8
	str	r2, [r3, #16]
	ldr	r3, .L21+8
	ldr	r3, [r3, #16]
	ldr	r0, .L21+52
	mov	r1, r3
	bl	printf
	ldr	r3, .L21+4
	ldr	r3, [r3, #0]
	ldr	r0, .L21+56
	mov	r1, #2
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r0, .L21+56
	mov	r1, #2
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r3, .L21+56
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L21+56
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	orr	r3, r2, r3
	mov	r2, r3
	ldr	r3, .L21+8
	str	r2, [r3, #20]
	ldr	r3, .L21+8
	ldr	r3, [r3, #20]
	ldr	r0, .L21+60
	mov	r1, r3
	bl	printf
	ldr	r3, .L21+4
	ldr	r3, [r3, #0]
	ldr	r0, .L21+56
	mov	r1, #2
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r0, .L21+56
	mov	r1, #2
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r3, .L21+56
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L21+56
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	orr	r3, r2, r3
	mov	r2, r3
	ldr	r3, .L21+8
	str	r2, [r3, #24]
	ldr	r3, .L21+8
	ldr	r3, [r3, #24]
	ldr	r0, .L21+64
	mov	r1, r3
	bl	printf
	ldr	r3, .L21+4
	ldr	r3, [r3, #0]
	ldr	r0, .L21+16
	mov	r1, #4
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r0, .L21+16
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L21+20
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L21+24
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L21+28
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r3, .L21+16
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L21+16
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	orr	r2, r2, r3
	ldr	r3, .L21+16
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r3, r3, asl #16
	orr	r2, r2, r3
	ldr	r3, .L21+16
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	orr	r3, r2, r3
	mov	r2, r3
	ldr	r3, .L21+8
	str	r2, [r3, #28]
	ldr	r3, .L21+8
	ldr	r3, [r3, #28]
	ldr	r0, .L21+68
	mov	r1, r3
	bl	printf
	ldr	r3, .L21+4
	ldr	r3, [r3, #0]
	ldr	r0, .L21+16
	mov	r1, #4
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r0, .L21+16
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L21+20
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L21+24
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L21+28
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r3, .L21+16
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L21+16
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	orr	r2, r2, r3
	ldr	r3, .L21+16
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r3, r3, asl #16
	orr	r2, r2, r3
	ldr	r3, .L21+16
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	orr	r3, r2, r3
	mov	r2, r3
	ldr	r3, .L21+8
	str	r2, [r3, #32]
	ldr	r3, .L21+8
	ldr	r2, [r3, #32]
	ldr	r3, .L21+8
	ldr	r3, [r3, #32]
	mov	r3, r3, asl #3
	ldr	r0, .L21+72
	mov	r1, r2
	mov	r2, r3
	bl	printf
	ldr	r3, .L21+4
	ldr	r3, [r3, #0]
	ldr	r0, .L21+56
	mov	r1, #2
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r0, .L21+56
	mov	r1, #2
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r3, .L21+56
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L21+56
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	orr	r3, r2, r3
	mov	r2, r3
	ldr	r3, .L21+8
	str	r2, [r3, #36]
	ldr	r3, .L21+8
	ldr	r3, [r3, #36]
	ldr	r0, .L21+76
	mov	r1, r3
	bl	printf
	ldr	r3, .L21+4
	ldr	r3, [r3, #0]
	ldr	r0, .L21+56
	mov	r1, #2
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r0, .L21+56
	mov	r1, #2
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r3, .L21+56
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L21+56
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	orr	r3, r2, r3
	mov	r2, r3
	ldr	r3, .L21+8
	str	r2, [r3, #40]
	ldr	r3, .L21+8
	ldr	r3, [r3, #40]
	ldr	r0, .L21+80
	mov	r1, r3
	bl	printf
	ldr	r3, .L21+4
	ldr	r3, [r3, #0]
	ldr	r0, .L21+84
	mov	r1, #4
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r0, .L21+84
	ldr	r1, .L21+88
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L17
	ldr	r0, .L21+92
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L18
.L19:
	ldr	r3, .L21+4
	ldr	r3, [r3, #0]
	ldr	r0, .L21+16
	mov	r1, #4
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r0, .L21+16
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L21+20
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L21+24
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L21+28
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L18:
	ldr	r3, [fp, #-8]
	cmp	r3, #6
	ble	.L19
	ldr	r3, .L21+4
	ldr	r3, [r3, #0]
	ldr	r0, .L21+56
	mov	r1, #2
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r0, .L21+56
	mov	r1, #2
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r3, .L21+4
	ldr	r3, [r3, #0]
	ldr	r0, .L21+84
	mov	r1, #4
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-12]
.L17:
	ldr	r0, .L21+84
	mov	r1, #4
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L21+96
	ldr	r1, .L21+84
	bl	printf
	ldr	r3, .L21+4
	ldr	r3, [r3, #0]
	ldr	r0, .L21+16
	mov	r1, #4
	mov	r2, #1
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r0, .L21+16
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L21+20
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L21+24
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r0, .L21+28
	mov	r1, #1
	mov	r2, #1
	ldr	r3, [fp, #-16]
	bl	fwrite
	ldr	r3, .L21+16
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L21+16
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	orr	r2, r2, r3
	ldr	r3, .L21+16
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r3, r3, asl #16
	orr	r2, r2, r3
	ldr	r3, .L21+16
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	orr	r3, r2, r3
	mov	r2, r3
	ldr	r3, .L21+8
	str	r2, [r3, #48]
	ldr	r3, .L21+8
	ldr	r3, [r3, #48]
	ldr	r0, .L21+100
	mov	r1, r3
	bl	printf
	ldr	r0, .L21+104
	bl	puts
	sub	sp, fp, #4
	ldmfd	sp!, {fp, lr}
	bx	lr
.L22:
	.align	2
.L21:
	.word	.LC12
	.word	fp
	.word	header
	.word	.LC13
	.word	buffer4
	.word	buffer4+1
	.word	buffer4+2
	.word	buffer4+3
	.word	.LC14
	.word	header+8
	.word	.LC15
	.word	header+12
	.word	.LC16
	.word	.LC17
	.word	buffer2
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	header+44
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.size	readWaveHeader, .-readWaveHeader
	.section	.rodata
	.align	2
.LC29:
	.ascii	"Starting reading WAV file samples\000"
	.align	2
.LC30:
	.ascii	"Number of channels %i\000"
	.global	__aeabi_uidiv
	.align	2
.LC31:
	.ascii	"Couldn't allocate memory\000"
	.align	2
.LC32:
	.ascii	"Finished reading WAV file samples\000"
	.align	2
.LC33:
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
	ldr	r0, .L29
	bl	puts
	ldr	r3, .L29+4
	ldr	r3, [r3, #20]
	cmp	r3, #1
	bne	.L24
	ldr	r3, .L29+4
	ldr	r3, [r3, #24]
	ldr	r0, .L29+8
	mov	r1, r3
	bl	printf
	ldr	r3, .L29+4
	ldr	r2, [r3, #24]
	ldr	r3, .L29+4
	ldr	r3, [r3, #40]
	mul	r3, r2, r3
	mov	r3, r3, lsr #3
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-16]
	ldr	r3, .L29+4
	ldr	r3, [r3, #24]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_uidiv
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r3, .L29+4
	ldr	r3, [r3, #48]
	mov	r1, r3, asl #3
	ldr	r3, .L29+4
	ldr	r2, [r3, #24]
	ldr	r3, .L29+4
	ldr	r3, [r3, #40]
	mul	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_uidiv
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L29+12
	str	r2, [r3, #0]
	ldr	r3, .L29+12
	ldr	r3, [r3, #0]
	mov	r0, r3
	mov	r1, #4
	bl	calloc
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L29+16
	str	r2, [r3, #0]
	ldr	r3, .L29+16
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L25
	ldr	r0, .L29+20
	bl	puts
	mov	r0, #1
	bl	exit
.L25:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L26
.L27:
	ldr	r3, [fp, #-16]
	ldr	r0, .L29+24
	mov	r1, r3
	mov	r2, #1
	ldr	r3, [fp, #-24]
	bl	fread
	ldr	r3, .L29+16
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #2
	add	r1, r2, r3
	ldr	r3, .L29+24
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L29+24
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	orr	r3, r2, r3
	str	r3, [r1, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L26:
	ldr	r3, .L29+12
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	cmp	r3, r2
	blt	.L27
	ldr	r0, .L29+28
	bl	puts
	sub	sp, fp, #4
	ldmfd	sp!, {fp, lr}
	bx	lr
.L24:
	ldr	r0, .L29+32
	bl	printf
	mov	r0, #1
	bl	exit
.L30:
	.align	2
.L29:
	.word	.LC29
	.word	header
	.word	.LC30
	.word	num_samples
	.word	sample_data
	.word	.LC31
	.word	buffer2
	.word	.LC32
	.word	.LC33
	.size	readWaveFileSamples, .-readWaveFileSamples
	.align	2
	.global	signum
	.type	signum, %function
signum:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mvn	r3, r3
	mov	r3, r3, lsr #31
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	signum, .-signum
	.align	2
	.global	magnitude
	.type	magnitude, %function
magnitude:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	rsblt	r3, r3, #0
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	magnitude, .-magnitude
	.align	2
	.global	codewordCompression
	.type	codewordCompression, %function
codewordCompression:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-16]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L36
	mov	r3, #0
	strb	r3, [fp, #-7]
	ldr	r3, [fp, #-16]
	mov	r3, r3, lsr #1
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
	str	r3, [fp, #-24]
	b	.L37
.L36:
	ldr	r3, [fp, #-16]
	and	r3, r3, #4096
	cmp	r3, #0
	beq	.L38
	mov	r3, #7
	strb	r3, [fp, #-7]
	ldr	r3, [fp, #-16]
	mov	r3, r3, lsr #8
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
	str	r3, [fp, #-24]
	b	.L37
.L38:
	ldr	r3, [fp, #-16]
	and	r3, r3, #2048
	cmp	r3, #0
	beq	.L39
	mov	r3, #6
	strb	r3, [fp, #-7]
	ldr	r3, [fp, #-16]
	mov	r3, r3, lsr #7
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
	str	r3, [fp, #-24]
	b	.L37
.L39:
	ldr	r3, [fp, #-16]
	and	r3, r3, #1024
	cmp	r3, #0
	beq	.L40
	mov	r3, #5
	strb	r3, [fp, #-7]
	ldr	r3, [fp, #-16]
	mov	r3, r3, lsr #6
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
	str	r3, [fp, #-24]
	b	.L37
.L40:
	ldr	r3, [fp, #-16]
	and	r3, r3, #512
	cmp	r3, #0
	beq	.L41
	mov	r3, #4
	strb	r3, [fp, #-7]
	ldr	r3, [fp, #-16]
	mov	r3, r3, lsr #5
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
	str	r3, [fp, #-24]
	b	.L37
.L41:
	ldr	r3, [fp, #-16]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L42
	mov	r3, #3
	strb	r3, [fp, #-7]
	ldr	r3, [fp, #-16]
	mov	r3, r3, lsr #4
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
	str	r3, [fp, #-24]
	b	.L37
.L42:
	ldr	r3, [fp, #-16]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L43
	mov	r3, #2
	strb	r3, [fp, #-7]
	ldr	r3, [fp, #-16]
	mov	r3, r3, lsr #3
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
	str	r3, [fp, #-24]
	b	.L37
.L43:
	ldr	r3, [fp, #-16]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L44
	mov	r3, #1
	strb	r3, [fp, #-7]
	ldr	r3, [fp, #-16]
	mov	r3, r3, lsr #2
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
	str	r3, [fp, #-24]
	b	.L37
.L44:
	b	.L35
.L37:
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-28]
.L35:
	ldr	r0, [fp, #-28]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
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
	bne	.L47
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #8
	orr	r3, r3, #4224
	str	r3, [fp, #-20]
	b	.L48
.L47:
	ldr	r3, [fp, #-12]
	cmp	r3, #6
	bne	.L49
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #7
	orr	r3, r3, #2112
	str	r3, [fp, #-20]
	b	.L48
.L49:
	ldr	r3, [fp, #-12]
	cmp	r3, #5
	bne	.L50
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #6
	orr	r3, r3, #1056
	str	r3, [fp, #-20]
	b	.L48
.L50:
	ldr	r3, [fp, #-12]
	cmp	r3, #4
	bne	.L51
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #5
	orr	r3, r3, #528
	str	r3, [fp, #-20]
	b	.L48
.L51:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	bne	.L52
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #4
	orr	r3, r3, #264
	str	r3, [fp, #-20]
	b	.L48
.L52:
	ldr	r3, [fp, #-12]
	cmp	r3, #2
	bne	.L53
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #3
	orr	r3, r3, #132
	str	r3, [fp, #-20]
	b	.L48
.L53:
	ldr	r3, [fp, #-12]
	cmp	r3, #1
	bne	.L54
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #2
	orr	r3, r3, #66
	str	r3, [fp, #-20]
	b	.L48
.L54:
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L55
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #1
	orr	r3, r3, #33
	str	r3, [fp, #-20]
	b	.L48
.L55:
	b	.L46
.L48:
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-24]
.L46:
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
	stmfd	sp!, {r4, r5, r6, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #28
	bl	clock
	mov	r2, r0
	ldr	r3, .L61
	str	r2, [r3, #0]
	ldr	r3, .L61+4
	ldr	r3, [r3, #0]
	mov	r0, r3
	mov	r1, #4
	bl	calloc
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L61+8
	str	r2, [r3, #0]
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L58
.L59:
	ldr	r3, .L61+12
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-40]
	mov	r3, r3, asl #2
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	mov	r3, r3, asr #2
	str	r3, [fp, #-36]
	ldr	r0, [fp, #-36]
	bl	signum
	mov	r3, r0
	str	r3, [fp, #-32]
	ldr	r0, [fp, #-36]
	bl	magnitude
	mov	r3, r0
	add	r3, r3, #33
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-28]
	ldr	r1, [fp, #-32]
	bl	codewordCompression
	mov	r3, r0
	mvn	r3, r3
	str	r3, [fp, #-24]
	ldr	r3, .L61+8
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-40]
	mov	r3, r3, asl #2
	add	r2, r2, r3
	ldr	r3, [fp, #-24]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
.L58:
	ldr	r3, .L61+4
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-40]
	cmp	r3, r2
	blt	.L59
	bl	clock
	mov	r2, r0
	ldr	r3, .L61+16
	str	r2, [r3, #0]
	ldr	r3, .L61+16
	ldr	r2, [r3, #0]
	ldr	r3, .L61
	ldr	r3, [r3, #0]
	rsb	r3, r3, r2
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	mov	r5, #0
	mov	r6, #1090519040
	add	r6, r6, #3047424
	add	r6, r6, #1152
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	ldr	r0, .L61+20
	mov	r2, r3
	mov	r3, r4
	bl	printf
	ldr	r3, .L61+16
	ldr	r2, [r3, #0]
	ldr	r3, .L61
	ldr	r3, [r3, #0]
	rsb	r3, r3, r2
	ldr	r0, .L61+24
	mov	r1, r3
	bl	printf
	sub	sp, fp, #16
	ldmfd	sp!, {r4, r5, r6, fp, lr}
	bx	lr
.L62:
	.align	2
.L61:
	.word	start
	.word	num_samples
	.word	compressed_samples
	.word	sample_data
	.word	stop
	.word	.LC5
	.word	.LC6
	.size	compression, .-compression
	.align	2
	.global	decompression
	.type	decompression, %function
decompression:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #20
	bl	clock
	mov	r3, r0
	ldr	r2, .L69
	str	r3, [r2, #0]
	mov	r3, #0
	str	r3, [fp, #-36]
	b	.L64
.L67:
	ldr	r3, .L69+4
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #2
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	mvn	r3, r3
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	and	r3, r3, #128
	mov	r3, r3, asr #7
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-32]
	bl	codewordDecompression
	mov	r3, r0
	sub	r3, r3, #33
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-28]
	cmp	r3, #1
	bne	.L65
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-32]
	b	.L66
.L65:
	ldr	r3, [fp, #-24]
	rsb	r3, r3, #0
	str	r3, [fp, #-32]
.L66:
	ldr	r3, .L69+8
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #2
	add	r2, r2, r3
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #2
	str	r3, [r2, #0]
	ldr	r3, [fp, #-36]
	add	r3, r3, #1
	str	r3, [fp, #-36]
.L64:
	ldr	r3, .L69+12
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	cmp	r3, r2
	blt	.L67
	bl	clock
	mov	r2, r0
	ldr	r3, .L69+16
	str	r2, [r3, #0]
	ldr	r3, .L69+16
	ldr	r2, [r3, #0]
	ldr	r3, .L69
	ldr	r3, [r3, #0]
	rsb	r3, r3, r2
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	mov	r5, #0
	mov	r6, #1090519040
	add	r6, r6, #3047424
	add	r6, r6, #1152
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	ldr	r0, .L69+20
	mov	r2, r3
	mov	r3, r4
	bl	printf
	ldr	r3, .L69+16
	ldr	r2, [r3, #0]
	ldr	r3, .L69
	ldr	r3, [r3, #0]
	rsb	r3, r3, r2
	ldr	r0, .L69+24
	mov	r1, r3
	bl	printf
	sub	sp, fp, #16
	ldmfd	sp!, {r4, r5, r6, fp, lr}
	bx	lr
.L70:
	.align	2
.L69:
	.word	start
	.word	compressed_samples
	.word	sample_data
	.word	num_samples
	.word	stop
	.word	.LC7
	.word	.LC8
	.size	decompression, .-decompression
	.comm	start,4,4
	.comm	stop,4,4
	.comm	fp,4,4
	.comm	filename,4,4
	.comm	header,52,4
	.comm	buffer4,4,1
	.comm	buffer2,2,1
	.comm	sample_data,4,4
	.comm	compressed_samples,4,4
	.comm	num_samples,4,4
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
