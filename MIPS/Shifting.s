##########################################################
# Demo Program
#
# Filename : Shifting
#
#
	#Data Segment
	.data
	
Title:		.ascii		"Demo: Shifting\n\n"
NT:			.ascii		"Normal Termination\n"

	#Text Segment
	.text
	
	.globl my_main

my_main:
	li $t0, 0xFFFFFFFF
	
	sll $t0, $t0, 1		#Shift Left Logical
	sll $t0, $t0, 1
	sll $t0, $t0, 1
	sll $t0, $t0, 1
	sll $t0, $t0, 1
	sll $t0, $t0, 1
	sll $t0, $t0, 1
	
	li $t1, 0xFFFFFFFF
	
	srl $t1, $t1, 1		#Shift Right Logical
	srl $t1, $t1, 1
	srl $t1, $t1, 1
	srl $t1, $t1, 1
	srl $t1, $t1, 1
	srl $t1, $t1, 1
	srl $t1, $t1, 1
	srl $t1, $t1, 1
	srl $t1, $t1, 1
	
	#Print NT to Console
	li $v0, 4
	la $a0, Title
	syscall
	
	#Exit the Program
	li $v0, 10
	syscall
