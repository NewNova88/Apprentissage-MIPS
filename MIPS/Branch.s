##################################################
# 
# Demo Program
#
# Filename : Branch
#
	#Data Segment
	.data
NT:			.asciiz			"Normal Termination\n\n"

	#Text Segment
	.text
	
	.globl my_main
my_main:

	li $t0, 5
L1:	addi $t0, $t0, -1
	nop
	nop		#Body of the loop
	nop
	bne $t0, $zero, L1
	
	
	li $t0, 0
	li $t1, 5
L2:	addi $t0, $t0, 1
	nop
	nop
	nop
	bne $t0, $t1, L2
	
	#Normal Termination
	li $v0, 4
	la $a0, NT
	syscall
	
	#Exit
	li $v0, 10
	syscall