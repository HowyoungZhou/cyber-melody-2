`timescale 1ns / 1ps

module timer(
    input clk,
    input [31:0] data_in,
    input we,
    output reg [31:0] data_out = 0,
    output zero
    );

    assign zero = data_out == 0;

    always @(posedge clk or posedge we) begin
        if(we) data_out <= data_in;
        else if(data_out != 0) data_out <= data_out - 1;
    end

endmodule
