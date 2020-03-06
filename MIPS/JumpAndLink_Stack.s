#####################################################
#
# Demo Program
#
# Filename : JumpAndLink_Stack
#
# This program demonstrates a simple subroutine call
# using the Jump and Link (jal) instruction with
# pushing and popping on/off the stack.
#
	#Data Segment
	.data
Title:		.asciiz		"Demo Program: Jump and Link with Stack\n\n"
sub1msg:	.asciiz		"Inside Sub1\n"
NT:			.asciiz		"Normal Termination"

	#Text Segment
	.text
	.globl my_main
my_main:
	
	#Start of the main program
	li $v0, 4
	la $a0, Title
	syscall
	
	li $s0, 0
	li $s1, 1
	li $s2, 2
	li $s3, 3
	li $s4, 4
	li $s5, 5
	li $s6, 6
	li $s7, 7
	
	#Call Subroutine #1
	jal sub1
	
	#Call Subroutine #1
	jal sub1
	
	#Normal Termination
	li $v0, 4
	la $a0, NT
	syscall
	
	#Exit
	li $v0, 10
	syscall
	
##########################################################
#
# Subroutine called 'sub1'
#
sub1:
	#Create room on the Stack
	addi $sp, $sp, -32			#sub1 Begins here
	
	#Push 's' Registers onto the stack
	sw $s0, 28($sp)
	sw $s1, 24($sp)
	sw $s2, 20($sp)
	sw $s3, 16($sp)
	sw $s4, 12($sp)
	sw $s5, 8($sp)
	sw $s6, 4($sp)
	sw $s7, 0($sp)
	
	#Print sub1msg
	li $v0, 4
	la $a0, sub1msg
	syscall
	
	#change values of 's' registers
	li $s0, -1
	li $s1, -1
	li $s2, -1
	li $s3, -1
	li $s4, -1
	li $s5, -1
	li $s6, -1
	li $s7, -1
	
	#Pop 's' registers off of the stack
	lw $s7, 0($sp)
	lw $s6, 4($sp)
	lw $s5, 8($sp)
	lw $s4, 12($sp)
	lw $s3, 16($sp)
	lw $s2, 20($sp)
	lw $s1, 24($sp)
	lw $s0, 28($sp)
	
	#Restore Stack Pointer
	addi $sp, $sp, 32
	
	#Return to the calling program
	jr $ra		#Subroutine Ends Here
##############################################################
	
	