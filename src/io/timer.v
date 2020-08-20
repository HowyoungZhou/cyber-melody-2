`timescale 1ns / 1ps

module timer(
    input clk,
    input [31:0] data_in,
    input we,
    output reg [31:0] data_out,
    output zero
    );

    assign zero = data_out == 0;
    
    always @(we) begin
        if(we) data_out <= data_in;
    end

    always @(posedge clk) begin
        data_out = data_out == 0 ? 0 : data_out - 1;
    end

endmodule
