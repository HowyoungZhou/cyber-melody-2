`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:02:11 08/13/2020 
// Design Name: 
// Module Name:    gpio 
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
module gpio(
    input [31:0] data_in,
    input we,
    output reg [31:0] data_out
    );

    always @(we) begin
        if(we) data_out <= data_in;
    end

endmodule
