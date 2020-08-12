`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:21:33 03/01/2020 
// Design Name: 
// Module Name:    MUX4T1 
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
module MUX4T1_5(
    input [4:0] I0,
    input [4:0] I1,
    input [4:0] I2,
    input [4:0] I3,
    input [1:0] s,
    output reg [4:0] o
    );

    always @* 
        case (s)
            0: o <= I0;
            1: o <= I1;
            2: o <= I2;
            3: o <= I3;
        endcase

endmodule

module MUX4T1_32(
    input [31:0] I0,
    input [31:0] I1,
    input [31:0] I2,
    input [31:0] I3,
    input [1:0] s,
    output reg [31:0] o
    );

    always @* 
        case (s)
            0: o <= I0;
            1: o <= I1;
            2: o <= I2;
            3: o <= I3;
        endcase

endmodule
