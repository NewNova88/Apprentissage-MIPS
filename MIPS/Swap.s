#########################################################################
#
# Demo Program
#
# Filename : Swap
#
# This program demonstrates the Swapping Algorithm
# Swapping the K(th) element and K+1 of an array
#


######################################
#
# C/C++ Program :
#
#		void swap(int *v, int k)
#		{
#			int temp;
#			temp = v[k];
#			v[k] = v[k+1];
#			v[k+1] = temp;
#		}


	#Data Segment
	.data
CR:		.asciiz		"\n"
NT:		.asciiz		"\nNormal Termination\n"

	#Text Segment
	.text
	.globl main
#########################################################################
#
# Main : this is the main procedure
#
#		Address of v[0] is the Global Pointer, $gp
#
main:
	
	#Load some data into memory using global pointer
	li $t0, 0x01
	sw $t0, 0($gp)
	
	li $t0, 0x02
	sw $t0, 4($gp)
	
	li $t0, 0x03
	sw $t0, 8($gp)
	
	li $t0, 0x04
	sw $t0, 12($gp)
	
	li $t0, 0x05
	sw $t0, 16($gp)
	
	li $t0, 0x06
	sw $t0, 20($gp)
	
	# swap ( v, 3):
	
	move $a0, $gp
	li $a1, 3
	jal swap
	
	#Normal Termination
	li $v0, 4
	la $a0, NT
	syscall
	
	#Exit
	li $v0, 10
	syscall
	
#########################################################################
#
# Swap : this procedure swaps 2 int in an array
#
# $a0 contains the address of the array v[]
# $a1 contains the element to swap 'k'
#
swap:
	sll $t1, $a1, 2		#$t1 = k*4
	add $t1, $a0, $t1	#$t1 = &v[k] = v+k
	
	lw $t0, 0($t1)		#$t0 = v[k]
	lw $t2, 4($t1)		#$t2 = v[k+1]
	
	sw $t2, 0($t1)		#v[k] = $t2
	sw $t0, 4($t1)		#v[k+1] = $t0
	
	jr $ra