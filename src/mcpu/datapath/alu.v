`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:57:23 03/19/2020 
// Design Name: 
// Module Name:    ALU 
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
module ALU(input [2:0] ALU_operation,
           input [31:0] A,
           input [31:0] B,
           output reg [31:0] res,
           output zero,
           output overflow
           );

assign overflow = (ALU_operation == 2 || ALU_operation == 6) && adc_res[32] ^ adc_res[31];
assign zero = res == 0;

always @* begin
    case (ALU_operation)
    0: res <= A & B;
    1: res <= A | B;
    2: res <= A + B + ALU_operation[2];
    3: res <= A ^ B;
    4: res <= ~(A | B);
    5: res <= B >> 1;
    6: res <= A + B + ALU_operation[2];
    7: res <= {31'b0,adc_res[32]};
    endcase
end

endmodule
