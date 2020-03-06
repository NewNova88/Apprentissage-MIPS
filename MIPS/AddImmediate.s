# Demo Program
#
# Filename : AddImmediate
# 
# This program demonstrates the 'add immediate' (addi) instruction
#
#
	#Data Segment
	.data

Title:		.asciiz		"\n\nAdd Immediate Demo Program\n\n"
NT:			.asciiz		"Normal Termination"

	#Text Segment
	.text
	
	.globl my_main
my_main:

	#Print Title
	li $v0, 4
	la $a0, Title
	syscall
	
	#Add Register
	li $s0, 0x1111
	li $s1, 0x2222
	add $s2, $s1, $s0		#$s2 = $s1 + $s0
	
	#Add Immediate
	li $s0, 0x0000FFFF
	addi $s1, $s0, 1		#s1 = $s0 + 1
	
	li $s0, 0xFFFFFFFF 		#Negative
	addi $s1, $s0, 5		#$s1 = $s0 + 5
	
	li $s0, 0xFFFFFFFF		#Negative
	addi $s1, $s0, -5		#$s1 = $s0 + (-5)
	
	#Print NT to Console
	li $v0, 4
	la $a0, NT
	syscall
	
	#Exit the Program
	li $v0, 10
	syscall
	