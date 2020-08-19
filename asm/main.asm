.text 0x0000
splash:
lw $t0, 0xd0000000
andi $t0, $t0, 0x80000000
beq $t0, $zero, splash

li $a0, 3
li $a1, 0x0008019c
li $a2, 0x027701df
li $a3, 0
jal draw

li $s0, 4                   # cur_octave
li $s1, 0                   # last_key_ready
li $s2, 0                   # last_key_code
li $s3, 0                   # note_pointer

main_loop:
lw $t0, 0xd0000000          # ps2_data
andi $t1, $t0, 0x80000000   # key_ready
andi $t2, $t0, 0xff         # key_code
li $t3, 0                   # pitch_gen_output

beq $t1, $zero, L1
sll $t3, $t2, 2
lw $t3, keycode_note_lut($t3)
add $t3, $t3, $s0
j L3

L1:
beq $s1, $zero, L3
li $t4, 0x5a
bne $s2, $t4, L2
addi $s0, $s0, 1
andi $s0, $s0, 7
j L3

L2:
li $t4, 0x59
bne $s2, $t4, L3
addi $s0, $s0, 7
andi $s0, $s0, 7

L3:
move $s1, $t1
move $s2, $t2
sw $t3, 0x20000000
j main_loop

draw:
sw $a1, 0xc0000001
sw $a2, 0xc0000002
sw $a3, 0xc0000003
sw $a0, 0xc0000000
wait_gp:
lw $t0, 0xc0000004
beq $t0, $zero, wait_gp
jr $at

.data 0x2000
keycode_note_lut:
.include "keycode_note_lut.asm"
