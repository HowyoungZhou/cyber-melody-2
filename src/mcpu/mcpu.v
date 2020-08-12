`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:58:02 05/05/2020 
// Design Name: 
// Module Name:    Multi_CPU 
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
module Multi_CPU(clk, 
                 Data_in, 
                 INT, 
                 MIO_ready, 
                 reset, 
                 Addr_out, 
                 CPU_MIO, 
                 Data_out, 
                 inst_out, 
                 mem_w, 
                 PC_out, 
                 state);

    input clk;
    input [31:0] Data_in;
    input INT;
    input MIO_ready;
    input reset;
    output [31:0] Addr_out;
    output CPU_MIO;
    output [31:0] Data_out;
    output [31:0] inst_out;
    output mem_w;
    output [31:0] PC_out;
    output [4:0] state;
    
    wire [2:0] ALU_op;
    wire [1:0] PCSource;
    wire [1:0] ALUSrcB;
    wire [1:0] MemtoReg;
    wire [1:0] RegDst;
    wire Branch;
    wire PCWriteCond;
    wire PCWrite;
    wire ALUSrcA;
    wire RegWrite;
    wire IRWrite;
    wire IorD;
    wire zero;
    wire overflow;
    wire MemRead;
    wire MemWrite;
    
    assign mem_w = ~MemRead & MemWrite;
    
    M_datapath  U1_2 (.ALUSrcA(ALUSrcA), 
                        .ALUSrcB(ALUSrcB[1:0]), 
                        .ALU_operation(ALU_op[2:0]), 
                        .Branch(Branch), 
                        .clk(clk), 
                        .data2CPU(Data_in[31:0]), 
                        .IorD(IorD), 
                        .IRWrite(IRWrite), 
                        .MemtoReg(MemtoReg[1:0]), 
                        .MIO_ready(MIO_ready), 
                        .PCSource(PCSource[1:0]), 
                        .PCWrite(PCWrite), 
                        .PCWriteCond(PCWriteCond), 
                        .RegDst(RegDst[1:0]), 
                        .RegWrite(RegWrite), 
                        .reset(reset), 
                        .data_out(Data_out[31:0]), 
                        .Inst(inst_out), 
                        .M_addr(Addr_out[31:0]), 
                        .overflow(overflow), 
                        .PC_Current(PC_out[31:0]), 
                        .zero(zero)
                        );
    ctrl  U11 (.clk(clk), 
                .Inst_in(inst_out), 
                .MIO_ready(MIO_ready), 
                .overflow(overflow), 
                .reset(reset), 
                .zero(zero), 
                .ALUSrcA(ALUSrcA), 
                .ALUSrcB(ALUSrcB[1:0]), 
                .ALU_operation(ALU_op[2:0]), 
                .Branch(Branch), 
                .CPU_MIO(CPU_MIO), 
                .IorD(IorD), 
                .IRWrite(IRWrite), 
                .MemRead(MemRead), 
                .MemtoReg(MemtoReg[1:0]), 
                .MemWrite(MemWrite), 
                .PCSource(PCSource[1:0]), 
                .PCWrite(PCWrite), 
                .PCWriteCond(PCWriteCond), 
                .RegDst(RegDst[1:0]), 
                .RegWrite(RegWrite), 
                .state_out(state[4:0])
                );
endmodule
