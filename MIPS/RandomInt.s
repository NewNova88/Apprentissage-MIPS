##################################
#
# Test Random Number int
#
# Filename : RandomInt
#
#
# NOTE : Doesn't work on QTSpim, because beyond 30 on $v0
	#Data Segment
	.data
Title:		.asciiz		"Test Program : Random Int\n"
CR:			.asciiz		"\n"
NT:			.asciiz		"Normal Termination"

	#Text Segment
	.text
	.globl main
main:
	
	li $v0, 4
	la $a0, Title
	syscall
	
	li $v0, 42
	li $a1, 10
	syscall
	
	move $s0, $a0
	li $v0, 1
	move $a0, $s0
	syscall
	
	#NT
	li $v0, 4
	la $a0, NT
	syscall
	
	li $v0, 10
	syscall