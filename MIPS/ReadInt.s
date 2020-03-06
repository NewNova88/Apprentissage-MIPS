################
# Test read and print integers
#
# Filename : ReadInt
#############


	.data
Title:		.asciiz		"Test : Read and Print Integers\n\n"
NT:			.asciiz		"Normal Termination"
CR:			.asciiz		"\n"

read:		.asciiz		"Enter int : "
write:		.asciiz		"You entered : "

	.text
	.globl main
main:
	
	#Print Title
	li $v0, 4
	la $a0, Title
	syscall
	
	#Print read
	li $v0, 4
	la $a0, read
	syscall
	
	#Reads keyboard and store Int into $v0 
	li $v0, 5
	syscall
	
	#Save the int
	move $t0, $v0
	
	#Print write
	li $v0, 4
	la $a0, write
	syscall
	
	#Print int
	li $v0, 1
	move $a0, $t0 #NEED to move in $a0 whats inside $t0
	syscall
	
	#CR
	li $v0, 4
	la $a0, CR
	syscall
	#NT
	li $v0, 4
	la $a0, NT
	syscall
	
	li $v0, 10
	syscall