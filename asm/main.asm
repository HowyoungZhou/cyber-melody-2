.text 0x0000
splash:
lw $t0, 0xd0000000
andi $t0, $t0, 0x80000000
beq $t0, $zero, splash

addi $a0, $zero, 2
# li $a1, 0
addi $a1, $zero, 0
li $a2, 0x027f01df
# li $a3, 0xfff
addi $a3, $zero, 0xfff
jal draw

# li $a0, 3
addi $a0, $zero, 3
li $a1, 0x0008019c
li $a2, 0x027701df
# li $a3, 0
addi $a3, $zero, 0
jal draw

# li $s0, 4                   # cur_octave
addi $s0, $zero, 4
# li $s1, 0                   # last_key_ready
addi $s1, $zero, 0
# li $s2, 0                   # last_key_code
addi $s2, $zero, 0
# li $s3, 0                   # note_pointer
addi $s3, $zero, 0

# *(int *)0x30000000 = lenoc_score[note_pointer] >> 8;
addi $at, $zero, 2
sllv $t0, $s3, $at
lw $t0, score($t0)
addi $at, $zero, 8
srlv $t0, $t0, $at
sw $t0, 0x30000000

main_loop:
# int cur_length = *(int *)0x30000000; // t0
lw $t0, 0x30000000
# if (cur_length != 0) goto L4; // if (cur_length == 0) then
bne $t0, $zero, L4
# note_pointer++;
addi $s3, $s3, 1
# cur_length = score[note_pointer] >> 8;
addi $at, $zero, 2
sllv $t0, $s3, $at
lw $t0, score($t0)
addi $at, $zero, 8
srlv $t0, $t0, $at
# *(int *)0x30000000 = cur_length;
sw $t0, 0x30000000

L4:
# int cur_lenoc = score[note_pointer] & 0xFF; // s4
addi $at, $zero, 2
sllv $s4, $s3, $at
lw $s4, score($s4)
andi $s4, $s4, 0xff
# int cur_y = 411;                                  // s5
addi $s5, $zero, 411
# int length = cur_length >> 2;                      // a2
addi $at, $zero, 2
srlv $a2, $t0, $at
# cur_y -= length;
sub $s5, $s5, $a2
# draw_indicator(cur_lenoc, cur_y, length);
add $a0, $zero, $s4
add $a1, $zero, $s5
jal draw_indicator

# int note_cursor = note_pointer + 1; // s6
addi $s6, $s3, 1
L5:
# if(cur_y <= 0) goto L6 // while (cur_y > 0) then
beq $s5, $zero, L6
slt $at, $s5, $zero
bne $at, $zero, L6
# int lenoc = score[note_cursor]; // t0
addi $at, $zero, 2
sllv $t0, $s6, $at
lw $t0, score($t0)
# int length = (lenoc >> 8) >> 2;        // a2
addi $at, $zero, 10
srlv $a2, $t0, $at
# cur_y -= length;
sub $s5, $s5, $a2
# draw_indicator(lenoc & 0xFF, cur_y, length);
andi $a0, $t0, 0xff
add $a1, $zero, $s5
jal draw_indicator
# note_cursor++;
addi $s6, $s6, 1
# end while
j L5

L6:
# int pitch_gen_output = 0;        // t3
addi $t3, $zero, 0
# if (*(int *)0xf0000000 & 1 == 0) goto L7 // if (*(int *)0xf0000000 & 1 == 1) then // t4
lw $t4, 0xf0000000
andi $t4, $t4, 1
beq $t4, $zero, L7
# pitch_gen_output = cur_lenoc;
add $t3, $zero, $s4
# else
j L8

L7:
lw $t0, 0xd0000000          # ps2_data
andi $t1, $t0, 0x80000000   # key_ready
andi $t2, $t0, 0xff         # key_code


beq $t1, $zero, L1
# sll $t3, $t2, 2
addi $at, $zero, 2
sllv $t3, $t2, $at
lw $t3, keycode_note_lut($t3)
add $t3, $t3, $s0
j L3

L1:
beq $s1, $zero, L3
# li $t4, 0x5a
addi $t4, $zero, 0x5a
bne $s2, $t4, L2
addi $s0, $s0, 1
andi $s0, $s0, 7
j L3

L2:
# li $t4, 0x59
addi $t4, $zero, 0x59
bne $s2, $t4, L3
addi $s0, $s0, 7
andi $s0, $s0, 7

L3:
# move $s1, $t1
add $s1, $zero, $t1
# move $s2, $t2
add $s2, $zero, $t2
L8:
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
# li $t0, 0
addi $t0, $zero, 0
sw $t0, 0xc0000000
jr $ra


draw_indicator:
sw $s0, s0_save
sw $s1, s1_save
sw $s2, s2_save
sw $s3, s3_save
sw $s4, s4_save
# int x0 = indicator_x_lut[note_octave]; // s0
addi $at, $zero, 2
sllv $s0, $a0, $at
lw $s0, indicator_x_lut($s0)
# if (x0 == 0) return;
beq $s0, $zero, draw_indicator_ret
# int y0 = y - length + 1;                   // s1
sub $s1, $a1, $a2
addi $s1, $s1, 1
# int x1 = x0 + 11;                      // s2
addi $s2, $s0, 11
# int y1 = y;                            // s3
add $s3, $zero, $a1
# int color = colors[note_octave >> 4 && 0xf]; // s4
addi $at, $zero, 4
srlv $s4, $a0, $at
andi $s4, $s4, 0xf
addi $at, $zero, 2
sllv $s4, $s4, $at
lw $s4, colors($s4)

# draw_rect(0, y0, x0 - 1, y1, 0xfff);
addi $a0, $zero, 2

add $a1, $zero, $s1

addi $a2, $s0, -1
addi $at, $zero, 16
sllv $a2, $a2, $at
or $a2, $a2, $s3

addi $a3, $zero, 0xfff
jal draw
# draw_rect(x0, y0, x1, y1, color);
addi $a0, $zero, 2

add $a1, $zero, $s0
addi $at, $zero, 16
sllv $a1, $a1, $at
or $a1, $a1, $s1

add $a2, $zero, $s2
addi $at, $zero, 16
sllv $a2, $a2, $at
or $a2, $a2, $s3

add $a3, $zero, $s4
jal draw
# draw_rect(x1 + 1, y0, 639, y1, 0xfff);
addi $a0, $zero, 2

addi $a1, $s2, 1
addi $at, $zero, 16
sllv $a1, $a1, $at
or $a1, $a1, $s1

li $a2, 0x027f0000
or $a2, $a2, $s3

addi $a3, $zero, 0xfff
jal draw

draw_indicator_ret:
lw $s4, s4_save
lw $s3, s3_save
lw $s2, s2_save
lw $s1, s1_save
lw $s0, s0_save
jr $ra

.data 0x1000
s0_save: .space 4
s1_save: .space 4
s2_save: .space 4
s3_save: .space 4
s4_save: .space 4

.data 0x2000
colors:
.word 0xF33, 0xF60, 0xF90, 0xFC0, 0xCC0, 0x7B3
.word 0x6C6, 0x3CC, 0x39E, 0x30F, 0x30C, 0x609
keycode_note_lut:
.include "keycode_note_lut.asm"
score:
.include "scores.asm"
indicator_x_lut:
.include "indicator_x_lut.asm"
