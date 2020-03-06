###############################################################
#
# Demo program
#
# Filename : Jump
#
# This program demonstrates the Jump instruction wich
# is an unconditional branch
#
	#Data Segment
	.data
Title:		.asciiz		"Demo Program: Jump"
CR:			.asciiz		"\n"
NT:			.asciiz		"Normal Termination"

	#Text Segment
	.text
	
	.globl my_main
my_main:
	
	#Print Title
	li $v0, 4
	la $a0, Title
	syscall
	
	#Print CR
	li $v0, 4
	la $a0, CR
	syscall
	
	#Start of program
	li $s0, 0x1111
	
	#Unconditional branch to label L1
	j L1 	#Jump Instruction
	addi $s1, $s0, 0x01
	addi $s2, $s0, 0x02
	addi $s3, $s0, 0x03
	addi $s4, $s0, 0x04
	addi $s5, $s0, 0x05
	addi $s6, $s0, 0x06
	
L1:	#Label "L1" is here
	
	#Normal termination
	li $v0, 4
	la $a0, NT
	syscall
	
	#Exit
	li $v0, 10
	syscall