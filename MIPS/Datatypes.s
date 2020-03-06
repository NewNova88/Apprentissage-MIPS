###################################################
#
# Demo Program : Demonstration of ASCII data stored
#                in memory (Data Segment)
#
# Filename : Datatypes
#

    #Data Segment
    .data

a1: 	.asciiz "123" #The 'z' Terminates the String (in QtSpim, it's like "123." with de dot)
a2: 	.asciiz "5"
a3: 	.asciiz "4"
name: 	.asciiz "Dr. Walsh"
course:	.asciiz "EENG 460"

	#Text Segment
	.text
	
	.globl my_main
my_main:

	#Exit the program
	li $v0, 10
	syscall