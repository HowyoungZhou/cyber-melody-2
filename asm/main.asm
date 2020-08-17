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


.data 0x2000
keycode_note_lut:
.include "keycode_note_lut.asm"
