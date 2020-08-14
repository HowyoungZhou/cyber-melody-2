module bcd_encoder (
    input [31:0] in,
    output [31:0] out
);
    // convert to BCD
    assign out[3:0] = in % 10;
    assign out[7:4] = in / 10 % 10;
    assign out[11:8] = in / 100 % 10;
    assign out[15:12] = in / 1000 % 10;
    assign out[19:16] = in / 10000 % 10;
    assign out[23:20] = in / 100000 % 10;
    assign out[27:24] = in / 1000000 % 10;
    assign out[31:28] = in / 10000000 % 10;
endmodule
