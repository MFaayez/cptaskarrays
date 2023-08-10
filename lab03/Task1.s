.globl factorial

.data
b: .word 0, 0, 0 
a: .word 7

.text
main:

#Prologue
addi sp, sp, -12
sw s0, 0(sp)
sw s1, 4(sp)
sw s2, 8(sp)

li s0, 0 #initializing s0 as counter i
la t2, a #loading a address in t2
lw s1, 0(t2)  #loading value from address 0(t2)
la s2, b #loading b address in s2

li t0, 6
loop:
lw t3, 0(s2)
add t3, t3, s1
mul t4, s0, s1
add t3, t3, t4
sw t3, 0(s2)
addi s2, s2, 4

addi s0, s0, 1
blt s0, t0, loop

#epilogue
lw s0, 0(sp)
lw s1, 4(sp)
lw s2, 8(sp)
addi sp, sp, 12

