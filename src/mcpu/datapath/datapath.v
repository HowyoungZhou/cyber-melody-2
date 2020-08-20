`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    15:39:44 04/06/2010
// Design Name:
// Module Name:    path
// Project Name:
// Target Devices:
// Tool versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////
module M_datapath(input clk,
                  input reset,
                  input MIO_ready,
                  input IorD,
                  input IRWrite,
                  input[1:0] RegDst,
                  input RegWrite,
                  input[1:0]MemtoReg,
                  input ALUSrcA,
                  input[1:0]ALUSrcB,
                  input[1:0]PCSource,
                  input PCWrite,
                  input PCWriteCond,
                  input Branch,
                  input[3:0]ALU_operation,
                  input[31:0]data2CPU,

                  output[31:0]PC_Current,
                  output[31:0]Inst,
                  output[31:0]data_out,
                  output[31:0]M_addr,
                  output zero,
                  output overflow);
    parameter ra = 5'b11111;
	wire [31:0] MDR_out, Inst, ALU_Out, Wt_data, rdata_A, rdata_B, Imm_32, ALU_A, ALU_B, res, PC_in;
	wire [4:0] Wt_addr;

	assign data_out = rdata_B;
	assign M_addr = IorD ? ALU_Out : PC_Current;

    REG32 MDR(.clk(clk), .rst(0), .CE(1), .D(data2CPU), .Q(MDR_out));

	REG32 IR(.clk(clk), .rst(reset), .CE(IRWrite), .D(data2CPU), .Q(Inst));

	MUX4T1_5 ADDR_MUX(.s(RegDst), .I0(Inst[20:16]), .I1(Inst[15:11]),.I2(ra),.I3(), .o(Wt_addr));

	MUX4T1_32 DATA_MUX(.s(MemtoReg), .I0(ALU_Out), .I1(MDR_out),.I2({Inst[15:0],16'b0}),.I3(PC_Current), .o(Wt_data));

	Regs U2 (
    .clk(clk), 
    .rst(rst), 
    .R_addr_A(Inst[25:21]), 
    .R_addr_B(Inst[20:16]), 
    .Wt_addr(Wt_addr), 
    .Wt_data(Wt_data), 
    .L_S(RegWrite), 
    .rdata_A(rdata_A), 
    .rdata_B(rdata_B)
    );

	Ext_32 EXT (
    .imm_16(Inst[15:0]), 
    .Imm_32(Imm_32)
    );

	assign ALU_A = ALUSrcA ? rdata_A : PC_Current;

	MUX4T1_32 ALU_MUX(.s(ALUSrcB), .I0(rdata_B), .I1(4),.I2(Imm_32),.I3({Imm_32,2'b0}), .o(ALU_B));

	ALU U1 (
    .ALU_operation(ALU_operation), 
    .A(ALU_A), 
    .B(ALU_B), 
    .res(res), 
    .zero(zero), 
    .overflow(overflow)
    );

	REG32 ALUOut(.clk(clk), .rst(0), .CE(1), .D(res), .Q(ALU_Out));

	MUX4T1_32 PC_MUX(.s(PCSource), .I0(res), .I1(ALU_Out),.I2({PC_Current[31:28],Inst[25:0],2'b0}),.I3(ALU_Out), .o(PC_in));

	REG32 PC(.clk(clk), .rst(0), .CE(((~(Branch ^ zero) & PCWriteCond) | PCWrite) & MIO_ready), .D(PC_in), .Q(PC_Current));

endmodule

module Ext_32(
    input [15:0] imm_16,
    output [31:0] Imm_32
    );

assign Imm_32 = { {16{imm_16[15]}}, imm_16[15:0] };

endmodule