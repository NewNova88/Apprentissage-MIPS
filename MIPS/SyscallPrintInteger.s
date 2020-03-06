# Demo Program
#
# Filename : SyscallPrintInteger

	#Data Segment
	.data
Title:		.asciiz		"Printing Int to Console\n\n"
CR:			.asciiz		"\n"
NT:			.asciiz		"Normal Termination\n"

	#Text Segment
	.text
	.globl my_main
my_main:
	
	#Print Title to Console
	li $v0, 4	#Control Register to 4 for Printing String at $a0
	la $a0, Title
	syscall
	
	#Print the contents of Register $s0 to Console
	li $s0, 1234
	
	li $v0, 1	#Control Register to 1 for Printing Int at $a0
	move $a0, $s0	#Need to move the content of $s0 to $a0 for printing 
	#Also, move is a pseudo command, because it does addu
	syscall
	
	#Print CR to Console
	li $v0, 4
	la $a0, CR
	syscall
	#We can do more syscall to print more CR, don't need to write instructions again
	syscall
	syscall
	#Print NT to Console
	li $v0, 4
	la $a0, NT
	syscall
	
	#Exit the Program
	li $v0, 10
	syscall
	