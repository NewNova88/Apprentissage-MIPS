##########################################
#
# Test Program for opening file
#
# Filename : OpenFile
#
#
	#Data Segment
	.data
Title:		.asciiz		"Test : Opening file\n\n"
NT:			.asciiz		"Normal Termination"

file:		.asciiz		"Add.s"

	#Text Segment
	.text
	.globl main
main:
	
	#Print Title
	li $v0, 4
	la $a0, Title
	syscall
	
	#Open File
	li $v0, 13
	la $a0, file
	syscall
	
	#Close File
	li $v0, 16
	la $a0, file
	syscall
	
	#NT
	li $v0, 4
	la $a0, NT
	syscall
	
	li $v0, 10
	syscall