`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:18:59 08/13/2020 
// Design Name: 
// Module Name:    cyber_melody 
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
module cyber_melody(
    input clk,
    input rst_n,
    // inout [3:0] btn_y,
    // inout [4:0] btn_x,
    input [15:0] raw_switches,
    input ps2_clk,
    input ps2_data,
    output [3:0] vga_r,
    output [3:0] vga_g,
    output [3:0] vga_b,
    output vga_hs,
    output vga_vs,
    output buzzer,
    output seg_clk,
    output seg_do,
    output seg_pen,
    output seg_clr
    );

    wire rst = ~rst_n;

    // clock divider
    wire [31:0] div;
    wire clk_1ms;

    clk_div clk_div (.clk(clk), .div(div), .clk_1ms(clk_1ms));

    // VGA
    parameter width = 640, height = 480;

    wire [31:0] vram_out, vram_scan;
    wire [8:0] row_addr;
    wire [9:0] col_addr;
    wire [17:0] vram_scan_addr = (row_addr * width + col_addr) / 2;
    wire [17:0] vram_out_addr;
    wire vram_we;

    vram vram (
        .clka(clk), // input clka
        .wea(vram_we), // input [0 : 0] wea
        .addra(vram_out_addr), // input [17 : 0] addra
        .dina(vram_out), // input [31 : 0] dina
        .clkb(clk), // input clkb
        .addrb(vram_scan_addr), // input [17 : 0] addrb
        .doutb(vram_scan) // output [31 : 0] doutb
        );
    
    vga_controller vga (
        .vga_clk(div[1]), 
        .clrn(rst_n), 
        .d_in(vram_scan_addr % 2 ? vram_scan[11:0] : vram_scan[27:16]), 
        .row_addr(row_addr), 
        .col_addr(col_addr), 
        .rdn(), 
        .r(vga_r), 
        .g(vga_g), 
        .b(vga_b), 
        .hs(vga_hs), 
        .vs(vga_vs)
        );

    // PS/2
    wire [7:0] ps2_key_code;
    wire ps2_key_ready;

    ps2_controller ps2 (
        .clk(clk),
        .ps2_clk(ps2_clk), 
        .ps2_data(ps2_data), 
        .keycode(ps2_key_code), 
        .keypress(ps2_key_ready)
        );

    // pitch generator
    wire [7:0] pitch_gen_data;
    wire pitch_gen_we;

    pitch_generator pitch_gen (
        .clk(clk), 
        .we(pitch_gen_we), 
        .data(pitch_gen_data),
        .wave(buzzer)
        );
    
    // switches
    wire [15:0] switches;

    anti_jitter #(4) switches_anti_jitter [15:0](.clk(div[15]), .I(raw_switches), .O(switches));

    // 7-segment device
    wire [31:0] gpio_out, gpio_data, seven_seg_data;
    wire gpio_we;
    wire [3:0] seg_out;

    assign {seg_clk, seg_do, seg_pen, seg_clr} = seg_out;

    gpio gpio (
        .we(gpio_we),
        .data_in(gpio_out),
        .data_out(gpio_data)
        );

    bcd_encoder bcd_encoder (
        .in(gpio_data), 
        .out(seven_seg_data)
        );

    seg7_controller seg7_controller (
        .clkIO(div[3]), 
        .clkScan(div[15:14]), 
        .clkBlink(div[25]), 
        .data(seven_seg_data), 
        .point(8'h0),
        .LES(8'h0),
        .segment(), 
        .anode()
        );

    // RAM
    wire [31:0] ram_in, ram_out;
    wire [9:0] ram_addr;
    wire ram_we;

    // counter
    wire [31:0] counter_in;

    // CPU
    wire mem_w;
    wire [31:0] cpu_out, cpu_in, addr;

    mcpu cpu (
        .clk(clk), 
        .Data_in(cpu_in), 
        .INT(), 
        .MIO_ready(1'b1), 
        .reset(rst), 
        .Addr_out(addr), 
        .CPU_MIO(), 
        .Data_out(cpu_out), 
        .inst_out(), 
        .mem_w(mem_w), 
        .PC_out(), 
        .state()
        );

    mio_bus bus (
        .mem_w(mem_w), 
        .switches(switches), 
        .key_code(ps2_key_code), 
        .key_ready(ps2_key_ready), 
        .cpu_out(cpu_out), 
        .addr(addr), 
        .ram_in(ram_in), 
        .counter_in(counter_in), 
        .cpu_in(cpu_in), 
        .ram_out(ram_out), 
        .vram_out(vram_out), 
        .pitch_gen_out(pitch_gen_data), 
        .ram_addr(ram_addr), 
        .vram_addr(vram_out_addr), 
        .gpio_out(gpio_out), 
        .ram_we(ram_we), 
        .vram_we(vram_we), 
        .pitch_gen_we(pitch_gen_we), 
        .gpio_we(gpio_we)
        );

endmodule
