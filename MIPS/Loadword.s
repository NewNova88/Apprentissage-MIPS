# Demo Program
#
# Filename : Loadword
# This program demonstrates the "lw" command
#
	#Data Segment
	.data
temp:		.ascii		"0123456789ABCDEF"

	#Text Segment
	.text
	.globl my_main

my_main:
	
	li $s0, 0x10010000		#Our base address
	
	lw $t1, 0($s0)
	
	#Will cause and error since not word-aligned
	#lw $t1, 1($s0)
	#lw $t1, 2($s0)
	#lw $t1, 3($s0)
	
	lw $t2, 4($s0)		#R[$t2] = M[R[$s0] + 4]
	
	lw $t3, 8($s0)		#R[$t2] = M[R[$s0] + 8]
	
	lw $t4, 12($s0)		#R[$t2] = M[R[$s0] + 12]
	
	lw $t5, 0x0C($s0)	#R[$t2] = M[R[$s0] + 12]

	
	#Exit the program
	li $v0, 10
	syscall
	