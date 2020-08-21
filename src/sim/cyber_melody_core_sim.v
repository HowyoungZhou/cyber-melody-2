`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:09:30 08/19/2020
// Design Name:   cyber_melody_core
// Module Name:   F:/Coding/cyber_melody_2/src/sim/cyber_melody_core_sim.v
// Project Name:  cyber_melody_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cyber_melody_core
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cyber_melody_core_sim;

	// Inputs
	reg clk;
	reg rst_n;
	reg [7:0] ps2_key_code;
	reg ps2_key_ready;
	reg [15:0] raw_switches;

	// Outputs
	wire [3:0] vga_r;
	wire [3:0] vga_g;
	wire [3:0] vga_b;
	wire vga_hs;
	wire vga_vs;
	wire buzzer;
	wire seg_clk;
	wire seg_do;
	wire seg_pen;
	wire seg_clr;

	// Instantiate the Unit Under Test (UUT)
	cyber_melody_core uut (
		.clk(clk), 
		.rst_n(rst_n), 
		.ps2_key_code(ps2_key_code), 
		.ps2_key_ready(ps2_key_ready), 
		.raw_switches(raw_switches), 
		.vga_r(vga_r), 
		.vga_g(vga_g), 
		.vga_b(vga_b), 
		.vga_hs(vga_hs), 
		.vga_vs(vga_vs), 
		.buzzer(buzzer), 
		.seg_clk(seg_clk), 
		.seg_do(seg_do), 
		.seg_pen(seg_pen), 
		.seg_clr(seg_clr)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst_n = 1;
		ps2_key_code = 0;
		ps2_key_ready = 0;
		raw_switches = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		fork
			forever #5 clk <= ~clk;
			begin
				ps2_key_code = 8'h16;
				ps2_key_ready = 1;
				#8000000
				ps2_key_code = 8'h4e;
				#2000000
				ps2_key_ready = 0;

			end
		join
	end
      
endmodule

