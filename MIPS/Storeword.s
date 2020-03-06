# Demo Program
#
# Filename : Storeword
# This program demonstrates Storing a Register to Memory
# using the store word (sw) command
#
# Note : Memory accesses must be on a 4-byte boundary
#
	#Data Segment
	.data
	
	
	#Text Segment
	.text
	
	.globl my_main
	
my_main:
	li $t0, 0x30
	li $t1, 0x10010000
	sw $t0, 0($t1)
	
	#The following will cause an error
	#sw $t0, 1($t1)
	#sw $t0, 2($t1)
	#sw $t0, 3($t1)
	
	addi $t0, $t0, 1
	sw $t0, 4($t1)
	
	li $t0, 0x12345678
	sw $t0, 8($t1)
	
	li $t0, 0xA5A5A5A5A5
	sw $t0, 12($t1)
	
	#Exit the Program
	li $v0, 10
	syscall
	