####################################################
#
# Demo Program
#
# Filename : LoadHalfWordStoreHalfWord
#
# This program demonstrates the use of loading (lhu)
# and storing (sh) half words.
#
	#Data Segment
	.data
test:		.asciiz		"0123456789ABCDEF"
Title:		.asciiz		"Demo : Load and Store Half Words\n\n"
NT:			.asciiz		"Normal Termination\n"

	#Text Segment
	.text
	
	#Print Title
	li $v0, 4
	la $a0, Title
	syscall
	
	#################### - Main Program Here - ####################
	
	li $s0, 0x10010000
	
	lhu $t0, 0x00($s0)		#Loading a half word from memory to registers
	#lhu $t1, 0x01($s0)		#ERROR : Offset must be multiple of 2
	lhu $t1, 0x02($s0)
	lhu $t2, 0x04($s0)
	lhu $t3, 0x06($s0)
	lhu $t4, 0x08($s0)
	
	li $s1, 0x10020000
	
	sh $t0, 0($s1)			#Storing a half word from registers to memory
	#sh $t1, 1($s1)			#ERROR : Offset must be multiple of 2
	sh $t1, 2($s1)
	sh $t2, 4($s1)
	sh $t3, 6($s1)
	sh $t4, 8($s1)
	
	###############################################################
	
	#Normal Termination
	li $v0, 4
	la $a0, NT
	syscall
	
	#Exit
	li $v0, 10
	syscall