.globl task2

.data
b: .word 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
num: .word 5
.text
dataArray:

#Prologue
addi sp, sp, -12
sw s0, 0(sp)
sw s1, 4(sp)
sw a0, 8(sp)

li s0, 0             #s0=i
la t0, num
lw a0, 0(t0)         #a0=num
la s1, b             #s1=array

li t1, 10
loop:

jal compare
sw a2, 0(s1)
addi s1, s1, 4
addi s0, s0, 1
blt s0, t1, loop

la s1, b 
li t1, 10
li s0, 0
print:
lw a1, 0(s1)
addi s1, s1, 4
addi a0, x0, 1
ecall
addi a1, x0, '\n'   # Load in ascii code for newline
addi a0, x0, 11
ecall
addi s0, s0, 1
blt s0, t1, print
#epilogue
addi sp, sp, 12
lw s0, 0(sp)
lw s1, 4(sp)
lw a1, 8(sp)

addi a0, x0, 10
ecall 




compare:
addi sp, sp, 4
sw ra, 0(sp)
jal sub

lw ra, 0(sp)
addi sp, sp, -4

blt a2, x0, zero 
li a2, 1
ret 
zero:
li a2, 0
ret 

sub:
sub a2, a0, s0
ret






