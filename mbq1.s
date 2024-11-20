	.file	1 "mbq1.c"

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
	.space	4092
	.text
	.align	2
	.globl	main

	.text

	.loc	1 5
	.ent	main
main:
	.frame	$fp,4128,$31		# vars= 4104, regs= 2/0, args= 16, extra= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	subu	$sp,$sp,4128
	sw	$31,4124($sp)
	sw	$fp,4120($sp)
	move	$fp,$sp
	jal	__main
	addu	$2,$fp,16
	la	$3,$LC0
	move	$4,$2
	move	$5,$3
	li	$6,0x00001000		# 4096
	jal	memcpy
	sw	$0,4112($fp)
$L2:
	lw	$2,4112($fp)
	slt	$4,$2,1024
	bne	$4,$0,$L5
	j	$L3
$L5:
	lw	$2,4112($fp)
	move	$4,$2
	sll	$2,$4,2
	addu	$4,$fp,16
	addu	$2,$2,$4
	lw	$3,0($2)
	lw	$2,4112($fp)
	move	$4,$2
	sll	$2,$4,2
	addu	$4,$fp,16
	addu	$2,$2,$4
	addu	$4,$3,1
	sw	$4,0($2)
$L4:
	lw	$4,4112($fp)
	addu	$2,$4,1
	move	$4,$2
	sw	$4,4112($fp)
	j	$L2
$L3:
	move	$2,$0
	j	$L1
$L1:
	move	$sp,$fp			# sp not trusted here
	lw	$31,4124($sp)
	lw	$fp,4120($sp)
	addu	$sp,$sp,4128
	j	$31
	.end	main
