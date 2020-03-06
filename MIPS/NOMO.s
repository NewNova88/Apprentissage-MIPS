    .data
NOMO:       .asciiz     "No Homo"

    .text
    li $v0, 4
    la $a0, NOMO
    syscall
    
    li $v0, 10
    syscall