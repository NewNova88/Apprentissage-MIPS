# Demo Program
# Filename : SyscallPrintString
# Description : This program demonstrates how to print out
#				a character string to the console
#

	#Data Section
	.data

Name:		.asciiz		"Dr. Walsh\n\n" 
Course:		.asciiz		"EENG 460\n"
Lab:		.asciiz		"Lab #0: Test Lab"
CR:			.asciiz		"\n"
Date:		.asciiz		"MM/DD/YYYY\n\n"
NT:			.asciiz		"Normal Termination\n"

	#Text Section
	.text
	.globl my_main
my_main:
	
	#Print Name on Console
	li $v0, 4 #We place 4 into $v0 because when 4 is for printing to the Console
	la $a0, Name #la : Load Address, because here, Name refers to an Address
	syscall
	
	#Print Course on Console
	li $v0, 4 #v0 : Control Register
	la $a0, Course
	syscall
	
	#Print Lab on Console
	li $v0, 4
	la $a0, Lab
	syscall
	
	#Print CR on Console
	li $v0, 4
	la $a0, CR
	syscall
	
	#Print Date on Console
	li $v0, 4
	la $a0, Date
	syscall
	
	#Print NT on Console
	li $v0, 4
	la $a0, NT
	syscall
	
	#Exit the Program
	li $v0, 10 #10 in v0 is for Termination
	syscall