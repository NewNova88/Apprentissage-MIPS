#Demo program

#Filename : Add

#Addition of registers

    #Data Section
    .data
    
    
    #Text Section
    .text
    
    .globl  my_main

my_main:

    #Main code goes here
    li $t1, 0x1111
    li $t2, 0x2222
    add $t3, $t1, $t2
    
    li $t1, 0x0000FFFF
    li $t2, 0x00000001
    add $t3, $t1, $t2
    
    li $t1, 0xFFFFFFFF  #this is -1
    li $t2, 0x00000002  #this is 2
    add $t3, $t1, $t2
    
    li $t1, 0xFFFFFFFC  #this is -4
    li $t2, 0xFFFFFFFD  #this is -3
    add $t3, $t1, $t2
    
    
    #Exit the program
    li $v0, 10
    syscall