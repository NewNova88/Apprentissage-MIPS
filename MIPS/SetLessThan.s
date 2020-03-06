################################################################
#
# Demo Program
#
# Filename : SetLessThan
#
# This program demonstrates the Set Less Than (slt) instruction
#
	#Data Segment
	.data
Title:		.asciiz		"Demo Program: slt, sltu"
CR:			.asciiz		"\n\n"
NT:			.asciiz		"Normal Termination of Program"

	#Text Segment
	.text
	
	.globl my_main

my_main:
	
	li $s3, 0x1
	li $s4, 0x2
	slt $t0, $s3, $s4		#Set Less Than
	
	li $s3, 0x4
	li $s4, 0x3
	slt $t0, $s3, $s4
	
	li $s0, 0xFFFFFFFF
	li $s1, 0x00000001
	slt $t0, $s0, $s1
	
	li $s0, 0xFFFFFFFF
	li $s1, 0x00000001
	sltu $t0, $s0, $s1		#Set Less Than Unsigned
	
	#Normal Termination
	li $v0, 4
	la $a0, NT
	syscall
	
	li $v0, 10
	syscall