##########################################################################
#
# Demo Program
#
# Filename : LoadByteStoreByte
#
# This program demonstrates the use of loading (lb) and storing bytes (sb)
#
##########################################################################

	#Data Segment
	.data
Title:		.asciiz		"Demo Program: Loading and Storing Bytes\n\n"
NT:			.asciiz		"\n\nNormal Termination\n"

	#Text Segment
	.text
	
	li $v0, 4
	la $a0, Title
	syscall
	
	####################### - Program Here - ##########################
	
	li $s0, 0x10010000
	
	lb $t0, 0x00($s0)		#Loading a Byte from Memory to Register
	lb $t1, 0x01($s0)
	lb $t2, 0x02($s0)
	lb $t3, 0x03($s0)
	
	li $s1, 0x10010040
	
	sb $t0, 0($s1)			#Storing a Byte from Register to Memory
	sb $t1, 1($s1)
	sb $t2, 2($s1)
	sb $t3, 3($s1)
	
	#################################################################
	
	li $v0, 4
	la $a0, NT
	syscall
	
	li $v0, 10
	syscall