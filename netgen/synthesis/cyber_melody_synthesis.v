////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: cyber_melody_synthesis.v
// /___/   /\     Timestamp: Thu Aug 13 22:05:30 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim cyber_melody.ngc cyber_melody_synthesis.v 
// Device	: xc7k160t-2L-ffg676
// Input file	: cyber_melody.ngc
// Output file	: F:\Coding\cyber_melody_2\netgen\synthesis\cyber_melody_synthesis.v
// # of Modules	: 1
// Design Name	: cyber_melody
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module cyber_melody (
  clk, rst_n, ps2_clk, ps2_data, vga_hs, vga_vs, buzzer, seg_clk, seg_do, seg_pen, seg_clr, raw_switches, vga_r, vga_g, vga_b
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input rst_n;
  input ps2_clk;
  input ps2_data;
  output vga_hs;
  output vga_vs;
  output buzzer;
  output seg_clk;
  output seg_do;
  output seg_pen;
  output seg_clr;
  input [15 : 0] raw_switches;
  output [3 : 0] vga_r;
  output [3 : 0] vga_g;
  output [3 : 0] vga_b;
  
  // synthesis translate_off
  
  wire raw_switches_0_IBUF_0;
  wire raw_switches_1_IBUF_1;
  wire raw_switches_2_IBUF_2;
  wire raw_switches_3_IBUF_3;
  wire raw_switches_4_IBUF_4;
  wire raw_switches_5_IBUF_5;
  wire raw_switches_6_IBUF_6;
  wire raw_switches_7_IBUF_7;
  wire raw_switches_8_IBUF_8;
  wire raw_switches_9_IBUF_9;
  wire raw_switches_10_IBUF_10;
  wire raw_switches_11_IBUF_11;
  wire raw_switches_12_IBUF_12;
  wire raw_switches_13_IBUF_13;
  wire raw_switches_14_IBUF_14;
  wire raw_switches_15_IBUF_15;
  wire clk_BUFGP_16;
  wire rst_n_IBUF_17;
  wire ps2_clk_IBUF_18;
  wire ps2_data_IBUF_19;
  wire \clk_div/div_1_BUFG_20 ;
  wire \clk_div/div_15_BUFG_21 ;
  wire \vram_scan[27] ;
  wire \vram_scan[26] ;
  wire \vram_scan[25] ;
  wire \vram_scan[24] ;
  wire \vram_scan[23] ;
  wire \vram_scan[22] ;
  wire \vram_scan[21] ;
  wire \vram_scan[20] ;
  wire \vram_scan[19] ;
  wire \vram_scan[18] ;
  wire \vram_scan[17] ;
  wire \vram_scan[16] ;
  wire \vram_scan[11] ;
  wire \vram_scan[10] ;
  wire \vram_scan[9] ;
  wire \vram_scan[8] ;
  wire \vram_scan[7] ;
  wire \vram_scan[6] ;
  wire \vram_scan[5] ;
  wire \vram_scan[4] ;
  wire \vram_scan[3] ;
  wire \vram_scan[2] ;
  wire \vram_scan[1] ;
  wire \vram_scan[0] ;
  wire \ps2/keypress_54 ;
  wire buzzer_OBUF_55;
  wire rst;
  wire \vga/hs_91 ;
  wire \vga/vs_92 ;
  wire \switches_anti_jitter<0>/O_93 ;
  wire \switches_anti_jitter<1>/O_94 ;
  wire \switches_anti_jitter<2>/O_95 ;
  wire \switches_anti_jitter<3>/O_96 ;
  wire \switches_anti_jitter<4>/O_97 ;
  wire \switches_anti_jitter<5>/O_98 ;
  wire \switches_anti_jitter<6>/O_99 ;
  wire \switches_anti_jitter<7>/O_100 ;
  wire \switches_anti_jitter<8>/O_101 ;
  wire \switches_anti_jitter<9>/O_102 ;
  wire \switches_anti_jitter<10>/O_103 ;
  wire \switches_anti_jitter<11>/O_104 ;
  wire \switches_anti_jitter<12>/O_105 ;
  wire \switches_anti_jitter<13>/O_106 ;
  wire \switches_anti_jitter<14>/O_107 ;
  wire \switches_anti_jitter<15>/O_108 ;
  wire \bus/cpu_in_31_109 ;
  wire \bus/cpu_in_15_110 ;
  wire \bus/cpu_in_14_111 ;
  wire \bus/cpu_in_13_112 ;
  wire \bus/cpu_in_12_113 ;
  wire \bus/cpu_in_11_114 ;
  wire \bus/cpu_in_10_115 ;
  wire \bus/cpu_in_9_116 ;
  wire \bus/cpu_in_8_117 ;
  wire \bus/cpu_in_7_118 ;
  wire \bus/cpu_in_6_119 ;
  wire \bus/cpu_in_5_120 ;
  wire \bus/cpu_in_4_121 ;
  wire \bus/cpu_in_3_122 ;
  wire \bus/cpu_in_2_123 ;
  wire \bus/cpu_in_1_124 ;
  wire \bus/cpu_in_0_125 ;
  wire \bus/vram_addr_17_126 ;
  wire \bus/vram_addr_16_127 ;
  wire \bus/vram_addr_15_128 ;
  wire \bus/vram_addr_14_129 ;
  wire \bus/vram_addr_13_130 ;
  wire \bus/vram_addr_12_131 ;
  wire \bus/vram_addr_11_132 ;
  wire \bus/vram_addr_10_133 ;
  wire \bus/vram_addr_9_134 ;
  wire \bus/vram_addr_8_135 ;
  wire \bus/vram_addr_7_136 ;
  wire \bus/vram_addr_6_137 ;
  wire \bus/vram_addr_5_138 ;
  wire \bus/vram_addr_4_139 ;
  wire \bus/vram_addr_3_140 ;
  wire \bus/vram_addr_2_141 ;
  wire \bus/vram_addr_1_142 ;
  wire \bus/vram_addr_0_143 ;
  wire \vram_scan[27]_vram_scan[11]_mux_2_OUT<11> ;
  wire \vram_scan[27]_vram_scan[11]_mux_2_OUT<10> ;
  wire \vram_scan[27]_vram_scan[11]_mux_2_OUT<9> ;
  wire \vram_scan[27]_vram_scan[11]_mux_2_OUT<8> ;
  wire \vram_scan[27]_vram_scan[11]_mux_2_OUT<7> ;
  wire \vram_scan[27]_vram_scan[11]_mux_2_OUT<6> ;
  wire \vram_scan[27]_vram_scan[11]_mux_2_OUT<5> ;
  wire \vram_scan[27]_vram_scan[11]_mux_2_OUT<4> ;
  wire \vram_scan[27]_vram_scan[11]_mux_2_OUT<3> ;
  wire \vram_scan[27]_vram_scan[11]_mux_2_OUT<2> ;
  wire \vram_scan[27]_vram_scan[11]_mux_2_OUT<1> ;
  wire \vram_scan[27]_vram_scan[11]_mux_2_OUT<0> ;
  wire \vga/v_count[9]_PWR_4_o_equal_8_o ;
  wire \vga/read ;
  wire \vga/h_count[9]_PWR_4_o_equal_7_o ;
  wire \vga/v_sync ;
  wire \vga/h_sync ;
  wire \vga/rdn_209 ;
  wire \cpu/PCWrite ;
  wire \cpu/U11/state_FSM_FFd16_211 ;
  wire \cpu/U11/state_FSM_FFd2_213 ;
  wire \cpu/U1_2/IR/Q[0] ;
  wire \cpu/U1_2/IR/Q[1] ;
  wire \cpu/U1_2/IR/Q[2] ;
  wire \cpu/U1_2/IR/Q[3] ;
  wire \cpu/U1_2/IR/Q[4] ;
  wire \cpu/U1_2/IR/Q[5] ;
  wire \cpu/U1_2/IR/Q[6] ;
  wire \cpu/U1_2/IR/Q[7] ;
  wire \cpu/U1_2/IR/Q[8] ;
  wire \cpu/U1_2/IR/Q[9] ;
  wire \cpu/U1_2/IR/Q[10] ;
  wire \cpu/U1_2/IR/Q[11] ;
  wire \cpu/U1_2/IR/Q[12] ;
  wire \cpu/U1_2/IR/Q[13] ;
  wire \cpu/U1_2/IR/Q[14] ;
  wire \cpu/U1_2/IR/Q[15] ;
  wire \cpu/U1_2/IR/Q[31] ;
  wire \switches_anti_jitter<15>/_n0023 ;
  wire \switches_anti_jitter<15>/cnt<0> ;
  wire \switches_anti_jitter<15>/cnt<1> ;
  wire \switches_anti_jitter<15>/cnt<2> ;
  wire \switches_anti_jitter<15>/cnt<3> ;
  wire \switches_anti_jitter<14>/_n0023 ;
  wire \switches_anti_jitter<14>/cnt<0> ;
  wire \switches_anti_jitter<14>/cnt<1> ;
  wire \switches_anti_jitter<14>/cnt<2> ;
  wire \switches_anti_jitter<14>/cnt<3> ;
  wire \switches_anti_jitter<13>/_n0023 ;
  wire \switches_anti_jitter<13>/cnt<0> ;
  wire \switches_anti_jitter<13>/cnt<1> ;
  wire \switches_anti_jitter<13>/cnt<2> ;
  wire \switches_anti_jitter<13>/cnt<3> ;
  wire \switches_anti_jitter<12>/_n0023 ;
  wire \switches_anti_jitter<12>/cnt<0> ;
  wire \switches_anti_jitter<12>/cnt<1> ;
  wire \switches_anti_jitter<12>/cnt<2> ;
  wire \switches_anti_jitter<12>/cnt<3> ;
  wire \switches_anti_jitter<11>/_n0023 ;
  wire \switches_anti_jitter<11>/cnt<0> ;
  wire \switches_anti_jitter<11>/cnt<1> ;
  wire \switches_anti_jitter<11>/cnt<2> ;
  wire \switches_anti_jitter<11>/cnt<3> ;
  wire \switches_anti_jitter<10>/_n0023 ;
  wire \switches_anti_jitter<10>/cnt<0> ;
  wire \switches_anti_jitter<10>/cnt<1> ;
  wire \switches_anti_jitter<10>/cnt<2> ;
  wire \switches_anti_jitter<10>/cnt<3> ;
  wire \switches_anti_jitter<9>/_n0023 ;
  wire \switches_anti_jitter<9>/cnt<0> ;
  wire \switches_anti_jitter<9>/cnt<1> ;
  wire \switches_anti_jitter<9>/cnt<2> ;
  wire \switches_anti_jitter<9>/cnt<3> ;
  wire \switches_anti_jitter<8>/_n0023 ;
  wire \switches_anti_jitter<8>/cnt<0> ;
  wire \switches_anti_jitter<8>/cnt<1> ;
  wire \switches_anti_jitter<8>/cnt<2> ;
  wire \switches_anti_jitter<8>/cnt<3> ;
  wire \switches_anti_jitter<7>/_n0023 ;
  wire \switches_anti_jitter<7>/cnt<0> ;
  wire \switches_anti_jitter<7>/cnt<1> ;
  wire \switches_anti_jitter<7>/cnt<2> ;
  wire \switches_anti_jitter<7>/cnt<3> ;
  wire \switches_anti_jitter<6>/_n0023 ;
  wire \switches_anti_jitter<6>/cnt<0> ;
  wire \switches_anti_jitter<6>/cnt<1> ;
  wire \switches_anti_jitter<6>/cnt<2> ;
  wire \switches_anti_jitter<6>/cnt<3> ;
  wire \switches_anti_jitter<5>/_n0023 ;
  wire \switches_anti_jitter<5>/cnt<0> ;
  wire \switches_anti_jitter<5>/cnt<1> ;
  wire \switches_anti_jitter<5>/cnt<2> ;
  wire \switches_anti_jitter<5>/cnt<3> ;
  wire \switches_anti_jitter<4>/_n0023 ;
  wire \switches_anti_jitter<4>/cnt<0> ;
  wire \switches_anti_jitter<4>/cnt<1> ;
  wire \switches_anti_jitter<4>/cnt<2> ;
  wire \switches_anti_jitter<4>/cnt<3> ;
  wire \switches_anti_jitter<3>/_n0023 ;
  wire \switches_anti_jitter<3>/cnt<0> ;
  wire \switches_anti_jitter<3>/cnt<1> ;
  wire \switches_anti_jitter<3>/cnt<2> ;
  wire \switches_anti_jitter<3>/cnt<3> ;
  wire \switches_anti_jitter<2>/_n0023 ;
  wire \switches_anti_jitter<2>/cnt<0> ;
  wire \switches_anti_jitter<2>/cnt<1> ;
  wire \switches_anti_jitter<2>/cnt<2> ;
  wire \switches_anti_jitter<2>/cnt<3> ;
  wire \switches_anti_jitter<1>/_n0023 ;
  wire \switches_anti_jitter<1>/cnt<0> ;
  wire \switches_anti_jitter<1>/cnt<1> ;
  wire \switches_anti_jitter<1>/cnt<2> ;
  wire \switches_anti_jitter<1>/cnt<3> ;
  wire \switches_anti_jitter<0>/_n0023 ;
  wire \switches_anti_jitter<0>/cnt<0> ;
  wire \switches_anti_jitter<0>/cnt<1> ;
  wire \switches_anti_jitter<0>/cnt<2> ;
  wire \switches_anti_jitter<0>/cnt<3> ;
  wire \vga/v_count[9]_PWR_4_o_equal_8_o_inv ;
  wire \vga/Mcount_v_count ;
  wire \vga/Mcount_v_count1 ;
  wire \vga/Mcount_v_count2 ;
  wire \vga/Mcount_v_count3 ;
  wire \vga/Mcount_v_count4 ;
  wire \vga/Mcount_v_count5 ;
  wire \vga/Mcount_v_count6 ;
  wire \vga/Mcount_v_count7 ;
  wire \vga/Mcount_v_count8 ;
  wire \vga/Mcount_v_count9 ;
  wire \vga/Mcount_h_count_val ;
  wire \Result<0>1 ;
  wire \Result<1>1 ;
  wire \Result<2>1 ;
  wire \Result<3>1 ;
  wire \Result<4>1 ;
  wire \Result<5>1 ;
  wire \Result<6>1 ;
  wire \Result<7>1 ;
  wire \Result<8>1 ;
  wire \Result<9>1 ;
  wire \switches_anti_jitter<14>/_n0031_inv ;
  wire \Result<0>2 ;
  wire \Result<1>2 ;
  wire \Result<2>2 ;
  wire \Result<3>2 ;
  wire \switches_anti_jitter<15>/_n0031_inv ;
  wire \Result<0>3 ;
  wire \Result<1>3 ;
  wire \Result<2>3 ;
  wire \Result<3>3 ;
  wire \switches_anti_jitter<13>/_n0031_inv ;
  wire \Result<0>4 ;
  wire \Result<1>4 ;
  wire \Result<2>4 ;
  wire \Result<3>4 ;
  wire \switches_anti_jitter<12>/_n0031_inv ;
  wire \Result<0>5 ;
  wire \Result<1>5 ;
  wire \Result<2>5 ;
  wire \Result<3>5 ;
  wire \switches_anti_jitter<11>/_n0031_inv ;
  wire \Result<0>6 ;
  wire \Result<1>6 ;
  wire \Result<2>6 ;
  wire \Result<3>6 ;
  wire \switches_anti_jitter<10>/_n0031_inv ;
  wire \Result<0>7 ;
  wire \Result<1>7 ;
  wire \Result<2>7 ;
  wire \Result<3>7 ;
  wire \switches_anti_jitter<9>/_n0031_inv ;
  wire \Result<0>8 ;
  wire \Result<1>8 ;
  wire \Result<2>8 ;
  wire \Result<3>8 ;
  wire \switches_anti_jitter<8>/_n0031_inv ;
  wire \Result<0>9 ;
  wire \Result<1>9 ;
  wire \Result<2>9 ;
  wire \Result<3>9 ;
  wire \switches_anti_jitter<7>/_n0031_inv ;
  wire \Result<0>10 ;
  wire \Result<1>10 ;
  wire \Result<2>10 ;
  wire \Result<3>10 ;
  wire \switches_anti_jitter<6>/_n0031_inv ;
  wire \Result<0>11 ;
  wire \Result<1>11 ;
  wire \Result<2>11 ;
  wire \Result<3>11 ;
  wire \switches_anti_jitter<5>/_n0031_inv ;
  wire \Result<0>12 ;
  wire \Result<1>12 ;
  wire \Result<2>12 ;
  wire \Result<3>12 ;
  wire \switches_anti_jitter<4>/_n0031_inv ;
  wire \Result<0>13 ;
  wire \Result<1>13 ;
  wire \Result<2>13 ;
  wire \Result<3>13 ;
  wire \switches_anti_jitter<3>/_n0031_inv ;
  wire \Result<0>14 ;
  wire \Result<1>14 ;
  wire \Result<2>14 ;
  wire \Result<3>14 ;
  wire \switches_anti_jitter<2>/_n0031_inv ;
  wire \Result<0>15 ;
  wire \Result<1>15 ;
  wire \Result<2>15 ;
  wire \Result<3>15 ;
  wire \switches_anti_jitter<1>/_n0031_inv ;
  wire \Result<0>16 ;
  wire \Result<1>16 ;
  wire \Result<2>16 ;
  wire \Result<3>16 ;
  wire \switches_anti_jitter<0>/_n0031_inv ;
  wire \Result<0>17 ;
  wire \Result<1>17 ;
  wire \Result<2>17 ;
  wire \Result<3>17 ;
  wire Maddsub_n0029_0;
  wire Maddsub_n0029_1;
  wire Maddsub_n0029_2;
  wire Maddsub_n0029_3;
  wire Maddsub_n0029_4;
  wire Maddsub_n0029_5;
  wire Maddsub_n0029_6;
  wire Maddsub_n0029_7;
  wire Maddsub_n0029_8;
  wire Maddsub_n0029_9;
  wire Maddsub_n0029_10;
  wire Maddsub_n0029_11;
  wire Maddsub_n0029_12;
  wire Maddsub_n0029_13;
  wire Maddsub_n0029_14;
  wire Maddsub_n0029_15;
  wire Maddsub_n0029_16;
  wire Maddsub_n0029_17;
  wire Maddsub_n0029_18;
  wire Maddsub_n00291_10_482;
  wire Maddsub_n00291_9_483;
  wire Maddsub_n00291_8_484;
  wire Maddsub_n00291_7_485;
  wire Maddsub_n00291_6_486;
  wire Maddsub_n00291_5_487;
  wire Maddsub_n00291_4_488;
  wire Maddsub_n00291_3_489;
  wire Maddsub_n00291_2_490;
  wire Maddsub_n00291_1_491;
  wire Maddsub_n0029_ff_10;
  wire \vga/Msub_row<8:0>_cy<5> ;
  wire \vga/h_count[9]_PWR_4_o_LessThan_18_o2 ;
  wire \vga/v_sync2 ;
  wire \vga/read21 ;
  wire \vga/h_count[9]_PWR_4_o_equal_7_o<9>1_560 ;
  wire \vga/v_count[9]_PWR_4_o_equal_8_o<9>2 ;
  wire \ps2/_n0107_inv ;
  wire \ps2/_n0097_inv ;
  wire \ps2/_n0101_inv ;
  wire \ps2/key_break<0>1_573 ;
  wire \ps2/_n0060 ;
  wire \ps2/data[7]_PWR_6_o_equal_13_o ;
  wire \ps2/key_break[3]_reduce_nor_14_o ;
  wire \ps2/state[3]_data[7]_wide_mux_2_OUT<0> ;
  wire \ps2/state[3]_data[7]_wide_mux_2_OUT<1> ;
  wire \ps2/state[3]_data[7]_wide_mux_2_OUT<2> ;
  wire \ps2/state[3]_data[7]_wide_mux_2_OUT<3> ;
  wire \ps2/state[3]_data[7]_wide_mux_2_OUT<4> ;
  wire \ps2/state[3]_data[7]_wide_mux_2_OUT<5> ;
  wire \ps2/state[3]_data[7]_wide_mux_2_OUT<6> ;
  wire \ps2/state[3]_data[7]_wide_mux_2_OUT<7> ;
  wire \ps2/_n0056 ;
  wire \ps2/state[3]_ps2_clk_neg_AND_105_o ;
  wire \ps2/ps2_clk_neg ;
  wire \ps2/ps2_clk_r0_597 ;
  wire \ps2/ps2_data_r1_598 ;
  wire \ps2/ps2_clk_r1_599 ;
  wire \pitch_gen/wave_gen/Mcompar_wave_lutdi14 ;
  wire \pitch_gen/wave_gen/Mcompar_wave_lutdi13 ;
  wire \pitch_gen/wave_gen/Mcompar_wave_lutdi12 ;
  wire \pitch_gen/wave_gen/Mcompar_wave_lutdi11_613 ;
  wire \pitch_gen/wave_gen/Mcompar_wave_lutdi10 ;
  wire \pitch_gen/wave_gen/Mcompar_wave_lutdi9 ;
  wire \pitch_gen/wave_gen/Mcompar_wave_lutdi8 ;
  wire \pitch_gen/wave_gen/Mcompar_wave_lutdi7 ;
  wire \pitch_gen/wave_gen/Mcompar_wave_lutdi6 ;
  wire \pitch_gen/wave_gen/Mcompar_wave_lutdi5 ;
  wire \pitch_gen/wave_gen/Mcompar_wave_lutdi4 ;
  wire \pitch_gen/wave_gen/Mcompar_wave_lutdi3 ;
  wire \pitch_gen/wave_gen/Mcompar_wave_lutdi2 ;
  wire \pitch_gen/wave_gen/Mcompar_wave_lutdi1_643 ;
  wire \pitch_gen/wave_gen/Mcompar_wave_lutdi ;
  wire \cpu/U11/state_FSM_FFd10-In_bdd4 ;
  wire \cpu/U11/state_FSM_FFd10-In ;
  wire \cpu/U11/state_FSM_FFd11-In ;
  wire \cpu/U11/state_FSM_FFd15-In ;
  wire \cpu/U11/state_FSM_FFd16-In ;
  wire \cpu/U11/state_FSM_FFd10_861 ;
  wire \cpu/U11/state_FSM_FFd11_862 ;
  wire \cpu/U11/state_FSM_FFd15_863 ;
  wire \bus/_n0410 ;
  wire \bus/addr[31]_ram_in[0]_Select_165_o ;
  wire \bus/addr[31]_ram_in[1]_Select_163_o ;
  wire \bus/addr[31]_ram_in[2]_Select_161_o ;
  wire \bus/addr[31]_ram_in[3]_Select_159_o ;
  wire \bus/addr[31]_ram_in[4]_Select_157_o ;
  wire \bus/addr[31]_ram_in[5]_Select_155_o ;
  wire \bus/addr[31]_ram_in[6]_Select_153_o ;
  wire \bus/addr[31]_ram_in[7]_Select_151_o ;
  wire \bus/_n0412 ;
  wire \bus/addr[31]_ram_in[8]_Select_149_o ;
  wire \bus/addr[31]_ram_in[9]_Select_147_o ;
  wire \bus/addr[31]_ram_in[10]_Select_145_o ;
  wire \bus/addr[31]_ram_in[11]_Select_143_o ;
  wire \bus/addr[31]_ram_in[12]_Select_141_o ;
  wire \bus/addr[31]_ram_in[13]_Select_139_o ;
  wire \bus/addr[31]_ram_in[14]_Select_137_o ;
  wire \bus/addr[31]_ram_in[15]_Select_135_o ;
  wire \bus/addr[31]_ram_in[31]_Select_103_o ;
  wire \vga/read2_883 ;
  wire \vga/read3_884 ;
  wire \vga/read4_885 ;
  wire N23;
  wire \cpu/U1_2/U1/Mmux_res8 ;
  wire \cpu/U1_2/U1/Mmux_res7 ;
  wire \cpu/U1_2/U1/Mmux_res6 ;
  wire \cpu/U1_2/U1/Mmux_res5 ;
  wire \cpu/U1_2/U1/Mmux_res4 ;
  wire \cpu/U1_2/U1/Mmux_res32_892 ;
  wire \cpu/U1_2/U1/Mmux_res31_893 ;
  wire \cpu/U1_2/U1/Mmux_res30 ;
  wire \cpu/U1_2/U1/Mmux_res3 ;
  wire \cpu/U1_2/U1/Mmux_res29 ;
  wire \cpu/U1_2/U1/Mmux_res28 ;
  wire \cpu/U1_2/U1/Mmux_res27 ;
  wire \cpu/U1_2/U1/Mmux_res26 ;
  wire \cpu/U1_2/U1/Mmux_res23 ;
  wire \cpu/U1_2/U1/Mmux_res2 ;
  wire N25;
  wire N27;
  wire N29;
  wire \switches_anti_jitter<15>/O_glue_set_944 ;
  wire \switches_anti_jitter<14>/O_glue_set_945 ;
  wire \switches_anti_jitter<13>/O_glue_set_946 ;
  wire \switches_anti_jitter<12>/O_glue_set_947 ;
  wire \switches_anti_jitter<11>/O_glue_set_948 ;
  wire \switches_anti_jitter<10>/O_glue_set_949 ;
  wire \switches_anti_jitter<9>/O_glue_set_950 ;
  wire \switches_anti_jitter<8>/O_glue_set_951 ;
  wire \switches_anti_jitter<7>/O_glue_set_952 ;
  wire \switches_anti_jitter<6>/O_glue_set_953 ;
  wire \switches_anti_jitter<5>/O_glue_set_954 ;
  wire \switches_anti_jitter<4>/O_glue_set_955 ;
  wire \switches_anti_jitter<3>/O_glue_set_956 ;
  wire \switches_anti_jitter<2>/O_glue_set_957 ;
  wire \switches_anti_jitter<1>/O_glue_set_958 ;
  wire \switches_anti_jitter<0>/O_glue_set_959 ;
  wire \clk_div/Mcount_div_cy<1>_rt_960 ;
  wire \clk_div/Mcount_div_cy<2>_rt_961 ;
  wire \clk_div/Mcount_div_cy<3>_rt_962 ;
  wire \clk_div/Mcount_div_cy<4>_rt_963 ;
  wire \clk_div/Mcount_div_cy<5>_rt_964 ;
  wire \clk_div/Mcount_div_cy<6>_rt_965 ;
  wire \clk_div/Mcount_div_cy<7>_rt_966 ;
  wire \clk_div/Mcount_div_cy<8>_rt_967 ;
  wire \clk_div/Mcount_div_cy<9>_rt_968 ;
  wire \clk_div/Mcount_div_cy<10>_rt_969 ;
  wire \clk_div/Mcount_div_cy<11>_rt_970 ;
  wire \clk_div/Mcount_div_cy<12>_rt_971 ;
  wire \clk_div/Mcount_div_cy<13>_rt_972 ;
  wire \clk_div/Mcount_div_cy<14>_rt_973 ;
  wire \vga/Mcount_h_count_lut<0>1 ;
  wire \vga/Mcount_h_count_cy<1>_rt_975 ;
  wire \vga/Mcount_h_count_cy<2>_rt_976 ;
  wire \vga/Mcount_h_count_cy<3>_rt_977 ;
  wire \vga/Mcount_h_count_cy<4>_rt_978 ;
  wire \vga/Mcount_h_count_cy<5>_rt_979 ;
  wire \vga/Mcount_h_count_cy<6>_rt_980 ;
  wire \vga/Mcount_h_count_cy<7>_rt_981 ;
  wire \vga/Mcount_h_count_cy<8>_rt_982 ;
  wire \Maddsub_n0029_Madd_cy<10>_rt_983 ;
  wire \Maddsub_n0029_Madd_cy<11>_rt_984 ;
  wire \Maddsub_n0029_Madd_cy<12>_rt_985 ;
  wire \Maddsub_n0029_Madd_cy<13>_rt_986 ;
  wire \Maddsub_n0029_Madd_cy<14>_rt_987 ;
  wire \Maddsub_n0029_Madd_cy<15>_rt_988 ;
  wire \Maddsub_n0029_Madd_cy<16>_rt_989 ;
  wire \Maddsub_n0029_Madd_cy<17>_rt_990 ;
  wire \clk_div/Mcount_div_xor<15>_rt_991 ;
  wire \vga/Mcount_h_count_xor<9>_rt_992 ;
  wire N31;
  wire \vga/Mcount_v_count_cy<0>_rt_994 ;
  wire \vga/Mcount_v_count_cy<1>_rt_995 ;
  wire \ps2/Mshreg_ps2_data_r1_998 ;
  wire NLW_Maddsub_n0029_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Maddsub_n0029_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Maddsub_n0029_MULTSIGNIN_UNCONNECTED;
  wire NLW_Maddsub_n0029_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Maddsub_n0029_UNDERFLOW_UNCONNECTED;
  wire NLW_Maddsub_n0029_PATTERNDETECT_UNCONNECTED;
  wire NLW_Maddsub_n0029_OVERFLOW_UNCONNECTED;
  wire NLW_Maddsub_n0029_CARRYCASCIN_UNCONNECTED;
  wire \NLW_Maddsub_n0029_ACOUT<29>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<28>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<27>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<26>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<25>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<24>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<23>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<22>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<21>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<20>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<19>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<18>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<17>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<16>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<15>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<14>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<13>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<12>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<11>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<10>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<9>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<8>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<7>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<6>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<5>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<4>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<3>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<2>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<1>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACOUT<0>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<47>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<46>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<45>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<44>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<43>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<42>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<41>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<40>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<39>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<38>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<37>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<36>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<35>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<34>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<33>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<32>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<31>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<30>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<29>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<28>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<27>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<26>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<25>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<24>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<23>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<22>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<21>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<20>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<19>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<18>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<17>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<16>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<15>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<14>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<13>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<12>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<11>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<10>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<9>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<8>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<7>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<6>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<5>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<4>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<3>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<2>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<1>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCIN<0>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_CARRYOUT<3>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_CARRYOUT<2>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_CARRYOUT<1>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_CARRYOUT<0>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCIN<17>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCIN<16>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCIN<15>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCIN<14>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCIN<13>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCIN<12>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCIN<11>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCIN<10>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCIN<9>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCIN<8>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCIN<7>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCIN<6>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCIN<5>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCIN<4>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCIN<3>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCIN<2>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCIN<1>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCIN<0>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCOUT<17>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCOUT<16>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCOUT<15>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCOUT<14>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCOUT<13>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCOUT<12>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCOUT<11>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCOUT<10>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCOUT<9>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCOUT<8>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCOUT<7>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCOUT<6>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCOUT<5>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCOUT<4>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCOUT<3>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCOUT<2>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCOUT<1>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_BCOUT<0>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<47>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<46>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<45>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<44>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<43>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<42>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<41>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<40>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<39>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<38>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<37>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<36>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<35>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<34>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<33>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<32>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<31>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<30>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<29>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<28>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<27>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<26>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<25>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<24>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<23>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<22>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<21>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<20>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_P<19>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<47>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<46>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<45>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<44>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<43>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<42>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<41>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<40>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<39>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<38>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<37>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<36>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<35>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<34>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<33>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<32>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<31>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<30>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<29>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<28>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<27>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<26>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<25>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<24>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<23>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<22>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<21>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<20>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<19>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<18>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<17>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<16>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<15>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<14>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<13>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<12>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<11>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<10>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<9>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<8>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<7>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<6>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<5>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<4>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<3>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<2>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<1>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_PCOUT<0>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<29>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<28>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<27>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<26>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<25>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<24>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<23>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<22>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<21>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<20>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<19>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<18>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<17>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<16>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<15>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<14>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<13>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<12>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<11>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<10>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<9>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<8>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<7>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<6>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<5>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<4>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<3>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<2>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<1>_UNCONNECTED ;
  wire \NLW_Maddsub_n0029_ACIN<0>_UNCONNECTED ;
  wire \NLW_ps2/Mshreg_ps2_data_r1_Q15_UNCONNECTED ;
  wire \NLW_ram_doutb<31>_UNCONNECTED ;
  wire \NLW_ram_doutb<30>_UNCONNECTED ;
  wire \NLW_ram_doutb<29>_UNCONNECTED ;
  wire \NLW_ram_doutb<28>_UNCONNECTED ;
  wire \NLW_ram_doutb<15>_UNCONNECTED ;
  wire \NLW_ram_doutb<14>_UNCONNECTED ;
  wire \NLW_ram_doutb<13>_UNCONNECTED ;
  wire \NLW_ram_doutb<12>_UNCONNECTED ;
  wire \NLW_pitch_gen/pitch_period_table_rom_spo<0>_UNCONNECTED ;
  wire [7 : 0] \ps2/keycode ;
  wire [31 : 2] \cpu/U1_2/PC/Q ;
  wire [3 : 0] \vga/r ;
  wire [3 : 0] \vga/g ;
  wire [3 : 0] \vga/b ;
  wire [18 : 1] n0014;
  wire [8 : 0] \vga/row ;
  wire [9 : 1] \vga/col ;
  wire [9 : 0] \vga/v_count ;
  wire [9 : 0] \vga/h_count ;
  wire [1 : 1] \cpu/ALUSrcB ;
  wire [2 : 0] \cpu/ALU_op ;
  wire [15 : 0] Result;
  wire [15 : 0] \clk_div/div ;
  wire [8 : 0] \vga/Mcount_v_count_cy ;
  wire [9 : 2] \vga/Mcount_v_count_lut ;
  wire [5 : 5] \vga/Msub_col_cy ;
  wire [0 : 0] \clk_div/Mcount_div_lut ;
  wire [14 : 0] \clk_div/Mcount_div_cy ;
  wire [0 : 0] \vga/Mcount_h_count_lut ;
  wire [8 : 0] \vga/Mcount_h_count_cy ;
  wire [9 : 0] Maddsub_n0029_Madd_lut;
  wire [17 : 0] Maddsub_n0029_Madd_cy;
  wire [3 : 0] \ps2/state ;
  wire [3 : 0] \ps2/Result ;
  wire [7 : 0] \ps2/data ;
  wire [0 : 0] \ps2/key_break ;
  wire [15 : 0] \pitch_gen/wave_gen/Mcompar_wave_cy ;
  wire [15 : 0] \pitch_gen/wave_gen/Mcompar_wave_lut ;
  wire [1 : 1] \pitch_gen/Madd_n0014_Madd_lut ;
  wire [31 : 1] \pitch_gen/period ;
  wire [31 : 2] \cpu/U1_2/ALU_A ;
  wire [31 : 2] \cpu/U1_2/PC_in ;
  wire [17 : 0] \cpu/U1_2/ALU_B ;
  wire [31 : 2] \cpu/U1_2/U1/Madd_adc_res_Madd_lut ;
  wire [30 : 0] \cpu/U1_2/U1/Madd_adc_res_Madd_cy ;
  wire [31 : 2] \cpu/U1_2/U1/adc_res ;
  VCC   XST_VCC (
    .P(\pitch_gen/Madd_n0014_Madd_lut [1])
  );
  GND   XST_GND (
    .G(Maddsub_n0029_ff_10)
  );
  FDR   \vga/rdn  (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\pitch_gen/Madd_n0014_Madd_lut [1]),
    .R(\vga/read ),
    .Q(\vga/rdn_209 )
  );
  FD   \vga/vs  (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\vga/v_sync ),
    .Q(\vga/vs_92 )
  );
  FD   \vga/hs  (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\vga/h_sync ),
    .Q(\vga/hs_91 )
  );
  FDR   \vga/r_0  (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\vram_scan[27]_vram_scan[11]_mux_2_OUT<8> ),
    .R(\vga/rdn_209 ),
    .Q(\vga/r [0])
  );
  FDR   \vga/r_1  (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\vram_scan[27]_vram_scan[11]_mux_2_OUT<9> ),
    .R(\vga/rdn_209 ),
    .Q(\vga/r [1])
  );
  FDR   \vga/r_2  (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\vram_scan[27]_vram_scan[11]_mux_2_OUT<10> ),
    .R(\vga/rdn_209 ),
    .Q(\vga/r [2])
  );
  FDR   \vga/r_3  (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\vram_scan[27]_vram_scan[11]_mux_2_OUT<11> ),
    .R(\vga/rdn_209 ),
    .Q(\vga/r [3])
  );
  FDR   \vga/g_0  (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\vram_scan[27]_vram_scan[11]_mux_2_OUT<4> ),
    .R(\vga/rdn_209 ),
    .Q(\vga/g [0])
  );
  FDR   \vga/g_1  (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\vram_scan[27]_vram_scan[11]_mux_2_OUT<5> ),
    .R(\vga/rdn_209 ),
    .Q(\vga/g [1])
  );
  FDR   \vga/g_2  (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\vram_scan[27]_vram_scan[11]_mux_2_OUT<6> ),
    .R(\vga/rdn_209 ),
    .Q(\vga/g [2])
  );
  FDR   \vga/g_3  (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\vram_scan[27]_vram_scan[11]_mux_2_OUT<7> ),
    .R(\vga/rdn_209 ),
    .Q(\vga/g [3])
  );
  FDR   \vga/b_0  (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\vram_scan[27]_vram_scan[11]_mux_2_OUT<0> ),
    .R(\vga/rdn_209 ),
    .Q(\vga/b [0])
  );
  FDR   \vga/b_1  (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\vram_scan[27]_vram_scan[11]_mux_2_OUT<1> ),
    .R(\vga/rdn_209 ),
    .Q(\vga/b [1])
  );
  FDR   \vga/b_2  (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\vram_scan[27]_vram_scan[11]_mux_2_OUT<2> ),
    .R(\vga/rdn_209 ),
    .Q(\vga/b [2])
  );
  FDR   \vga/b_3  (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\vram_scan[27]_vram_scan[11]_mux_2_OUT<3> ),
    .R(\vga/rdn_209 ),
    .Q(\vga/b [3])
  );
  MUXCY   \vga/Mcount_v_count_cy<0>  (
    .CI(\vga/v_count[9]_PWR_4_o_equal_8_o_inv ),
    .DI(Maddsub_n0029_ff_10),
    .S(\vga/Mcount_v_count_cy<0>_rt_994 ),
    .O(\vga/Mcount_v_count_cy [0])
  );
  XORCY   \vga/Mcount_v_count_xor<0>  (
    .CI(\vga/v_count[9]_PWR_4_o_equal_8_o_inv ),
    .LI(\vga/Mcount_v_count_cy<0>_rt_994 ),
    .O(\vga/Mcount_v_count )
  );
  MUXCY   \vga/Mcount_v_count_cy<1>  (
    .CI(\vga/Mcount_v_count_cy [0]),
    .DI(Maddsub_n0029_ff_10),
    .S(\vga/Mcount_v_count_cy<1>_rt_995 ),
    .O(\vga/Mcount_v_count_cy [1])
  );
  XORCY   \vga/Mcount_v_count_xor<1>  (
    .CI(\vga/Mcount_v_count_cy [0]),
    .LI(\vga/Mcount_v_count_cy<1>_rt_995 ),
    .O(\vga/Mcount_v_count1 )
  );
  MUXCY   \vga/Mcount_v_count_cy<2>  (
    .CI(\vga/Mcount_v_count_cy [1]),
    .DI(Maddsub_n0029_ff_10),
    .S(\vga/Mcount_v_count_lut [2]),
    .O(\vga/Mcount_v_count_cy [2])
  );
  XORCY   \vga/Mcount_v_count_xor<2>  (
    .CI(\vga/Mcount_v_count_cy [1]),
    .LI(\vga/Mcount_v_count_lut [2]),
    .O(\vga/Mcount_v_count2 )
  );
  MUXCY   \vga/Mcount_v_count_cy<3>  (
    .CI(\vga/Mcount_v_count_cy [2]),
    .DI(Maddsub_n0029_ff_10),
    .S(\vga/Mcount_v_count_lut [3]),
    .O(\vga/Mcount_v_count_cy [3])
  );
  XORCY   \vga/Mcount_v_count_xor<3>  (
    .CI(\vga/Mcount_v_count_cy [2]),
    .LI(\vga/Mcount_v_count_lut [3]),
    .O(\vga/Mcount_v_count3 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/Mcount_v_count_lut<4>  (
    .I0(\vga/v_count[9]_PWR_4_o_equal_8_o ),
    .I1(\vga/v_count [4]),
    .I2(Maddsub_n0029_ff_10),
    .O(\vga/Mcount_v_count_lut [4])
  );
  MUXCY   \vga/Mcount_v_count_cy<4>  (
    .CI(\vga/Mcount_v_count_cy [3]),
    .DI(Maddsub_n0029_ff_10),
    .S(\vga/Mcount_v_count_lut [4]),
    .O(\vga/Mcount_v_count_cy [4])
  );
  XORCY   \vga/Mcount_v_count_xor<4>  (
    .CI(\vga/Mcount_v_count_cy [3]),
    .LI(\vga/Mcount_v_count_lut [4]),
    .O(\vga/Mcount_v_count4 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/Mcount_v_count_lut<5>  (
    .I0(\vga/v_count[9]_PWR_4_o_equal_8_o ),
    .I1(\vga/v_count [5]),
    .I2(Maddsub_n0029_ff_10),
    .O(\vga/Mcount_v_count_lut [5])
  );
  MUXCY   \vga/Mcount_v_count_cy<5>  (
    .CI(\vga/Mcount_v_count_cy [4]),
    .DI(Maddsub_n0029_ff_10),
    .S(\vga/Mcount_v_count_lut [5]),
    .O(\vga/Mcount_v_count_cy [5])
  );
  XORCY   \vga/Mcount_v_count_xor<5>  (
    .CI(\vga/Mcount_v_count_cy [4]),
    .LI(\vga/Mcount_v_count_lut [5]),
    .O(\vga/Mcount_v_count5 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/Mcount_v_count_lut<6>  (
    .I0(\vga/v_count[9]_PWR_4_o_equal_8_o ),
    .I1(\vga/v_count [6]),
    .I2(Maddsub_n0029_ff_10),
    .O(\vga/Mcount_v_count_lut [6])
  );
  MUXCY   \vga/Mcount_v_count_cy<6>  (
    .CI(\vga/Mcount_v_count_cy [5]),
    .DI(Maddsub_n0029_ff_10),
    .S(\vga/Mcount_v_count_lut [6]),
    .O(\vga/Mcount_v_count_cy [6])
  );
  XORCY   \vga/Mcount_v_count_xor<6>  (
    .CI(\vga/Mcount_v_count_cy [5]),
    .LI(\vga/Mcount_v_count_lut [6]),
    .O(\vga/Mcount_v_count6 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/Mcount_v_count_lut<7>  (
    .I0(\vga/v_count[9]_PWR_4_o_equal_8_o ),
    .I1(\vga/v_count [7]),
    .I2(Maddsub_n0029_ff_10),
    .O(\vga/Mcount_v_count_lut [7])
  );
  MUXCY   \vga/Mcount_v_count_cy<7>  (
    .CI(\vga/Mcount_v_count_cy [6]),
    .DI(Maddsub_n0029_ff_10),
    .S(\vga/Mcount_v_count_lut [7]),
    .O(\vga/Mcount_v_count_cy [7])
  );
  XORCY   \vga/Mcount_v_count_xor<7>  (
    .CI(\vga/Mcount_v_count_cy [6]),
    .LI(\vga/Mcount_v_count_lut [7]),
    .O(\vga/Mcount_v_count7 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/Mcount_v_count_lut<8>  (
    .I0(\vga/v_count[9]_PWR_4_o_equal_8_o ),
    .I1(\vga/v_count [8]),
    .I2(Maddsub_n0029_ff_10),
    .O(\vga/Mcount_v_count_lut [8])
  );
  MUXCY   \vga/Mcount_v_count_cy<8>  (
    .CI(\vga/Mcount_v_count_cy [7]),
    .DI(Maddsub_n0029_ff_10),
    .S(\vga/Mcount_v_count_lut [8]),
    .O(\vga/Mcount_v_count_cy [8])
  );
  XORCY   \vga/Mcount_v_count_xor<8>  (
    .CI(\vga/Mcount_v_count_cy [7]),
    .LI(\vga/Mcount_v_count_lut [8]),
    .O(\vga/Mcount_v_count8 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/Mcount_v_count_lut<9>  (
    .I0(\vga/v_count[9]_PWR_4_o_equal_8_o ),
    .I1(\vga/v_count [9]),
    .I2(Maddsub_n0029_ff_10),
    .O(\vga/Mcount_v_count_lut [9])
  );
  XORCY   \vga/Mcount_v_count_xor<9>  (
    .CI(\vga/Mcount_v_count_cy [8]),
    .LI(\vga/Mcount_v_count_lut [9]),
    .O(\vga/Mcount_v_count9 )
  );
  DSP48E1 #(
    .USE_DPORT ( "FALSE" ),
    .ADREG ( 0 ),
    .AREG ( 1 ),
    .ACASCREG ( 1 ),
    .BREG ( 0 ),
    .BCASCREG ( 0 ),
    .CREG ( 0 ),
    .MREG ( 0 ),
    .PREG ( 0 ),
    .CARRYINREG ( 0 ),
    .OPMODEREG ( 0 ),
    .ALUMODEREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .INMODEREG ( 0 ),
    .USE_MULT ( "MULTIPLY" ),
    .A_INPUT ( "DIRECT" ),
    .B_INPUT ( "DIRECT" ),
    .DREG ( 0 ),
    .SEL_PATTERN ( "PATTERN" ),
    .MASK ( 48'h3fffffffffff ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .PATTERN ( 48'h000000000000 ),
    .USE_SIMD ( "ONE48" ),
    .AUTORESET_PATDET ( "NO_RESET" ),
    .SEL_MASK ( "MASK" ))
  Maddsub_n0029 (
    .PATTERNBDETECT(NLW_Maddsub_n0029_PATTERNBDETECT_UNCONNECTED),
    .RSTC(Maddsub_n0029_ff_10),
    .CEB1(Maddsub_n0029_ff_10),
    .CEAD(Maddsub_n0029_ff_10),
    .MULTSIGNOUT(NLW_Maddsub_n0029_MULTSIGNOUT_UNCONNECTED),
    .CEC(Maddsub_n0029_ff_10),
    .RSTM(Maddsub_n0029_ff_10),
    .MULTSIGNIN(NLW_Maddsub_n0029_MULTSIGNIN_UNCONNECTED),
    .CEB2(Maddsub_n0029_ff_10),
    .RSTCTRL(Maddsub_n0029_ff_10),
    .CEP(Maddsub_n0029_ff_10),
    .CARRYCASCOUT(NLW_Maddsub_n0029_CARRYCASCOUT_UNCONNECTED),
    .RSTA(Maddsub_n0029_ff_10),
    .CECARRYIN(Maddsub_n0029_ff_10),
    .UNDERFLOW(NLW_Maddsub_n0029_UNDERFLOW_UNCONNECTED),
    .PATTERNDETECT(NLW_Maddsub_n0029_PATTERNDETECT_UNCONNECTED),
    .RSTALUMODE(Maddsub_n0029_ff_10),
    .RSTALLCARRYIN(Maddsub_n0029_ff_10),
    .CED(Maddsub_n0029_ff_10),
    .RSTD(Maddsub_n0029_ff_10),
    .CEALUMODE(Maddsub_n0029_ff_10),
    .CEA2(\pitch_gen/Madd_n0014_Madd_lut [1]),
    .CLK(\clk_div/div_1_BUFG_20 ),
    .CEA1(Maddsub_n0029_ff_10),
    .RSTB(Maddsub_n0029_ff_10),
    .OVERFLOW(NLW_Maddsub_n0029_OVERFLOW_UNCONNECTED),
    .CECTRL(Maddsub_n0029_ff_10),
    .CEM(Maddsub_n0029_ff_10),
    .CARRYIN(Maddsub_n0029_ff_10),
    .CARRYCASCIN(NLW_Maddsub_n0029_CARRYCASCIN_UNCONNECTED),
    .RSTINMODE(Maddsub_n0029_ff_10),
    .CEINMODE(Maddsub_n0029_ff_10),
    .RSTP(Maddsub_n0029_ff_10),
    .ACOUT({\NLW_Maddsub_n0029_ACOUT<29>_UNCONNECTED , \NLW_Maddsub_n0029_ACOUT<28>_UNCONNECTED , \NLW_Maddsub_n0029_ACOUT<27>_UNCONNECTED , 
\NLW_Maddsub_n0029_ACOUT<26>_UNCONNECTED , \NLW_Maddsub_n0029_ACOUT<25>_UNCONNECTED , \NLW_Maddsub_n0029_ACOUT<24>_UNCONNECTED , 
\NLW_Maddsub_n0029_ACOUT<23>_UNCONNECTED , \NLW_Maddsub_n0029_ACOUT<22>_UNCONNECTED , \NLW_Maddsub_n0029_ACOUT<21>_UNCONNECTED , 
\NLW_Maddsub_n0029_ACOUT<20>_UNCONNECTED , \NLW_Maddsub_n0029_ACOUT<19>_UNCONNECTED , \NLW_Maddsub_n0029_ACOUT<18>_UNCONNECTED , 
\NLW_Maddsub_n0029_ACOUT<17>_UNCONNECTED , \NLW_Maddsub_n0029_ACOUT<16>_UNCONNECTED , \NLW_Maddsub_n0029_ACOUT<15>_UNCONNECTED , 
\NLW_Maddsub_n0029_ACOUT<14>_UNCONNECTED , \NLW_Maddsub_n0029_ACOUT<13>_UNCONNECTED , \NLW_Maddsub_n0029_ACOUT<12>_UNCONNECTED , 
\NLW_Maddsub_n0029_ACOUT<11>_UNCONNECTED , \NLW_Maddsub_n0029_ACOUT<10>_UNCONNECTED , \NLW_Maddsub_n0029_ACOUT<9>_UNCONNECTED , 
\NLW_Maddsub_n0029_ACOUT<8>_UNCONNECTED , \NLW_Maddsub_n0029_ACOUT<7>_UNCONNECTED , \NLW_Maddsub_n0029_ACOUT<6>_UNCONNECTED , 
\NLW_Maddsub_n0029_ACOUT<5>_UNCONNECTED , \NLW_Maddsub_n0029_ACOUT<4>_UNCONNECTED , \NLW_Maddsub_n0029_ACOUT<3>_UNCONNECTED , 
\NLW_Maddsub_n0029_ACOUT<2>_UNCONNECTED , \NLW_Maddsub_n0029_ACOUT<1>_UNCONNECTED , \NLW_Maddsub_n0029_ACOUT<0>_UNCONNECTED }),
    .OPMODE({Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, \pitch_gen/Madd_n0014_Madd_lut [1], 
Maddsub_n0029_ff_10, \pitch_gen/Madd_n0014_Madd_lut [1]}),
    .PCIN({\NLW_Maddsub_n0029_PCIN<47>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<46>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<45>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCIN<44>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<43>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<42>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCIN<41>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<40>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<39>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCIN<38>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<37>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<36>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCIN<35>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<34>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<33>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCIN<32>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<31>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<30>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCIN<29>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<28>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<27>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCIN<26>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<25>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<24>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCIN<23>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<22>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<21>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCIN<20>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<19>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<18>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCIN<17>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<16>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<15>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCIN<14>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<13>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<12>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCIN<11>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<10>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<9>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCIN<8>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<7>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<6>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCIN<5>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<4>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<3>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCIN<2>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<1>_UNCONNECTED , \NLW_Maddsub_n0029_PCIN<0>_UNCONNECTED }),
    .ALUMODE({Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10}),
    .C({\pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1]
, \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], 
\pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], 
\pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], 
\pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], 
\pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], 
\pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], 
\pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], 
\pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], 
\pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], 
\pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], 
\pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1]}),
    .CARRYOUT({\NLW_Maddsub_n0029_CARRYOUT<3>_UNCONNECTED , \NLW_Maddsub_n0029_CARRYOUT<2>_UNCONNECTED , \NLW_Maddsub_n0029_CARRYOUT<1>_UNCONNECTED , 
\NLW_Maddsub_n0029_CARRYOUT<0>_UNCONNECTED }),
    .INMODE({Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, \pitch_gen/Madd_n0014_Madd_lut [1], Maddsub_n0029_ff_10, Maddsub_n0029_ff_10}),
    .BCIN({\NLW_Maddsub_n0029_BCIN<17>_UNCONNECTED , \NLW_Maddsub_n0029_BCIN<16>_UNCONNECTED , \NLW_Maddsub_n0029_BCIN<15>_UNCONNECTED , 
\NLW_Maddsub_n0029_BCIN<14>_UNCONNECTED , \NLW_Maddsub_n0029_BCIN<13>_UNCONNECTED , \NLW_Maddsub_n0029_BCIN<12>_UNCONNECTED , 
\NLW_Maddsub_n0029_BCIN<11>_UNCONNECTED , \NLW_Maddsub_n0029_BCIN<10>_UNCONNECTED , \NLW_Maddsub_n0029_BCIN<9>_UNCONNECTED , 
\NLW_Maddsub_n0029_BCIN<8>_UNCONNECTED , \NLW_Maddsub_n0029_BCIN<7>_UNCONNECTED , \NLW_Maddsub_n0029_BCIN<6>_UNCONNECTED , 
\NLW_Maddsub_n0029_BCIN<5>_UNCONNECTED , \NLW_Maddsub_n0029_BCIN<4>_UNCONNECTED , \NLW_Maddsub_n0029_BCIN<3>_UNCONNECTED , 
\NLW_Maddsub_n0029_BCIN<2>_UNCONNECTED , \NLW_Maddsub_n0029_BCIN<1>_UNCONNECTED , \NLW_Maddsub_n0029_BCIN<0>_UNCONNECTED }),
    .B({Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, 
Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, \pitch_gen/Madd_n0014_Madd_lut [1], Maddsub_n0029_ff_10, \pitch_gen/Madd_n0014_Madd_lut [1], 
Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10}),
    .BCOUT({\NLW_Maddsub_n0029_BCOUT<17>_UNCONNECTED , \NLW_Maddsub_n0029_BCOUT<16>_UNCONNECTED , \NLW_Maddsub_n0029_BCOUT<15>_UNCONNECTED , 
\NLW_Maddsub_n0029_BCOUT<14>_UNCONNECTED , \NLW_Maddsub_n0029_BCOUT<13>_UNCONNECTED , \NLW_Maddsub_n0029_BCOUT<12>_UNCONNECTED , 
\NLW_Maddsub_n0029_BCOUT<11>_UNCONNECTED , \NLW_Maddsub_n0029_BCOUT<10>_UNCONNECTED , \NLW_Maddsub_n0029_BCOUT<9>_UNCONNECTED , 
\NLW_Maddsub_n0029_BCOUT<8>_UNCONNECTED , \NLW_Maddsub_n0029_BCOUT<7>_UNCONNECTED , \NLW_Maddsub_n0029_BCOUT<6>_UNCONNECTED , 
\NLW_Maddsub_n0029_BCOUT<5>_UNCONNECTED , \NLW_Maddsub_n0029_BCOUT<4>_UNCONNECTED , \NLW_Maddsub_n0029_BCOUT<3>_UNCONNECTED , 
\NLW_Maddsub_n0029_BCOUT<2>_UNCONNECTED , \NLW_Maddsub_n0029_BCOUT<1>_UNCONNECTED , \NLW_Maddsub_n0029_BCOUT<0>_UNCONNECTED }),
    .D({Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, 
Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, 
Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, 
Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10}),
    .P({\NLW_Maddsub_n0029_P<47>_UNCONNECTED , \NLW_Maddsub_n0029_P<46>_UNCONNECTED , \NLW_Maddsub_n0029_P<45>_UNCONNECTED , 
\NLW_Maddsub_n0029_P<44>_UNCONNECTED , \NLW_Maddsub_n0029_P<43>_UNCONNECTED , \NLW_Maddsub_n0029_P<42>_UNCONNECTED , 
\NLW_Maddsub_n0029_P<41>_UNCONNECTED , \NLW_Maddsub_n0029_P<40>_UNCONNECTED , \NLW_Maddsub_n0029_P<39>_UNCONNECTED , 
\NLW_Maddsub_n0029_P<38>_UNCONNECTED , \NLW_Maddsub_n0029_P<37>_UNCONNECTED , \NLW_Maddsub_n0029_P<36>_UNCONNECTED , 
\NLW_Maddsub_n0029_P<35>_UNCONNECTED , \NLW_Maddsub_n0029_P<34>_UNCONNECTED , \NLW_Maddsub_n0029_P<33>_UNCONNECTED , 
\NLW_Maddsub_n0029_P<32>_UNCONNECTED , \NLW_Maddsub_n0029_P<31>_UNCONNECTED , \NLW_Maddsub_n0029_P<30>_UNCONNECTED , 
\NLW_Maddsub_n0029_P<29>_UNCONNECTED , \NLW_Maddsub_n0029_P<28>_UNCONNECTED , \NLW_Maddsub_n0029_P<27>_UNCONNECTED , 
\NLW_Maddsub_n0029_P<26>_UNCONNECTED , \NLW_Maddsub_n0029_P<25>_UNCONNECTED , \NLW_Maddsub_n0029_P<24>_UNCONNECTED , 
\NLW_Maddsub_n0029_P<23>_UNCONNECTED , \NLW_Maddsub_n0029_P<22>_UNCONNECTED , \NLW_Maddsub_n0029_P<21>_UNCONNECTED , 
\NLW_Maddsub_n0029_P<20>_UNCONNECTED , \NLW_Maddsub_n0029_P<19>_UNCONNECTED , Maddsub_n0029_18, Maddsub_n0029_17, Maddsub_n0029_16, Maddsub_n0029_15, 
Maddsub_n0029_14, Maddsub_n0029_13, Maddsub_n0029_12, Maddsub_n0029_11, Maddsub_n0029_10, Maddsub_n0029_9, Maddsub_n0029_8, Maddsub_n0029_7, 
Maddsub_n0029_6, Maddsub_n0029_5, Maddsub_n0029_4, Maddsub_n0029_3, Maddsub_n0029_2, Maddsub_n0029_1, Maddsub_n0029_0}),
    .A({\pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1]
, \pitch_gen/Madd_n0014_Madd_lut [1], Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, 
Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, 
Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, \vga/row [8], \vga/row [7], \vga/row [6], \vga/row [5], 
\vga/row [4], \vga/row [3], \vga/row [2], \vga/row [1], \vga/row [0]}),
    .PCOUT({\NLW_Maddsub_n0029_PCOUT<47>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<46>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<45>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCOUT<44>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<43>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<42>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCOUT<41>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<40>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<39>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCOUT<38>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<37>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<36>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCOUT<35>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<34>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<33>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCOUT<32>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<31>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<30>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCOUT<29>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<28>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<27>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCOUT<26>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<25>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<24>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCOUT<23>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<22>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<21>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCOUT<20>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<19>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<18>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCOUT<17>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<16>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<15>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCOUT<14>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<13>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<12>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCOUT<11>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<10>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<9>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCOUT<8>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<7>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<6>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCOUT<5>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<4>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<3>_UNCONNECTED , 
\NLW_Maddsub_n0029_PCOUT<2>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<1>_UNCONNECTED , \NLW_Maddsub_n0029_PCOUT<0>_UNCONNECTED }),
    .ACIN({\NLW_Maddsub_n0029_ACIN<29>_UNCONNECTED , \NLW_Maddsub_n0029_ACIN<28>_UNCONNECTED , \NLW_Maddsub_n0029_ACIN<27>_UNCONNECTED , 
\NLW_Maddsub_n0029_ACIN<26>_UNCONNECTED , \NLW_Maddsub_n0029_ACIN<25>_UNCONNECTED , \NLW_Maddsub_n0029_ACIN<24>_UNCONNECTED , 
\NLW_Maddsub_n0029_ACIN<23>_UNCONNECTED , \NLW_Maddsub_n0029_ACIN<22>_UNCONNECTED , \NLW_Maddsub_n0029_ACIN<21>_UNCONNECTED , 
\NLW_Maddsub_n0029_ACIN<20>_UNCONNECTED , \NLW_Maddsub_n0029_ACIN<19>_UNCONNECTED , \NLW_Maddsub_n0029_ACIN<18>_UNCONNECTED , 
\NLW_Maddsub_n0029_ACIN<17>_UNCONNECTED , \NLW_Maddsub_n0029_ACIN<16>_UNCONNECTED , \NLW_Maddsub_n0029_ACIN<15>_UNCONNECTED , 
\NLW_Maddsub_n0029_ACIN<14>_UNCONNECTED , \NLW_Maddsub_n0029_ACIN<13>_UNCONNECTED , \NLW_Maddsub_n0029_ACIN<12>_UNCONNECTED , 
\NLW_Maddsub_n0029_ACIN<11>_UNCONNECTED , \NLW_Maddsub_n0029_ACIN<10>_UNCONNECTED , \NLW_Maddsub_n0029_ACIN<9>_UNCONNECTED , 
\NLW_Maddsub_n0029_ACIN<8>_UNCONNECTED , \NLW_Maddsub_n0029_ACIN<7>_UNCONNECTED , \NLW_Maddsub_n0029_ACIN<6>_UNCONNECTED , 
\NLW_Maddsub_n0029_ACIN<5>_UNCONNECTED , \NLW_Maddsub_n0029_ACIN<4>_UNCONNECTED , \NLW_Maddsub_n0029_ACIN<3>_UNCONNECTED , 
\NLW_Maddsub_n0029_ACIN<2>_UNCONNECTED , \NLW_Maddsub_n0029_ACIN<1>_UNCONNECTED , \NLW_Maddsub_n0029_ACIN<0>_UNCONNECTED }),
    .CARRYINSEL({Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10})
  );
  FD #(
    .INIT ( 1'b0 ))
  \clk_div/div_0  (
    .C(clk_BUFGP_16),
    .D(Result[0]),
    .Q(\clk_div/div [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \clk_div/div_1  (
    .C(clk_BUFGP_16),
    .D(Result[1]),
    .Q(\clk_div/div [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \clk_div/div_2  (
    .C(clk_BUFGP_16),
    .D(Result[2]),
    .Q(\clk_div/div [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \clk_div/div_3  (
    .C(clk_BUFGP_16),
    .D(Result[3]),
    .Q(\clk_div/div [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \clk_div/div_4  (
    .C(clk_BUFGP_16),
    .D(Result[4]),
    .Q(\clk_div/div [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \clk_div/div_5  (
    .C(clk_BUFGP_16),
    .D(Result[5]),
    .Q(\clk_div/div [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \clk_div/div_6  (
    .C(clk_BUFGP_16),
    .D(Result[6]),
    .Q(\clk_div/div [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \clk_div/div_7  (
    .C(clk_BUFGP_16),
    .D(Result[7]),
    .Q(\clk_div/div [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \clk_div/div_8  (
    .C(clk_BUFGP_16),
    .D(Result[8]),
    .Q(\clk_div/div [8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \clk_div/div_9  (
    .C(clk_BUFGP_16),
    .D(Result[9]),
    .Q(\clk_div/div [9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \clk_div/div_10  (
    .C(clk_BUFGP_16),
    .D(Result[10]),
    .Q(\clk_div/div [10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \clk_div/div_11  (
    .C(clk_BUFGP_16),
    .D(Result[11]),
    .Q(\clk_div/div [11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \clk_div/div_12  (
    .C(clk_BUFGP_16),
    .D(Result[12]),
    .Q(\clk_div/div [12])
  );
  FD #(
    .INIT ( 1'b0 ))
  \clk_div/div_13  (
    .C(clk_BUFGP_16),
    .D(Result[13]),
    .Q(\clk_div/div [13])
  );
  FD #(
    .INIT ( 1'b0 ))
  \clk_div/div_14  (
    .C(clk_BUFGP_16),
    .D(Result[14]),
    .Q(\clk_div/div [14])
  );
  FD #(
    .INIT ( 1'b0 ))
  \clk_div/div_15  (
    .C(clk_BUFGP_16),
    .D(Result[15]),
    .Q(\clk_div/div [15])
  );
  FDCE   \vga/v_count_0  (
    .C(\clk_div/div_1_BUFG_20 ),
    .CE(\vga/h_count[9]_PWR_4_o_equal_7_o ),
    .CLR(rst),
    .D(\vga/Mcount_v_count ),
    .Q(\vga/v_count [0])
  );
  FDCE   \vga/v_count_1  (
    .C(\clk_div/div_1_BUFG_20 ),
    .CE(\vga/h_count[9]_PWR_4_o_equal_7_o ),
    .CLR(rst),
    .D(\vga/Mcount_v_count1 ),
    .Q(\vga/v_count [1])
  );
  FDCE   \vga/v_count_2  (
    .C(\clk_div/div_1_BUFG_20 ),
    .CE(\vga/h_count[9]_PWR_4_o_equal_7_o ),
    .CLR(rst),
    .D(\vga/Mcount_v_count2 ),
    .Q(\vga/v_count [2])
  );
  FDCE   \vga/v_count_3  (
    .C(\clk_div/div_1_BUFG_20 ),
    .CE(\vga/h_count[9]_PWR_4_o_equal_7_o ),
    .CLR(rst),
    .D(\vga/Mcount_v_count3 ),
    .Q(\vga/v_count [3])
  );
  FDCE   \vga/v_count_4  (
    .C(\clk_div/div_1_BUFG_20 ),
    .CE(\vga/h_count[9]_PWR_4_o_equal_7_o ),
    .CLR(rst),
    .D(\vga/Mcount_v_count4 ),
    .Q(\vga/v_count [4])
  );
  FDCE   \vga/v_count_5  (
    .C(\clk_div/div_1_BUFG_20 ),
    .CE(\vga/h_count[9]_PWR_4_o_equal_7_o ),
    .CLR(rst),
    .D(\vga/Mcount_v_count5 ),
    .Q(\vga/v_count [5])
  );
  FDCE   \vga/v_count_6  (
    .C(\clk_div/div_1_BUFG_20 ),
    .CE(\vga/h_count[9]_PWR_4_o_equal_7_o ),
    .CLR(rst),
    .D(\vga/Mcount_v_count6 ),
    .Q(\vga/v_count [6])
  );
  FDCE   \vga/v_count_7  (
    .C(\clk_div/div_1_BUFG_20 ),
    .CE(\vga/h_count[9]_PWR_4_o_equal_7_o ),
    .CLR(rst),
    .D(\vga/Mcount_v_count7 ),
    .Q(\vga/v_count [7])
  );
  FDCE   \vga/v_count_8  (
    .C(\clk_div/div_1_BUFG_20 ),
    .CE(\vga/h_count[9]_PWR_4_o_equal_7_o ),
    .CLR(rst),
    .D(\vga/Mcount_v_count8 ),
    .Q(\vga/v_count [8])
  );
  FDCE   \vga/v_count_9  (
    .C(\clk_div/div_1_BUFG_20 ),
    .CE(\vga/h_count[9]_PWR_4_o_equal_7_o ),
    .CLR(rst),
    .D(\vga/Mcount_v_count9 ),
    .Q(\vga/v_count [9])
  );
  FDR   \vga/h_count_1  (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\Result<1>1 ),
    .R(\vga/Mcount_h_count_val ),
    .Q(\vga/h_count [1])
  );
  FDR   \vga/h_count_2  (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\Result<2>1 ),
    .R(\vga/Mcount_h_count_val ),
    .Q(\vga/h_count [2])
  );
  FDR   \vga/h_count_3  (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\Result<3>1 ),
    .R(\vga/Mcount_h_count_val ),
    .Q(\vga/h_count [3])
  );
  FDR   \vga/h_count_4  (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\Result<4>1 ),
    .R(\vga/Mcount_h_count_val ),
    .Q(\vga/h_count [4])
  );
  FDR   \vga/h_count_5  (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\Result<5>1 ),
    .R(\vga/Mcount_h_count_val ),
    .Q(\vga/h_count [5])
  );
  FDR   \vga/h_count_6  (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\Result<6>1 ),
    .R(\vga/Mcount_h_count_val ),
    .Q(\vga/h_count [6])
  );
  FDR   \vga/h_count_7  (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\Result<7>1 ),
    .R(\vga/Mcount_h_count_val ),
    .Q(\vga/h_count [7])
  );
  FDR   \vga/h_count_8  (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\Result<8>1 ),
    .R(\vga/Mcount_h_count_val ),
    .Q(\vga/h_count [8])
  );
  FDR   \vga/h_count_9  (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\Result<9>1 ),
    .R(\vga/Mcount_h_count_val ),
    .Q(\vga/h_count [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<14>/cnt_0  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<14>/_n0031_inv ),
    .D(\Result<0>2 ),
    .Q(\switches_anti_jitter<14>/cnt<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<14>/cnt_1  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<14>/_n0031_inv ),
    .D(\Result<1>2 ),
    .Q(\switches_anti_jitter<14>/cnt<1> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<14>/cnt_2  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<14>/_n0031_inv ),
    .D(\Result<2>2 ),
    .Q(\switches_anti_jitter<14>/cnt<2> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<14>/cnt_3  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<14>/_n0031_inv ),
    .D(\Result<3>2 ),
    .Q(\switches_anti_jitter<14>/cnt<3> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<15>/cnt_0  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<15>/_n0031_inv ),
    .D(\Result<0>3 ),
    .Q(\switches_anti_jitter<15>/cnt<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<15>/cnt_1  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<15>/_n0031_inv ),
    .D(\Result<1>3 ),
    .Q(\switches_anti_jitter<15>/cnt<1> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<15>/cnt_2  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<15>/_n0031_inv ),
    .D(\Result<2>3 ),
    .Q(\switches_anti_jitter<15>/cnt<2> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<15>/cnt_3  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<15>/_n0031_inv ),
    .D(\Result<3>3 ),
    .Q(\switches_anti_jitter<15>/cnt<3> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<13>/cnt_0  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<13>/_n0031_inv ),
    .D(\Result<0>4 ),
    .Q(\switches_anti_jitter<13>/cnt<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<13>/cnt_1  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<13>/_n0031_inv ),
    .D(\Result<1>4 ),
    .Q(\switches_anti_jitter<13>/cnt<1> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<13>/cnt_2  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<13>/_n0031_inv ),
    .D(\Result<2>4 ),
    .Q(\switches_anti_jitter<13>/cnt<2> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<13>/cnt_3  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<13>/_n0031_inv ),
    .D(\Result<3>4 ),
    .Q(\switches_anti_jitter<13>/cnt<3> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<12>/cnt_0  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<12>/_n0031_inv ),
    .D(\Result<0>5 ),
    .Q(\switches_anti_jitter<12>/cnt<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<12>/cnt_1  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<12>/_n0031_inv ),
    .D(\Result<1>5 ),
    .Q(\switches_anti_jitter<12>/cnt<1> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<12>/cnt_2  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<12>/_n0031_inv ),
    .D(\Result<2>5 ),
    .Q(\switches_anti_jitter<12>/cnt<2> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<12>/cnt_3  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<12>/_n0031_inv ),
    .D(\Result<3>5 ),
    .Q(\switches_anti_jitter<12>/cnt<3> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<11>/cnt_0  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<11>/_n0031_inv ),
    .D(\Result<0>6 ),
    .Q(\switches_anti_jitter<11>/cnt<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<11>/cnt_1  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<11>/_n0031_inv ),
    .D(\Result<1>6 ),
    .Q(\switches_anti_jitter<11>/cnt<1> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<11>/cnt_2  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<11>/_n0031_inv ),
    .D(\Result<2>6 ),
    .Q(\switches_anti_jitter<11>/cnt<2> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<11>/cnt_3  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<11>/_n0031_inv ),
    .D(\Result<3>6 ),
    .Q(\switches_anti_jitter<11>/cnt<3> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<10>/cnt_0  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<10>/_n0031_inv ),
    .D(\Result<0>7 ),
    .Q(\switches_anti_jitter<10>/cnt<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<10>/cnt_1  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<10>/_n0031_inv ),
    .D(\Result<1>7 ),
    .Q(\switches_anti_jitter<10>/cnt<1> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<10>/cnt_2  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<10>/_n0031_inv ),
    .D(\Result<2>7 ),
    .Q(\switches_anti_jitter<10>/cnt<2> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<10>/cnt_3  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<10>/_n0031_inv ),
    .D(\Result<3>7 ),
    .Q(\switches_anti_jitter<10>/cnt<3> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<9>/cnt_0  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<9>/_n0031_inv ),
    .D(\Result<0>8 ),
    .Q(\switches_anti_jitter<9>/cnt<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<9>/cnt_1  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<9>/_n0031_inv ),
    .D(\Result<1>8 ),
    .Q(\switches_anti_jitter<9>/cnt<1> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<9>/cnt_2  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<9>/_n0031_inv ),
    .D(\Result<2>8 ),
    .Q(\switches_anti_jitter<9>/cnt<2> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<9>/cnt_3  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<9>/_n0031_inv ),
    .D(\Result<3>8 ),
    .Q(\switches_anti_jitter<9>/cnt<3> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<8>/cnt_0  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<8>/_n0031_inv ),
    .D(\Result<0>9 ),
    .Q(\switches_anti_jitter<8>/cnt<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<8>/cnt_1  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<8>/_n0031_inv ),
    .D(\Result<1>9 ),
    .Q(\switches_anti_jitter<8>/cnt<1> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<8>/cnt_2  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<8>/_n0031_inv ),
    .D(\Result<2>9 ),
    .Q(\switches_anti_jitter<8>/cnt<2> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<8>/cnt_3  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<8>/_n0031_inv ),
    .D(\Result<3>9 ),
    .Q(\switches_anti_jitter<8>/cnt<3> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<7>/cnt_0  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<7>/_n0031_inv ),
    .D(\Result<0>10 ),
    .Q(\switches_anti_jitter<7>/cnt<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<7>/cnt_1  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<7>/_n0031_inv ),
    .D(\Result<1>10 ),
    .Q(\switches_anti_jitter<7>/cnt<1> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<7>/cnt_2  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<7>/_n0031_inv ),
    .D(\Result<2>10 ),
    .Q(\switches_anti_jitter<7>/cnt<2> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<7>/cnt_3  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<7>/_n0031_inv ),
    .D(\Result<3>10 ),
    .Q(\switches_anti_jitter<7>/cnt<3> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<6>/cnt_0  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<6>/_n0031_inv ),
    .D(\Result<0>11 ),
    .Q(\switches_anti_jitter<6>/cnt<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<6>/cnt_1  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<6>/_n0031_inv ),
    .D(\Result<1>11 ),
    .Q(\switches_anti_jitter<6>/cnt<1> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<6>/cnt_2  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<6>/_n0031_inv ),
    .D(\Result<2>11 ),
    .Q(\switches_anti_jitter<6>/cnt<2> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<6>/cnt_3  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<6>/_n0031_inv ),
    .D(\Result<3>11 ),
    .Q(\switches_anti_jitter<6>/cnt<3> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<5>/cnt_0  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<5>/_n0031_inv ),
    .D(\Result<0>12 ),
    .Q(\switches_anti_jitter<5>/cnt<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<5>/cnt_1  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<5>/_n0031_inv ),
    .D(\Result<1>12 ),
    .Q(\switches_anti_jitter<5>/cnt<1> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<5>/cnt_2  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<5>/_n0031_inv ),
    .D(\Result<2>12 ),
    .Q(\switches_anti_jitter<5>/cnt<2> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<5>/cnt_3  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<5>/_n0031_inv ),
    .D(\Result<3>12 ),
    .Q(\switches_anti_jitter<5>/cnt<3> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<4>/cnt_0  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<4>/_n0031_inv ),
    .D(\Result<0>13 ),
    .Q(\switches_anti_jitter<4>/cnt<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<4>/cnt_1  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<4>/_n0031_inv ),
    .D(\Result<1>13 ),
    .Q(\switches_anti_jitter<4>/cnt<1> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<4>/cnt_2  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<4>/_n0031_inv ),
    .D(\Result<2>13 ),
    .Q(\switches_anti_jitter<4>/cnt<2> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<4>/cnt_3  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<4>/_n0031_inv ),
    .D(\Result<3>13 ),
    .Q(\switches_anti_jitter<4>/cnt<3> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<3>/cnt_0  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<3>/_n0031_inv ),
    .D(\Result<0>14 ),
    .Q(\switches_anti_jitter<3>/cnt<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<3>/cnt_1  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<3>/_n0031_inv ),
    .D(\Result<1>14 ),
    .Q(\switches_anti_jitter<3>/cnt<1> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<3>/cnt_2  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<3>/_n0031_inv ),
    .D(\Result<2>14 ),
    .Q(\switches_anti_jitter<3>/cnt<2> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<3>/cnt_3  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<3>/_n0031_inv ),
    .D(\Result<3>14 ),
    .Q(\switches_anti_jitter<3>/cnt<3> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<2>/cnt_0  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<2>/_n0031_inv ),
    .D(\Result<0>15 ),
    .Q(\switches_anti_jitter<2>/cnt<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<2>/cnt_1  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<2>/_n0031_inv ),
    .D(\Result<1>15 ),
    .Q(\switches_anti_jitter<2>/cnt<1> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<2>/cnt_2  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<2>/_n0031_inv ),
    .D(\Result<2>15 ),
    .Q(\switches_anti_jitter<2>/cnt<2> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<2>/cnt_3  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<2>/_n0031_inv ),
    .D(\Result<3>15 ),
    .Q(\switches_anti_jitter<2>/cnt<3> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<1>/cnt_0  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<1>/_n0031_inv ),
    .D(\Result<0>16 ),
    .Q(\switches_anti_jitter<1>/cnt<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<1>/cnt_1  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<1>/_n0031_inv ),
    .D(\Result<1>16 ),
    .Q(\switches_anti_jitter<1>/cnt<1> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<1>/cnt_2  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<1>/_n0031_inv ),
    .D(\Result<2>16 ),
    .Q(\switches_anti_jitter<1>/cnt<2> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<1>/cnt_3  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<1>/_n0031_inv ),
    .D(\Result<3>16 ),
    .Q(\switches_anti_jitter<1>/cnt<3> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<0>/cnt_0  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<0>/_n0031_inv ),
    .D(\Result<0>17 ),
    .Q(\switches_anti_jitter<0>/cnt<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<0>/cnt_1  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<0>/_n0031_inv ),
    .D(\Result<1>17 ),
    .Q(\switches_anti_jitter<0>/cnt<1> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<0>/cnt_2  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<0>/_n0031_inv ),
    .D(\Result<2>17 ),
    .Q(\switches_anti_jitter<0>/cnt<2> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \switches_anti_jitter<0>/cnt_3  (
    .C(\clk_div/div_15_BUFG_21 ),
    .CE(\switches_anti_jitter<0>/_n0031_inv ),
    .D(\Result<3>17 ),
    .Q(\switches_anti_jitter<0>/cnt<3> )
  );
  FDR   \vga/h_count_0  (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\Result<0>1 ),
    .R(\vga/Mcount_h_count_val ),
    .Q(\vga/h_count [0])
  );
  FD   Maddsub_n00291_10 (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\vga/Mcount_h_count_lut [0]),
    .Q(Maddsub_n00291_10_482)
  );
  FD   Maddsub_n00291_9 (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\vga/col [1]),
    .Q(Maddsub_n00291_9_483)
  );
  FD   Maddsub_n00291_8 (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\vga/col [2]),
    .Q(Maddsub_n00291_8_484)
  );
  FD   Maddsub_n00291_7 (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\vga/col [3]),
    .Q(Maddsub_n00291_7_485)
  );
  FD   Maddsub_n00291_6 (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\vga/col [4]),
    .Q(Maddsub_n00291_6_486)
  );
  FD   Maddsub_n00291_5 (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\vga/col [5]),
    .Q(Maddsub_n00291_5_487)
  );
  FD   Maddsub_n00291_4 (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\vga/col [6]),
    .Q(Maddsub_n00291_4_488)
  );
  FD   Maddsub_n00291_3 (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\vga/col [7]),
    .Q(Maddsub_n00291_3_489)
  );
  FD   Maddsub_n00291_2 (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\vga/col [8]),
    .Q(Maddsub_n00291_2_490)
  );
  FD   Maddsub_n00291_1 (
    .C(\clk_div/div_1_BUFG_20 ),
    .D(\vga/col [9]),
    .Q(Maddsub_n00291_1_491)
  );
  MUXCY   \clk_div/Mcount_div_cy<0>  (
    .CI(Maddsub_n0029_ff_10),
    .DI(\pitch_gen/Madd_n0014_Madd_lut [1]),
    .S(\clk_div/Mcount_div_lut [0]),
    .O(\clk_div/Mcount_div_cy [0])
  );
  XORCY   \clk_div/Mcount_div_xor<0>  (
    .CI(Maddsub_n0029_ff_10),
    .LI(\clk_div/Mcount_div_lut [0]),
    .O(Result[0])
  );
  MUXCY   \clk_div/Mcount_div_cy<1>  (
    .CI(\clk_div/Mcount_div_cy [0]),
    .DI(Maddsub_n0029_ff_10),
    .S(\clk_div/Mcount_div_cy<1>_rt_960 ),
    .O(\clk_div/Mcount_div_cy [1])
  );
  XORCY   \clk_div/Mcount_div_xor<1>  (
    .CI(\clk_div/Mcount_div_cy [0]),
    .LI(\clk_div/Mcount_div_cy<1>_rt_960 ),
    .O(Result[1])
  );
  MUXCY   \clk_div/Mcount_div_cy<2>  (
    .CI(\clk_div/Mcount_div_cy [1]),
    .DI(Maddsub_n0029_ff_10),
    .S(\clk_div/Mcount_div_cy<2>_rt_961 ),
    .O(\clk_div/Mcount_div_cy [2])
  );
  XORCY   \clk_div/Mcount_div_xor<2>  (
    .CI(\clk_div/Mcount_div_cy [1]),
    .LI(\clk_div/Mcount_div_cy<2>_rt_961 ),
    .O(Result[2])
  );
  MUXCY   \clk_div/Mcount_div_cy<3>  (
    .CI(\clk_div/Mcount_div_cy [2]),
    .DI(Maddsub_n0029_ff_10),
    .S(\clk_div/Mcount_div_cy<3>_rt_962 ),
    .O(\clk_div/Mcount_div_cy [3])
  );
  XORCY   \clk_div/Mcount_div_xor<3>  (
    .CI(\clk_div/Mcount_div_cy [2]),
    .LI(\clk_div/Mcount_div_cy<3>_rt_962 ),
    .O(Result[3])
  );
  MUXCY   \clk_div/Mcount_div_cy<4>  (
    .CI(\clk_div/Mcount_div_cy [3]),
    .DI(Maddsub_n0029_ff_10),
    .S(\clk_div/Mcount_div_cy<4>_rt_963 ),
    .O(\clk_div/Mcount_div_cy [4])
  );
  XORCY   \clk_div/Mcount_div_xor<4>  (
    .CI(\clk_div/Mcount_div_cy [3]),
    .LI(\clk_div/Mcount_div_cy<4>_rt_963 ),
    .O(Result[4])
  );
  MUXCY   \clk_div/Mcount_div_cy<5>  (
    .CI(\clk_div/Mcount_div_cy [4]),
    .DI(Maddsub_n0029_ff_10),
    .S(\clk_div/Mcount_div_cy<5>_rt_964 ),
    .O(\clk_div/Mcount_div_cy [5])
  );
  XORCY   \clk_div/Mcount_div_xor<5>  (
    .CI(\clk_div/Mcount_div_cy [4]),
    .LI(\clk_div/Mcount_div_cy<5>_rt_964 ),
    .O(Result[5])
  );
  MUXCY   \clk_div/Mcount_div_cy<6>  (
    .CI(\clk_div/Mcount_div_cy [5]),
    .DI(Maddsub_n0029_ff_10),
    .S(\clk_div/Mcount_div_cy<6>_rt_965 ),
    .O(\clk_div/Mcount_div_cy [6])
  );
  XORCY   \clk_div/Mcount_div_xor<6>  (
    .CI(\clk_div/Mcount_div_cy [5]),
    .LI(\clk_div/Mcount_div_cy<6>_rt_965 ),
    .O(Result[6])
  );
  MUXCY   \clk_div/Mcount_div_cy<7>  (
    .CI(\clk_div/Mcount_div_cy [6]),
    .DI(Maddsub_n0029_ff_10),
    .S(\clk_div/Mcount_div_cy<7>_rt_966 ),
    .O(\clk_div/Mcount_div_cy [7])
  );
  XORCY   \clk_div/Mcount_div_xor<7>  (
    .CI(\clk_div/Mcount_div_cy [6]),
    .LI(\clk_div/Mcount_div_cy<7>_rt_966 ),
    .O(Result[7])
  );
  MUXCY   \clk_div/Mcount_div_cy<8>  (
    .CI(\clk_div/Mcount_div_cy [7]),
    .DI(Maddsub_n0029_ff_10),
    .S(\clk_div/Mcount_div_cy<8>_rt_967 ),
    .O(\clk_div/Mcount_div_cy [8])
  );
  XORCY   \clk_div/Mcount_div_xor<8>  (
    .CI(\clk_div/Mcount_div_cy [7]),
    .LI(\clk_div/Mcount_div_cy<8>_rt_967 ),
    .O(Result[8])
  );
  MUXCY   \clk_div/Mcount_div_cy<9>  (
    .CI(\clk_div/Mcount_div_cy [8]),
    .DI(Maddsub_n0029_ff_10),
    .S(\clk_div/Mcount_div_cy<9>_rt_968 ),
    .O(\clk_div/Mcount_div_cy [9])
  );
  XORCY   \clk_div/Mcount_div_xor<9>  (
    .CI(\clk_div/Mcount_div_cy [8]),
    .LI(\clk_div/Mcount_div_cy<9>_rt_968 ),
    .O(Result[9])
  );
  MUXCY   \clk_div/Mcount_div_cy<10>  (
    .CI(\clk_div/Mcount_div_cy [9]),
    .DI(Maddsub_n0029_ff_10),
    .S(\clk_div/Mcount_div_cy<10>_rt_969 ),
    .O(\clk_div/Mcount_div_cy [10])
  );
  XORCY   \clk_div/Mcount_div_xor<10>  (
    .CI(\clk_div/Mcount_div_cy [9]),
    .LI(\clk_div/Mcount_div_cy<10>_rt_969 ),
    .O(Result[10])
  );
  MUXCY   \clk_div/Mcount_div_cy<11>  (
    .CI(\clk_div/Mcount_div_cy [10]),
    .DI(Maddsub_n0029_ff_10),
    .S(\clk_div/Mcount_div_cy<11>_rt_970 ),
    .O(\clk_div/Mcount_div_cy [11])
  );
  XORCY   \clk_div/Mcount_div_xor<11>  (
    .CI(\clk_div/Mcount_div_cy [10]),
    .LI(\clk_div/Mcount_div_cy<11>_rt_970 ),
    .O(Result[11])
  );
  MUXCY   \clk_div/Mcount_div_cy<12>  (
    .CI(\clk_div/Mcount_div_cy [11]),
    .DI(Maddsub_n0029_ff_10),
    .S(\clk_div/Mcount_div_cy<12>_rt_971 ),
    .O(\clk_div/Mcount_div_cy [12])
  );
  XORCY   \clk_div/Mcount_div_xor<12>  (
    .CI(\clk_div/Mcount_div_cy [11]),
    .LI(\clk_div/Mcount_div_cy<12>_rt_971 ),
    .O(Result[12])
  );
  MUXCY   \clk_div/Mcount_div_cy<13>  (
    .CI(\clk_div/Mcount_div_cy [12]),
    .DI(Maddsub_n0029_ff_10),
    .S(\clk_div/Mcount_div_cy<13>_rt_972 ),
    .O(\clk_div/Mcount_div_cy [13])
  );
  XORCY   \clk_div/Mcount_div_xor<13>  (
    .CI(\clk_div/Mcount_div_cy [12]),
    .LI(\clk_div/Mcount_div_cy<13>_rt_972 ),
    .O(Result[13])
  );
  MUXCY   \clk_div/Mcount_div_cy<14>  (
    .CI(\clk_div/Mcount_div_cy [13]),
    .DI(Maddsub_n0029_ff_10),
    .S(\clk_div/Mcount_div_cy<14>_rt_973 ),
    .O(\clk_div/Mcount_div_cy [14])
  );
  XORCY   \clk_div/Mcount_div_xor<14>  (
    .CI(\clk_div/Mcount_div_cy [13]),
    .LI(\clk_div/Mcount_div_cy<14>_rt_973 ),
    .O(Result[14])
  );
  XORCY   \clk_div/Mcount_div_xor<15>  (
    .CI(\clk_div/Mcount_div_cy [14]),
    .LI(\clk_div/Mcount_div_xor<15>_rt_991 ),
    .O(Result[15])
  );
  MUXCY   \vga/Mcount_h_count_cy<0>  (
    .CI(Maddsub_n0029_ff_10),
    .DI(\pitch_gen/Madd_n0014_Madd_lut [1]),
    .S(\vga/Mcount_h_count_lut<0>1 ),
    .O(\vga/Mcount_h_count_cy [0])
  );
  XORCY   \vga/Mcount_h_count_xor<0>  (
    .CI(Maddsub_n0029_ff_10),
    .LI(\vga/Mcount_h_count_lut<0>1 ),
    .O(\Result<0>1 )
  );
  MUXCY   \vga/Mcount_h_count_cy<1>  (
    .CI(\vga/Mcount_h_count_cy [0]),
    .DI(Maddsub_n0029_ff_10),
    .S(\vga/Mcount_h_count_cy<1>_rt_975 ),
    .O(\vga/Mcount_h_count_cy [1])
  );
  XORCY   \vga/Mcount_h_count_xor<1>  (
    .CI(\vga/Mcount_h_count_cy [0]),
    .LI(\vga/Mcount_h_count_cy<1>_rt_975 ),
    .O(\Result<1>1 )
  );
  MUXCY   \vga/Mcount_h_count_cy<2>  (
    .CI(\vga/Mcount_h_count_cy [1]),
    .DI(Maddsub_n0029_ff_10),
    .S(\vga/Mcount_h_count_cy<2>_rt_976 ),
    .O(\vga/Mcount_h_count_cy [2])
  );
  XORCY   \vga/Mcount_h_count_xor<2>  (
    .CI(\vga/Mcount_h_count_cy [1]),
    .LI(\vga/Mcount_h_count_cy<2>_rt_976 ),
    .O(\Result<2>1 )
  );
  MUXCY   \vga/Mcount_h_count_cy<3>  (
    .CI(\vga/Mcount_h_count_cy [2]),
    .DI(Maddsub_n0029_ff_10),
    .S(\vga/Mcount_h_count_cy<3>_rt_977 ),
    .O(\vga/Mcount_h_count_cy [3])
  );
  XORCY   \vga/Mcount_h_count_xor<3>  (
    .CI(\vga/Mcount_h_count_cy [2]),
    .LI(\vga/Mcount_h_count_cy<3>_rt_977 ),
    .O(\Result<3>1 )
  );
  MUXCY   \vga/Mcount_h_count_cy<4>  (
    .CI(\vga/Mcount_h_count_cy [3]),
    .DI(Maddsub_n0029_ff_10),
    .S(\vga/Mcount_h_count_cy<4>_rt_978 ),
    .O(\vga/Mcount_h_count_cy [4])
  );
  XORCY   \vga/Mcount_h_count_xor<4>  (
    .CI(\vga/Mcount_h_count_cy [3]),
    .LI(\vga/Mcount_h_count_cy<4>_rt_978 ),
    .O(\Result<4>1 )
  );
  MUXCY   \vga/Mcount_h_count_cy<5>  (
    .CI(\vga/Mcount_h_count_cy [4]),
    .DI(Maddsub_n0029_ff_10),
    .S(\vga/Mcount_h_count_cy<5>_rt_979 ),
    .O(\vga/Mcount_h_count_cy [5])
  );
  XORCY   \vga/Mcount_h_count_xor<5>  (
    .CI(\vga/Mcount_h_count_cy [4]),
    .LI(\vga/Mcount_h_count_cy<5>_rt_979 ),
    .O(\Result<5>1 )
  );
  MUXCY   \vga/Mcount_h_count_cy<6>  (
    .CI(\vga/Mcount_h_count_cy [5]),
    .DI(Maddsub_n0029_ff_10),
    .S(\vga/Mcount_h_count_cy<6>_rt_980 ),
    .O(\vga/Mcount_h_count_cy [6])
  );
  XORCY   \vga/Mcount_h_count_xor<6>  (
    .CI(\vga/Mcount_h_count_cy [5]),
    .LI(\vga/Mcount_h_count_cy<6>_rt_980 ),
    .O(\Result<6>1 )
  );
  MUXCY   \vga/Mcount_h_count_cy<7>  (
    .CI(\vga/Mcount_h_count_cy [6]),
    .DI(Maddsub_n0029_ff_10),
    .S(\vga/Mcount_h_count_cy<7>_rt_981 ),
    .O(\vga/Mcount_h_count_cy [7])
  );
  XORCY   \vga/Mcount_h_count_xor<7>  (
    .CI(\vga/Mcount_h_count_cy [6]),
    .LI(\vga/Mcount_h_count_cy<7>_rt_981 ),
    .O(\Result<7>1 )
  );
  MUXCY   \vga/Mcount_h_count_cy<8>  (
    .CI(\vga/Mcount_h_count_cy [7]),
    .DI(Maddsub_n0029_ff_10),
    .S(\vga/Mcount_h_count_cy<8>_rt_982 ),
    .O(\vga/Mcount_h_count_cy [8])
  );
  XORCY   \vga/Mcount_h_count_xor<8>  (
    .CI(\vga/Mcount_h_count_cy [7]),
    .LI(\vga/Mcount_h_count_cy<8>_rt_982 ),
    .O(\Result<8>1 )
  );
  XORCY   \vga/Mcount_h_count_xor<9>  (
    .CI(\vga/Mcount_h_count_cy [8]),
    .LI(\vga/Mcount_h_count_xor<9>_rt_992 ),
    .O(\Result<9>1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_n0029_Madd_lut<0>  (
    .I0(Maddsub_n00291_10_482),
    .I1(Maddsub_n0029_0),
    .O(Maddsub_n0029_Madd_lut[0])
  );
  MUXCY   \Maddsub_n0029_Madd_cy<0>  (
    .CI(Maddsub_n0029_ff_10),
    .DI(Maddsub_n00291_10_482),
    .S(Maddsub_n0029_Madd_lut[0]),
    .O(Maddsub_n0029_Madd_cy[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_n0029_Madd_lut<1>  (
    .I0(Maddsub_n00291_9_483),
    .I1(Maddsub_n0029_1),
    .O(Maddsub_n0029_Madd_lut[1])
  );
  MUXCY   \Maddsub_n0029_Madd_cy<1>  (
    .CI(Maddsub_n0029_Madd_cy[0]),
    .DI(Maddsub_n00291_9_483),
    .S(Maddsub_n0029_Madd_lut[1]),
    .O(Maddsub_n0029_Madd_cy[1])
  );
  XORCY   \Maddsub_n0029_Madd_xor<1>  (
    .CI(Maddsub_n0029_Madd_cy[0]),
    .LI(Maddsub_n0029_Madd_lut[1]),
    .O(n0014[1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_n0029_Madd_lut<2>  (
    .I0(Maddsub_n00291_8_484),
    .I1(Maddsub_n0029_2),
    .O(Maddsub_n0029_Madd_lut[2])
  );
  MUXCY   \Maddsub_n0029_Madd_cy<2>  (
    .CI(Maddsub_n0029_Madd_cy[1]),
    .DI(Maddsub_n00291_8_484),
    .S(Maddsub_n0029_Madd_lut[2]),
    .O(Maddsub_n0029_Madd_cy[2])
  );
  XORCY   \Maddsub_n0029_Madd_xor<2>  (
    .CI(Maddsub_n0029_Madd_cy[1]),
    .LI(Maddsub_n0029_Madd_lut[2]),
    .O(n0014[2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_n0029_Madd_lut<3>  (
    .I0(Maddsub_n00291_7_485),
    .I1(Maddsub_n0029_3),
    .O(Maddsub_n0029_Madd_lut[3])
  );
  MUXCY   \Maddsub_n0029_Madd_cy<3>  (
    .CI(Maddsub_n0029_Madd_cy[2]),
    .DI(Maddsub_n00291_7_485),
    .S(Maddsub_n0029_Madd_lut[3]),
    .O(Maddsub_n0029_Madd_cy[3])
  );
  XORCY   \Maddsub_n0029_Madd_xor<3>  (
    .CI(Maddsub_n0029_Madd_cy[2]),
    .LI(Maddsub_n0029_Madd_lut[3]),
    .O(n0014[3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_n0029_Madd_lut<4>  (
    .I0(Maddsub_n00291_6_486),
    .I1(Maddsub_n0029_4),
    .O(Maddsub_n0029_Madd_lut[4])
  );
  MUXCY   \Maddsub_n0029_Madd_cy<4>  (
    .CI(Maddsub_n0029_Madd_cy[3]),
    .DI(Maddsub_n00291_6_486),
    .S(Maddsub_n0029_Madd_lut[4]),
    .O(Maddsub_n0029_Madd_cy[4])
  );
  XORCY   \Maddsub_n0029_Madd_xor<4>  (
    .CI(Maddsub_n0029_Madd_cy[3]),
    .LI(Maddsub_n0029_Madd_lut[4]),
    .O(n0014[4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_n0029_Madd_lut<5>  (
    .I0(Maddsub_n00291_5_487),
    .I1(Maddsub_n0029_5),
    .O(Maddsub_n0029_Madd_lut[5])
  );
  MUXCY   \Maddsub_n0029_Madd_cy<5>  (
    .CI(Maddsub_n0029_Madd_cy[4]),
    .DI(Maddsub_n00291_5_487),
    .S(Maddsub_n0029_Madd_lut[5]),
    .O(Maddsub_n0029_Madd_cy[5])
  );
  XORCY   \Maddsub_n0029_Madd_xor<5>  (
    .CI(Maddsub_n0029_Madd_cy[4]),
    .LI(Maddsub_n0029_Madd_lut[5]),
    .O(n0014[5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_n0029_Madd_lut<6>  (
    .I0(Maddsub_n00291_4_488),
    .I1(Maddsub_n0029_6),
    .O(Maddsub_n0029_Madd_lut[6])
  );
  MUXCY   \Maddsub_n0029_Madd_cy<6>  (
    .CI(Maddsub_n0029_Madd_cy[5]),
    .DI(Maddsub_n00291_4_488),
    .S(Maddsub_n0029_Madd_lut[6]),
    .O(Maddsub_n0029_Madd_cy[6])
  );
  XORCY   \Maddsub_n0029_Madd_xor<6>  (
    .CI(Maddsub_n0029_Madd_cy[5]),
    .LI(Maddsub_n0029_Madd_lut[6]),
    .O(n0014[6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_n0029_Madd_lut<7>  (
    .I0(Maddsub_n00291_3_489),
    .I1(Maddsub_n0029_7),
    .O(Maddsub_n0029_Madd_lut[7])
  );
  MUXCY   \Maddsub_n0029_Madd_cy<7>  (
    .CI(Maddsub_n0029_Madd_cy[6]),
    .DI(Maddsub_n00291_3_489),
    .S(Maddsub_n0029_Madd_lut[7]),
    .O(Maddsub_n0029_Madd_cy[7])
  );
  XORCY   \Maddsub_n0029_Madd_xor<7>  (
    .CI(Maddsub_n0029_Madd_cy[6]),
    .LI(Maddsub_n0029_Madd_lut[7]),
    .O(n0014[7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_n0029_Madd_lut<8>  (
    .I0(Maddsub_n00291_2_490),
    .I1(Maddsub_n0029_8),
    .O(Maddsub_n0029_Madd_lut[8])
  );
  MUXCY   \Maddsub_n0029_Madd_cy<8>  (
    .CI(Maddsub_n0029_Madd_cy[7]),
    .DI(Maddsub_n00291_2_490),
    .S(Maddsub_n0029_Madd_lut[8]),
    .O(Maddsub_n0029_Madd_cy[8])
  );
  XORCY   \Maddsub_n0029_Madd_xor<8>  (
    .CI(Maddsub_n0029_Madd_cy[7]),
    .LI(Maddsub_n0029_Madd_lut[8]),
    .O(n0014[8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_n0029_Madd_lut<9>  (
    .I0(Maddsub_n00291_1_491),
    .I1(Maddsub_n0029_9),
    .O(Maddsub_n0029_Madd_lut[9])
  );
  MUXCY   \Maddsub_n0029_Madd_cy<9>  (
    .CI(Maddsub_n0029_Madd_cy[8]),
    .DI(Maddsub_n00291_1_491),
    .S(Maddsub_n0029_Madd_lut[9]),
    .O(Maddsub_n0029_Madd_cy[9])
  );
  XORCY   \Maddsub_n0029_Madd_xor<9>  (
    .CI(Maddsub_n0029_Madd_cy[8]),
    .LI(Maddsub_n0029_Madd_lut[9]),
    .O(n0014[9])
  );
  MUXCY   \Maddsub_n0029_Madd_cy<10>  (
    .CI(Maddsub_n0029_Madd_cy[9]),
    .DI(Maddsub_n0029_ff_10),
    .S(\Maddsub_n0029_Madd_cy<10>_rt_983 ),
    .O(Maddsub_n0029_Madd_cy[10])
  );
  XORCY   \Maddsub_n0029_Madd_xor<10>  (
    .CI(Maddsub_n0029_Madd_cy[9]),
    .LI(\Maddsub_n0029_Madd_cy<10>_rt_983 ),
    .O(n0014[10])
  );
  MUXCY   \Maddsub_n0029_Madd_cy<11>  (
    .CI(Maddsub_n0029_Madd_cy[10]),
    .DI(Maddsub_n0029_ff_10),
    .S(\Maddsub_n0029_Madd_cy<11>_rt_984 ),
    .O(Maddsub_n0029_Madd_cy[11])
  );
  XORCY   \Maddsub_n0029_Madd_xor<11>  (
    .CI(Maddsub_n0029_Madd_cy[10]),
    .LI(\Maddsub_n0029_Madd_cy<11>_rt_984 ),
    .O(n0014[11])
  );
  MUXCY   \Maddsub_n0029_Madd_cy<12>  (
    .CI(Maddsub_n0029_Madd_cy[11]),
    .DI(Maddsub_n0029_ff_10),
    .S(\Maddsub_n0029_Madd_cy<12>_rt_985 ),
    .O(Maddsub_n0029_Madd_cy[12])
  );
  XORCY   \Maddsub_n0029_Madd_xor<12>  (
    .CI(Maddsub_n0029_Madd_cy[11]),
    .LI(\Maddsub_n0029_Madd_cy<12>_rt_985 ),
    .O(n0014[12])
  );
  MUXCY   \Maddsub_n0029_Madd_cy<13>  (
    .CI(Maddsub_n0029_Madd_cy[12]),
    .DI(Maddsub_n0029_ff_10),
    .S(\Maddsub_n0029_Madd_cy<13>_rt_986 ),
    .O(Maddsub_n0029_Madd_cy[13])
  );
  XORCY   \Maddsub_n0029_Madd_xor<13>  (
    .CI(Maddsub_n0029_Madd_cy[12]),
    .LI(\Maddsub_n0029_Madd_cy<13>_rt_986 ),
    .O(n0014[13])
  );
  MUXCY   \Maddsub_n0029_Madd_cy<14>  (
    .CI(Maddsub_n0029_Madd_cy[13]),
    .DI(Maddsub_n0029_ff_10),
    .S(\Maddsub_n0029_Madd_cy<14>_rt_987 ),
    .O(Maddsub_n0029_Madd_cy[14])
  );
  XORCY   \Maddsub_n0029_Madd_xor<14>  (
    .CI(Maddsub_n0029_Madd_cy[13]),
    .LI(\Maddsub_n0029_Madd_cy<14>_rt_987 ),
    .O(n0014[14])
  );
  MUXCY   \Maddsub_n0029_Madd_cy<15>  (
    .CI(Maddsub_n0029_Madd_cy[14]),
    .DI(Maddsub_n0029_ff_10),
    .S(\Maddsub_n0029_Madd_cy<15>_rt_988 ),
    .O(Maddsub_n0029_Madd_cy[15])
  );
  XORCY   \Maddsub_n0029_Madd_xor<15>  (
    .CI(Maddsub_n0029_Madd_cy[14]),
    .LI(\Maddsub_n0029_Madd_cy<15>_rt_988 ),
    .O(n0014[15])
  );
  MUXCY   \Maddsub_n0029_Madd_cy<16>  (
    .CI(Maddsub_n0029_Madd_cy[15]),
    .DI(Maddsub_n0029_ff_10),
    .S(\Maddsub_n0029_Madd_cy<16>_rt_989 ),
    .O(Maddsub_n0029_Madd_cy[16])
  );
  XORCY   \Maddsub_n0029_Madd_xor<16>  (
    .CI(Maddsub_n0029_Madd_cy[15]),
    .LI(\Maddsub_n0029_Madd_cy<16>_rt_989 ),
    .O(n0014[16])
  );
  MUXCY   \Maddsub_n0029_Madd_cy<17>  (
    .CI(Maddsub_n0029_Madd_cy[16]),
    .DI(Maddsub_n0029_ff_10),
    .S(\Maddsub_n0029_Madd_cy<17>_rt_990 ),
    .O(Maddsub_n0029_Madd_cy[17])
  );
  XORCY   \Maddsub_n0029_Madd_xor<17>  (
    .CI(Maddsub_n0029_Madd_cy[16]),
    .LI(\Maddsub_n0029_Madd_cy<17>_rt_990 ),
    .O(n0014[17])
  );
  XORCY   \Maddsub_n0029_Madd_xor<18>  (
    .CI(Maddsub_n0029_Madd_cy[17]),
    .LI(Maddsub_n0029_18),
    .O(n0014[18])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \ps2/state_3  (
    .C(clk_BUFGP_16),
    .CE(\ps2/ps2_clk_neg ),
    .D(\ps2/Result [3]),
    .R(\ps2/_n0056 ),
    .Q(\ps2/state [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \ps2/state_2  (
    .C(clk_BUFGP_16),
    .CE(\ps2/ps2_clk_neg ),
    .D(\ps2/Result [2]),
    .R(\ps2/_n0056 ),
    .Q(\ps2/state [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \ps2/state_1  (
    .C(clk_BUFGP_16),
    .CE(\ps2/ps2_clk_neg ),
    .D(\ps2/Result [1]),
    .R(\ps2/_n0056 ),
    .Q(\ps2/state [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \ps2/state_0  (
    .C(clk_BUFGP_16),
    .CE(\ps2/ps2_clk_neg ),
    .D(\ps2/Result [0]),
    .R(\ps2/_n0056 ),
    .Q(\ps2/state [0])
  );
  FDE   \ps2/keycode_7  (
    .C(clk_BUFGP_16),
    .CE(\ps2/_n0107_inv ),
    .D(\ps2/data [7]),
    .Q(\ps2/keycode [7])
  );
  FDE   \ps2/keycode_6  (
    .C(clk_BUFGP_16),
    .CE(\ps2/_n0107_inv ),
    .D(\ps2/data [6]),
    .Q(\ps2/keycode [6])
  );
  FDE   \ps2/keycode_5  (
    .C(clk_BUFGP_16),
    .CE(\ps2/_n0107_inv ),
    .D(\ps2/data [5]),
    .Q(\ps2/keycode [5])
  );
  FDE   \ps2/keycode_4  (
    .C(clk_BUFGP_16),
    .CE(\ps2/_n0107_inv ),
    .D(\ps2/data [4]),
    .Q(\ps2/keycode [4])
  );
  FDE   \ps2/keycode_3  (
    .C(clk_BUFGP_16),
    .CE(\ps2/_n0107_inv ),
    .D(\ps2/data [3]),
    .Q(\ps2/keycode [3])
  );
  FDE   \ps2/keycode_2  (
    .C(clk_BUFGP_16),
    .CE(\ps2/_n0107_inv ),
    .D(\ps2/data [2]),
    .Q(\ps2/keycode [2])
  );
  FDE   \ps2/keycode_1  (
    .C(clk_BUFGP_16),
    .CE(\ps2/_n0107_inv ),
    .D(\ps2/data [1]),
    .Q(\ps2/keycode [1])
  );
  FDE   \ps2/keycode_0  (
    .C(clk_BUFGP_16),
    .CE(\ps2/_n0107_inv ),
    .D(\ps2/data [0]),
    .Q(\ps2/keycode [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \ps2/data_7  (
    .C(clk_BUFGP_16),
    .CE(\ps2/_n0097_inv ),
    .D(\ps2/state[3]_data[7]_wide_mux_2_OUT<7> ),
    .Q(\ps2/data [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \ps2/data_6  (
    .C(clk_BUFGP_16),
    .CE(\ps2/_n0097_inv ),
    .D(\ps2/state[3]_data[7]_wide_mux_2_OUT<6> ),
    .Q(\ps2/data [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \ps2/data_5  (
    .C(clk_BUFGP_16),
    .CE(\ps2/_n0097_inv ),
    .D(\ps2/state[3]_data[7]_wide_mux_2_OUT<5> ),
    .Q(\ps2/data [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \ps2/data_4  (
    .C(clk_BUFGP_16),
    .CE(\ps2/_n0097_inv ),
    .D(\ps2/state[3]_data[7]_wide_mux_2_OUT<4> ),
    .Q(\ps2/data [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \ps2/data_3  (
    .C(clk_BUFGP_16),
    .CE(\ps2/_n0097_inv ),
    .D(\ps2/state[3]_data[7]_wide_mux_2_OUT<3> ),
    .Q(\ps2/data [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \ps2/data_2  (
    .C(clk_BUFGP_16),
    .CE(\ps2/_n0097_inv ),
    .D(\ps2/state[3]_data[7]_wide_mux_2_OUT<2> ),
    .Q(\ps2/data [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \ps2/data_1  (
    .C(clk_BUFGP_16),
    .CE(\ps2/_n0097_inv ),
    .D(\ps2/state[3]_data[7]_wide_mux_2_OUT<1> ),
    .Q(\ps2/data [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \ps2/data_0  (
    .C(clk_BUFGP_16),
    .CE(\ps2/_n0097_inv ),
    .D(\ps2/state[3]_data[7]_wide_mux_2_OUT<0> ),
    .Q(\ps2/data [0])
  );
  FD #(
    .INIT ( 1'b1 ))
  \ps2/ps2_clk_r1  (
    .C(clk_BUFGP_16),
    .D(\ps2/ps2_clk_r0_597 ),
    .Q(\ps2/ps2_clk_r1_599 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \ps2/keypress  (
    .C(clk_BUFGP_16),
    .CE(\ps2/_n0101_inv ),
    .D(\ps2/key_break[3]_reduce_nor_14_o ),
    .Q(\ps2/keypress_54 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ps2/key_break_0  (
    .C(clk_BUFGP_16),
    .D(\ps2/key_break<0>1_573 ),
    .R(\ps2/_n0060 ),
    .Q(\ps2/key_break [0])
  );
  FD #(
    .INIT ( 1'b1 ))
  \ps2/ps2_clk_r0  (
    .C(clk_BUFGP_16),
    .D(ps2_clk_IBUF_18),
    .Q(\ps2/ps2_clk_r0_597 )
  );
  MUXCY   \pitch_gen/wave_gen/Mcompar_wave_cy<15>  (
    .CI(\pitch_gen/wave_gen/Mcompar_wave_cy [14]),
    .DI(\pitch_gen/period [31]),
    .S(\pitch_gen/wave_gen/Mcompar_wave_lut [15]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_cy [15])
  );
  MUXCY   \pitch_gen/wave_gen/Mcompar_wave_cy<14>  (
    .CI(\pitch_gen/wave_gen/Mcompar_wave_cy [13]),
    .DI(\pitch_gen/wave_gen/Mcompar_wave_lutdi14 ),
    .S(\pitch_gen/wave_gen/Mcompar_wave_lut [14]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_cy [14])
  );
  MUXCY   \pitch_gen/wave_gen/Mcompar_wave_cy<13>  (
    .CI(\pitch_gen/wave_gen/Mcompar_wave_cy [12]),
    .DI(\pitch_gen/wave_gen/Mcompar_wave_lutdi13 ),
    .S(\pitch_gen/wave_gen/Mcompar_wave_lut [13]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_cy [13])
  );
  MUXCY   \pitch_gen/wave_gen/Mcompar_wave_cy<12>  (
    .CI(\pitch_gen/wave_gen/Mcompar_wave_cy [11]),
    .DI(\pitch_gen/wave_gen/Mcompar_wave_lutdi12 ),
    .S(\pitch_gen/wave_gen/Mcompar_wave_lut [12]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_cy [12])
  );
  MUXCY   \pitch_gen/wave_gen/Mcompar_wave_cy<11>  (
    .CI(\pitch_gen/wave_gen/Mcompar_wave_cy [10]),
    .DI(\pitch_gen/wave_gen/Mcompar_wave_lutdi11_613 ),
    .S(\pitch_gen/wave_gen/Mcompar_wave_lut [11]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_cy [11])
  );
  MUXCY   \pitch_gen/wave_gen/Mcompar_wave_cy<10>  (
    .CI(\pitch_gen/wave_gen/Mcompar_wave_cy [9]),
    .DI(\pitch_gen/wave_gen/Mcompar_wave_lutdi10 ),
    .S(\pitch_gen/wave_gen/Mcompar_wave_lut [10]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_cy [10])
  );
  MUXCY   \pitch_gen/wave_gen/Mcompar_wave_cy<9>  (
    .CI(\pitch_gen/wave_gen/Mcompar_wave_cy [8]),
    .DI(\pitch_gen/wave_gen/Mcompar_wave_lutdi9 ),
    .S(\pitch_gen/wave_gen/Mcompar_wave_lut [9]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_cy [9])
  );
  MUXCY   \pitch_gen/wave_gen/Mcompar_wave_cy<8>  (
    .CI(\pitch_gen/wave_gen/Mcompar_wave_cy [7]),
    .DI(\pitch_gen/wave_gen/Mcompar_wave_lutdi8 ),
    .S(\pitch_gen/wave_gen/Mcompar_wave_lut [8]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_cy [8])
  );
  MUXCY   \pitch_gen/wave_gen/Mcompar_wave_cy<7>  (
    .CI(\pitch_gen/wave_gen/Mcompar_wave_cy [6]),
    .DI(\pitch_gen/wave_gen/Mcompar_wave_lutdi7 ),
    .S(\pitch_gen/wave_gen/Mcompar_wave_lut [7]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_cy [7])
  );
  MUXCY   \pitch_gen/wave_gen/Mcompar_wave_cy<6>  (
    .CI(\pitch_gen/wave_gen/Mcompar_wave_cy [5]),
    .DI(\pitch_gen/wave_gen/Mcompar_wave_lutdi6 ),
    .S(\pitch_gen/wave_gen/Mcompar_wave_lut [6]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_cy [6])
  );
  MUXCY   \pitch_gen/wave_gen/Mcompar_wave_cy<5>  (
    .CI(\pitch_gen/wave_gen/Mcompar_wave_cy [4]),
    .DI(\pitch_gen/wave_gen/Mcompar_wave_lutdi5 ),
    .S(\pitch_gen/wave_gen/Mcompar_wave_lut [5]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_cy [5])
  );
  MUXCY   \pitch_gen/wave_gen/Mcompar_wave_cy<4>  (
    .CI(\pitch_gen/wave_gen/Mcompar_wave_cy [3]),
    .DI(\pitch_gen/wave_gen/Mcompar_wave_lutdi4 ),
    .S(\pitch_gen/wave_gen/Mcompar_wave_lut [4]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_cy [4])
  );
  MUXCY   \pitch_gen/wave_gen/Mcompar_wave_cy<3>  (
    .CI(\pitch_gen/wave_gen/Mcompar_wave_cy [2]),
    .DI(\pitch_gen/wave_gen/Mcompar_wave_lutdi3 ),
    .S(\pitch_gen/wave_gen/Mcompar_wave_lut [3]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_cy [3])
  );
  MUXCY   \pitch_gen/wave_gen/Mcompar_wave_cy<2>  (
    .CI(\pitch_gen/wave_gen/Mcompar_wave_cy [1]),
    .DI(\pitch_gen/wave_gen/Mcompar_wave_lutdi2 ),
    .S(\pitch_gen/wave_gen/Mcompar_wave_lut [2]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_cy [2])
  );
  MUXCY   \pitch_gen/wave_gen/Mcompar_wave_cy<1>  (
    .CI(\pitch_gen/wave_gen/Mcompar_wave_cy [0]),
    .DI(\pitch_gen/wave_gen/Mcompar_wave_lutdi1_643 ),
    .S(\pitch_gen/wave_gen/Mcompar_wave_lut [1]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_cy [1])
  );
  MUXCY   \pitch_gen/wave_gen/Mcompar_wave_cy<0>  (
    .CI(\pitch_gen/Madd_n0014_Madd_lut [1]),
    .DI(\pitch_gen/wave_gen/Mcompar_wave_lutdi ),
    .S(\pitch_gen/wave_gen/Mcompar_wave_lut [0]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_cy [0])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<31>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [30]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [31]),
    .O(\cpu/U1_2/U1/adc_res [31])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<30>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [29]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [30]),
    .O(\cpu/U1_2/U1/adc_res [30])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<30>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [29]),
    .DI(\cpu/U1_2/ALU_A [30]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [30]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [30])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<29>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [28]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [29]),
    .O(\cpu/U1_2/U1/adc_res [29])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<29>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [28]),
    .DI(\cpu/U1_2/ALU_A [29]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [29]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [29])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<28>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [27]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [28]),
    .O(\cpu/U1_2/U1/adc_res [28])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<28>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [27]),
    .DI(\cpu/U1_2/ALU_A [28]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [28]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [28])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<27>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [26]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [27]),
    .O(\cpu/U1_2/U1/adc_res [27])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<27>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [26]),
    .DI(\cpu/U1_2/ALU_A [27]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [27]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [27])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<26>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [25]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [26]),
    .O(\cpu/U1_2/U1/adc_res [26])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<26>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [25]),
    .DI(\cpu/U1_2/ALU_A [26]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [26]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [26])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<25>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [24]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [25]),
    .O(\cpu/U1_2/U1/adc_res [25])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<25>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [24]),
    .DI(\cpu/U1_2/ALU_A [25]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [25]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [25])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<24>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [23]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [24]),
    .O(\cpu/U1_2/U1/adc_res [24])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<24>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [23]),
    .DI(\cpu/U1_2/ALU_A [24]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [24]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [24])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<23>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [22]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [23]),
    .O(\cpu/U1_2/U1/adc_res [23])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<23>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [22]),
    .DI(\cpu/U1_2/ALU_A [23]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [23]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [23])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<22>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [21]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [22]),
    .O(\cpu/U1_2/U1/adc_res [22])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<22>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [21]),
    .DI(\cpu/U1_2/ALU_A [22]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [22]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [22])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<21>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [20]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [21]),
    .O(\cpu/U1_2/U1/adc_res [21])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<21>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [20]),
    .DI(\cpu/U1_2/ALU_A [21]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [21]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [21])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<20>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [19]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [20]),
    .O(\cpu/U1_2/U1/adc_res [20])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<20>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [19]),
    .DI(\cpu/U1_2/ALU_A [20]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [20]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [20])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<19>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [18]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [19]),
    .O(\cpu/U1_2/U1/adc_res [19])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<19>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [18]),
    .DI(\cpu/U1_2/ALU_A [19]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [19]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [19])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<18>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [17]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [18]),
    .O(\cpu/U1_2/U1/adc_res [18])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<18>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [17]),
    .DI(\cpu/U1_2/ALU_A [18]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [18]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [18])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<17>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [16]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [17]),
    .O(\cpu/U1_2/U1/adc_res [17])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<17>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [16]),
    .DI(\cpu/U1_2/ALU_A [17]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [17]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [17])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<16>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [15]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [16]),
    .O(\cpu/U1_2/U1/adc_res [16])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<16>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [15]),
    .DI(\cpu/U1_2/ALU_A [16]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [16]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [16])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<15>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [14]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [15]),
    .O(\cpu/U1_2/U1/adc_res [15])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<15>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [14]),
    .DI(\cpu/U1_2/ALU_A [15]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [15]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [15])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<14>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [13]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [14]),
    .O(\cpu/U1_2/U1/adc_res [14])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<14>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [13]),
    .DI(\cpu/U1_2/ALU_A [14]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [14]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [14])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<13>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [12]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [13]),
    .O(\cpu/U1_2/U1/adc_res [13])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<13>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [12]),
    .DI(\cpu/U1_2/ALU_A [13]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [13]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [13])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<12>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [11]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [12]),
    .O(\cpu/U1_2/U1/adc_res [12])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<12>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [11]),
    .DI(\cpu/U1_2/ALU_A [12]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [12]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [12])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<11>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [10]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [11]),
    .O(\cpu/U1_2/U1/adc_res [11])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<11>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [10]),
    .DI(\cpu/U1_2/ALU_A [11]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [11]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [11])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<10>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [9]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [10]),
    .O(\cpu/U1_2/U1/adc_res [10])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<10>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [9]),
    .DI(\cpu/U1_2/ALU_A [10]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [10]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [10])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<9>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [8]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [9]),
    .O(\cpu/U1_2/U1/adc_res [9])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<9>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [8]),
    .DI(\cpu/U1_2/ALU_A [9]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [9]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [9])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<8>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [7]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [8]),
    .O(\cpu/U1_2/U1/adc_res [8])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<8>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [7]),
    .DI(\cpu/U1_2/ALU_A [8]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [8]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [8])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<7>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [6]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [7]),
    .O(\cpu/U1_2/U1/adc_res [7])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<7>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [6]),
    .DI(\cpu/U1_2/ALU_A [7]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [7]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [7])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<6>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [5]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [6]),
    .O(\cpu/U1_2/U1/adc_res [6])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<6>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [5]),
    .DI(\cpu/U1_2/ALU_A [6]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [6]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [6])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<5>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [4]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [5]),
    .O(\cpu/U1_2/U1/adc_res [5])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<5>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [4]),
    .DI(\cpu/U1_2/ALU_A [5]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [5]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [5])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<4>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [3]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [4]),
    .O(\cpu/U1_2/U1/adc_res [4])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<4>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [3]),
    .DI(\cpu/U1_2/ALU_A [4]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [4]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [4])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<3>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [2]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [3]),
    .O(\cpu/U1_2/U1/adc_res [3])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<3>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [2]),
    .DI(\cpu/U1_2/ALU_A [3]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [3]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [3])
  );
  XORCY   \cpu/U1_2/U1/Madd_adc_res_Madd_xor<2>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [1]),
    .LI(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [2]),
    .O(\cpu/U1_2/U1/adc_res [2])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<2>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [1]),
    .DI(\cpu/U1_2/ALU_A [2]),
    .S(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [2]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [2])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<1>  (
    .CI(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [0]),
    .DI(Maddsub_n0029_ff_10),
    .S(\cpu/U1_2/ALU_B [1]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [1])
  );
  MUXCY   \cpu/U1_2/U1/Madd_adc_res_Madd_cy<0>  (
    .CI(\cpu/ALU_op [2]),
    .DI(Maddsub_n0029_ff_10),
    .S(\cpu/U1_2/ALU_B [0]),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_cy [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_31  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [31]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [31])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_30  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [30]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [30])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_29  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [29]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [29])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_28  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [28]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [28])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_27  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [27]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [27])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_26  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [26]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [26])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_25  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [25]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [25])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_24  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [24]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [24])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_23  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [23]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [23])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_22  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [22]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [22])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_21  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [21]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [21])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_20  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [20]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [20])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_19  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [19]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [19])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_18  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [18]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [18])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_17  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [17]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [17])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_16  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [16]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [16])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_15  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [15]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [15])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_14  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [14]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [14])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_13  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [13]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [13])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_12  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [12]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [12])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_11  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [11]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [11])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_10  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [10]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [10])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_9  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [9]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [9])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_8  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [8]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [8])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_7  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [7]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_6  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [6]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_5  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [5]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_4  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [4]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_3  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [3]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/PC/Q_2  (
    .C(clk_BUFGP_16),
    .CE(\cpu/PCWrite ),
    .D(\cpu/U1_2/PC_in [2]),
    .R(Maddsub_n0029_ff_10),
    .Q(\cpu/U1_2/PC/Q [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/IR/Q_31  (
    .C(clk_BUFGP_16),
    .CE(\cpu/U11/state_FSM_FFd16_211 ),
    .D(\bus/cpu_in_31_109 ),
    .R(rst),
    .Q(\cpu/U1_2/IR/Q[31] )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/IR/Q_15  (
    .C(clk_BUFGP_16),
    .CE(\cpu/U11/state_FSM_FFd16_211 ),
    .D(\bus/cpu_in_15_110 ),
    .R(rst),
    .Q(\cpu/U1_2/IR/Q[15] )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/IR/Q_14  (
    .C(clk_BUFGP_16),
    .CE(\cpu/U11/state_FSM_FFd16_211 ),
    .D(\bus/cpu_in_14_111 ),
    .R(rst),
    .Q(\cpu/U1_2/IR/Q[14] )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/IR/Q_13  (
    .C(clk_BUFGP_16),
    .CE(\cpu/U11/state_FSM_FFd16_211 ),
    .D(\bus/cpu_in_13_112 ),
    .R(rst),
    .Q(\cpu/U1_2/IR/Q[13] )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/IR/Q_12  (
    .C(clk_BUFGP_16),
    .CE(\cpu/U11/state_FSM_FFd16_211 ),
    .D(\bus/cpu_in_12_113 ),
    .R(rst),
    .Q(\cpu/U1_2/IR/Q[12] )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/IR/Q_11  (
    .C(clk_BUFGP_16),
    .CE(\cpu/U11/state_FSM_FFd16_211 ),
    .D(\bus/cpu_in_11_114 ),
    .R(rst),
    .Q(\cpu/U1_2/IR/Q[11] )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/IR/Q_10  (
    .C(clk_BUFGP_16),
    .CE(\cpu/U11/state_FSM_FFd16_211 ),
    .D(\bus/cpu_in_10_115 ),
    .R(rst),
    .Q(\cpu/U1_2/IR/Q[10] )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/IR/Q_9  (
    .C(clk_BUFGP_16),
    .CE(\cpu/U11/state_FSM_FFd16_211 ),
    .D(\bus/cpu_in_9_116 ),
    .R(rst),
    .Q(\cpu/U1_2/IR/Q[9] )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/IR/Q_8  (
    .C(clk_BUFGP_16),
    .CE(\cpu/U11/state_FSM_FFd16_211 ),
    .D(\bus/cpu_in_8_117 ),
    .R(rst),
    .Q(\cpu/U1_2/IR/Q[8] )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/IR/Q_7  (
    .C(clk_BUFGP_16),
    .CE(\cpu/U11/state_FSM_FFd16_211 ),
    .D(\bus/cpu_in_7_118 ),
    .R(rst),
    .Q(\cpu/U1_2/IR/Q[7] )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/IR/Q_6  (
    .C(clk_BUFGP_16),
    .CE(\cpu/U11/state_FSM_FFd16_211 ),
    .D(\bus/cpu_in_6_119 ),
    .R(rst),
    .Q(\cpu/U1_2/IR/Q[6] )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/IR/Q_5  (
    .C(clk_BUFGP_16),
    .CE(\cpu/U11/state_FSM_FFd16_211 ),
    .D(\bus/cpu_in_5_120 ),
    .R(rst),
    .Q(\cpu/U1_2/IR/Q[5] )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/IR/Q_4  (
    .C(clk_BUFGP_16),
    .CE(\cpu/U11/state_FSM_FFd16_211 ),
    .D(\bus/cpu_in_4_121 ),
    .R(rst),
    .Q(\cpu/U1_2/IR/Q[4] )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/IR/Q_3  (
    .C(clk_BUFGP_16),
    .CE(\cpu/U11/state_FSM_FFd16_211 ),
    .D(\bus/cpu_in_3_122 ),
    .R(rst),
    .Q(\cpu/U1_2/IR/Q[3] )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/IR/Q_2  (
    .C(clk_BUFGP_16),
    .CE(\cpu/U11/state_FSM_FFd16_211 ),
    .D(\bus/cpu_in_2_123 ),
    .R(rst),
    .Q(\cpu/U1_2/IR/Q[2] )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/IR/Q_1  (
    .C(clk_BUFGP_16),
    .CE(\cpu/U11/state_FSM_FFd16_211 ),
    .D(\bus/cpu_in_1_124 ),
    .R(rst),
    .Q(\cpu/U1_2/IR/Q[1] )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \cpu/U1_2/IR/Q_0  (
    .C(clk_BUFGP_16),
    .CE(\cpu/U11/state_FSM_FFd16_211 ),
    .D(\bus/cpu_in_0_125 ),
    .R(rst),
    .Q(\cpu/U1_2/IR/Q[0] )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \cpu/U11/state_FSM_FFd2  (
    .C(clk_BUFGP_16),
    .CLR(rst),
    .D(\cpu/U11/state_FSM_FFd11_862 ),
    .Q(\cpu/U11/state_FSM_FFd2_213 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \cpu/U11/state_FSM_FFd10  (
    .C(clk_BUFGP_16),
    .CLR(rst),
    .D(\cpu/U11/state_FSM_FFd10-In ),
    .Q(\cpu/U11/state_FSM_FFd10_861 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \cpu/U11/state_FSM_FFd11  (
    .C(clk_BUFGP_16),
    .CLR(rst),
    .D(\cpu/U11/state_FSM_FFd11-In ),
    .Q(\cpu/U11/state_FSM_FFd11_862 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \cpu/U11/state_FSM_FFd16  (
    .C(clk_BUFGP_16),
    .D(\cpu/U11/state_FSM_FFd16-In ),
    .PRE(rst),
    .Q(\cpu/U11/state_FSM_FFd16_211 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \cpu/U11/state_FSM_FFd15  (
    .C(clk_BUFGP_16),
    .CLR(rst),
    .D(\cpu/U11/state_FSM_FFd15-In ),
    .Q(\cpu/U11/state_FSM_FFd15_863 )
  );
  LD   \bus/cpu_in_0  (
    .D(\bus/addr[31]_ram_in[0]_Select_165_o ),
    .G(\bus/_n0410 ),
    .Q(\bus/cpu_in_0_125 )
  );
  LD   \bus/cpu_in_2  (
    .D(\bus/addr[31]_ram_in[2]_Select_161_o ),
    .G(\bus/_n0410 ),
    .Q(\bus/cpu_in_2_123 )
  );
  LD   \bus/cpu_in_3  (
    .D(\bus/addr[31]_ram_in[3]_Select_159_o ),
    .G(\bus/_n0410 ),
    .Q(\bus/cpu_in_3_122 )
  );
  LD   \bus/cpu_in_1  (
    .D(\bus/addr[31]_ram_in[1]_Select_163_o ),
    .G(\bus/_n0410 ),
    .Q(\bus/cpu_in_1_124 )
  );
  LD   \bus/cpu_in_5  (
    .D(\bus/addr[31]_ram_in[5]_Select_155_o ),
    .G(\bus/_n0410 ),
    .Q(\bus/cpu_in_5_120 )
  );
  LD   \bus/cpu_in_6  (
    .D(\bus/addr[31]_ram_in[6]_Select_153_o ),
    .G(\bus/_n0410 ),
    .Q(\bus/cpu_in_6_119 )
  );
  LD   \bus/cpu_in_4  (
    .D(\bus/addr[31]_ram_in[4]_Select_157_o ),
    .G(\bus/_n0410 ),
    .Q(\bus/cpu_in_4_121 )
  );
  LD   \bus/cpu_in_8  (
    .D(\bus/addr[31]_ram_in[8]_Select_149_o ),
    .G(\bus/_n0410 ),
    .Q(\bus/cpu_in_8_117 )
  );
  LD   \bus/cpu_in_9  (
    .D(\bus/addr[31]_ram_in[9]_Select_147_o ),
    .G(\bus/_n0410 ),
    .Q(\bus/cpu_in_9_116 )
  );
  LD   \bus/cpu_in_7  (
    .D(\bus/addr[31]_ram_in[7]_Select_151_o ),
    .G(\bus/_n0410 ),
    .Q(\bus/cpu_in_7_118 )
  );
  LD   \bus/cpu_in_10  (
    .D(\bus/addr[31]_ram_in[10]_Select_145_o ),
    .G(\bus/_n0410 ),
    .Q(\bus/cpu_in_10_115 )
  );
  LD   \bus/cpu_in_11  (
    .D(\bus/addr[31]_ram_in[11]_Select_143_o ),
    .G(\bus/_n0410 ),
    .Q(\bus/cpu_in_11_114 )
  );
  LD   \bus/cpu_in_13  (
    .D(\bus/addr[31]_ram_in[13]_Select_139_o ),
    .G(\bus/_n0410 ),
    .Q(\bus/cpu_in_13_112 )
  );
  LD   \bus/cpu_in_14  (
    .D(\bus/addr[31]_ram_in[14]_Select_137_o ),
    .G(\bus/_n0410 ),
    .Q(\bus/cpu_in_14_111 )
  );
  LD   \bus/cpu_in_12  (
    .D(\bus/addr[31]_ram_in[12]_Select_141_o ),
    .G(\bus/_n0410 ),
    .Q(\bus/cpu_in_12_113 )
  );
  LD   \bus/cpu_in_31  (
    .D(\bus/addr[31]_ram_in[31]_Select_103_o ),
    .G(\bus/_n0410 ),
    .Q(\bus/cpu_in_31_109 )
  );
  LD   \bus/vram_addr_10  (
    .D(\cpu/U1_2/PC/Q [12]),
    .G(\bus/_n0412 ),
    .Q(\bus/vram_addr_10_133 )
  );
  LD   \bus/cpu_in_15  (
    .D(\bus/addr[31]_ram_in[15]_Select_135_o ),
    .G(\bus/_n0410 ),
    .Q(\bus/cpu_in_15_110 )
  );
  LD   \bus/vram_addr_12  (
    .D(\cpu/U1_2/PC/Q [14]),
    .G(\bus/_n0412 ),
    .Q(\bus/vram_addr_12_131 )
  );
  LD   \bus/vram_addr_13  (
    .D(\cpu/U1_2/PC/Q [15]),
    .G(\bus/_n0412 ),
    .Q(\bus/vram_addr_13_130 )
  );
  LD   \bus/vram_addr_11  (
    .D(\cpu/U1_2/PC/Q [13]),
    .G(\bus/_n0412 ),
    .Q(\bus/vram_addr_11_132 )
  );
  LD   \bus/vram_addr_14  (
    .D(\cpu/U1_2/PC/Q [16]),
    .G(\bus/_n0412 ),
    .Q(\bus/vram_addr_14_129 )
  );
  LD   \bus/vram_addr_15  (
    .D(\cpu/U1_2/PC/Q [17]),
    .G(\bus/_n0412 ),
    .Q(\bus/vram_addr_15_128 )
  );
  LD   \bus/vram_addr_17  (
    .D(\cpu/U1_2/PC/Q [19]),
    .G(\bus/_n0412 ),
    .Q(\bus/vram_addr_17_126 )
  );
  LD   \bus/vram_addr_0  (
    .D(\cpu/U1_2/PC/Q [2]),
    .G(\bus/_n0412 ),
    .Q(\bus/vram_addr_0_143 )
  );
  LD   \bus/vram_addr_16  (
    .D(\cpu/U1_2/PC/Q [18]),
    .G(\bus/_n0412 ),
    .Q(\bus/vram_addr_16_127 )
  );
  LD   \bus/vram_addr_1  (
    .D(\cpu/U1_2/PC/Q [3]),
    .G(\bus/_n0412 ),
    .Q(\bus/vram_addr_1_142 )
  );
  LD   \bus/vram_addr_3  (
    .D(\cpu/U1_2/PC/Q [5]),
    .G(\bus/_n0412 ),
    .Q(\bus/vram_addr_3_140 )
  );
  LD   \bus/vram_addr_2  (
    .D(\cpu/U1_2/PC/Q [4]),
    .G(\bus/_n0412 ),
    .Q(\bus/vram_addr_2_141 )
  );
  LD   \bus/vram_addr_4  (
    .D(\cpu/U1_2/PC/Q [6]),
    .G(\bus/_n0412 ),
    .Q(\bus/vram_addr_4_139 )
  );
  LD   \bus/vram_addr_5  (
    .D(\cpu/U1_2/PC/Q [7]),
    .G(\bus/_n0412 ),
    .Q(\bus/vram_addr_5_138 )
  );
  LD   \bus/vram_addr_7  (
    .D(\cpu/U1_2/PC/Q [9]),
    .G(\bus/_n0412 ),
    .Q(\bus/vram_addr_7_136 )
  );
  LD   \bus/vram_addr_6  (
    .D(\cpu/U1_2/PC/Q [8]),
    .G(\bus/_n0412 ),
    .Q(\bus/vram_addr_6_137 )
  );
  LD   \bus/vram_addr_8  (
    .D(\cpu/U1_2/PC/Q [10]),
    .G(\bus/_n0412 ),
    .Q(\bus/vram_addr_8_135 )
  );
  LD   \bus/vram_addr_9  (
    .D(\cpu/U1_2/PC/Q [11]),
    .G(\bus/_n0412 ),
    .Q(\bus/vram_addr_9_134 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \switches_anti_jitter<15>/_n00231  (
    .I0(raw_switches_15_IBUF_15),
    .I1(\switches_anti_jitter<15>/cnt<3> ),
    .I2(\switches_anti_jitter<15>/cnt<2> ),
    .I3(\switches_anti_jitter<15>/cnt<1> ),
    .I4(\switches_anti_jitter<15>/cnt<0> ),
    .O(\switches_anti_jitter<15>/_n0023 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \switches_anti_jitter<14>/_n00231  (
    .I0(raw_switches_14_IBUF_14),
    .I1(\switches_anti_jitter<14>/cnt<3> ),
    .I2(\switches_anti_jitter<14>/cnt<2> ),
    .I3(\switches_anti_jitter<14>/cnt<1> ),
    .I4(\switches_anti_jitter<14>/cnt<0> ),
    .O(\switches_anti_jitter<14>/_n0023 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \switches_anti_jitter<13>/_n00231  (
    .I0(raw_switches_13_IBUF_13),
    .I1(\switches_anti_jitter<13>/cnt<3> ),
    .I2(\switches_anti_jitter<13>/cnt<2> ),
    .I3(\switches_anti_jitter<13>/cnt<1> ),
    .I4(\switches_anti_jitter<13>/cnt<0> ),
    .O(\switches_anti_jitter<13>/_n0023 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \switches_anti_jitter<12>/_n00231  (
    .I0(raw_switches_12_IBUF_12),
    .I1(\switches_anti_jitter<12>/cnt<3> ),
    .I2(\switches_anti_jitter<12>/cnt<2> ),
    .I3(\switches_anti_jitter<12>/cnt<1> ),
    .I4(\switches_anti_jitter<12>/cnt<0> ),
    .O(\switches_anti_jitter<12>/_n0023 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \switches_anti_jitter<11>/_n00231  (
    .I0(raw_switches_11_IBUF_11),
    .I1(\switches_anti_jitter<11>/cnt<3> ),
    .I2(\switches_anti_jitter<11>/cnt<2> ),
    .I3(\switches_anti_jitter<11>/cnt<1> ),
    .I4(\switches_anti_jitter<11>/cnt<0> ),
    .O(\switches_anti_jitter<11>/_n0023 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \switches_anti_jitter<10>/_n00231  (
    .I0(raw_switches_10_IBUF_10),
    .I1(\switches_anti_jitter<10>/cnt<3> ),
    .I2(\switches_anti_jitter<10>/cnt<2> ),
    .I3(\switches_anti_jitter<10>/cnt<1> ),
    .I4(\switches_anti_jitter<10>/cnt<0> ),
    .O(\switches_anti_jitter<10>/_n0023 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \switches_anti_jitter<9>/_n00231  (
    .I0(raw_switches_9_IBUF_9),
    .I1(\switches_anti_jitter<9>/cnt<3> ),
    .I2(\switches_anti_jitter<9>/cnt<2> ),
    .I3(\switches_anti_jitter<9>/cnt<1> ),
    .I4(\switches_anti_jitter<9>/cnt<0> ),
    .O(\switches_anti_jitter<9>/_n0023 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \switches_anti_jitter<8>/_n00231  (
    .I0(raw_switches_8_IBUF_8),
    .I1(\switches_anti_jitter<8>/cnt<3> ),
    .I2(\switches_anti_jitter<8>/cnt<2> ),
    .I3(\switches_anti_jitter<8>/cnt<1> ),
    .I4(\switches_anti_jitter<8>/cnt<0> ),
    .O(\switches_anti_jitter<8>/_n0023 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \switches_anti_jitter<7>/_n00231  (
    .I0(raw_switches_7_IBUF_7),
    .I1(\switches_anti_jitter<7>/cnt<3> ),
    .I2(\switches_anti_jitter<7>/cnt<2> ),
    .I3(\switches_anti_jitter<7>/cnt<1> ),
    .I4(\switches_anti_jitter<7>/cnt<0> ),
    .O(\switches_anti_jitter<7>/_n0023 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \switches_anti_jitter<6>/_n00231  (
    .I0(raw_switches_6_IBUF_6),
    .I1(\switches_anti_jitter<6>/cnt<3> ),
    .I2(\switches_anti_jitter<6>/cnt<2> ),
    .I3(\switches_anti_jitter<6>/cnt<1> ),
    .I4(\switches_anti_jitter<6>/cnt<0> ),
    .O(\switches_anti_jitter<6>/_n0023 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \switches_anti_jitter<5>/_n00231  (
    .I0(raw_switches_5_IBUF_5),
    .I1(\switches_anti_jitter<5>/cnt<3> ),
    .I2(\switches_anti_jitter<5>/cnt<2> ),
    .I3(\switches_anti_jitter<5>/cnt<1> ),
    .I4(\switches_anti_jitter<5>/cnt<0> ),
    .O(\switches_anti_jitter<5>/_n0023 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \switches_anti_jitter<4>/_n00231  (
    .I0(raw_switches_4_IBUF_4),
    .I1(\switches_anti_jitter<4>/cnt<3> ),
    .I2(\switches_anti_jitter<4>/cnt<2> ),
    .I3(\switches_anti_jitter<4>/cnt<1> ),
    .I4(\switches_anti_jitter<4>/cnt<0> ),
    .O(\switches_anti_jitter<4>/_n0023 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \switches_anti_jitter<3>/_n00231  (
    .I0(raw_switches_3_IBUF_3),
    .I1(\switches_anti_jitter<3>/cnt<3> ),
    .I2(\switches_anti_jitter<3>/cnt<2> ),
    .I3(\switches_anti_jitter<3>/cnt<1> ),
    .I4(\switches_anti_jitter<3>/cnt<0> ),
    .O(\switches_anti_jitter<3>/_n0023 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \switches_anti_jitter<2>/_n00231  (
    .I0(raw_switches_2_IBUF_2),
    .I1(\switches_anti_jitter<2>/cnt<3> ),
    .I2(\switches_anti_jitter<2>/cnt<2> ),
    .I3(\switches_anti_jitter<2>/cnt<1> ),
    .I4(\switches_anti_jitter<2>/cnt<0> ),
    .O(\switches_anti_jitter<2>/_n0023 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \switches_anti_jitter<1>/_n00231  (
    .I0(raw_switches_1_IBUF_1),
    .I1(\switches_anti_jitter<1>/cnt<3> ),
    .I2(\switches_anti_jitter<1>/cnt<2> ),
    .I3(\switches_anti_jitter<1>/cnt<1> ),
    .I4(\switches_anti_jitter<1>/cnt<0> ),
    .O(\switches_anti_jitter<1>/_n0023 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \switches_anti_jitter<0>/_n00231  (
    .I0(raw_switches_0_IBUF_0),
    .I1(\switches_anti_jitter<0>/cnt<3> ),
    .I2(\switches_anti_jitter<0>/cnt<2> ),
    .I3(\switches_anti_jitter<0>/cnt<1> ),
    .I4(\switches_anti_jitter<0>/cnt<0> ),
    .O(\switches_anti_jitter<0>/_n0023 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \vga/Msub_row<8:0>_xor<1>11  (
    .I0(\vga/v_count [1]),
    .I1(\vga/v_count [0]),
    .O(\vga/row [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \vga/Msub_row<8:0>_xor<6>11  (
    .I0(\vga/v_count [6]),
    .I1(\vga/Msub_row<8:0>_cy<5> ),
    .O(\vga/row [6])
  );
  LUT5 #(
    .INIT ( 32'hFFFEFEFE ))
  \vga/h_sync1  (
    .I0(\vga/h_count [8]),
    .I1(\vga/h_count [9]),
    .I2(\vga/h_count [7]),
    .I3(\vga/h_count [6]),
    .I4(\vga/h_count [5]),
    .O(\vga/h_sync )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \vga/Msub_col_xor<1>11  (
    .I0(\vga/h_count [1]),
    .I1(\vga/h_count [0]),
    .O(\vga/col [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \vga/Msub_col_xor<6>11  (
    .I0(\vga/h_count [6]),
    .I1(\vga/Msub_col_cy [5]),
    .O(\vga/col [6])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mmux_vram_scan[27]_vram_scan[11]_mux_2_OUT121  (
    .I0(\vram_scan[9] ),
    .I1(\vram_scan[25] ),
    .I2(n0014[1]),
    .O(\vram_scan[27]_vram_scan[11]_mux_2_OUT<9> )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mmux_vram_scan[27]_vram_scan[11]_mux_2_OUT111  (
    .I0(\vram_scan[8] ),
    .I1(\vram_scan[24] ),
    .I2(n0014[1]),
    .O(\vram_scan[27]_vram_scan[11]_mux_2_OUT<8> )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mmux_vram_scan[27]_vram_scan[11]_mux_2_OUT101  (
    .I0(\vram_scan[7] ),
    .I1(\vram_scan[23] ),
    .I2(n0014[1]),
    .O(\vram_scan[27]_vram_scan[11]_mux_2_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mmux_vram_scan[27]_vram_scan[11]_mux_2_OUT91  (
    .I0(\vram_scan[6] ),
    .I1(\vram_scan[22] ),
    .I2(n0014[1]),
    .O(\vram_scan[27]_vram_scan[11]_mux_2_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mmux_vram_scan[27]_vram_scan[11]_mux_2_OUT81  (
    .I0(\vram_scan[5] ),
    .I1(\vram_scan[21] ),
    .I2(n0014[1]),
    .O(\vram_scan[27]_vram_scan[11]_mux_2_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mmux_vram_scan[27]_vram_scan[11]_mux_2_OUT71  (
    .I0(\vram_scan[4] ),
    .I1(\vram_scan[20] ),
    .I2(n0014[1]),
    .O(\vram_scan[27]_vram_scan[11]_mux_2_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mmux_vram_scan[27]_vram_scan[11]_mux_2_OUT61  (
    .I0(\vram_scan[3] ),
    .I1(\vram_scan[19] ),
    .I2(n0014[1]),
    .O(\vram_scan[27]_vram_scan[11]_mux_2_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mmux_vram_scan[27]_vram_scan[11]_mux_2_OUT51  (
    .I0(\vram_scan[2] ),
    .I1(\vram_scan[18] ),
    .I2(n0014[1]),
    .O(\vram_scan[27]_vram_scan[11]_mux_2_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mmux_vram_scan[27]_vram_scan[11]_mux_2_OUT41  (
    .I0(\vram_scan[1] ),
    .I1(\vram_scan[17] ),
    .I2(n0014[1]),
    .O(\vram_scan[27]_vram_scan[11]_mux_2_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mmux_vram_scan[27]_vram_scan[11]_mux_2_OUT31  (
    .I0(\vram_scan[11] ),
    .I1(\vram_scan[27] ),
    .I2(n0014[1]),
    .O(\vram_scan[27]_vram_scan[11]_mux_2_OUT<11> )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mmux_vram_scan[27]_vram_scan[11]_mux_2_OUT21  (
    .I0(\vram_scan[10] ),
    .I1(\vram_scan[26] ),
    .I2(n0014[1]),
    .O(\vram_scan[27]_vram_scan[11]_mux_2_OUT<10> )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mmux_vram_scan[27]_vram_scan[11]_mux_2_OUT11  (
    .I0(\vram_scan[0] ),
    .I1(\vram_scan[16] ),
    .I2(n0014[1]),
    .O(\vram_scan[27]_vram_scan[11]_mux_2_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \vga/h_count[9]_PWR_4_o_LessThan_18_o21  (
    .I0(\vga/h_count [2]),
    .I1(\vga/h_count [3]),
    .I2(\vga/h_count [0]),
    .I3(\vga/h_count [1]),
    .O(\vga/h_count[9]_PWR_4_o_LessThan_18_o2 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \vga/v_sync21  (
    .I0(\vga/v_count [4]),
    .I1(\vga/v_count [2]),
    .I2(\vga/v_count [3]),
    .O(\vga/v_sync2 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \vga/read211  (
    .I0(\vga/v_count [6]),
    .I1(\vga/v_count [7]),
    .I2(\vga/v_count [8]),
    .I3(\vga/v_count [9]),
    .O(\vga/read21 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \vga/h_count[9]_PWR_4_o_equal_7_o<9>11  (
    .I0(\vga/h_count [5]),
    .I1(\vga/h_count [6]),
    .I2(\vga/h_count [7]),
    .O(\vga/h_count[9]_PWR_4_o_equal_7_o<9>1_560 )
  );
  LUT5 #(
    .INIT ( 32'h00800000 ))
  \vga/h_count[9]_PWR_4_o_equal_7_o<9>1  (
    .I0(\vga/h_count [4]),
    .I1(\vga/h_count [8]),
    .I2(\vga/h_count [9]),
    .I3(\vga/h_count[9]_PWR_4_o_LessThan_18_o2 ),
    .I4(\vga/h_count[9]_PWR_4_o_equal_7_o<9>1_560 ),
    .O(\vga/h_count[9]_PWR_4_o_equal_7_o )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \vga/v_count[9]_PWR_4_o_equal_8_o<9>21  (
    .I0(\vga/v_count [5]),
    .I1(\vga/v_count [4]),
    .I2(\vga/v_count [6]),
    .I3(\vga/v_count [7]),
    .I4(\vga/v_count [8]),
    .O(\vga/v_count[9]_PWR_4_o_equal_8_o<9>2 )
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \vga/v_count[9]_PWR_4_o_equal_8_o<9>1  (
    .I0(\vga/v_count [0]),
    .I1(\vga/v_count [1]),
    .I2(\vga/v_count [2]),
    .I3(\vga/v_count [3]),
    .I4(\vga/v_count [9]),
    .I5(\vga/v_count[9]_PWR_4_o_equal_8_o<9>2 ),
    .O(\vga/v_count[9]_PWR_4_o_equal_8_o )
  );
  LUT5 #(
    .INIT ( 32'h7FFFFFFE ))
  \switches_anti_jitter<14>/_n0031_inv1  (
    .I0(raw_switches_14_IBUF_14),
    .I1(\switches_anti_jitter<14>/cnt<0> ),
    .I2(\switches_anti_jitter<14>/cnt<1> ),
    .I3(\switches_anti_jitter<14>/cnt<2> ),
    .I4(\switches_anti_jitter<14>/cnt<3> ),
    .O(\switches_anti_jitter<14>/_n0031_inv )
  );
  LUT5 #(
    .INIT ( 32'h7FFFFFFE ))
  \switches_anti_jitter<15>/_n0031_inv1  (
    .I0(raw_switches_15_IBUF_15),
    .I1(\switches_anti_jitter<15>/cnt<0> ),
    .I2(\switches_anti_jitter<15>/cnt<1> ),
    .I3(\switches_anti_jitter<15>/cnt<2> ),
    .I4(\switches_anti_jitter<15>/cnt<3> ),
    .O(\switches_anti_jitter<15>/_n0031_inv )
  );
  LUT5 #(
    .INIT ( 32'h7FFFFFFE ))
  \switches_anti_jitter<13>/_n0031_inv1  (
    .I0(raw_switches_13_IBUF_13),
    .I1(\switches_anti_jitter<13>/cnt<0> ),
    .I2(\switches_anti_jitter<13>/cnt<1> ),
    .I3(\switches_anti_jitter<13>/cnt<2> ),
    .I4(\switches_anti_jitter<13>/cnt<3> ),
    .O(\switches_anti_jitter<13>/_n0031_inv )
  );
  LUT5 #(
    .INIT ( 32'h7FFFFFFE ))
  \switches_anti_jitter<12>/_n0031_inv1  (
    .I0(raw_switches_12_IBUF_12),
    .I1(\switches_anti_jitter<12>/cnt<0> ),
    .I2(\switches_anti_jitter<12>/cnt<1> ),
    .I3(\switches_anti_jitter<12>/cnt<2> ),
    .I4(\switches_anti_jitter<12>/cnt<3> ),
    .O(\switches_anti_jitter<12>/_n0031_inv )
  );
  LUT5 #(
    .INIT ( 32'h7FFFFFFE ))
  \switches_anti_jitter<11>/_n0031_inv1  (
    .I0(raw_switches_11_IBUF_11),
    .I1(\switches_anti_jitter<11>/cnt<0> ),
    .I2(\switches_anti_jitter<11>/cnt<1> ),
    .I3(\switches_anti_jitter<11>/cnt<2> ),
    .I4(\switches_anti_jitter<11>/cnt<3> ),
    .O(\switches_anti_jitter<11>/_n0031_inv )
  );
  LUT5 #(
    .INIT ( 32'h7FFFFFFE ))
  \switches_anti_jitter<10>/_n0031_inv1  (
    .I0(raw_switches_10_IBUF_10),
    .I1(\switches_anti_jitter<10>/cnt<0> ),
    .I2(\switches_anti_jitter<10>/cnt<1> ),
    .I3(\switches_anti_jitter<10>/cnt<2> ),
    .I4(\switches_anti_jitter<10>/cnt<3> ),
    .O(\switches_anti_jitter<10>/_n0031_inv )
  );
  LUT5 #(
    .INIT ( 32'h7FFFFFFE ))
  \switches_anti_jitter<9>/_n0031_inv1  (
    .I0(raw_switches_9_IBUF_9),
    .I1(\switches_anti_jitter<9>/cnt<0> ),
    .I2(\switches_anti_jitter<9>/cnt<1> ),
    .I3(\switches_anti_jitter<9>/cnt<2> ),
    .I4(\switches_anti_jitter<9>/cnt<3> ),
    .O(\switches_anti_jitter<9>/_n0031_inv )
  );
  LUT5 #(
    .INIT ( 32'h7FFFFFFE ))
  \switches_anti_jitter<8>/_n0031_inv1  (
    .I0(raw_switches_8_IBUF_8),
    .I1(\switches_anti_jitter<8>/cnt<0> ),
    .I2(\switches_anti_jitter<8>/cnt<1> ),
    .I3(\switches_anti_jitter<8>/cnt<2> ),
    .I4(\switches_anti_jitter<8>/cnt<3> ),
    .O(\switches_anti_jitter<8>/_n0031_inv )
  );
  LUT5 #(
    .INIT ( 32'h7FFFFFFE ))
  \switches_anti_jitter<7>/_n0031_inv1  (
    .I0(raw_switches_7_IBUF_7),
    .I1(\switches_anti_jitter<7>/cnt<0> ),
    .I2(\switches_anti_jitter<7>/cnt<1> ),
    .I3(\switches_anti_jitter<7>/cnt<2> ),
    .I4(\switches_anti_jitter<7>/cnt<3> ),
    .O(\switches_anti_jitter<7>/_n0031_inv )
  );
  LUT5 #(
    .INIT ( 32'h7FFFFFFE ))
  \switches_anti_jitter<6>/_n0031_inv1  (
    .I0(raw_switches_6_IBUF_6),
    .I1(\switches_anti_jitter<6>/cnt<0> ),
    .I2(\switches_anti_jitter<6>/cnt<1> ),
    .I3(\switches_anti_jitter<6>/cnt<2> ),
    .I4(\switches_anti_jitter<6>/cnt<3> ),
    .O(\switches_anti_jitter<6>/_n0031_inv )
  );
  LUT5 #(
    .INIT ( 32'h7FFFFFFE ))
  \switches_anti_jitter<5>/_n0031_inv1  (
    .I0(raw_switches_5_IBUF_5),
    .I1(\switches_anti_jitter<5>/cnt<0> ),
    .I2(\switches_anti_jitter<5>/cnt<1> ),
    .I3(\switches_anti_jitter<5>/cnt<2> ),
    .I4(\switches_anti_jitter<5>/cnt<3> ),
    .O(\switches_anti_jitter<5>/_n0031_inv )
  );
  LUT5 #(
    .INIT ( 32'h7FFFFFFE ))
  \switches_anti_jitter<4>/_n0031_inv1  (
    .I0(raw_switches_4_IBUF_4),
    .I1(\switches_anti_jitter<4>/cnt<0> ),
    .I2(\switches_anti_jitter<4>/cnt<1> ),
    .I3(\switches_anti_jitter<4>/cnt<2> ),
    .I4(\switches_anti_jitter<4>/cnt<3> ),
    .O(\switches_anti_jitter<4>/_n0031_inv )
  );
  LUT5 #(
    .INIT ( 32'h7FFFFFFE ))
  \switches_anti_jitter<3>/_n0031_inv1  (
    .I0(raw_switches_3_IBUF_3),
    .I1(\switches_anti_jitter<3>/cnt<0> ),
    .I2(\switches_anti_jitter<3>/cnt<1> ),
    .I3(\switches_anti_jitter<3>/cnt<2> ),
    .I4(\switches_anti_jitter<3>/cnt<3> ),
    .O(\switches_anti_jitter<3>/_n0031_inv )
  );
  LUT5 #(
    .INIT ( 32'h7FFFFFFE ))
  \switches_anti_jitter<2>/_n0031_inv1  (
    .I0(raw_switches_2_IBUF_2),
    .I1(\switches_anti_jitter<2>/cnt<0> ),
    .I2(\switches_anti_jitter<2>/cnt<1> ),
    .I3(\switches_anti_jitter<2>/cnt<2> ),
    .I4(\switches_anti_jitter<2>/cnt<3> ),
    .O(\switches_anti_jitter<2>/_n0031_inv )
  );
  LUT5 #(
    .INIT ( 32'h7FFFFFFE ))
  \switches_anti_jitter<1>/_n0031_inv1  (
    .I0(raw_switches_1_IBUF_1),
    .I1(\switches_anti_jitter<1>/cnt<0> ),
    .I2(\switches_anti_jitter<1>/cnt<1> ),
    .I3(\switches_anti_jitter<1>/cnt<2> ),
    .I4(\switches_anti_jitter<1>/cnt<3> ),
    .O(\switches_anti_jitter<1>/_n0031_inv )
  );
  LUT5 #(
    .INIT ( 32'h7FFFFFFE ))
  \switches_anti_jitter<0>/_n0031_inv1  (
    .I0(raw_switches_0_IBUF_0),
    .I1(\switches_anti_jitter<0>/cnt<0> ),
    .I2(\switches_anti_jitter<0>/cnt<1> ),
    .I3(\switches_anti_jitter<0>/cnt<2> ),
    .I4(\switches_anti_jitter<0>/cnt<3> ),
    .O(\switches_anti_jitter<0>/_n0031_inv )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \vga/Msub_col_xor<2>11  (
    .I0(\vga/h_count [2]),
    .I1(\vga/h_count [0]),
    .I2(\vga/h_count [1]),
    .O(\vga/col [2])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \vga/Msub_col_xor<3>11  (
    .I0(\vga/h_count [3]),
    .I1(\vga/h_count [0]),
    .I2(\vga/h_count [1]),
    .I3(\vga/h_count [2]),
    .O(\vga/col [3])
  );
  LUT5 #(
    .INIT ( 32'h95555555 ))
  \vga/Msub_col_xor<4>11  (
    .I0(\vga/h_count [4]),
    .I1(\vga/h_count [0]),
    .I2(\vga/h_count [1]),
    .I3(\vga/h_count [2]),
    .I4(\vga/h_count [3]),
    .O(\vga/col [4])
  );
  LUT6 #(
    .INIT ( 64'hFEEEEEEEEEEEEEEE ))
  \vga/Msub_col_cy<5>11  (
    .I0(\vga/h_count [4]),
    .I1(\vga/h_count [5]),
    .I2(\vga/h_count [3]),
    .I3(\vga/h_count [2]),
    .I4(\vga/h_count [1]),
    .I5(\vga/h_count [0]),
    .O(\vga/Msub_col_cy [5])
  );
  LUT6 #(
    .INIT ( 64'hC999999999999999 ))
  \vga/Msub_col_xor<5>11  (
    .I0(\vga/h_count [4]),
    .I1(\vga/h_count [5]),
    .I2(\vga/h_count [1]),
    .I3(\vga/h_count [2]),
    .I4(\vga/h_count [3]),
    .I5(\vga/h_count [0]),
    .O(\vga/col [5])
  );
  LUT3 #(
    .INIT ( 8'h56 ))
  \vga/Msub_col_xor<7>11  (
    .I0(\vga/h_count [7]),
    .I1(\vga/Msub_col_cy [5]),
    .I2(\vga/h_count [6]),
    .O(\vga/col [7])
  );
  LUT3 #(
    .INIT ( 8'h95 ))
  \vga/Msub_row<8:0>_xor<2>11  (
    .I0(\vga/v_count [2]),
    .I1(\vga/v_count [1]),
    .I2(\vga/v_count [0]),
    .O(\vga/row [2])
  );
  LUT4 #(
    .INIT ( 16'hC999 ))
  \vga/Msub_row<8:0>_xor<3>11  (
    .I0(\vga/v_count [2]),
    .I1(\vga/v_count [3]),
    .I2(\vga/v_count [1]),
    .I3(\vga/v_count [0]),
    .O(\vga/row [3])
  );
  LUT5 #(
    .INIT ( 32'hAAA9A9A9 ))
  \vga/Msub_row<8:0>_xor<4>11  (
    .I0(\vga/v_count [4]),
    .I1(\vga/v_count [2]),
    .I2(\vga/v_count [3]),
    .I3(\vga/v_count [0]),
    .I4(\vga/v_count [1]),
    .O(\vga/row [4])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAA8A8A8 ))
  \vga/Msub_row<8:0>_cy<5>11  (
    .I0(\vga/v_count [5]),
    .I1(\vga/v_count [4]),
    .I2(\vga/v_count [2]),
    .I3(\vga/v_count [0]),
    .I4(\vga/v_count [1]),
    .I5(\vga/v_count [3]),
    .O(\vga/Msub_row<8:0>_cy<5> )
  );
  LUT6 #(
    .INIT ( 64'h5555555655565556 ))
  \vga/Msub_row<8:0>_xor<5>11  (
    .I0(\vga/v_count [5]),
    .I1(\vga/v_count [3]),
    .I2(\vga/v_count [4]),
    .I3(\vga/v_count [2]),
    .I4(\vga/v_count [1]),
    .I5(\vga/v_count [0]),
    .O(\vga/row [5])
  );
  LUT4 #(
    .INIT ( 16'h9995 ))
  \vga/Msub_col_xor<8>11  (
    .I0(\vga/h_count [8]),
    .I1(\vga/h_count [7]),
    .I2(\vga/h_count [6]),
    .I3(\vga/Msub_col_cy [5]),
    .O(\vga/col [8])
  );
  LUT5 #(
    .INIT ( 32'hAAAA9995 ))
  \vga/Msub_col_xor<9>11  (
    .I0(\vga/h_count [9]),
    .I1(\vga/h_count [7]),
    .I2(\vga/Msub_col_cy [5]),
    .I3(\vga/h_count [6]),
    .I4(\vga/h_count [8]),
    .O(\vga/col [9])
  );
  LUT3 #(
    .INIT ( 8'hA9 ))
  \vga/Msub_row<8:0>_xor<7>11  (
    .I0(\vga/v_count [7]),
    .I1(\vga/Msub_row<8:0>_cy<5> ),
    .I2(\vga/v_count [6]),
    .O(\vga/row [7])
  );
  LUT4 #(
    .INIT ( 16'hAAA9 ))
  \vga/Msub_row<8:0>_xor<8>11  (
    .I0(\vga/v_count [8]),
    .I1(\vga/Msub_row<8:0>_cy<5> ),
    .I2(\vga/v_count [6]),
    .I3(\vga/v_count [7]),
    .O(\vga/row [8])
  );
  LUT6 #(
    .INIT ( 64'hABAAAAAAA8AAAAAA ))
  \ps2/Mmux_state[3]_data[7]_wide_mux_2_OUT51  (
    .I0(\ps2/data [4]),
    .I1(\ps2/state [3]),
    .I2(\ps2/state [1]),
    .I3(\ps2/state [2]),
    .I4(\ps2/state [0]),
    .I5(\ps2/ps2_data_r1_598 ),
    .O(\ps2/state[3]_data[7]_wide_mux_2_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hAAABAAAAAAA8AAAA ))
  \ps2/Mmux_state[3]_data[7]_wide_mux_2_OUT41  (
    .I0(\ps2/data [3]),
    .I1(\ps2/state [3]),
    .I2(\ps2/state [1]),
    .I3(\ps2/state [0]),
    .I4(\ps2/state [2]),
    .I5(\ps2/ps2_data_r1_598 ),
    .O(\ps2/state[3]_data[7]_wide_mux_2_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hBAAAAAAA8AAAAAAA ))
  \ps2/Mmux_state[3]_data[7]_wide_mux_2_OUT71  (
    .I0(\ps2/data [6]),
    .I1(\ps2/state [3]),
    .I2(\ps2/state [2]),
    .I3(\ps2/state [1]),
    .I4(\ps2/state [0]),
    .I5(\ps2/ps2_data_r1_598 ),
    .O(\ps2/state[3]_data[7]_wide_mux_2_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hABAAAAAAA8AAAAAA ))
  \ps2/Mmux_state[3]_data[7]_wide_mux_2_OUT61  (
    .I0(\ps2/data [5]),
    .I1(\ps2/state [3]),
    .I2(\ps2/state [0]),
    .I3(\ps2/state [2]),
    .I4(\ps2/state [1]),
    .I5(\ps2/ps2_data_r1_598 ),
    .O(\ps2/state[3]_data[7]_wide_mux_2_OUT<5> )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \ps2/Mcount_state_xor<3>11  (
    .I0(\ps2/state [3]),
    .I1(\ps2/state [0]),
    .I2(\ps2/state [1]),
    .I3(\ps2/state [2]),
    .O(\ps2/Result [3])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \ps2/Mcount_state_xor<2>11  (
    .I0(\ps2/state [2]),
    .I1(\ps2/state [0]),
    .I2(\ps2/state [1]),
    .O(\ps2/Result [2])
  );
  LUT5 #(
    .INIT ( 32'hAAABAAA8 ))
  \ps2/Mmux_state[3]_data[7]_wide_mux_2_OUT11  (
    .I0(\ps2/data [0]),
    .I1(\ps2/state [1]),
    .I2(\ps2/state [2]),
    .I3(\ps2/state [3]),
    .I4(\ps2/ps2_data_r1_598 ),
    .O(\ps2/state[3]_data[7]_wide_mux_2_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hABAAAAAAA8AAAAAA ))
  \ps2/Mmux_state[3]_data[7]_wide_mux_2_OUT31  (
    .I0(\ps2/data [2]),
    .I1(\ps2/state [3]),
    .I2(\ps2/state [2]),
    .I3(\ps2/state [1]),
    .I4(\ps2/state [0]),
    .I5(\ps2/ps2_data_r1_598 ),
    .O(\ps2/state[3]_data[7]_wide_mux_2_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hAAABAAAAAAA8AAAA ))
  \ps2/Mmux_state[3]_data[7]_wide_mux_2_OUT21  (
    .I0(\ps2/data [1]),
    .I1(\ps2/state [3]),
    .I2(\ps2/state [2]),
    .I3(\ps2/state [0]),
    .I4(\ps2/state [1]),
    .I5(\ps2/ps2_data_r1_598 ),
    .O(\ps2/state[3]_data[7]_wide_mux_2_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \ps2/Mcount_state_xor<1>11  (
    .I0(\ps2/state [1]),
    .I1(\ps2/state [0]),
    .O(\ps2/Result [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ps2/Mmux_state[3]_data[7]_wide_mux_2_OUT81  (
    .I0(\ps2/state [3]),
    .I1(\ps2/data [7]),
    .I2(\ps2/ps2_data_r1_598 ),
    .O(\ps2/state[3]_data[7]_wide_mux_2_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  \ps2/_n0107_inv1  (
    .I0(\ps2/data[7]_PWR_6_o_equal_13_o ),
    .I1(\ps2/state[3]_ps2_clk_neg_AND_105_o ),
    .I2(\ps2/key_break [0]),
    .O(\ps2/_n0107_inv )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \ps2/_n0101_inv1  (
    .I0(\ps2/state[3]_ps2_clk_neg_AND_105_o ),
    .I1(\ps2/data[7]_PWR_6_o_equal_13_o ),
    .O(\ps2/_n0101_inv )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \ps2/key_break<0>1  (
    .I0(\ps2/state[3]_ps2_clk_neg_AND_105_o ),
    .I1(\ps2/data[7]_PWR_6_o_equal_13_o ),
    .I2(\ps2/key_break [0]),
    .O(\ps2/key_break<0>1_573 )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \ps2/_n00601  (
    .I0(\ps2/state[3]_ps2_clk_neg_AND_105_o ),
    .I1(\ps2/data[7]_PWR_6_o_equal_13_o ),
    .I2(\ps2/key_break [0]),
    .O(\ps2/_n0060 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \ps2/ps2_clk_neg1  (
    .I0(\ps2/ps2_clk_r1_599 ),
    .I1(\ps2/ps2_clk_r0_597 ),
    .O(\ps2/ps2_clk_neg )
  );
  LUT6 #(
    .INIT ( 64'h1F4F544210405442 ))
  \cpu/U1_2/U1/Mmux_res251  (
    .I0(\cpu/ALU_op [2]),
    .I1(\cpu/U1_2/ALU_A [31]),
    .I2(\cpu/ALU_op [0]),
    .I3(\cpu/U1_2/ALU_B [17]),
    .I4(\cpu/ALU_op [1]),
    .I5(\cpu/U1_2/U1/adc_res [31]),
    .O(\cpu/U1_2/PC_in [31])
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  \cpu/U11/state_FSM_FFd10-In31  (
    .I0(\cpu/U1_2/IR/Q[31] ),
    .I1(\cpu/U11/state_FSM_FFd15_863 ),
    .I2(\cpu/U11/state_FSM_FFd10-In_bdd4 ),
    .O(\cpu/U11/state_FSM_FFd10-In )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFEF ))
  \cpu/U11/state_FSM_FFd10-In61  (
    .I0(\cpu/U1_2/IR/Q[2] ),
    .I1(\cpu/U1_2/IR/Q[1] ),
    .I2(\cpu/U1_2/IR/Q[3] ),
    .I3(\cpu/U1_2/IR/Q[0] ),
    .I4(\cpu/U1_2/IR/Q[4] ),
    .I5(\cpu/U1_2/IR/Q[5] ),
    .O(\cpu/U11/state_FSM_FFd10-In_bdd4 )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \cpu/U11/state_FSM_FFd11-In11  (
    .I0(\cpu/U11/state_FSM_FFd15_863 ),
    .I1(\cpu/U1_2/IR/Q[31] ),
    .I2(\cpu/U11/state_FSM_FFd10-In_bdd4 ),
    .O(\cpu/U11/state_FSM_FFd11-In )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \cpu/U11/state_FSM_FFd15-In1  (
    .I0(\cpu/U11/state_FSM_FFd15_863 ),
    .I1(\cpu/U1_2/IR/Q[31] ),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .O(\cpu/U11/state_FSM_FFd15-In )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \cpu/U11/state_FSM_FFd16-In1  (
    .I0(\cpu/U11/state_FSM_FFd16_211 ),
    .I1(\cpu/U11/state_FSM_FFd15_863 ),
    .I2(\cpu/U11/state_FSM_FFd11_862 ),
    .O(\cpu/U11/state_FSM_FFd16-In )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \cpu/U11/state__n0490<4>1  (
    .I0(\cpu/U11/state_FSM_FFd16_211 ),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/ALUSrcB [1])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \cpu/U11/state_PCWrite1  (
    .I0(\cpu/U11/state_FSM_FFd10_861 ),
    .I1(\cpu/U11/state_FSM_FFd16_211 ),
    .O(\cpu/PCWrite )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \bus/_n0412<31>1  (
    .I0(\cpu/U1_2/PC/Q [29]),
    .I1(\cpu/U1_2/PC/Q [31]),
    .I2(\cpu/U1_2/PC/Q [30]),
    .I3(\cpu/U1_2/PC/Q [28]),
    .O(\bus/_n0412 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFA888 ))
  \vga/read3  (
    .I0(\vga/v_count [5]),
    .I1(\vga/v_sync2 ),
    .I2(\vga/v_count [0]),
    .I3(\vga/v_count [1]),
    .I4(\vga/read21 ),
    .O(\vga/read3_884 )
  );
  LUT6 #(
    .INIT ( 64'h00020202FFFFFFFF ))
  \vga/read4  (
    .I0(\vga/v_count[9]_PWR_4_o_equal_8_o<9>2 ),
    .I1(\vga/v_count [2]),
    .I2(\vga/v_count [3]),
    .I3(\vga/v_count [0]),
    .I4(\vga/v_count [1]),
    .I5(\vga/v_count [9]),
    .O(\vga/read4_885 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \vga/read5  (
    .I0(\vga/read2_883 ),
    .I1(\vga/read3_884 ),
    .I2(\vga/read4_885 ),
    .O(\vga/read )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \ps2/data[7]_PWR_6_o_equal_13_o<7>_SW0  (
    .I0(\ps2/data [3]),
    .I1(\ps2/data [2]),
    .I2(\ps2/data [1]),
    .O(N23)
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \ps2/data[7]_PWR_6_o_equal_13_o<7>  (
    .I0(\ps2/data [0]),
    .I1(N23),
    .I2(\ps2/data [5]),
    .I3(\ps2/data [4]),
    .I4(\ps2/data [7]),
    .I5(\ps2/data [6]),
    .O(\ps2/data[7]_PWR_6_o_equal_13_o )
  );
  LUT6 #(
    .INIT ( 64'h00006060F101E8E8 ))
  \cpu/U1_2/U1/Mmux_res81  (
    .I0(\cpu/U1_2/ALU_A [16]),
    .I1(\cpu/U1_2/ALU_B [16]),
    .I2(\cpu/ALU_op [0]),
    .I3(\cpu/U1_2/ALU_B [17]),
    .I4(\cpu/ALU_op [2]),
    .I5(\cpu/ALU_op [1]),
    .O(\cpu/U1_2/U1/Mmux_res8 )
  );
  LUT6 #(
    .INIT ( 64'h00006060F101E8E8 ))
  \cpu/U1_2/U1/Mmux_res71  (
    .I0(\cpu/U1_2/ALU_A [15]),
    .I1(\cpu/U1_2/ALU_B [15]),
    .I2(\cpu/ALU_op [0]),
    .I3(\cpu/U1_2/ALU_B [16]),
    .I4(\cpu/ALU_op [2]),
    .I5(\cpu/ALU_op [1]),
    .O(\cpu/U1_2/U1/Mmux_res7 )
  );
  LUT6 #(
    .INIT ( 64'h00006060F101E8E8 ))
  \cpu/U1_2/U1/Mmux_res61  (
    .I0(\cpu/U1_2/ALU_A [14]),
    .I1(\cpu/U1_2/ALU_B [14]),
    .I2(\cpu/ALU_op [0]),
    .I3(\cpu/U1_2/ALU_B [15]),
    .I4(\cpu/ALU_op [2]),
    .I5(\cpu/ALU_op [1]),
    .O(\cpu/U1_2/U1/Mmux_res6 )
  );
  LUT6 #(
    .INIT ( 64'h00006060F101E8E8 ))
  \cpu/U1_2/U1/Mmux_res51  (
    .I0(\cpu/U1_2/ALU_A [13]),
    .I1(\cpu/U1_2/ALU_B [13]),
    .I2(\cpu/ALU_op [0]),
    .I3(\cpu/U1_2/ALU_B [14]),
    .I4(\cpu/ALU_op [2]),
    .I5(\cpu/ALU_op [1]),
    .O(\cpu/U1_2/U1/Mmux_res5 )
  );
  LUT6 #(
    .INIT ( 64'h00006060F101E8E8 ))
  \cpu/U1_2/U1/Mmux_res41  (
    .I0(\cpu/U1_2/ALU_A [12]),
    .I1(\cpu/U1_2/ALU_B [12]),
    .I2(\cpu/ALU_op [0]),
    .I3(\cpu/U1_2/ALU_B [13]),
    .I4(\cpu/ALU_op [2]),
    .I5(\cpu/ALU_op [1]),
    .O(\cpu/U1_2/U1/Mmux_res4 )
  );
  LUT6 #(
    .INIT ( 64'h00006060F101E8E8 ))
  \cpu/U1_2/U1/Mmux_res321  (
    .I0(\cpu/U1_2/ALU_A [9]),
    .I1(\cpu/U1_2/ALU_B [9]),
    .I2(\cpu/ALU_op [0]),
    .I3(\cpu/U1_2/ALU_B [10]),
    .I4(\cpu/ALU_op [2]),
    .I5(\cpu/ALU_op [1]),
    .O(\cpu/U1_2/U1/Mmux_res32_892 )
  );
  LUT6 #(
    .INIT ( 64'h00006060F101E8E8 ))
  \cpu/U1_2/U1/Mmux_res311  (
    .I0(\cpu/U1_2/ALU_A [8]),
    .I1(\cpu/U1_2/ALU_B [8]),
    .I2(\cpu/ALU_op [0]),
    .I3(\cpu/U1_2/ALU_B [9]),
    .I4(\cpu/ALU_op [2]),
    .I5(\cpu/ALU_op [1]),
    .O(\cpu/U1_2/U1/Mmux_res31_893 )
  );
  LUT6 #(
    .INIT ( 64'h00006060F101E8E8 ))
  \cpu/U1_2/U1/Mmux_res301  (
    .I0(\cpu/U1_2/ALU_A [7]),
    .I1(\cpu/U1_2/ALU_B [7]),
    .I2(\cpu/ALU_op [0]),
    .I3(\cpu/U1_2/ALU_B [8]),
    .I4(\cpu/ALU_op [2]),
    .I5(\cpu/ALU_op [1]),
    .O(\cpu/U1_2/U1/Mmux_res30 )
  );
  LUT6 #(
    .INIT ( 64'h00006060F101E8E8 ))
  \cpu/U1_2/U1/Mmux_res31  (
    .I0(\cpu/U1_2/ALU_A [11]),
    .I1(\cpu/U1_2/ALU_B [11]),
    .I2(\cpu/ALU_op [0]),
    .I3(\cpu/U1_2/ALU_B [12]),
    .I4(\cpu/ALU_op [2]),
    .I5(\cpu/ALU_op [1]),
    .O(\cpu/U1_2/U1/Mmux_res3 )
  );
  LUT6 #(
    .INIT ( 64'h00006060F101E8E8 ))
  \cpu/U1_2/U1/Mmux_res291  (
    .I0(\cpu/U1_2/ALU_A [6]),
    .I1(\cpu/U1_2/ALU_B [6]),
    .I2(\cpu/ALU_op [0]),
    .I3(\cpu/U1_2/ALU_B [7]),
    .I4(\cpu/ALU_op [2]),
    .I5(\cpu/ALU_op [1]),
    .O(\cpu/U1_2/U1/Mmux_res29 )
  );
  LUT6 #(
    .INIT ( 64'h00006060F101E8E8 ))
  \cpu/U1_2/U1/Mmux_res281  (
    .I0(\cpu/U1_2/ALU_A [5]),
    .I1(\cpu/U1_2/ALU_B [5]),
    .I2(\cpu/ALU_op [0]),
    .I3(\cpu/U1_2/ALU_B [6]),
    .I4(\cpu/ALU_op [2]),
    .I5(\cpu/ALU_op [1]),
    .O(\cpu/U1_2/U1/Mmux_res28 )
  );
  LUT6 #(
    .INIT ( 64'h00006060F101E8E8 ))
  \cpu/U1_2/U1/Mmux_res271  (
    .I0(\cpu/U1_2/ALU_A [4]),
    .I1(\cpu/U1_2/ALU_B [4]),
    .I2(\cpu/ALU_op [0]),
    .I3(\cpu/U1_2/ALU_B [5]),
    .I4(\cpu/ALU_op [2]),
    .I5(\cpu/ALU_op [1]),
    .O(\cpu/U1_2/U1/Mmux_res27 )
  );
  LUT6 #(
    .INIT ( 64'h00006060F101E8E8 ))
  \cpu/U1_2/U1/Mmux_res261  (
    .I0(\cpu/U1_2/ALU_A [3]),
    .I1(\cpu/U1_2/ALU_B [3]),
    .I2(\cpu/ALU_op [0]),
    .I3(\cpu/U1_2/ALU_B [4]),
    .I4(\cpu/ALU_op [2]),
    .I5(\cpu/ALU_op [1]),
    .O(\cpu/U1_2/U1/Mmux_res26 )
  );
  LUT6 #(
    .INIT ( 64'h00006060F101E8E8 ))
  \cpu/U1_2/U1/Mmux_res231  (
    .I0(\cpu/U1_2/ALU_A [2]),
    .I1(\cpu/U1_2/ALU_B [2]),
    .I2(\cpu/ALU_op [0]),
    .I3(\cpu/U1_2/ALU_B [3]),
    .I4(\cpu/ALU_op [2]),
    .I5(\cpu/ALU_op [1]),
    .O(\cpu/U1_2/U1/Mmux_res23 )
  );
  LUT6 #(
    .INIT ( 64'h00006060F101E8E8 ))
  \cpu/U1_2/U1/Mmux_res21  (
    .I0(\cpu/U1_2/ALU_A [10]),
    .I1(\cpu/U1_2/ALU_B [10]),
    .I2(\cpu/ALU_op [0]),
    .I3(\cpu/U1_2/ALU_B [11]),
    .I4(\cpu/ALU_op [2]),
    .I5(\cpu/ALU_op [1]),
    .O(\cpu/U1_2/U1/Mmux_res2 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF77E7 ))
  \cpu/U11/state_ALU_operation<1>_SW0  (
    .I0(\cpu/U1_2/IR/Q[5] ),
    .I1(\cpu/U1_2/IR/Q[2] ),
    .I2(\cpu/U1_2/IR/Q[1] ),
    .I3(\cpu/U1_2/IR/Q[0] ),
    .I4(\cpu/U1_2/IR/Q[3] ),
    .I5(\cpu/U1_2/IR/Q[4] ),
    .O(N25)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFEFEFE ))
  \cpu/U11/state_ALU_operation<1>  (
    .I0(\cpu/U11/state_FSM_FFd15_863 ),
    .I1(\cpu/U11/state_FSM_FFd2_213 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd11_862 ),
    .I4(N25),
    .I5(\cpu/U11/state_FSM_FFd16_211 ),
    .O(\cpu/ALU_op [1])
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \cpu/U11/state_ALU_operation<2>_SW0  (
    .I0(\cpu/U1_2/IR/Q[4] ),
    .I1(\cpu/U1_2/IR/Q[1] ),
    .O(N27)
  );
  LUT6 #(
    .INIT ( 64'h0000002020000022 ))
  \cpu/U11/state_ALU_operation<2>  (
    .I0(\cpu/U11/state_FSM_FFd11_862 ),
    .I1(N27),
    .I2(\cpu/U1_2/IR/Q[5] ),
    .I3(\cpu/U1_2/IR/Q[2] ),
    .I4(\cpu/U1_2/IR/Q[0] ),
    .I5(\cpu/U1_2/IR/Q[3] ),
    .O(\cpu/ALU_op [2])
  );
  LUT5 #(
    .INIT ( 32'hEFFFF7FA ))
  \cpu/U11/state_ALU_operation<0>_SW0  (
    .I0(\cpu/U1_2/IR/Q[3] ),
    .I1(\cpu/U1_2/IR/Q[1] ),
    .I2(\cpu/U1_2/IR/Q[2] ),
    .I3(\cpu/U1_2/IR/Q[5] ),
    .I4(\cpu/U1_2/IR/Q[0] ),
    .O(N29)
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  \cpu/U11/state_ALU_operation<0>  (
    .I0(\cpu/U1_2/IR/Q[4] ),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(N29),
    .O(\cpu/ALU_op [0])
  );
  IBUF   raw_switches_15_IBUF (
    .I(raw_switches[15]),
    .O(raw_switches_15_IBUF_15)
  );
  IBUF   raw_switches_14_IBUF (
    .I(raw_switches[14]),
    .O(raw_switches_14_IBUF_14)
  );
  IBUF   raw_switches_13_IBUF (
    .I(raw_switches[13]),
    .O(raw_switches_13_IBUF_13)
  );
  IBUF   raw_switches_12_IBUF (
    .I(raw_switches[12]),
    .O(raw_switches_12_IBUF_12)
  );
  IBUF   raw_switches_11_IBUF (
    .I(raw_switches[11]),
    .O(raw_switches_11_IBUF_11)
  );
  IBUF   raw_switches_10_IBUF (
    .I(raw_switches[10]),
    .O(raw_switches_10_IBUF_10)
  );
  IBUF   raw_switches_9_IBUF (
    .I(raw_switches[9]),
    .O(raw_switches_9_IBUF_9)
  );
  IBUF   raw_switches_8_IBUF (
    .I(raw_switches[8]),
    .O(raw_switches_8_IBUF_8)
  );
  IBUF   raw_switches_7_IBUF (
    .I(raw_switches[7]),
    .O(raw_switches_7_IBUF_7)
  );
  IBUF   raw_switches_6_IBUF (
    .I(raw_switches[6]),
    .O(raw_switches_6_IBUF_6)
  );
  IBUF   raw_switches_5_IBUF (
    .I(raw_switches[5]),
    .O(raw_switches_5_IBUF_5)
  );
  IBUF   raw_switches_4_IBUF (
    .I(raw_switches[4]),
    .O(raw_switches_4_IBUF_4)
  );
  IBUF   raw_switches_3_IBUF (
    .I(raw_switches[3]),
    .O(raw_switches_3_IBUF_3)
  );
  IBUF   raw_switches_2_IBUF (
    .I(raw_switches[2]),
    .O(raw_switches_2_IBUF_2)
  );
  IBUF   raw_switches_1_IBUF (
    .I(raw_switches[1]),
    .O(raw_switches_1_IBUF_1)
  );
  IBUF   raw_switches_0_IBUF (
    .I(raw_switches[0]),
    .O(raw_switches_0_IBUF_0)
  );
  IBUF   rst_n_IBUF (
    .I(rst_n),
    .O(rst_n_IBUF_17)
  );
  IBUF   ps2_clk_IBUF (
    .I(ps2_clk),
    .O(ps2_clk_IBUF_18)
  );
  IBUF   ps2_data_IBUF (
    .I(ps2_data),
    .O(ps2_data_IBUF_19)
  );
  OBUF   vga_r_3_OBUF (
    .I(\vga/r [3]),
    .O(vga_r[3])
  );
  OBUF   vga_r_2_OBUF (
    .I(\vga/r [2]),
    .O(vga_r[2])
  );
  OBUF   vga_r_1_OBUF (
    .I(\vga/r [1]),
    .O(vga_r[1])
  );
  OBUF   vga_r_0_OBUF (
    .I(\vga/r [0]),
    .O(vga_r[0])
  );
  OBUF   vga_g_3_OBUF (
    .I(\vga/g [3]),
    .O(vga_g[3])
  );
  OBUF   vga_g_2_OBUF (
    .I(\vga/g [2]),
    .O(vga_g[2])
  );
  OBUF   vga_g_1_OBUF (
    .I(\vga/g [1]),
    .O(vga_g[1])
  );
  OBUF   vga_g_0_OBUF (
    .I(\vga/g [0]),
    .O(vga_g[0])
  );
  OBUF   vga_b_3_OBUF (
    .I(\vga/b [3]),
    .O(vga_b[3])
  );
  OBUF   vga_b_2_OBUF (
    .I(\vga/b [2]),
    .O(vga_b[2])
  );
  OBUF   vga_b_1_OBUF (
    .I(\vga/b [1]),
    .O(vga_b[1])
  );
  OBUF   vga_b_0_OBUF (
    .I(\vga/b [0]),
    .O(vga_b[0])
  );
  OBUF   vga_hs_OBUF (
    .I(\vga/hs_91 ),
    .O(vga_hs)
  );
  OBUF   vga_vs_OBUF (
    .I(\vga/vs_92 ),
    .O(vga_vs)
  );
  OBUF   buzzer_OBUF (
    .I(buzzer_OBUF_55),
    .O(buzzer)
  );
  OBUF   seg_clk_OBUF (
    .I(Maddsub_n0029_ff_10),
    .O(seg_clk)
  );
  OBUF   seg_do_OBUF (
    .I(Maddsub_n0029_ff_10),
    .O(seg_do)
  );
  OBUF   seg_pen_OBUF (
    .I(Maddsub_n0029_ff_10),
    .O(seg_pen)
  );
  OBUF   seg_clr_OBUF (
    .I(Maddsub_n0029_ff_10),
    .O(seg_clr)
  );
  FDR   \switches_anti_jitter<15>/O  (
    .C(\clk_div/div_15_BUFG_21 ),
    .D(\switches_anti_jitter<15>/O_glue_set_944 ),
    .R(\switches_anti_jitter<15>/_n0023 ),
    .Q(\switches_anti_jitter<15>/O_108 )
  );
  FDR   \switches_anti_jitter<14>/O  (
    .C(\clk_div/div_15_BUFG_21 ),
    .D(\switches_anti_jitter<14>/O_glue_set_945 ),
    .R(\switches_anti_jitter<14>/_n0023 ),
    .Q(\switches_anti_jitter<14>/O_107 )
  );
  FDR   \switches_anti_jitter<13>/O  (
    .C(\clk_div/div_15_BUFG_21 ),
    .D(\switches_anti_jitter<13>/O_glue_set_946 ),
    .R(\switches_anti_jitter<13>/_n0023 ),
    .Q(\switches_anti_jitter<13>/O_106 )
  );
  FDR   \switches_anti_jitter<12>/O  (
    .C(\clk_div/div_15_BUFG_21 ),
    .D(\switches_anti_jitter<12>/O_glue_set_947 ),
    .R(\switches_anti_jitter<12>/_n0023 ),
    .Q(\switches_anti_jitter<12>/O_105 )
  );
  FDR   \switches_anti_jitter<11>/O  (
    .C(\clk_div/div_15_BUFG_21 ),
    .D(\switches_anti_jitter<11>/O_glue_set_948 ),
    .R(\switches_anti_jitter<11>/_n0023 ),
    .Q(\switches_anti_jitter<11>/O_104 )
  );
  FDR   \switches_anti_jitter<10>/O  (
    .C(\clk_div/div_15_BUFG_21 ),
    .D(\switches_anti_jitter<10>/O_glue_set_949 ),
    .R(\switches_anti_jitter<10>/_n0023 ),
    .Q(\switches_anti_jitter<10>/O_103 )
  );
  FDR   \switches_anti_jitter<9>/O  (
    .C(\clk_div/div_15_BUFG_21 ),
    .D(\switches_anti_jitter<9>/O_glue_set_950 ),
    .R(\switches_anti_jitter<9>/_n0023 ),
    .Q(\switches_anti_jitter<9>/O_102 )
  );
  FDR   \switches_anti_jitter<8>/O  (
    .C(\clk_div/div_15_BUFG_21 ),
    .D(\switches_anti_jitter<8>/O_glue_set_951 ),
    .R(\switches_anti_jitter<8>/_n0023 ),
    .Q(\switches_anti_jitter<8>/O_101 )
  );
  FDR   \switches_anti_jitter<7>/O  (
    .C(\clk_div/div_15_BUFG_21 ),
    .D(\switches_anti_jitter<7>/O_glue_set_952 ),
    .R(\switches_anti_jitter<7>/_n0023 ),
    .Q(\switches_anti_jitter<7>/O_100 )
  );
  FDR   \switches_anti_jitter<6>/O  (
    .C(\clk_div/div_15_BUFG_21 ),
    .D(\switches_anti_jitter<6>/O_glue_set_953 ),
    .R(\switches_anti_jitter<6>/_n0023 ),
    .Q(\switches_anti_jitter<6>/O_99 )
  );
  FDR   \switches_anti_jitter<5>/O  (
    .C(\clk_div/div_15_BUFG_21 ),
    .D(\switches_anti_jitter<5>/O_glue_set_954 ),
    .R(\switches_anti_jitter<5>/_n0023 ),
    .Q(\switches_anti_jitter<5>/O_98 )
  );
  FDR   \switches_anti_jitter<4>/O  (
    .C(\clk_div/div_15_BUFG_21 ),
    .D(\switches_anti_jitter<4>/O_glue_set_955 ),
    .R(\switches_anti_jitter<4>/_n0023 ),
    .Q(\switches_anti_jitter<4>/O_97 )
  );
  FDR   \switches_anti_jitter<3>/O  (
    .C(\clk_div/div_15_BUFG_21 ),
    .D(\switches_anti_jitter<3>/O_glue_set_956 ),
    .R(\switches_anti_jitter<3>/_n0023 ),
    .Q(\switches_anti_jitter<3>/O_96 )
  );
  FDR   \switches_anti_jitter<2>/O  (
    .C(\clk_div/div_15_BUFG_21 ),
    .D(\switches_anti_jitter<2>/O_glue_set_957 ),
    .R(\switches_anti_jitter<2>/_n0023 ),
    .Q(\switches_anti_jitter<2>/O_95 )
  );
  FDR   \switches_anti_jitter<1>/O  (
    .C(\clk_div/div_15_BUFG_21 ),
    .D(\switches_anti_jitter<1>/O_glue_set_958 ),
    .R(\switches_anti_jitter<1>/_n0023 ),
    .Q(\switches_anti_jitter<1>/O_94 )
  );
  FDR   \switches_anti_jitter<0>/O  (
    .C(\clk_div/div_15_BUFG_21 ),
    .D(\switches_anti_jitter<0>/O_glue_set_959 ),
    .R(\switches_anti_jitter<0>/_n0023 ),
    .Q(\switches_anti_jitter<0>/O_93 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \pitch_gen/wave_gen/Mcompar_wave_lut<14>1  (
    .I0(\pitch_gen/period [29]),
    .I1(\pitch_gen/period [30]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lut [14])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \pitch_gen/wave_gen/Mcompar_wave_lutdi141  (
    .I0(\pitch_gen/period [30]),
    .I1(\pitch_gen/period [29]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lutdi14 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \pitch_gen/wave_gen/Mcompar_wave_lut<13>1  (
    .I0(\pitch_gen/period [27]),
    .I1(\pitch_gen/period [28]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lut [13])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \pitch_gen/wave_gen/Mcompar_wave_lutdi131  (
    .I0(\pitch_gen/period [28]),
    .I1(\pitch_gen/period [27]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lutdi13 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \pitch_gen/wave_gen/Mcompar_wave_lut<12>1  (
    .I0(\pitch_gen/period [25]),
    .I1(\pitch_gen/period [26]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lut [12])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \pitch_gen/wave_gen/Mcompar_wave_lutdi121  (
    .I0(\pitch_gen/period [26]),
    .I1(\pitch_gen/period [25]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lutdi12 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \pitch_gen/wave_gen/Mcompar_wave_lut<11>1  (
    .I0(\pitch_gen/period [23]),
    .I1(\pitch_gen/period [24]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lut [11])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \pitch_gen/wave_gen/Mcompar_wave_lutdi111  (
    .I0(\pitch_gen/period [24]),
    .I1(\pitch_gen/period [23]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lutdi11_613 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \pitch_gen/wave_gen/Mcompar_wave_lut<10>1  (
    .I0(\pitch_gen/period [21]),
    .I1(\pitch_gen/period [22]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lut [10])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \pitch_gen/wave_gen/Mcompar_wave_lutdi101  (
    .I0(\pitch_gen/period [22]),
    .I1(\pitch_gen/period [21]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lutdi10 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \pitch_gen/wave_gen/Mcompar_wave_lut<9>1  (
    .I0(\pitch_gen/period [19]),
    .I1(\pitch_gen/period [20]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lut [9])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \pitch_gen/wave_gen/Mcompar_wave_lutdi91  (
    .I0(\pitch_gen/period [20]),
    .I1(\pitch_gen/period [19]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lutdi9 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \pitch_gen/wave_gen/Mcompar_wave_lut<8>1  (
    .I0(\pitch_gen/period [17]),
    .I1(\pitch_gen/period [18]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lut [8])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \pitch_gen/wave_gen/Mcompar_wave_lutdi81  (
    .I0(\pitch_gen/period [18]),
    .I1(\pitch_gen/period [17]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lutdi8 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \pitch_gen/wave_gen/Mcompar_wave_lut<7>1  (
    .I0(\pitch_gen/period [15]),
    .I1(\pitch_gen/period [16]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lut [7])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \pitch_gen/wave_gen/Mcompar_wave_lutdi71  (
    .I0(\pitch_gen/period [16]),
    .I1(\pitch_gen/period [15]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lutdi7 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \pitch_gen/wave_gen/Mcompar_wave_lut<6>1  (
    .I0(\pitch_gen/period [13]),
    .I1(\pitch_gen/period [14]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lut [6])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \pitch_gen/wave_gen/Mcompar_wave_lutdi61  (
    .I0(\pitch_gen/period [14]),
    .I1(\pitch_gen/period [13]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lutdi6 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \pitch_gen/wave_gen/Mcompar_wave_lut<5>1  (
    .I0(\pitch_gen/period [11]),
    .I1(\pitch_gen/period [12]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lut [5])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \pitch_gen/wave_gen/Mcompar_wave_lutdi51  (
    .I0(\pitch_gen/period [12]),
    .I1(\pitch_gen/period [11]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lutdi5 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \pitch_gen/wave_gen/Mcompar_wave_lut<4>1  (
    .I0(\pitch_gen/period [9]),
    .I1(\pitch_gen/period [10]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lut [4])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \pitch_gen/wave_gen/Mcompar_wave_lutdi41  (
    .I0(\pitch_gen/period [10]),
    .I1(\pitch_gen/period [9]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lutdi4 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \pitch_gen/wave_gen/Mcompar_wave_lut<3>1  (
    .I0(\pitch_gen/period [7]),
    .I1(\pitch_gen/period [8]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lut [3])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \pitch_gen/wave_gen/Mcompar_wave_lutdi31  (
    .I0(\pitch_gen/period [8]),
    .I1(\pitch_gen/period [7]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lutdi3 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \pitch_gen/wave_gen/Mcompar_wave_lut<2>1  (
    .I0(\pitch_gen/period [5]),
    .I1(\pitch_gen/period [6]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lut [2])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \pitch_gen/wave_gen/Mcompar_wave_lutdi21  (
    .I0(\pitch_gen/period [6]),
    .I1(\pitch_gen/period [5]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lutdi2 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \pitch_gen/wave_gen/Mcompar_wave_lut<1>1  (
    .I0(\pitch_gen/period [3]),
    .I1(\pitch_gen/period [4]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lut [1])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \pitch_gen/wave_gen/Mcompar_wave_lutdi11  (
    .I0(\pitch_gen/period [4]),
    .I1(\pitch_gen/period [3]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lutdi1_643 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \pitch_gen/wave_gen/Mcompar_wave_lut<0>1  (
    .I0(\pitch_gen/period [1]),
    .I1(\pitch_gen/period [2]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lut [0])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \pitch_gen/wave_gen/Mcompar_wave_lutdi1  (
    .I0(\pitch_gen/period [2]),
    .I1(\pitch_gen/period [1]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lutdi )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_div_cy<1>_rt  (
    .I0(\clk_div/div [1]),
    .O(\clk_div/Mcount_div_cy<1>_rt_960 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_div_cy<2>_rt  (
    .I0(\clk_div/div [2]),
    .O(\clk_div/Mcount_div_cy<2>_rt_961 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_div_cy<3>_rt  (
    .I0(\clk_div/div [3]),
    .O(\clk_div/Mcount_div_cy<3>_rt_962 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_div_cy<4>_rt  (
    .I0(\clk_div/div [4]),
    .O(\clk_div/Mcount_div_cy<4>_rt_963 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_div_cy<5>_rt  (
    .I0(\clk_div/div [5]),
    .O(\clk_div/Mcount_div_cy<5>_rt_964 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_div_cy<6>_rt  (
    .I0(\clk_div/div [6]),
    .O(\clk_div/Mcount_div_cy<6>_rt_965 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_div_cy<7>_rt  (
    .I0(\clk_div/div [7]),
    .O(\clk_div/Mcount_div_cy<7>_rt_966 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_div_cy<8>_rt  (
    .I0(\clk_div/div [8]),
    .O(\clk_div/Mcount_div_cy<8>_rt_967 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_div_cy<9>_rt  (
    .I0(\clk_div/div [9]),
    .O(\clk_div/Mcount_div_cy<9>_rt_968 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_div_cy<10>_rt  (
    .I0(\clk_div/div [10]),
    .O(\clk_div/Mcount_div_cy<10>_rt_969 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_div_cy<11>_rt  (
    .I0(\clk_div/div [11]),
    .O(\clk_div/Mcount_div_cy<11>_rt_970 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_div_cy<12>_rt  (
    .I0(\clk_div/div [12]),
    .O(\clk_div/Mcount_div_cy<12>_rt_971 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_div_cy<13>_rt  (
    .I0(\clk_div/div [13]),
    .O(\clk_div/Mcount_div_cy<13>_rt_972 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_div_cy<14>_rt  (
    .I0(\clk_div/div [14]),
    .O(\clk_div/Mcount_div_cy<14>_rt_973 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga/Mcount_h_count_cy<1>_rt  (
    .I0(\vga/h_count [1]),
    .O(\vga/Mcount_h_count_cy<1>_rt_975 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga/Mcount_h_count_cy<2>_rt  (
    .I0(\vga/h_count [2]),
    .O(\vga/Mcount_h_count_cy<2>_rt_976 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga/Mcount_h_count_cy<3>_rt  (
    .I0(\vga/h_count [3]),
    .O(\vga/Mcount_h_count_cy<3>_rt_977 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga/Mcount_h_count_cy<4>_rt  (
    .I0(\vga/h_count [4]),
    .O(\vga/Mcount_h_count_cy<4>_rt_978 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga/Mcount_h_count_cy<5>_rt  (
    .I0(\vga/h_count [5]),
    .O(\vga/Mcount_h_count_cy<5>_rt_979 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga/Mcount_h_count_cy<6>_rt  (
    .I0(\vga/h_count [6]),
    .O(\vga/Mcount_h_count_cy<6>_rt_980 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga/Mcount_h_count_cy<7>_rt  (
    .I0(\vga/h_count [7]),
    .O(\vga/Mcount_h_count_cy<7>_rt_981 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga/Mcount_h_count_cy<8>_rt  (
    .I0(\vga/h_count [8]),
    .O(\vga/Mcount_h_count_cy<8>_rt_982 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maddsub_n0029_Madd_cy<10>_rt  (
    .I0(Maddsub_n0029_10),
    .O(\Maddsub_n0029_Madd_cy<10>_rt_983 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maddsub_n0029_Madd_cy<11>_rt  (
    .I0(Maddsub_n0029_11),
    .O(\Maddsub_n0029_Madd_cy<11>_rt_984 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maddsub_n0029_Madd_cy<12>_rt  (
    .I0(Maddsub_n0029_12),
    .O(\Maddsub_n0029_Madd_cy<12>_rt_985 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maddsub_n0029_Madd_cy<13>_rt  (
    .I0(Maddsub_n0029_13),
    .O(\Maddsub_n0029_Madd_cy<13>_rt_986 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maddsub_n0029_Madd_cy<14>_rt  (
    .I0(Maddsub_n0029_14),
    .O(\Maddsub_n0029_Madd_cy<14>_rt_987 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maddsub_n0029_Madd_cy<15>_rt  (
    .I0(Maddsub_n0029_15),
    .O(\Maddsub_n0029_Madd_cy<15>_rt_988 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maddsub_n0029_Madd_cy<16>_rt  (
    .I0(Maddsub_n0029_16),
    .O(\Maddsub_n0029_Madd_cy<16>_rt_989 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maddsub_n0029_Madd_cy<17>_rt  (
    .I0(Maddsub_n0029_17),
    .O(\Maddsub_n0029_Madd_cy<17>_rt_990 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_div_xor<15>_rt  (
    .I0(\clk_div/div [15]),
    .O(\clk_div/Mcount_div_xor<15>_rt_991 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga/Mcount_h_count_xor<9>_rt  (
    .I0(\vga/h_count [9]),
    .O(\vga/Mcount_h_count_xor<9>_rt_992 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF80000000 ))
  \switches_anti_jitter<15>/O_glue_set  (
    .I0(raw_switches_15_IBUF_15),
    .I1(\switches_anti_jitter<15>/cnt<3> ),
    .I2(\switches_anti_jitter<15>/cnt<2> ),
    .I3(\switches_anti_jitter<15>/cnt<1> ),
    .I4(\switches_anti_jitter<15>/cnt<0> ),
    .I5(\switches_anti_jitter<15>/O_108 ),
    .O(\switches_anti_jitter<15>/O_glue_set_944 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF80000000 ))
  \switches_anti_jitter<14>/O_glue_set  (
    .I0(raw_switches_14_IBUF_14),
    .I1(\switches_anti_jitter<14>/cnt<3> ),
    .I2(\switches_anti_jitter<14>/cnt<2> ),
    .I3(\switches_anti_jitter<14>/cnt<1> ),
    .I4(\switches_anti_jitter<14>/cnt<0> ),
    .I5(\switches_anti_jitter<14>/O_107 ),
    .O(\switches_anti_jitter<14>/O_glue_set_945 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF80000000 ))
  \switches_anti_jitter<13>/O_glue_set  (
    .I0(raw_switches_13_IBUF_13),
    .I1(\switches_anti_jitter<13>/cnt<3> ),
    .I2(\switches_anti_jitter<13>/cnt<2> ),
    .I3(\switches_anti_jitter<13>/cnt<1> ),
    .I4(\switches_anti_jitter<13>/cnt<0> ),
    .I5(\switches_anti_jitter<13>/O_106 ),
    .O(\switches_anti_jitter<13>/O_glue_set_946 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF80000000 ))
  \switches_anti_jitter<12>/O_glue_set  (
    .I0(raw_switches_12_IBUF_12),
    .I1(\switches_anti_jitter<12>/cnt<3> ),
    .I2(\switches_anti_jitter<12>/cnt<2> ),
    .I3(\switches_anti_jitter<12>/cnt<1> ),
    .I4(\switches_anti_jitter<12>/cnt<0> ),
    .I5(\switches_anti_jitter<12>/O_105 ),
    .O(\switches_anti_jitter<12>/O_glue_set_947 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF80000000 ))
  \switches_anti_jitter<11>/O_glue_set  (
    .I0(raw_switches_11_IBUF_11),
    .I1(\switches_anti_jitter<11>/cnt<3> ),
    .I2(\switches_anti_jitter<11>/cnt<2> ),
    .I3(\switches_anti_jitter<11>/cnt<1> ),
    .I4(\switches_anti_jitter<11>/cnt<0> ),
    .I5(\switches_anti_jitter<11>/O_104 ),
    .O(\switches_anti_jitter<11>/O_glue_set_948 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF80000000 ))
  \switches_anti_jitter<10>/O_glue_set  (
    .I0(raw_switches_10_IBUF_10),
    .I1(\switches_anti_jitter<10>/cnt<3> ),
    .I2(\switches_anti_jitter<10>/cnt<2> ),
    .I3(\switches_anti_jitter<10>/cnt<1> ),
    .I4(\switches_anti_jitter<10>/cnt<0> ),
    .I5(\switches_anti_jitter<10>/O_103 ),
    .O(\switches_anti_jitter<10>/O_glue_set_949 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF80000000 ))
  \switches_anti_jitter<9>/O_glue_set  (
    .I0(raw_switches_9_IBUF_9),
    .I1(\switches_anti_jitter<9>/cnt<3> ),
    .I2(\switches_anti_jitter<9>/cnt<2> ),
    .I3(\switches_anti_jitter<9>/cnt<1> ),
    .I4(\switches_anti_jitter<9>/cnt<0> ),
    .I5(\switches_anti_jitter<9>/O_102 ),
    .O(\switches_anti_jitter<9>/O_glue_set_950 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF80000000 ))
  \switches_anti_jitter<8>/O_glue_set  (
    .I0(raw_switches_8_IBUF_8),
    .I1(\switches_anti_jitter<8>/cnt<3> ),
    .I2(\switches_anti_jitter<8>/cnt<2> ),
    .I3(\switches_anti_jitter<8>/cnt<1> ),
    .I4(\switches_anti_jitter<8>/cnt<0> ),
    .I5(\switches_anti_jitter<8>/O_101 ),
    .O(\switches_anti_jitter<8>/O_glue_set_951 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF80000000 ))
  \switches_anti_jitter<7>/O_glue_set  (
    .I0(raw_switches_7_IBUF_7),
    .I1(\switches_anti_jitter<7>/cnt<3> ),
    .I2(\switches_anti_jitter<7>/cnt<2> ),
    .I3(\switches_anti_jitter<7>/cnt<1> ),
    .I4(\switches_anti_jitter<7>/cnt<0> ),
    .I5(\switches_anti_jitter<7>/O_100 ),
    .O(\switches_anti_jitter<7>/O_glue_set_952 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF80000000 ))
  \switches_anti_jitter<6>/O_glue_set  (
    .I0(raw_switches_6_IBUF_6),
    .I1(\switches_anti_jitter<6>/cnt<3> ),
    .I2(\switches_anti_jitter<6>/cnt<2> ),
    .I3(\switches_anti_jitter<6>/cnt<1> ),
    .I4(\switches_anti_jitter<6>/cnt<0> ),
    .I5(\switches_anti_jitter<6>/O_99 ),
    .O(\switches_anti_jitter<6>/O_glue_set_953 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF80000000 ))
  \switches_anti_jitter<5>/O_glue_set  (
    .I0(raw_switches_5_IBUF_5),
    .I1(\switches_anti_jitter<5>/cnt<3> ),
    .I2(\switches_anti_jitter<5>/cnt<2> ),
    .I3(\switches_anti_jitter<5>/cnt<1> ),
    .I4(\switches_anti_jitter<5>/cnt<0> ),
    .I5(\switches_anti_jitter<5>/O_98 ),
    .O(\switches_anti_jitter<5>/O_glue_set_954 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF80000000 ))
  \switches_anti_jitter<4>/O_glue_set  (
    .I0(raw_switches_4_IBUF_4),
    .I1(\switches_anti_jitter<4>/cnt<3> ),
    .I2(\switches_anti_jitter<4>/cnt<2> ),
    .I3(\switches_anti_jitter<4>/cnt<1> ),
    .I4(\switches_anti_jitter<4>/cnt<0> ),
    .I5(\switches_anti_jitter<4>/O_97 ),
    .O(\switches_anti_jitter<4>/O_glue_set_955 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF80000000 ))
  \switches_anti_jitter<3>/O_glue_set  (
    .I0(raw_switches_3_IBUF_3),
    .I1(\switches_anti_jitter<3>/cnt<3> ),
    .I2(\switches_anti_jitter<3>/cnt<2> ),
    .I3(\switches_anti_jitter<3>/cnt<1> ),
    .I4(\switches_anti_jitter<3>/cnt<0> ),
    .I5(\switches_anti_jitter<3>/O_96 ),
    .O(\switches_anti_jitter<3>/O_glue_set_956 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF80000000 ))
  \switches_anti_jitter<2>/O_glue_set  (
    .I0(raw_switches_2_IBUF_2),
    .I1(\switches_anti_jitter<2>/cnt<3> ),
    .I2(\switches_anti_jitter<2>/cnt<2> ),
    .I3(\switches_anti_jitter<2>/cnt<1> ),
    .I4(\switches_anti_jitter<2>/cnt<0> ),
    .I5(\switches_anti_jitter<2>/O_95 ),
    .O(\switches_anti_jitter<2>/O_glue_set_957 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF80000000 ))
  \switches_anti_jitter<1>/O_glue_set  (
    .I0(raw_switches_1_IBUF_1),
    .I1(\switches_anti_jitter<1>/cnt<3> ),
    .I2(\switches_anti_jitter<1>/cnt<2> ),
    .I3(\switches_anti_jitter<1>/cnt<1> ),
    .I4(\switches_anti_jitter<1>/cnt<0> ),
    .I5(\switches_anti_jitter<1>/O_94 ),
    .O(\switches_anti_jitter<1>/O_glue_set_958 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF80000000 ))
  \switches_anti_jitter<0>/O_glue_set  (
    .I0(raw_switches_0_IBUF_0),
    .I1(\switches_anti_jitter<0>/cnt<3> ),
    .I2(\switches_anti_jitter<0>/cnt<2> ),
    .I3(\switches_anti_jitter<0>/cnt<1> ),
    .I4(\switches_anti_jitter<0>/cnt<0> ),
    .I5(\switches_anti_jitter<0>/O_93 ),
    .O(\switches_anti_jitter<0>/O_glue_set_959 )
  );
  LUT6 #(
    .INIT ( 64'h474CAEBA474C0410 ))
  \cpu/U1_2/U1/Mmux_res242  (
    .I0(\cpu/ALU_op [1]),
    .I1(\cpu/U1_2/ALU_B [17]),
    .I2(\cpu/ALU_op [2]),
    .I3(\cpu/U1_2/ALU_A [30]),
    .I4(\cpu/ALU_op [0]),
    .I5(\cpu/U1_2/U1/adc_res [30]),
    .O(\cpu/U1_2/PC_in [30])
  );
  LUT6 #(
    .INIT ( 64'h474CAEBA474C0410 ))
  \cpu/U1_2/U1/Mmux_res222  (
    .I0(\cpu/ALU_op [1]),
    .I1(\cpu/U1_2/ALU_B [17]),
    .I2(\cpu/ALU_op [2]),
    .I3(\cpu/U1_2/ALU_A [29]),
    .I4(\cpu/ALU_op [0]),
    .I5(\cpu/U1_2/U1/adc_res [29]),
    .O(\cpu/U1_2/PC_in [29])
  );
  LUT6 #(
    .INIT ( 64'h474CAEBA474C0410 ))
  \cpu/U1_2/U1/Mmux_res212  (
    .I0(\cpu/ALU_op [1]),
    .I1(\cpu/U1_2/ALU_B [17]),
    .I2(\cpu/ALU_op [2]),
    .I3(\cpu/U1_2/ALU_A [28]),
    .I4(\cpu/ALU_op [0]),
    .I5(\cpu/U1_2/U1/adc_res [28]),
    .O(\cpu/U1_2/PC_in [28])
  );
  LUT6 #(
    .INIT ( 64'h474CAEBA474C0410 ))
  \cpu/U1_2/U1/Mmux_res202  (
    .I0(\cpu/ALU_op [1]),
    .I1(\cpu/U1_2/ALU_B [17]),
    .I2(\cpu/ALU_op [2]),
    .I3(\cpu/U1_2/ALU_A [27]),
    .I4(\cpu/ALU_op [0]),
    .I5(\cpu/U1_2/U1/adc_res [27]),
    .O(\cpu/U1_2/PC_in [27])
  );
  LUT6 #(
    .INIT ( 64'h474CAEBA474C0410 ))
  \cpu/U1_2/U1/Mmux_res192  (
    .I0(\cpu/ALU_op [1]),
    .I1(\cpu/U1_2/ALU_B [17]),
    .I2(\cpu/ALU_op [2]),
    .I3(\cpu/U1_2/ALU_A [26]),
    .I4(\cpu/ALU_op [0]),
    .I5(\cpu/U1_2/U1/adc_res [26]),
    .O(\cpu/U1_2/PC_in [26])
  );
  LUT6 #(
    .INIT ( 64'h474CAEBA474C0410 ))
  \cpu/U1_2/U1/Mmux_res182  (
    .I0(\cpu/ALU_op [1]),
    .I1(\cpu/U1_2/ALU_B [17]),
    .I2(\cpu/ALU_op [2]),
    .I3(\cpu/U1_2/ALU_A [25]),
    .I4(\cpu/ALU_op [0]),
    .I5(\cpu/U1_2/U1/adc_res [25]),
    .O(\cpu/U1_2/PC_in [25])
  );
  LUT6 #(
    .INIT ( 64'h474CAEBA474C0410 ))
  \cpu/U1_2/U1/Mmux_res172  (
    .I0(\cpu/ALU_op [1]),
    .I1(\cpu/U1_2/ALU_B [17]),
    .I2(\cpu/ALU_op [2]),
    .I3(\cpu/U1_2/ALU_A [24]),
    .I4(\cpu/ALU_op [0]),
    .I5(\cpu/U1_2/U1/adc_res [24]),
    .O(\cpu/U1_2/PC_in [24])
  );
  LUT6 #(
    .INIT ( 64'h474CAEBA474C0410 ))
  \cpu/U1_2/U1/Mmux_res162  (
    .I0(\cpu/ALU_op [1]),
    .I1(\cpu/U1_2/ALU_B [17]),
    .I2(\cpu/ALU_op [2]),
    .I3(\cpu/U1_2/ALU_A [23]),
    .I4(\cpu/ALU_op [0]),
    .I5(\cpu/U1_2/U1/adc_res [23]),
    .O(\cpu/U1_2/PC_in [23])
  );
  LUT6 #(
    .INIT ( 64'h474CAEBA474C0410 ))
  \cpu/U1_2/U1/Mmux_res152  (
    .I0(\cpu/ALU_op [1]),
    .I1(\cpu/U1_2/ALU_B [17]),
    .I2(\cpu/ALU_op [2]),
    .I3(\cpu/U1_2/ALU_A [22]),
    .I4(\cpu/ALU_op [0]),
    .I5(\cpu/U1_2/U1/adc_res [22]),
    .O(\cpu/U1_2/PC_in [22])
  );
  LUT6 #(
    .INIT ( 64'h474CAEBA474C0410 ))
  \cpu/U1_2/U1/Mmux_res142  (
    .I0(\cpu/ALU_op [1]),
    .I1(\cpu/U1_2/ALU_B [17]),
    .I2(\cpu/ALU_op [2]),
    .I3(\cpu/U1_2/ALU_A [21]),
    .I4(\cpu/ALU_op [0]),
    .I5(\cpu/U1_2/U1/adc_res [21]),
    .O(\cpu/U1_2/PC_in [21])
  );
  LUT6 #(
    .INIT ( 64'h474CAEBA474C0410 ))
  \cpu/U1_2/U1/Mmux_res132  (
    .I0(\cpu/ALU_op [1]),
    .I1(\cpu/U1_2/ALU_B [17]),
    .I2(\cpu/ALU_op [2]),
    .I3(\cpu/U1_2/ALU_A [20]),
    .I4(\cpu/ALU_op [0]),
    .I5(\cpu/U1_2/U1/adc_res [20]),
    .O(\cpu/U1_2/PC_in [20])
  );
  LUT6 #(
    .INIT ( 64'h474CAEBA474C0410 ))
  \cpu/U1_2/U1/Mmux_res112  (
    .I0(\cpu/ALU_op [1]),
    .I1(\cpu/U1_2/ALU_B [17]),
    .I2(\cpu/ALU_op [2]),
    .I3(\cpu/U1_2/ALU_A [19]),
    .I4(\cpu/ALU_op [0]),
    .I5(\cpu/U1_2/U1/adc_res [19]),
    .O(\cpu/U1_2/PC_in [19])
  );
  LUT6 #(
    .INIT ( 64'h474CAEBA474C0410 ))
  \cpu/U1_2/U1/Mmux_res102  (
    .I0(\cpu/ALU_op [1]),
    .I1(\cpu/U1_2/ALU_B [17]),
    .I2(\cpu/ALU_op [2]),
    .I3(\cpu/U1_2/ALU_A [18]),
    .I4(\cpu/ALU_op [0]),
    .I5(\cpu/U1_2/U1/adc_res [18]),
    .O(\cpu/U1_2/PC_in [18])
  );
  LUT6 #(
    .INIT ( 64'h474CAEBA474C0410 ))
  \cpu/U1_2/U1/Mmux_res92  (
    .I0(\cpu/ALU_op [1]),
    .I1(\cpu/U1_2/ALU_B [17]),
    .I2(\cpu/ALU_op [2]),
    .I3(\cpu/U1_2/ALU_A [17]),
    .I4(\cpu/ALU_op [0]),
    .I5(\cpu/U1_2/U1/adc_res [17]),
    .O(\cpu/U1_2/PC_in [17])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \vga/read2_SW0  (
    .I0(\vga/h_count [5]),
    .I1(\vga/h_count [6]),
    .O(N31)
  );
  LUT6 #(
    .INIT ( 64'h55555755EEEEEAEE ))
  \vga/read2  (
    .I0(\vga/h_count [9]),
    .I1(\vga/h_count [7]),
    .I2(N31),
    .I3(\vga/h_count[9]_PWR_4_o_LessThan_18_o2 ),
    .I4(\vga/h_count [4]),
    .I5(\vga/h_count [8]),
    .O(\vga/read2_883 )
  );
  LUT4 #(
    .INIT ( 16'h7E81 ))
  \switches_anti_jitter<0>/Mcount_cnt_xor<2>11  (
    .I0(raw_switches_0_IBUF_0),
    .I1(\switches_anti_jitter<0>/cnt<0> ),
    .I2(\switches_anti_jitter<0>/cnt<1> ),
    .I3(\switches_anti_jitter<0>/cnt<2> ),
    .O(\Result<2>17 )
  );
  LUT4 #(
    .INIT ( 16'h7E81 ))
  \switches_anti_jitter<10>/Mcount_cnt_xor<2>11  (
    .I0(raw_switches_10_IBUF_10),
    .I1(\switches_anti_jitter<10>/cnt<0> ),
    .I2(\switches_anti_jitter<10>/cnt<1> ),
    .I3(\switches_anti_jitter<10>/cnt<2> ),
    .O(\Result<2>7 )
  );
  LUT4 #(
    .INIT ( 16'h7E81 ))
  \switches_anti_jitter<11>/Mcount_cnt_xor<2>11  (
    .I0(raw_switches_11_IBUF_11),
    .I1(\switches_anti_jitter<11>/cnt<0> ),
    .I2(\switches_anti_jitter<11>/cnt<1> ),
    .I3(\switches_anti_jitter<11>/cnt<2> ),
    .O(\Result<2>6 )
  );
  LUT4 #(
    .INIT ( 16'h7E81 ))
  \switches_anti_jitter<12>/Mcount_cnt_xor<2>11  (
    .I0(raw_switches_12_IBUF_12),
    .I1(\switches_anti_jitter<12>/cnt<0> ),
    .I2(\switches_anti_jitter<12>/cnt<1> ),
    .I3(\switches_anti_jitter<12>/cnt<2> ),
    .O(\Result<2>5 )
  );
  LUT4 #(
    .INIT ( 16'h7E81 ))
  \switches_anti_jitter<13>/Mcount_cnt_xor<2>11  (
    .I0(raw_switches_13_IBUF_13),
    .I1(\switches_anti_jitter<13>/cnt<0> ),
    .I2(\switches_anti_jitter<13>/cnt<1> ),
    .I3(\switches_anti_jitter<13>/cnt<2> ),
    .O(\Result<2>4 )
  );
  LUT4 #(
    .INIT ( 16'h7E81 ))
  \switches_anti_jitter<14>/Mcount_cnt_xor<2>11  (
    .I0(raw_switches_14_IBUF_14),
    .I1(\switches_anti_jitter<14>/cnt<0> ),
    .I2(\switches_anti_jitter<14>/cnt<1> ),
    .I3(\switches_anti_jitter<14>/cnt<2> ),
    .O(\Result<2>2 )
  );
  LUT4 #(
    .INIT ( 16'h7E81 ))
  \switches_anti_jitter<15>/Mcount_cnt_xor<2>11  (
    .I0(raw_switches_15_IBUF_15),
    .I1(\switches_anti_jitter<15>/cnt<0> ),
    .I2(\switches_anti_jitter<15>/cnt<1> ),
    .I3(\switches_anti_jitter<15>/cnt<2> ),
    .O(\Result<2>3 )
  );
  LUT4 #(
    .INIT ( 16'h7E81 ))
  \switches_anti_jitter<1>/Mcount_cnt_xor<2>11  (
    .I0(raw_switches_1_IBUF_1),
    .I1(\switches_anti_jitter<1>/cnt<0> ),
    .I2(\switches_anti_jitter<1>/cnt<1> ),
    .I3(\switches_anti_jitter<1>/cnt<2> ),
    .O(\Result<2>16 )
  );
  LUT4 #(
    .INIT ( 16'h7E81 ))
  \switches_anti_jitter<2>/Mcount_cnt_xor<2>11  (
    .I0(raw_switches_2_IBUF_2),
    .I1(\switches_anti_jitter<2>/cnt<0> ),
    .I2(\switches_anti_jitter<2>/cnt<1> ),
    .I3(\switches_anti_jitter<2>/cnt<2> ),
    .O(\Result<2>15 )
  );
  LUT4 #(
    .INIT ( 16'h7E81 ))
  \switches_anti_jitter<3>/Mcount_cnt_xor<2>11  (
    .I0(raw_switches_3_IBUF_3),
    .I1(\switches_anti_jitter<3>/cnt<0> ),
    .I2(\switches_anti_jitter<3>/cnt<1> ),
    .I3(\switches_anti_jitter<3>/cnt<2> ),
    .O(\Result<2>14 )
  );
  LUT4 #(
    .INIT ( 16'h7E81 ))
  \switches_anti_jitter<4>/Mcount_cnt_xor<2>11  (
    .I0(raw_switches_4_IBUF_4),
    .I1(\switches_anti_jitter<4>/cnt<0> ),
    .I2(\switches_anti_jitter<4>/cnt<1> ),
    .I3(\switches_anti_jitter<4>/cnt<2> ),
    .O(\Result<2>13 )
  );
  LUT4 #(
    .INIT ( 16'h7E81 ))
  \switches_anti_jitter<5>/Mcount_cnt_xor<2>11  (
    .I0(raw_switches_5_IBUF_5),
    .I1(\switches_anti_jitter<5>/cnt<0> ),
    .I2(\switches_anti_jitter<5>/cnt<1> ),
    .I3(\switches_anti_jitter<5>/cnt<2> ),
    .O(\Result<2>12 )
  );
  LUT4 #(
    .INIT ( 16'h7E81 ))
  \switches_anti_jitter<6>/Mcount_cnt_xor<2>11  (
    .I0(raw_switches_6_IBUF_6),
    .I1(\switches_anti_jitter<6>/cnt<0> ),
    .I2(\switches_anti_jitter<6>/cnt<1> ),
    .I3(\switches_anti_jitter<6>/cnt<2> ),
    .O(\Result<2>11 )
  );
  LUT4 #(
    .INIT ( 16'h7E81 ))
  \switches_anti_jitter<7>/Mcount_cnt_xor<2>11  (
    .I0(raw_switches_7_IBUF_7),
    .I1(\switches_anti_jitter<7>/cnt<0> ),
    .I2(\switches_anti_jitter<7>/cnt<1> ),
    .I3(\switches_anti_jitter<7>/cnt<2> ),
    .O(\Result<2>10 )
  );
  LUT4 #(
    .INIT ( 16'h7E81 ))
  \switches_anti_jitter<8>/Mcount_cnt_xor<2>11  (
    .I0(raw_switches_8_IBUF_8),
    .I1(\switches_anti_jitter<8>/cnt<0> ),
    .I2(\switches_anti_jitter<8>/cnt<1> ),
    .I3(\switches_anti_jitter<8>/cnt<2> ),
    .O(\Result<2>9 )
  );
  LUT4 #(
    .INIT ( 16'h7E81 ))
  \switches_anti_jitter<9>/Mcount_cnt_xor<2>11  (
    .I0(raw_switches_9_IBUF_9),
    .I1(\switches_anti_jitter<9>/cnt<0> ),
    .I2(\switches_anti_jitter<9>/cnt<1> ),
    .I3(\switches_anti_jitter<9>/cnt<2> ),
    .O(\Result<2>8 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \switches_anti_jitter<0>/Mcount_cnt_xor<1>11  (
    .I0(raw_switches_0_IBUF_0),
    .I1(\switches_anti_jitter<0>/cnt<0> ),
    .I2(\switches_anti_jitter<0>/cnt<1> ),
    .O(\Result<1>17 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \switches_anti_jitter<10>/Mcount_cnt_xor<1>11  (
    .I0(raw_switches_10_IBUF_10),
    .I1(\switches_anti_jitter<10>/cnt<0> ),
    .I2(\switches_anti_jitter<10>/cnt<1> ),
    .O(\Result<1>7 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \switches_anti_jitter<11>/Mcount_cnt_xor<1>11  (
    .I0(raw_switches_11_IBUF_11),
    .I1(\switches_anti_jitter<11>/cnt<0> ),
    .I2(\switches_anti_jitter<11>/cnt<1> ),
    .O(\Result<1>6 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \switches_anti_jitter<12>/Mcount_cnt_xor<1>11  (
    .I0(raw_switches_12_IBUF_12),
    .I1(\switches_anti_jitter<12>/cnt<0> ),
    .I2(\switches_anti_jitter<12>/cnt<1> ),
    .O(\Result<1>5 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \switches_anti_jitter<13>/Mcount_cnt_xor<1>11  (
    .I0(raw_switches_13_IBUF_13),
    .I1(\switches_anti_jitter<13>/cnt<0> ),
    .I2(\switches_anti_jitter<13>/cnt<1> ),
    .O(\Result<1>4 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \switches_anti_jitter<14>/Mcount_cnt_xor<1>11  (
    .I0(raw_switches_14_IBUF_14),
    .I1(\switches_anti_jitter<14>/cnt<0> ),
    .I2(\switches_anti_jitter<14>/cnt<1> ),
    .O(\Result<1>2 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \switches_anti_jitter<15>/Mcount_cnt_xor<1>11  (
    .I0(raw_switches_15_IBUF_15),
    .I1(\switches_anti_jitter<15>/cnt<0> ),
    .I2(\switches_anti_jitter<15>/cnt<1> ),
    .O(\Result<1>3 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \switches_anti_jitter<1>/Mcount_cnt_xor<1>11  (
    .I0(raw_switches_1_IBUF_1),
    .I1(\switches_anti_jitter<1>/cnt<0> ),
    .I2(\switches_anti_jitter<1>/cnt<1> ),
    .O(\Result<1>16 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \switches_anti_jitter<2>/Mcount_cnt_xor<1>11  (
    .I0(raw_switches_2_IBUF_2),
    .I1(\switches_anti_jitter<2>/cnt<0> ),
    .I2(\switches_anti_jitter<2>/cnt<1> ),
    .O(\Result<1>15 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \switches_anti_jitter<3>/Mcount_cnt_xor<1>11  (
    .I0(raw_switches_3_IBUF_3),
    .I1(\switches_anti_jitter<3>/cnt<0> ),
    .I2(\switches_anti_jitter<3>/cnt<1> ),
    .O(\Result<1>14 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \switches_anti_jitter<4>/Mcount_cnt_xor<1>11  (
    .I0(raw_switches_4_IBUF_4),
    .I1(\switches_anti_jitter<4>/cnt<0> ),
    .I2(\switches_anti_jitter<4>/cnt<1> ),
    .O(\Result<1>13 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \switches_anti_jitter<5>/Mcount_cnt_xor<1>11  (
    .I0(raw_switches_5_IBUF_5),
    .I1(\switches_anti_jitter<5>/cnt<0> ),
    .I2(\switches_anti_jitter<5>/cnt<1> ),
    .O(\Result<1>12 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \switches_anti_jitter<6>/Mcount_cnt_xor<1>11  (
    .I0(raw_switches_6_IBUF_6),
    .I1(\switches_anti_jitter<6>/cnt<0> ),
    .I2(\switches_anti_jitter<6>/cnt<1> ),
    .O(\Result<1>11 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \switches_anti_jitter<7>/Mcount_cnt_xor<1>11  (
    .I0(raw_switches_7_IBUF_7),
    .I1(\switches_anti_jitter<7>/cnt<0> ),
    .I2(\switches_anti_jitter<7>/cnt<1> ),
    .O(\Result<1>10 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \switches_anti_jitter<8>/Mcount_cnt_xor<1>11  (
    .I0(raw_switches_8_IBUF_8),
    .I1(\switches_anti_jitter<8>/cnt<0> ),
    .I2(\switches_anti_jitter<8>/cnt<1> ),
    .O(\Result<1>9 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \switches_anti_jitter<9>/Mcount_cnt_xor<1>11  (
    .I0(raw_switches_9_IBUF_9),
    .I1(\switches_anti_jitter<9>/cnt<0> ),
    .I2(\switches_anti_jitter<9>/cnt<1> ),
    .O(\Result<1>8 )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A231  (
    .I0(\cpu/U1_2/PC/Q [2]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [2])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A261  (
    .I0(\cpu/U1_2/PC/Q [3]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [3])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A271  (
    .I0(\cpu/U1_2/PC/Q [4]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [4])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A281  (
    .I0(\cpu/U1_2/PC/Q [5]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [5])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A291  (
    .I0(\cpu/U1_2/PC/Q [6]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [6])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A301  (
    .I0(\cpu/U1_2/PC/Q [7]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [7])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A311  (
    .I0(\cpu/U1_2/PC/Q [8]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [8])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A321  (
    .I0(\cpu/U1_2/PC/Q [9]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [9])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A210  (
    .I0(\cpu/U1_2/PC/Q [10]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [10])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A33  (
    .I0(\cpu/U1_2/PC/Q [11]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [11])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A41  (
    .I0(\cpu/U1_2/PC/Q [12]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [12])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A51  (
    .I0(\cpu/U1_2/PC/Q [13]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [13])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A61  (
    .I0(\cpu/U1_2/PC/Q [14]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [14])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A71  (
    .I0(\cpu/U1_2/PC/Q [15]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [15])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A81  (
    .I0(\cpu/U1_2/PC/Q [16]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [16])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA8AAAAAAA ))
  \vga/Mcount_v_count_lut<2>  (
    .I0(\vga/v_count [2]),
    .I1(\vga/v_count [1]),
    .I2(\vga/v_count [3]),
    .I3(\vga/v_count [9]),
    .I4(\vga/v_count[9]_PWR_4_o_equal_8_o<9>2 ),
    .I5(\vga/v_count [0]),
    .O(\vga/Mcount_v_count_lut [2])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA8AAAAAAA ))
  \vga/Mcount_v_count_lut<3>  (
    .I0(\vga/v_count [3]),
    .I1(\vga/v_count [1]),
    .I2(\vga/v_count [2]),
    .I3(\vga/v_count [9]),
    .I4(\vga/v_count[9]_PWR_4_o_equal_8_o<9>2 ),
    .I5(\vga/v_count [0]),
    .O(\vga/Mcount_v_count_lut [3])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFBFFFFFFF ))
  \vga/v_count[9]_PWR_4_o_equal_8_o_inv1  (
    .I0(\vga/v_count [0]),
    .I1(\vga/v_count [2]),
    .I2(\vga/v_count [3]),
    .I3(\vga/v_count [9]),
    .I4(\vga/v_count[9]_PWR_4_o_equal_8_o<9>2 ),
    .I5(\vga/v_count [1]),
    .O(\vga/v_count[9]_PWR_4_o_equal_8_o_inv )
  );
  LUT6 #(
    .INIT ( 64'h5555D55555555555 ))
  \vga/Mcount_h_count_val1  (
    .I0(rst_n_IBUF_17),
    .I1(\vga/h_count[9]_PWR_4_o_equal_7_o<9>1_560 ),
    .I2(\vga/h_count [9]),
    .I3(\vga/h_count [4]),
    .I4(\vga/h_count[9]_PWR_4_o_LessThan_18_o2 ),
    .I5(\vga/h_count [8]),
    .O(\vga/Mcount_h_count_val )
  );
  LUT6 #(
    .INIT ( 64'h0000000002000000 ))
  \ps2/state[3]_ps2_clk_neg_AND_105_o1  (
    .I0(\ps2/state [3]),
    .I1(\ps2/ps2_clk_r0_597 ),
    .I2(\ps2/state [0]),
    .I3(\ps2/ps2_clk_r1_599 ),
    .I4(\ps2/state [1]),
    .I5(\ps2/state [2]),
    .O(\ps2/state[3]_ps2_clk_neg_AND_105_o )
  );
  LUT5 #(
    .INIT ( 32'h08080800 ))
  \ps2/_n00561  (
    .I0(\ps2/state [3]),
    .I1(\ps2/ps2_clk_r1_599 ),
    .I2(\ps2/ps2_clk_r0_597 ),
    .I3(\ps2/state [1]),
    .I4(\ps2/state [2]),
    .O(\ps2/_n0056 )
  );
  LUT6 #(
    .INIT ( 64'h0202020202020220 ))
  \ps2/_n0097_inv1  (
    .I0(\ps2/ps2_clk_r1_599 ),
    .I1(\ps2/ps2_clk_r0_597 ),
    .I2(\ps2/state [3]),
    .I3(\ps2/state [0]),
    .I4(\ps2/state [1]),
    .I5(\ps2/state [2]),
    .O(\ps2/_n0097_inv )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF88888808 ))
  \cpu/U1_2/U1/Mmux_res82  (
    .I0(\cpu/U1_2/U1/adc_res [16]),
    .I1(\cpu/ALU_op [1]),
    .I2(\cpu/U11/state_FSM_FFd11_862 ),
    .I3(\cpu/U1_2/IR/Q[4] ),
    .I4(N29),
    .I5(\cpu/U1_2/U1/Mmux_res8 ),
    .O(\cpu/U1_2/PC_in [16])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF88888808 ))
  \cpu/U1_2/U1/Mmux_res72  (
    .I0(\cpu/U1_2/U1/adc_res [15]),
    .I1(\cpu/ALU_op [1]),
    .I2(\cpu/U11/state_FSM_FFd11_862 ),
    .I3(\cpu/U1_2/IR/Q[4] ),
    .I4(N29),
    .I5(\cpu/U1_2/U1/Mmux_res7 ),
    .O(\cpu/U1_2/PC_in [15])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF88888808 ))
  \cpu/U1_2/U1/Mmux_res62  (
    .I0(\cpu/U1_2/U1/adc_res [14]),
    .I1(\cpu/ALU_op [1]),
    .I2(\cpu/U11/state_FSM_FFd11_862 ),
    .I3(\cpu/U1_2/IR/Q[4] ),
    .I4(N29),
    .I5(\cpu/U1_2/U1/Mmux_res6 ),
    .O(\cpu/U1_2/PC_in [14])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF88888808 ))
  \cpu/U1_2/U1/Mmux_res52  (
    .I0(\cpu/U1_2/U1/adc_res [13]),
    .I1(\cpu/ALU_op [1]),
    .I2(\cpu/U11/state_FSM_FFd11_862 ),
    .I3(\cpu/U1_2/IR/Q[4] ),
    .I4(N29),
    .I5(\cpu/U1_2/U1/Mmux_res5 ),
    .O(\cpu/U1_2/PC_in [13])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF88888808 ))
  \cpu/U1_2/U1/Mmux_res42  (
    .I0(\cpu/U1_2/U1/adc_res [12]),
    .I1(\cpu/ALU_op [1]),
    .I2(\cpu/U11/state_FSM_FFd11_862 ),
    .I3(\cpu/U1_2/IR/Q[4] ),
    .I4(N29),
    .I5(\cpu/U1_2/U1/Mmux_res4 ),
    .O(\cpu/U1_2/PC_in [12])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF88888808 ))
  \cpu/U1_2/U1/Mmux_res32  (
    .I0(\cpu/U1_2/U1/adc_res [11]),
    .I1(\cpu/ALU_op [1]),
    .I2(\cpu/U11/state_FSM_FFd11_862 ),
    .I3(\cpu/U1_2/IR/Q[4] ),
    .I4(N29),
    .I5(\cpu/U1_2/U1/Mmux_res3 ),
    .O(\cpu/U1_2/PC_in [11])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF88888808 ))
  \cpu/U1_2/U1/Mmux_res22  (
    .I0(\cpu/U1_2/U1/adc_res [10]),
    .I1(\cpu/ALU_op [1]),
    .I2(\cpu/U11/state_FSM_FFd11_862 ),
    .I3(\cpu/U1_2/IR/Q[4] ),
    .I4(N29),
    .I5(\cpu/U1_2/U1/Mmux_res2 ),
    .O(\cpu/U1_2/PC_in [10])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF88888808 ))
  \cpu/U1_2/U1/Mmux_res322  (
    .I0(\cpu/U1_2/U1/adc_res [9]),
    .I1(\cpu/ALU_op [1]),
    .I2(\cpu/U11/state_FSM_FFd11_862 ),
    .I3(\cpu/U1_2/IR/Q[4] ),
    .I4(N29),
    .I5(\cpu/U1_2/U1/Mmux_res32_892 ),
    .O(\cpu/U1_2/PC_in [9])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF88888808 ))
  \cpu/U1_2/U1/Mmux_res312  (
    .I0(\cpu/U1_2/U1/adc_res [8]),
    .I1(\cpu/ALU_op [1]),
    .I2(\cpu/U11/state_FSM_FFd11_862 ),
    .I3(\cpu/U1_2/IR/Q[4] ),
    .I4(N29),
    .I5(\cpu/U1_2/U1/Mmux_res31_893 ),
    .O(\cpu/U1_2/PC_in [8])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF88888808 ))
  \cpu/U1_2/U1/Mmux_res302  (
    .I0(\cpu/U1_2/U1/adc_res [7]),
    .I1(\cpu/ALU_op [1]),
    .I2(\cpu/U11/state_FSM_FFd11_862 ),
    .I3(\cpu/U1_2/IR/Q[4] ),
    .I4(N29),
    .I5(\cpu/U1_2/U1/Mmux_res30 ),
    .O(\cpu/U1_2/PC_in [7])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF88888808 ))
  \cpu/U1_2/U1/Mmux_res292  (
    .I0(\cpu/U1_2/U1/adc_res [6]),
    .I1(\cpu/ALU_op [1]),
    .I2(\cpu/U11/state_FSM_FFd11_862 ),
    .I3(\cpu/U1_2/IR/Q[4] ),
    .I4(N29),
    .I5(\cpu/U1_2/U1/Mmux_res29 ),
    .O(\cpu/U1_2/PC_in [6])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF88888808 ))
  \cpu/U1_2/U1/Mmux_res282  (
    .I0(\cpu/U1_2/U1/adc_res [5]),
    .I1(\cpu/ALU_op [1]),
    .I2(\cpu/U11/state_FSM_FFd11_862 ),
    .I3(\cpu/U1_2/IR/Q[4] ),
    .I4(N29),
    .I5(\cpu/U1_2/U1/Mmux_res28 ),
    .O(\cpu/U1_2/PC_in [5])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF88888808 ))
  \cpu/U1_2/U1/Mmux_res272  (
    .I0(\cpu/U1_2/U1/adc_res [4]),
    .I1(\cpu/ALU_op [1]),
    .I2(\cpu/U11/state_FSM_FFd11_862 ),
    .I3(\cpu/U1_2/IR/Q[4] ),
    .I4(N29),
    .I5(\cpu/U1_2/U1/Mmux_res27 ),
    .O(\cpu/U1_2/PC_in [4])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF88888808 ))
  \cpu/U1_2/U1/Mmux_res262  (
    .I0(\cpu/U1_2/U1/adc_res [3]),
    .I1(\cpu/ALU_op [1]),
    .I2(\cpu/U11/state_FSM_FFd11_862 ),
    .I3(\cpu/U1_2/IR/Q[4] ),
    .I4(N29),
    .I5(\cpu/U1_2/U1/Mmux_res26 ),
    .O(\cpu/U1_2/PC_in [3])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF88888808 ))
  \cpu/U1_2/U1/Mmux_res232  (
    .I0(\cpu/U1_2/U1/adc_res [2]),
    .I1(\cpu/ALU_op [1]),
    .I2(\cpu/U11/state_FSM_FFd11_862 ),
    .I3(\cpu/U1_2/IR/Q[4] ),
    .I4(N29),
    .I5(\cpu/U1_2/U1/Mmux_res23 ),
    .O(\cpu/U1_2/PC_in [2])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \vga/v_sync11  (
    .I0(\vga/v_count [1]),
    .I1(\vga/v_count [5]),
    .I2(\vga/read21 ),
    .I3(\vga/v_count [4]),
    .I4(\vga/v_count [2]),
    .I5(\vga/v_count [3]),
    .O(\vga/v_sync )
  );
  LUT4 #(
    .INIT ( 16'h8091 ))
  \bus/_n04101  (
    .I0(\cpu/U1_2/PC/Q [31]),
    .I1(\cpu/U1_2/PC/Q [30]),
    .I2(\cpu/U1_2/PC/Q [28]),
    .I3(\cpu/U1_2/PC/Q [29]),
    .O(\bus/_n0410 )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \bus/addr[31]_ram_in[9]_Select_147_o<9>1  (
    .I0(\switches_anti_jitter<9>/O_102 ),
    .I1(\cpu/U1_2/PC/Q [29]),
    .I2(\cpu/U1_2/PC/Q [30]),
    .I3(\cpu/U1_2/PC/Q [31]),
    .I4(\cpu/U1_2/PC/Q [28]),
    .O(\bus/addr[31]_ram_in[9]_Select_147_o )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \bus/addr[31]_ram_in[8]_Select_149_o<8>1  (
    .I0(\switches_anti_jitter<8>/O_101 ),
    .I1(\cpu/U1_2/PC/Q [29]),
    .I2(\cpu/U1_2/PC/Q [30]),
    .I3(\cpu/U1_2/PC/Q [31]),
    .I4(\cpu/U1_2/PC/Q [28]),
    .O(\bus/addr[31]_ram_in[8]_Select_149_o )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \bus/addr[31]_ram_in[15]_Select_135_o<15>1  (
    .I0(\switches_anti_jitter<15>/O_108 ),
    .I1(\cpu/U1_2/PC/Q [29]),
    .I2(\cpu/U1_2/PC/Q [30]),
    .I3(\cpu/U1_2/PC/Q [31]),
    .I4(\cpu/U1_2/PC/Q [28]),
    .O(\bus/addr[31]_ram_in[15]_Select_135_o )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \bus/addr[31]_ram_in[14]_Select_137_o<14>1  (
    .I0(\switches_anti_jitter<14>/O_107 ),
    .I1(\cpu/U1_2/PC/Q [29]),
    .I2(\cpu/U1_2/PC/Q [30]),
    .I3(\cpu/U1_2/PC/Q [31]),
    .I4(\cpu/U1_2/PC/Q [28]),
    .O(\bus/addr[31]_ram_in[14]_Select_137_o )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \bus/addr[31]_ram_in[13]_Select_139_o<13>1  (
    .I0(\switches_anti_jitter<13>/O_106 ),
    .I1(\cpu/U1_2/PC/Q [29]),
    .I2(\cpu/U1_2/PC/Q [30]),
    .I3(\cpu/U1_2/PC/Q [31]),
    .I4(\cpu/U1_2/PC/Q [28]),
    .O(\bus/addr[31]_ram_in[13]_Select_139_o )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \bus/addr[31]_ram_in[12]_Select_141_o<12>1  (
    .I0(\switches_anti_jitter<12>/O_105 ),
    .I1(\cpu/U1_2/PC/Q [29]),
    .I2(\cpu/U1_2/PC/Q [30]),
    .I3(\cpu/U1_2/PC/Q [31]),
    .I4(\cpu/U1_2/PC/Q [28]),
    .O(\bus/addr[31]_ram_in[12]_Select_141_o )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \bus/addr[31]_ram_in[11]_Select_143_o<11>1  (
    .I0(\switches_anti_jitter<11>/O_104 ),
    .I1(\cpu/U1_2/PC/Q [29]),
    .I2(\cpu/U1_2/PC/Q [30]),
    .I3(\cpu/U1_2/PC/Q [31]),
    .I4(\cpu/U1_2/PC/Q [28]),
    .O(\bus/addr[31]_ram_in[11]_Select_143_o )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \bus/addr[31]_ram_in[10]_Select_145_o<10>1  (
    .I0(\switches_anti_jitter<10>/O_103 ),
    .I1(\cpu/U1_2/PC/Q [29]),
    .I2(\cpu/U1_2/PC/Q [30]),
    .I3(\cpu/U1_2/PC/Q [31]),
    .I4(\cpu/U1_2/PC/Q [28]),
    .O(\bus/addr[31]_ram_in[10]_Select_145_o )
  );
  LUT6 #(
    .INIT ( 64'h8080008080000000 ))
  \bus/addr[31]_ram_in[7]_Select_151_o<7>1  (
    .I0(\cpu/U1_2/PC/Q [30]),
    .I1(\cpu/U1_2/PC/Q [31]),
    .I2(\cpu/U1_2/PC/Q [28]),
    .I3(\cpu/U1_2/PC/Q [29]),
    .I4(\switches_anti_jitter<7>/O_100 ),
    .I5(\ps2/keycode [7]),
    .O(\bus/addr[31]_ram_in[7]_Select_151_o )
  );
  LUT6 #(
    .INIT ( 64'h8080008080000000 ))
  \bus/addr[31]_ram_in[6]_Select_153_o<6>1  (
    .I0(\cpu/U1_2/PC/Q [30]),
    .I1(\cpu/U1_2/PC/Q [31]),
    .I2(\cpu/U1_2/PC/Q [28]),
    .I3(\cpu/U1_2/PC/Q [29]),
    .I4(\switches_anti_jitter<6>/O_99 ),
    .I5(\ps2/keycode [6]),
    .O(\bus/addr[31]_ram_in[6]_Select_153_o )
  );
  LUT6 #(
    .INIT ( 64'h8080008080000000 ))
  \bus/addr[31]_ram_in[5]_Select_155_o<5>1  (
    .I0(\cpu/U1_2/PC/Q [30]),
    .I1(\cpu/U1_2/PC/Q [31]),
    .I2(\cpu/U1_2/PC/Q [28]),
    .I3(\cpu/U1_2/PC/Q [29]),
    .I4(\switches_anti_jitter<5>/O_98 ),
    .I5(\ps2/keycode [5]),
    .O(\bus/addr[31]_ram_in[5]_Select_155_o )
  );
  LUT6 #(
    .INIT ( 64'h8080008080000000 ))
  \bus/addr[31]_ram_in[4]_Select_157_o<4>1  (
    .I0(\cpu/U1_2/PC/Q [30]),
    .I1(\cpu/U1_2/PC/Q [31]),
    .I2(\cpu/U1_2/PC/Q [28]),
    .I3(\cpu/U1_2/PC/Q [29]),
    .I4(\switches_anti_jitter<4>/O_97 ),
    .I5(\ps2/keycode [4]),
    .O(\bus/addr[31]_ram_in[4]_Select_157_o )
  );
  LUT6 #(
    .INIT ( 64'h8080008080000000 ))
  \bus/addr[31]_ram_in[3]_Select_159_o<3>1  (
    .I0(\cpu/U1_2/PC/Q [30]),
    .I1(\cpu/U1_2/PC/Q [31]),
    .I2(\cpu/U1_2/PC/Q [28]),
    .I3(\cpu/U1_2/PC/Q [29]),
    .I4(\switches_anti_jitter<3>/O_96 ),
    .I5(\ps2/keycode [3]),
    .O(\bus/addr[31]_ram_in[3]_Select_159_o )
  );
  LUT6 #(
    .INIT ( 64'h8080008080000000 ))
  \bus/addr[31]_ram_in[2]_Select_161_o<2>1  (
    .I0(\cpu/U1_2/PC/Q [30]),
    .I1(\cpu/U1_2/PC/Q [31]),
    .I2(\cpu/U1_2/PC/Q [28]),
    .I3(\cpu/U1_2/PC/Q [29]),
    .I4(\switches_anti_jitter<2>/O_95 ),
    .I5(\ps2/keycode [2]),
    .O(\bus/addr[31]_ram_in[2]_Select_161_o )
  );
  LUT6 #(
    .INIT ( 64'h8080008080000000 ))
  \bus/addr[31]_ram_in[1]_Select_163_o<1>1  (
    .I0(\cpu/U1_2/PC/Q [30]),
    .I1(\cpu/U1_2/PC/Q [31]),
    .I2(\cpu/U1_2/PC/Q [28]),
    .I3(\cpu/U1_2/PC/Q [29]),
    .I4(\switches_anti_jitter<1>/O_94 ),
    .I5(\ps2/keycode [1]),
    .O(\bus/addr[31]_ram_in[1]_Select_163_o )
  );
  LUT6 #(
    .INIT ( 64'h8080008080000000 ))
  \bus/addr[31]_ram_in[0]_Select_165_o<0>1  (
    .I0(\cpu/U1_2/PC/Q [30]),
    .I1(\cpu/U1_2/PC/Q [31]),
    .I2(\cpu/U1_2/PC/Q [28]),
    .I3(\cpu/U1_2/PC/Q [29]),
    .I4(\switches_anti_jitter<0>/O_93 ),
    .I5(\ps2/keycode [0]),
    .O(\bus/addr[31]_ram_in[0]_Select_165_o )
  );
  LUT5 #(
    .INIT ( 32'h00800000 ))
  \bus/addr[31]_ram_in[31]_Select_103_o1  (
    .I0(\cpu/U1_2/PC/Q [31]),
    .I1(\ps2/keypress_54 ),
    .I2(\cpu/U1_2/PC/Q [30]),
    .I3(\cpu/U1_2/PC/Q [29]),
    .I4(\cpu/U1_2/PC/Q [28]),
    .O(\bus/addr[31]_ram_in[31]_Select_103_o )
  );
  LUT5 #(
    .INIT ( 32'h00000002 ))
  \cpu/U1_2/ALU_MUX/Mmux_o91  (
    .I0(\cpu/U1_2/IR/Q[15] ),
    .I1(\cpu/U11/state_FSM_FFd16_211 ),
    .I2(\cpu/U11/state_FSM_FFd11_862 ),
    .I3(\cpu/U11/state_FSM_FFd10_861 ),
    .I4(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_B [17])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A91  (
    .I0(\cpu/U1_2/PC/Q [17]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [17])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A101  (
    .I0(\cpu/U1_2/PC/Q [18]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [18])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A111  (
    .I0(\cpu/U1_2/PC/Q [19]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [19])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A131  (
    .I0(\cpu/U1_2/PC/Q [20]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [20])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A141  (
    .I0(\cpu/U1_2/PC/Q [21]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [21])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A151  (
    .I0(\cpu/U1_2/PC/Q [22]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [22])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A161  (
    .I0(\cpu/U1_2/PC/Q [23]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [23])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A171  (
    .I0(\cpu/U1_2/PC/Q [24]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [24])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A181  (
    .I0(\cpu/U1_2/PC/Q [25]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [25])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A191  (
    .I0(\cpu/U1_2/PC/Q [26]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [26])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A201  (
    .I0(\cpu/U1_2/PC/Q [27]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [27])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A211  (
    .I0(\cpu/U1_2/PC/Q [28]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [28])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A221  (
    .I0(\cpu/U1_2/PC/Q [29]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [29])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A241  (
    .I0(\cpu/U1_2/PC/Q [30]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [30])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/U1_2/Mmux_ALU_A251  (
    .I0(\cpu/U1_2/PC/Q [31]),
    .I1(\cpu/U11/state_FSM_FFd11_862 ),
    .I2(\cpu/U11/state_FSM_FFd10_861 ),
    .I3(\cpu/U11/state_FSM_FFd2_213 ),
    .O(\cpu/U1_2/ALU_A [31])
  );
  LUT5 #(
    .INIT ( 32'hF1EEE0EE ))
  \cpu/U1_2/ALU_MUX/Mmux_o231  (
    .I0(\cpu/U11/state_FSM_FFd16_211 ),
    .I1(\cpu/U11/state_FSM_FFd15_863 ),
    .I2(\cpu/U1_2/IR/Q[0] ),
    .I3(\cpu/ALUSrcB [1]),
    .I4(\cpu/U1_2/IR/Q[2] ),
    .O(\cpu/U1_2/ALU_B [2])
  );
  LUT5 #(
    .INIT ( 32'h888A8880 ))
  \cpu/U1_2/ALU_MUX/Mmux_o261  (
    .I0(\cpu/ALUSrcB [1]),
    .I1(\cpu/U1_2/IR/Q[1] ),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .I3(\cpu/U11/state_FSM_FFd15_863 ),
    .I4(\cpu/U1_2/IR/Q[3] ),
    .O(\cpu/U1_2/ALU_B [3])
  );
  LUT5 #(
    .INIT ( 32'h888A8880 ))
  \cpu/U1_2/ALU_MUX/Mmux_o271  (
    .I0(\cpu/ALUSrcB [1]),
    .I1(\cpu/U1_2/IR/Q[2] ),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .I3(\cpu/U11/state_FSM_FFd15_863 ),
    .I4(\cpu/U1_2/IR/Q[4] ),
    .O(\cpu/U1_2/ALU_B [4])
  );
  LUT5 #(
    .INIT ( 32'h888A8880 ))
  \cpu/U1_2/ALU_MUX/Mmux_o281  (
    .I0(\cpu/ALUSrcB [1]),
    .I1(\cpu/U1_2/IR/Q[3] ),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .I3(\cpu/U11/state_FSM_FFd15_863 ),
    .I4(\cpu/U1_2/IR/Q[5] ),
    .O(\cpu/U1_2/ALU_B [5])
  );
  LUT5 #(
    .INIT ( 32'h888A8880 ))
  \cpu/U1_2/ALU_MUX/Mmux_o291  (
    .I0(\cpu/ALUSrcB [1]),
    .I1(\cpu/U1_2/IR/Q[4] ),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .I3(\cpu/U11/state_FSM_FFd15_863 ),
    .I4(\cpu/U1_2/IR/Q[6] ),
    .O(\cpu/U1_2/ALU_B [6])
  );
  LUT5 #(
    .INIT ( 32'h888A8880 ))
  \cpu/U1_2/ALU_MUX/Mmux_o301  (
    .I0(\cpu/ALUSrcB [1]),
    .I1(\cpu/U1_2/IR/Q[5] ),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .I3(\cpu/U11/state_FSM_FFd15_863 ),
    .I4(\cpu/U1_2/IR/Q[7] ),
    .O(\cpu/U1_2/ALU_B [7])
  );
  LUT5 #(
    .INIT ( 32'h888A8880 ))
  \cpu/U1_2/ALU_MUX/Mmux_o311  (
    .I0(\cpu/ALUSrcB [1]),
    .I1(\cpu/U1_2/IR/Q[6] ),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .I3(\cpu/U11/state_FSM_FFd15_863 ),
    .I4(\cpu/U1_2/IR/Q[8] ),
    .O(\cpu/U1_2/ALU_B [8])
  );
  LUT5 #(
    .INIT ( 32'h888A8880 ))
  \cpu/U1_2/ALU_MUX/Mmux_o321  (
    .I0(\cpu/ALUSrcB [1]),
    .I1(\cpu/U1_2/IR/Q[7] ),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .I3(\cpu/U11/state_FSM_FFd15_863 ),
    .I4(\cpu/U1_2/IR/Q[9] ),
    .O(\cpu/U1_2/ALU_B [9])
  );
  LUT5 #(
    .INIT ( 32'h888A8880 ))
  \cpu/U1_2/ALU_MUX/Mmux_o23  (
    .I0(\cpu/ALUSrcB [1]),
    .I1(\cpu/U1_2/IR/Q[8] ),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .I3(\cpu/U11/state_FSM_FFd15_863 ),
    .I4(\cpu/U1_2/IR/Q[10] ),
    .O(\cpu/U1_2/ALU_B [10])
  );
  LUT5 #(
    .INIT ( 32'h888A8880 ))
  \cpu/U1_2/ALU_MUX/Mmux_o33  (
    .I0(\cpu/ALUSrcB [1]),
    .I1(\cpu/U1_2/IR/Q[9] ),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .I3(\cpu/U11/state_FSM_FFd15_863 ),
    .I4(\cpu/U1_2/IR/Q[11] ),
    .O(\cpu/U1_2/ALU_B [11])
  );
  LUT5 #(
    .INIT ( 32'h888A8880 ))
  \cpu/U1_2/ALU_MUX/Mmux_o41  (
    .I0(\cpu/ALUSrcB [1]),
    .I1(\cpu/U1_2/IR/Q[10] ),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .I3(\cpu/U11/state_FSM_FFd15_863 ),
    .I4(\cpu/U1_2/IR/Q[12] ),
    .O(\cpu/U1_2/ALU_B [12])
  );
  LUT5 #(
    .INIT ( 32'h888A8880 ))
  \cpu/U1_2/ALU_MUX/Mmux_o51  (
    .I0(\cpu/ALUSrcB [1]),
    .I1(\cpu/U1_2/IR/Q[11] ),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .I3(\cpu/U11/state_FSM_FFd15_863 ),
    .I4(\cpu/U1_2/IR/Q[13] ),
    .O(\cpu/U1_2/ALU_B [13])
  );
  LUT5 #(
    .INIT ( 32'h888A8880 ))
  \cpu/U1_2/ALU_MUX/Mmux_o61  (
    .I0(\cpu/ALUSrcB [1]),
    .I1(\cpu/U1_2/IR/Q[12] ),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .I3(\cpu/U11/state_FSM_FFd15_863 ),
    .I4(\cpu/U1_2/IR/Q[14] ),
    .O(\cpu/U1_2/ALU_B [14])
  );
  LUT5 #(
    .INIT ( 32'h888A8880 ))
  \cpu/U1_2/ALU_MUX/Mmux_o71  (
    .I0(\cpu/ALUSrcB [1]),
    .I1(\cpu/U1_2/IR/Q[13] ),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .I3(\cpu/U11/state_FSM_FFd15_863 ),
    .I4(\cpu/U1_2/IR/Q[15] ),
    .O(\cpu/U1_2/ALU_B [15])
  );
  LUT5 #(
    .INIT ( 32'h888A8880 ))
  \cpu/U1_2/ALU_MUX/Mmux_o81  (
    .I0(\cpu/ALUSrcB [1]),
    .I1(\cpu/U1_2/IR/Q[14] ),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .I3(\cpu/U11/state_FSM_FFd15_863 ),
    .I4(\cpu/U1_2/IR/Q[15] ),
    .O(\cpu/U1_2/ALU_B [16])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000004 ))
  \cpu/U1_2/ALU_MUX/Mmux_o110  (
    .I0(\cpu/U11/state_FSM_FFd16_211 ),
    .I1(\cpu/U1_2/IR/Q[0] ),
    .I2(\cpu/U11/state_FSM_FFd11_862 ),
    .I3(\cpu/U11/state_FSM_FFd10_861 ),
    .I4(\cpu/U11/state_FSM_FFd2_213 ),
    .I5(\cpu/U11/state_FSM_FFd15_863 ),
    .O(\cpu/U1_2/ALU_B [0])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000004 ))
  \cpu/U1_2/ALU_MUX/Mmux_o121  (
    .I0(\cpu/U11/state_FSM_FFd16_211 ),
    .I1(\cpu/U1_2/IR/Q[1] ),
    .I2(\cpu/U11/state_FSM_FFd11_862 ),
    .I3(\cpu/U11/state_FSM_FFd10_861 ),
    .I4(\cpu/U11/state_FSM_FFd2_213 ),
    .I5(\cpu/U11/state_FSM_FFd15_863 ),
    .O(\cpu/U1_2/ALU_B [1])
  );
  LUT6 #(
    .INIT ( 64'h55A9565656AA5656 ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<2>  (
    .I0(\cpu/U1_2/ALU_A [2]),
    .I1(\cpu/U11/state_FSM_FFd16_211 ),
    .I2(\cpu/U11/state_FSM_FFd15_863 ),
    .I3(\cpu/U1_2/IR/Q[0] ),
    .I4(\cpu/ALUSrcB [1]),
    .I5(\cpu/U1_2/IR/Q[2] ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [2])
  );
  LUT6 #(
    .INIT ( 64'h6666666AAAA6AAAA ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<3>  (
    .I0(\cpu/U1_2/ALU_A [3]),
    .I1(\cpu/ALUSrcB [1]),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .I3(\cpu/U11/state_FSM_FFd15_863 ),
    .I4(\cpu/U1_2/IR/Q[3] ),
    .I5(\cpu/U1_2/IR/Q[1] ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [3])
  );
  LUT6 #(
    .INIT ( 64'h6666666AAAA6AAAA ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<4>  (
    .I0(\cpu/U1_2/ALU_A [4]),
    .I1(\cpu/ALUSrcB [1]),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .I3(\cpu/U11/state_FSM_FFd15_863 ),
    .I4(\cpu/U1_2/IR/Q[4] ),
    .I5(\cpu/U1_2/IR/Q[2] ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [4])
  );
  LUT6 #(
    .INIT ( 64'h6666666AAAA6AAAA ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<5>  (
    .I0(\cpu/U1_2/ALU_A [5]),
    .I1(\cpu/ALUSrcB [1]),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .I3(\cpu/U11/state_FSM_FFd15_863 ),
    .I4(\cpu/U1_2/IR/Q[5] ),
    .I5(\cpu/U1_2/IR/Q[3] ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [5])
  );
  LUT6 #(
    .INIT ( 64'h6666666AAAA6AAAA ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<6>  (
    .I0(\cpu/U1_2/ALU_A [6]),
    .I1(\cpu/ALUSrcB [1]),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .I3(\cpu/U11/state_FSM_FFd15_863 ),
    .I4(\cpu/U1_2/IR/Q[6] ),
    .I5(\cpu/U1_2/IR/Q[4] ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [6])
  );
  LUT6 #(
    .INIT ( 64'h6666666AAAA6AAAA ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<7>  (
    .I0(\cpu/U1_2/ALU_A [7]),
    .I1(\cpu/ALUSrcB [1]),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .I3(\cpu/U11/state_FSM_FFd15_863 ),
    .I4(\cpu/U1_2/IR/Q[7] ),
    .I5(\cpu/U1_2/IR/Q[5] ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [7])
  );
  LUT6 #(
    .INIT ( 64'h6666666AAAA6AAAA ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<8>  (
    .I0(\cpu/U1_2/ALU_A [8]),
    .I1(\cpu/ALUSrcB [1]),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .I3(\cpu/U11/state_FSM_FFd15_863 ),
    .I4(\cpu/U1_2/IR/Q[8] ),
    .I5(\cpu/U1_2/IR/Q[6] ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [8])
  );
  LUT6 #(
    .INIT ( 64'h6666666AAAA6AAAA ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<9>  (
    .I0(\cpu/U1_2/ALU_A [9]),
    .I1(\cpu/ALUSrcB [1]),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .I3(\cpu/U11/state_FSM_FFd15_863 ),
    .I4(\cpu/U1_2/IR/Q[9] ),
    .I5(\cpu/U1_2/IR/Q[7] ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [9])
  );
  LUT6 #(
    .INIT ( 64'h6666666AAAA6AAAA ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<10>  (
    .I0(\cpu/U1_2/ALU_A [10]),
    .I1(\cpu/ALUSrcB [1]),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .I3(\cpu/U11/state_FSM_FFd15_863 ),
    .I4(\cpu/U1_2/IR/Q[10] ),
    .I5(\cpu/U1_2/IR/Q[8] ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [10])
  );
  LUT6 #(
    .INIT ( 64'h6666666AAAA6AAAA ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<11>  (
    .I0(\cpu/U1_2/ALU_A [11]),
    .I1(\cpu/ALUSrcB [1]),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .I3(\cpu/U11/state_FSM_FFd15_863 ),
    .I4(\cpu/U1_2/IR/Q[11] ),
    .I5(\cpu/U1_2/IR/Q[9] ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [11])
  );
  LUT6 #(
    .INIT ( 64'h6666666AAAA6AAAA ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<12>  (
    .I0(\cpu/U1_2/ALU_A [12]),
    .I1(\cpu/ALUSrcB [1]),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .I3(\cpu/U11/state_FSM_FFd15_863 ),
    .I4(\cpu/U1_2/IR/Q[12] ),
    .I5(\cpu/U1_2/IR/Q[10] ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [12])
  );
  LUT6 #(
    .INIT ( 64'h6666666AAAA6AAAA ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<13>  (
    .I0(\cpu/U1_2/ALU_A [13]),
    .I1(\cpu/ALUSrcB [1]),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .I3(\cpu/U11/state_FSM_FFd15_863 ),
    .I4(\cpu/U1_2/IR/Q[13] ),
    .I5(\cpu/U1_2/IR/Q[11] ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [13])
  );
  LUT6 #(
    .INIT ( 64'h6666666AAAA6AAAA ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<14>  (
    .I0(\cpu/U1_2/ALU_A [14]),
    .I1(\cpu/ALUSrcB [1]),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .I3(\cpu/U11/state_FSM_FFd15_863 ),
    .I4(\cpu/U1_2/IR/Q[14] ),
    .I5(\cpu/U1_2/IR/Q[12] ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [14])
  );
  LUT6 #(
    .INIT ( 64'h6666666AAAA6AAAA ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<15>  (
    .I0(\cpu/U1_2/ALU_A [15]),
    .I1(\cpu/ALUSrcB [1]),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .I3(\cpu/U11/state_FSM_FFd15_863 ),
    .I4(\cpu/U1_2/IR/Q[15] ),
    .I5(\cpu/U1_2/IR/Q[13] ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [15])
  );
  LUT6 #(
    .INIT ( 64'h6666666AAAA6AAAA ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<16>  (
    .I0(\cpu/U1_2/ALU_A [16]),
    .I1(\cpu/ALUSrcB [1]),
    .I2(\cpu/U11/state_FSM_FFd16_211 ),
    .I3(\cpu/U11/state_FSM_FFd15_863 ),
    .I4(\cpu/U1_2/IR/Q[15] ),
    .I5(\cpu/U1_2/IR/Q[14] ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [16])
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAA9 ))
  \switches_anti_jitter<13>/Mcount_cnt_xor<3>11  (
    .I0(\switches_anti_jitter<13>/cnt<3> ),
    .I1(raw_switches_13_IBUF_13),
    .I2(\switches_anti_jitter<13>/cnt<1> ),
    .I3(\switches_anti_jitter<13>/cnt<0> ),
    .I4(\switches_anti_jitter<13>/cnt<2> ),
    .O(\Result<3>4 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAA9 ))
  \switches_anti_jitter<14>/Mcount_cnt_xor<3>11  (
    .I0(\switches_anti_jitter<14>/cnt<3> ),
    .I1(raw_switches_14_IBUF_14),
    .I2(\switches_anti_jitter<14>/cnt<1> ),
    .I3(\switches_anti_jitter<14>/cnt<0> ),
    .I4(\switches_anti_jitter<14>/cnt<2> ),
    .O(\Result<3>2 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAA9 ))
  \switches_anti_jitter<15>/Mcount_cnt_xor<3>11  (
    .I0(\switches_anti_jitter<15>/cnt<3> ),
    .I1(raw_switches_15_IBUF_15),
    .I2(\switches_anti_jitter<15>/cnt<1> ),
    .I3(\switches_anti_jitter<15>/cnt<0> ),
    .I4(\switches_anti_jitter<15>/cnt<2> ),
    .O(\Result<3>3 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAA9 ))
  \switches_anti_jitter<12>/Mcount_cnt_xor<3>11  (
    .I0(\switches_anti_jitter<12>/cnt<3> ),
    .I1(raw_switches_12_IBUF_12),
    .I2(\switches_anti_jitter<12>/cnt<1> ),
    .I3(\switches_anti_jitter<12>/cnt<0> ),
    .I4(\switches_anti_jitter<12>/cnt<2> ),
    .O(\Result<3>5 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAA9 ))
  \switches_anti_jitter<11>/Mcount_cnt_xor<3>11  (
    .I0(\switches_anti_jitter<11>/cnt<3> ),
    .I1(raw_switches_11_IBUF_11),
    .I2(\switches_anti_jitter<11>/cnt<1> ),
    .I3(\switches_anti_jitter<11>/cnt<0> ),
    .I4(\switches_anti_jitter<11>/cnt<2> ),
    .O(\Result<3>6 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAA9 ))
  \switches_anti_jitter<10>/Mcount_cnt_xor<3>11  (
    .I0(\switches_anti_jitter<10>/cnt<3> ),
    .I1(raw_switches_10_IBUF_10),
    .I2(\switches_anti_jitter<10>/cnt<1> ),
    .I3(\switches_anti_jitter<10>/cnt<0> ),
    .I4(\switches_anti_jitter<10>/cnt<2> ),
    .O(\Result<3>7 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAA9 ))
  \switches_anti_jitter<9>/Mcount_cnt_xor<3>11  (
    .I0(\switches_anti_jitter<9>/cnt<3> ),
    .I1(raw_switches_9_IBUF_9),
    .I2(\switches_anti_jitter<9>/cnt<1> ),
    .I3(\switches_anti_jitter<9>/cnt<0> ),
    .I4(\switches_anti_jitter<9>/cnt<2> ),
    .O(\Result<3>8 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAA9 ))
  \switches_anti_jitter<8>/Mcount_cnt_xor<3>11  (
    .I0(\switches_anti_jitter<8>/cnt<3> ),
    .I1(raw_switches_8_IBUF_8),
    .I2(\switches_anti_jitter<8>/cnt<1> ),
    .I3(\switches_anti_jitter<8>/cnt<0> ),
    .I4(\switches_anti_jitter<8>/cnt<2> ),
    .O(\Result<3>9 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAA9 ))
  \switches_anti_jitter<7>/Mcount_cnt_xor<3>11  (
    .I0(\switches_anti_jitter<7>/cnt<3> ),
    .I1(raw_switches_7_IBUF_7),
    .I2(\switches_anti_jitter<7>/cnt<1> ),
    .I3(\switches_anti_jitter<7>/cnt<0> ),
    .I4(\switches_anti_jitter<7>/cnt<2> ),
    .O(\Result<3>10 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAA9 ))
  \switches_anti_jitter<6>/Mcount_cnt_xor<3>11  (
    .I0(\switches_anti_jitter<6>/cnt<3> ),
    .I1(raw_switches_6_IBUF_6),
    .I2(\switches_anti_jitter<6>/cnt<1> ),
    .I3(\switches_anti_jitter<6>/cnt<0> ),
    .I4(\switches_anti_jitter<6>/cnt<2> ),
    .O(\Result<3>11 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAA9 ))
  \switches_anti_jitter<5>/Mcount_cnt_xor<3>11  (
    .I0(\switches_anti_jitter<5>/cnt<3> ),
    .I1(raw_switches_5_IBUF_5),
    .I2(\switches_anti_jitter<5>/cnt<1> ),
    .I3(\switches_anti_jitter<5>/cnt<0> ),
    .I4(\switches_anti_jitter<5>/cnt<2> ),
    .O(\Result<3>12 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAA9 ))
  \switches_anti_jitter<4>/Mcount_cnt_xor<3>11  (
    .I0(\switches_anti_jitter<4>/cnt<3> ),
    .I1(raw_switches_4_IBUF_4),
    .I2(\switches_anti_jitter<4>/cnt<1> ),
    .I3(\switches_anti_jitter<4>/cnt<0> ),
    .I4(\switches_anti_jitter<4>/cnt<2> ),
    .O(\Result<3>13 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAA9 ))
  \switches_anti_jitter<3>/Mcount_cnt_xor<3>11  (
    .I0(\switches_anti_jitter<3>/cnt<3> ),
    .I1(raw_switches_3_IBUF_3),
    .I2(\switches_anti_jitter<3>/cnt<1> ),
    .I3(\switches_anti_jitter<3>/cnt<0> ),
    .I4(\switches_anti_jitter<3>/cnt<2> ),
    .O(\Result<3>14 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAA9 ))
  \switches_anti_jitter<2>/Mcount_cnt_xor<3>11  (
    .I0(\switches_anti_jitter<2>/cnt<3> ),
    .I1(raw_switches_2_IBUF_2),
    .I2(\switches_anti_jitter<2>/cnt<1> ),
    .I3(\switches_anti_jitter<2>/cnt<0> ),
    .I4(\switches_anti_jitter<2>/cnt<2> ),
    .O(\Result<3>15 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAA9 ))
  \switches_anti_jitter<1>/Mcount_cnt_xor<3>11  (
    .I0(\switches_anti_jitter<1>/cnt<3> ),
    .I1(raw_switches_1_IBUF_1),
    .I2(\switches_anti_jitter<1>/cnt<1> ),
    .I3(\switches_anti_jitter<1>/cnt<0> ),
    .I4(\switches_anti_jitter<1>/cnt<2> ),
    .O(\Result<3>16 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAA9 ))
  \switches_anti_jitter<0>/Mcount_cnt_xor<3>11  (
    .I0(\switches_anti_jitter<0>/cnt<3> ),
    .I1(raw_switches_0_IBUF_0),
    .I2(\switches_anti_jitter<0>/cnt<1> ),
    .I3(\switches_anti_jitter<0>/cnt<0> ),
    .I4(\switches_anti_jitter<0>/cnt<2> ),
    .O(\Result<3>17 )
  );
  LUT6 #(
    .INIT ( 64'h0100010000010100 ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<17>  (
    .I0(\cpu/U11/state_FSM_FFd11_862 ),
    .I1(\cpu/U11/state_FSM_FFd10_861 ),
    .I2(\cpu/U11/state_FSM_FFd2_213 ),
    .I3(\cpu/U1_2/PC/Q [17]),
    .I4(\cpu/U1_2/IR/Q[15] ),
    .I5(\cpu/U11/state_FSM_FFd16_211 ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [17])
  );
  LUT6 #(
    .INIT ( 64'h0100010000010100 ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<18>  (
    .I0(\cpu/U11/state_FSM_FFd11_862 ),
    .I1(\cpu/U11/state_FSM_FFd10_861 ),
    .I2(\cpu/U11/state_FSM_FFd2_213 ),
    .I3(\cpu/U1_2/PC/Q [18]),
    .I4(\cpu/U1_2/IR/Q[15] ),
    .I5(\cpu/U11/state_FSM_FFd16_211 ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [18])
  );
  LUT6 #(
    .INIT ( 64'h0100010000010100 ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<19>  (
    .I0(\cpu/U11/state_FSM_FFd11_862 ),
    .I1(\cpu/U11/state_FSM_FFd10_861 ),
    .I2(\cpu/U11/state_FSM_FFd2_213 ),
    .I3(\cpu/U1_2/PC/Q [19]),
    .I4(\cpu/U1_2/IR/Q[15] ),
    .I5(\cpu/U11/state_FSM_FFd16_211 ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [19])
  );
  LUT6 #(
    .INIT ( 64'h0100010000010100 ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<20>  (
    .I0(\cpu/U11/state_FSM_FFd11_862 ),
    .I1(\cpu/U11/state_FSM_FFd10_861 ),
    .I2(\cpu/U11/state_FSM_FFd2_213 ),
    .I3(\cpu/U1_2/PC/Q [20]),
    .I4(\cpu/U1_2/IR/Q[15] ),
    .I5(\cpu/U11/state_FSM_FFd16_211 ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [20])
  );
  LUT6 #(
    .INIT ( 64'h0100010000010100 ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<21>  (
    .I0(\cpu/U11/state_FSM_FFd11_862 ),
    .I1(\cpu/U11/state_FSM_FFd10_861 ),
    .I2(\cpu/U11/state_FSM_FFd2_213 ),
    .I3(\cpu/U1_2/PC/Q [21]),
    .I4(\cpu/U1_2/IR/Q[15] ),
    .I5(\cpu/U11/state_FSM_FFd16_211 ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [21])
  );
  LUT6 #(
    .INIT ( 64'h0100010000010100 ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<22>  (
    .I0(\cpu/U11/state_FSM_FFd11_862 ),
    .I1(\cpu/U11/state_FSM_FFd10_861 ),
    .I2(\cpu/U11/state_FSM_FFd2_213 ),
    .I3(\cpu/U1_2/PC/Q [22]),
    .I4(\cpu/U1_2/IR/Q[15] ),
    .I5(\cpu/U11/state_FSM_FFd16_211 ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [22])
  );
  LUT6 #(
    .INIT ( 64'h0100010000010100 ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<23>  (
    .I0(\cpu/U11/state_FSM_FFd11_862 ),
    .I1(\cpu/U11/state_FSM_FFd10_861 ),
    .I2(\cpu/U11/state_FSM_FFd2_213 ),
    .I3(\cpu/U1_2/PC/Q [23]),
    .I4(\cpu/U1_2/IR/Q[15] ),
    .I5(\cpu/U11/state_FSM_FFd16_211 ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [23])
  );
  LUT6 #(
    .INIT ( 64'h0100010000010100 ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<24>  (
    .I0(\cpu/U11/state_FSM_FFd11_862 ),
    .I1(\cpu/U11/state_FSM_FFd10_861 ),
    .I2(\cpu/U11/state_FSM_FFd2_213 ),
    .I3(\cpu/U1_2/PC/Q [24]),
    .I4(\cpu/U1_2/IR/Q[15] ),
    .I5(\cpu/U11/state_FSM_FFd16_211 ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [24])
  );
  LUT6 #(
    .INIT ( 64'h0100010000010100 ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<25>  (
    .I0(\cpu/U11/state_FSM_FFd11_862 ),
    .I1(\cpu/U11/state_FSM_FFd10_861 ),
    .I2(\cpu/U11/state_FSM_FFd2_213 ),
    .I3(\cpu/U1_2/PC/Q [25]),
    .I4(\cpu/U1_2/IR/Q[15] ),
    .I5(\cpu/U11/state_FSM_FFd16_211 ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [25])
  );
  LUT6 #(
    .INIT ( 64'h0100010000010100 ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<26>  (
    .I0(\cpu/U11/state_FSM_FFd11_862 ),
    .I1(\cpu/U11/state_FSM_FFd10_861 ),
    .I2(\cpu/U11/state_FSM_FFd2_213 ),
    .I3(\cpu/U1_2/PC/Q [26]),
    .I4(\cpu/U1_2/IR/Q[15] ),
    .I5(\cpu/U11/state_FSM_FFd16_211 ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [26])
  );
  LUT6 #(
    .INIT ( 64'h0100010000010100 ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<27>  (
    .I0(\cpu/U11/state_FSM_FFd11_862 ),
    .I1(\cpu/U11/state_FSM_FFd10_861 ),
    .I2(\cpu/U11/state_FSM_FFd2_213 ),
    .I3(\cpu/U1_2/PC/Q [27]),
    .I4(\cpu/U1_2/IR/Q[15] ),
    .I5(\cpu/U11/state_FSM_FFd16_211 ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [27])
  );
  LUT6 #(
    .INIT ( 64'h0100010000010100 ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<28>  (
    .I0(\cpu/U11/state_FSM_FFd11_862 ),
    .I1(\cpu/U11/state_FSM_FFd10_861 ),
    .I2(\cpu/U11/state_FSM_FFd2_213 ),
    .I3(\cpu/U1_2/PC/Q [28]),
    .I4(\cpu/U1_2/IR/Q[15] ),
    .I5(\cpu/U11/state_FSM_FFd16_211 ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [28])
  );
  LUT6 #(
    .INIT ( 64'h0100010000010100 ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<29>  (
    .I0(\cpu/U11/state_FSM_FFd11_862 ),
    .I1(\cpu/U11/state_FSM_FFd10_861 ),
    .I2(\cpu/U11/state_FSM_FFd2_213 ),
    .I3(\cpu/U1_2/PC/Q [29]),
    .I4(\cpu/U1_2/IR/Q[15] ),
    .I5(\cpu/U11/state_FSM_FFd16_211 ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [29])
  );
  LUT6 #(
    .INIT ( 64'h0100010000010100 ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<30>  (
    .I0(\cpu/U11/state_FSM_FFd11_862 ),
    .I1(\cpu/U11/state_FSM_FFd10_861 ),
    .I2(\cpu/U11/state_FSM_FFd2_213 ),
    .I3(\cpu/U1_2/PC/Q [30]),
    .I4(\cpu/U1_2/IR/Q[15] ),
    .I5(\cpu/U11/state_FSM_FFd16_211 ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [30])
  );
  LUT6 #(
    .INIT ( 64'h0100010000010100 ))
  \cpu/U1_2/U1/Madd_adc_res_Madd_lut<31>  (
    .I0(\cpu/U11/state_FSM_FFd11_862 ),
    .I1(\cpu/U11/state_FSM_FFd10_861 ),
    .I2(\cpu/U11/state_FSM_FFd2_213 ),
    .I3(\cpu/U1_2/PC/Q [31]),
    .I4(\cpu/U1_2/IR/Q[15] ),
    .I5(\cpu/U11/state_FSM_FFd16_211 ),
    .O(\cpu/U1_2/U1/Madd_adc_res_Madd_lut [31])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga/Mcount_v_count_cy<0>_rt  (
    .I0(\vga/v_count [0]),
    .O(\vga/Mcount_v_count_cy<0>_rt_994 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga/Mcount_v_count_cy<1>_rt  (
    .I0(\vga/v_count [1]),
    .O(\vga/Mcount_v_count_cy<1>_rt_995 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_16)
  );
  BUFG   \clk_div/div_15_BUFG  (
    .O(\clk_div/div_15_BUFG_21 ),
    .I(\clk_div/div [15])
  );
  BUFG   \clk_div/div_1_BUFG  (
    .O(\clk_div/div_1_BUFG_20 ),
    .I(\clk_div/div [1])
  );
  INV   \clk_div/Mcount_div_lut<0>_INV_0  (
    .I(\clk_div/div [0]),
    .O(\clk_div/Mcount_div_lut [0])
  );
  INV   \vga/Mcount_h_count_lut<0>_INV_0  (
    .I(\vga/h_count [0]),
    .O(\vga/Mcount_h_count_lut [0])
  );
  INV   rst1_INV_0 (
    .I(rst_n_IBUF_17),
    .O(rst)
  );
  INV   \vga/Msub_row<8:0>_xor<0>11_INV_0  (
    .I(\vga/v_count [0]),
    .O(\vga/row [0])
  );
  INV   \ps2/Mcount_state_xor<0>11_INV_0  (
    .I(\ps2/state [0]),
    .O(\ps2/Result [0])
  );
  INV   \ps2/key_break[3]_reduce_nor_14_o1_INV_0  (
    .I(\ps2/key_break [0]),
    .O(\ps2/key_break[3]_reduce_nor_14_o )
  );
  INV   \pitch_gen/wave_gen/Mcompar_wave_cy<15>_inv1_INV_0  (
    .I(\pitch_gen/wave_gen/Mcompar_wave_cy [15]),
    .O(buzzer_OBUF_55)
  );
  INV   \pitch_gen/wave_gen/Mcompar_wave_lut<15>1_INV_0  (
    .I(\pitch_gen/period [31]),
    .O(\pitch_gen/wave_gen/Mcompar_wave_lut [15])
  );
  INV   \vga/Mcount_h_count_lut<0>1_INV_0  (
    .I(\vga/h_count [0]),
    .O(\vga/Mcount_h_count_lut<0>1 )
  );
  INV   \switches_anti_jitter<13>/Mcount_cnt_xor<0>11_INV_0  (
    .I(\switches_anti_jitter<13>/cnt<0> ),
    .O(\Result<0>4 )
  );
  INV   \switches_anti_jitter<14>/Mcount_cnt_xor<0>11_INV_0  (
    .I(\switches_anti_jitter<14>/cnt<0> ),
    .O(\Result<0>2 )
  );
  INV   \switches_anti_jitter<15>/Mcount_cnt_xor<0>11_INV_0  (
    .I(\switches_anti_jitter<15>/cnt<0> ),
    .O(\Result<0>3 )
  );
  INV   \switches_anti_jitter<12>/Mcount_cnt_xor<0>11_INV_0  (
    .I(\switches_anti_jitter<12>/cnt<0> ),
    .O(\Result<0>5 )
  );
  INV   \switches_anti_jitter<11>/Mcount_cnt_xor<0>11_INV_0  (
    .I(\switches_anti_jitter<11>/cnt<0> ),
    .O(\Result<0>6 )
  );
  INV   \switches_anti_jitter<10>/Mcount_cnt_xor<0>11_INV_0  (
    .I(\switches_anti_jitter<10>/cnt<0> ),
    .O(\Result<0>7 )
  );
  INV   \switches_anti_jitter<9>/Mcount_cnt_xor<0>11_INV_0  (
    .I(\switches_anti_jitter<9>/cnt<0> ),
    .O(\Result<0>8 )
  );
  INV   \switches_anti_jitter<8>/Mcount_cnt_xor<0>11_INV_0  (
    .I(\switches_anti_jitter<8>/cnt<0> ),
    .O(\Result<0>9 )
  );
  INV   \switches_anti_jitter<7>/Mcount_cnt_xor<0>11_INV_0  (
    .I(\switches_anti_jitter<7>/cnt<0> ),
    .O(\Result<0>10 )
  );
  INV   \switches_anti_jitter<6>/Mcount_cnt_xor<0>11_INV_0  (
    .I(\switches_anti_jitter<6>/cnt<0> ),
    .O(\Result<0>11 )
  );
  INV   \switches_anti_jitter<5>/Mcount_cnt_xor<0>11_INV_0  (
    .I(\switches_anti_jitter<5>/cnt<0> ),
    .O(\Result<0>12 )
  );
  INV   \switches_anti_jitter<4>/Mcount_cnt_xor<0>11_INV_0  (
    .I(\switches_anti_jitter<4>/cnt<0> ),
    .O(\Result<0>13 )
  );
  INV   \switches_anti_jitter<3>/Mcount_cnt_xor<0>11_INV_0  (
    .I(\switches_anti_jitter<3>/cnt<0> ),
    .O(\Result<0>14 )
  );
  INV   \switches_anti_jitter<2>/Mcount_cnt_xor<0>11_INV_0  (
    .I(\switches_anti_jitter<2>/cnt<0> ),
    .O(\Result<0>15 )
  );
  INV   \switches_anti_jitter<1>/Mcount_cnt_xor<0>11_INV_0  (
    .I(\switches_anti_jitter<1>/cnt<0> ),
    .O(\Result<0>16 )
  );
  INV   \switches_anti_jitter<0>/Mcount_cnt_xor<0>11_INV_0  (
    .I(\switches_anti_jitter<0>/cnt<0> ),
    .O(\Result<0>17 )
  );
  SRLC16E #(
    .INIT ( 16'h0001 ))
  \ps2/Mshreg_ps2_data_r1  (
    .A0(Maddsub_n0029_ff_10),
    .A1(Maddsub_n0029_ff_10),
    .A2(Maddsub_n0029_ff_10),
    .A3(Maddsub_n0029_ff_10),
    .CE(\pitch_gen/Madd_n0014_Madd_lut [1]),
    .CLK(clk_BUFGP_16),
    .D(ps2_data_IBUF_19),
    .Q(\ps2/Mshreg_ps2_data_r1_998 ),
    .Q15(\NLW_ps2/Mshreg_ps2_data_r1_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b1 ))
  \ps2/ps2_data_r1  (
    .C(clk_BUFGP_16),
    .CE(\pitch_gen/Madd_n0014_Madd_lut [1]),
    .D(\ps2/Mshreg_ps2_data_r1_998 ),
    .Q(\ps2/ps2_data_r1_598 )
  );
  vram   ram (
    .clka(clk_BUFGP_16),
    .clkb(clk_BUFGP_16),
    .wea({Maddsub_n0029_ff_10}),
    .addra({\bus/vram_addr_17_126 , \bus/vram_addr_16_127 , \bus/vram_addr_15_128 , \bus/vram_addr_14_129 , \bus/vram_addr_13_130 , 
\bus/vram_addr_12_131 , \bus/vram_addr_11_132 , \bus/vram_addr_10_133 , \bus/vram_addr_9_134 , \bus/vram_addr_8_135 , \bus/vram_addr_7_136 , 
\bus/vram_addr_6_137 , \bus/vram_addr_5_138 , \bus/vram_addr_4_139 , \bus/vram_addr_3_140 , \bus/vram_addr_2_141 , \bus/vram_addr_1_142 , 
\bus/vram_addr_0_143 }),
    .dina({Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, 
Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, 
Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, 
Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, 
Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10, Maddsub_n0029_ff_10}),
    .addrb({n0014[18], n0014[17], n0014[16], n0014[15], n0014[14], n0014[13], n0014[12], n0014[11], n0014[10], n0014[9], n0014[8], n0014[7], n0014[6]
, n0014[5], n0014[4], n0014[3], n0014[2], n0014[1]}),
    .doutb({\NLW_ram_doutb<31>_UNCONNECTED , \NLW_ram_doutb<30>_UNCONNECTED , \NLW_ram_doutb<29>_UNCONNECTED , \NLW_ram_doutb<28>_UNCONNECTED , 
\vram_scan[27] , \vram_scan[26] , \vram_scan[25] , \vram_scan[24] , \vram_scan[23] , \vram_scan[22] , \vram_scan[21] , \vram_scan[20] , 
\vram_scan[19] , \vram_scan[18] , \vram_scan[17] , \vram_scan[16] , \NLW_ram_doutb<15>_UNCONNECTED , \NLW_ram_doutb<14>_UNCONNECTED , 
\NLW_ram_doutb<13>_UNCONNECTED , \NLW_ram_doutb<12>_UNCONNECTED , \vram_scan[11] , \vram_scan[10] , \vram_scan[9] , \vram_scan[8] , \vram_scan[7] , 
\vram_scan[6] , \vram_scan[5] , \vram_scan[4] , \vram_scan[3] , \vram_scan[2] , \vram_scan[1] , \vram_scan[0] })
  );
  pitch_period_table_rom   \pitch_gen/pitch_period_table_rom  (
    .a({\pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1]
, Maddsub_n0029_ff_10, \pitch_gen/Madd_n0014_Madd_lut [1], \pitch_gen/Madd_n0014_Madd_lut [1], Maddsub_n0029_ff_10}),
    .spo({\pitch_gen/period [31], \pitch_gen/period [30], \pitch_gen/period [29], \pitch_gen/period [28], \pitch_gen/period [27], 
\pitch_gen/period [26], \pitch_gen/period [25], \pitch_gen/period [24], \pitch_gen/period [23], \pitch_gen/period [22], \pitch_gen/period [21], 
\pitch_gen/period [20], \pitch_gen/period [19], \pitch_gen/period [18], \pitch_gen/period [17], \pitch_gen/period [16], \pitch_gen/period [15], 
\pitch_gen/period [14], \pitch_gen/period [13], \pitch_gen/period [12], \pitch_gen/period [11], \pitch_gen/period [10], \pitch_gen/period [9], 
\pitch_gen/period [8], \pitch_gen/period [7], \pitch_gen/period [6], \pitch_gen/period [5], \pitch_gen/period [4], \pitch_gen/period [3], 
\pitch_gen/period [2], \pitch_gen/period [1], \NLW_pitch_gen/pitch_period_table_rom_spo<0>_UNCONNECTED })
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
