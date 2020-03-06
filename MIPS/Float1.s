#########################################################
#
# Demo Program
#
# Filename : Float1
#
# This program demonstrates how to print single precision
# floating point number represented by iEEE 754
#
	#Data Segment
	.data
Title:			.asciiz		"Printing Float Number\n\n"
NT:				.asciiz		"Normal Termination\n\n"

read:			.asciiz		"Enter a Floating Point number: "
write:			.asciiz		"You entered a floating point number: "

	#Text Segment
	.text
	.globl main
main:
	
	#Print title
	li $v0, 4
	la $a0, Title
	syscall
	
	#Print read
	li $v0, 4
	la $a0, read
	syscall
	
	#Read floating point into $f0
	li $v0, 6
	syscall
	
	#Print write
	li $v0, 4
	la $a0, write
	syscall
	
	#Printing float to console
	mov.s $f12, $f0
	li $v0, 2
	syscall
	
	#Normal Termination
	li $v0, 4
	la $a0, NT
	syscall
	
	#Exit
	li $v0, 10
	syscall