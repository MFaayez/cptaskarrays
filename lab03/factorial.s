.globl factorial

.data
n: .word 1

.text
main:
    la t0, n
    lw a0, 0(t0)
    li t1, 2
    blt t0, t1, ELSE
    jal ra, factorial
    
    j Ans
    ELSE:
    li a0, 1
    
    Ans:
    
    addi a1, a0, 0
    addi a0, x0, 1
    ecall # Print Result

    addi a1, x0, '\n'
    addi a0, x0, 11
    ecall # Print newline

    addi a0, x0, 10
    ecall # Exit

factorial:
    # YOUR CODE HERE
    addi sp, sp, -8
    sw a0, 0(sp)
    sw ra, 4(sp)
    li t3, 1

    bne a0, t3, movekaro
    j exit
    movekaro:
    addi a0, a0, -1
    jal factorial
exit:
    addi a1, a0, 0
    lw a0, 0(sp)
    lw ra, 4(sp)
    addi sp, sp, 8
    mul a0, a1, a0
    
    ret
    
    
    
