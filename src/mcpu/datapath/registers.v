`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:19:32 03/20/2020 
// Design Name: 
// Module Name:    Regs 
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
module Regs(
    input clk,
    input rst,
    input [4:0] R_addr_A,
    input [4:0] R_addr_B,
    input [4:0] Wt_addr,
    input [31:0] Wt_data,
    input L_S,
    output reg [31:0] rdata_A,
    output reg [31:0] rdata_B
    );

    reg [31:0] regs [31:1];

    integer i;

    always @* begin
        rdata_A <= R_addr_A == 0 ? 0 : regs[R_addr_A];
        rdata_B <= R_addr_B == 0 ? 0 : regs[R_addr_B]; 
    end

    always @(posedge clk or posedge rst) begin
        if(rst) for(i = 1; i < 32; i = i + 1) regs[i] <= 0;
        else if(L_S && Wt_addr) regs[Wt_addr] <= Wt_data;
    end

endmodule
