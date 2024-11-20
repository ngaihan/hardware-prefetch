	.file	1 "mbq2.c"

 # GNU C 2.7.2.3 [AL 1.1, MM 40, tma 0.1] SimpleScalar running sstrix compiled by GNU C

 # Cc1 defaults:
 # -mgas -mgpOPT

 # Cc1 arguments (-G value = 8, Cpu = default, ISA = 1):
 # -quiet -dumpbase -O0 -o

gcc2_compiled.:
__gnu_compiled_c:
	.rdata
	.align	2
$LC0:
	.word	0
	.space	40959996
	.text
	.align	2
	.globl	main

	.text

	.loc	1 13
	.ent	main
main:
	.frame	$fp,40960032,$31		# vars= 40960008, regs= 2/0, args= 16, extra= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	li	$8,0x02710020		# 40960032
	subu	$sp,$sp,$8
	addu	$9,$8,$sp
	sw	$31,-4($9)
	sw	$fp,-8($9)
	move	$fp,$sp
	jal	__main
	addu	$2,$fp,16
	la	$3,$LC0
	move	$4,$2
	move	$5,$3
	li	$6,0x02710000		# 40960000
	jal	memcpy
	move	$3,$0
$L2:
	li	$2,0x009c3fff		# 10239999
	slt	$4,$2,$3
	beq	$4,$0,$L5
	j	$L3
$L5:
$L4:
	addu	$3,$3,64
	j	$L2
$L3:
	move	$2,$0
	j	$L1
$L1:
	li	$8,0x02710020	# 40960032
	move	$sp,$fp			# sp not trusted here
	addu	$9,$8,$sp
	lw	$31,-4($9)
	lw	$fp,-8($9)
	addu	$sp,$sp,$8
	j	$31
	.end	main
