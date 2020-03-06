#######################################################
# Demo Program
#
# Filename : AndOrNor
#
#
	#Data Segment
	.data
	
Title:		.asciiz		"Logical Demo Program\n\n"
NT:			.asciiz		"Normal Termination\n"

	#Text Segment
	.text
	
	.globl my_main
	
my_main:
	
	#Print Title
	li $v0, 4
	la $a0, Title
	syscall
	
	li $t1, 0x5555AAAA
	li $t2, 0xAAAA5555
	
	and $t3, $t1, $t2
	or $t4, $t1, $t2
	
	andi $t5, $t1, 0x00FF
	ori $t6, $t2, 0xFF00
	
	nor $t7, $t5, $t6
	
	#Normal Termination
	li $v0, 4
	la $a0, NT
	syscall
	
	#Exit the Program
	li $v0, 10
	syscall