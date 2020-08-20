`timescale 1ns / 1ps

module graphics_processor(
    input clk,
    input [31:0] ctrl_in,
    input [31:0] tl_in,
    input [31:0] br_in,
    input [31:0] arg_in,
    input ctrl_we,
    input tl_we,
    input br_we,
    input arg_we,
    input [11:0] rom_data,
    output vram_we, // VRAM write enable
    output reg [18:0] vram_addr, // VRAM address
    output [11:0] vram_data, // VRAM data
    output reg [15:0] rom_addr,
    output finish
    );

    parameter width = 640;
    parameter height = 480;

    // states
    parameter init = 0;
    parameter fill_set_addr = 1;
    parameter fill_write_ram = 2;
    parameter draw_set_addr = 3;
    parameter draw_read_rom = 4;
    parameter draw_write_ram = 5;
    parameter fin = 6;

    // opcodes
    parameter fill = 1'b0;
    parameter draw = 1'b1;

    reg en = 0;
    reg opcode = 0;
    reg [9:0] tl_x = 0;
    reg [8:0] tl_y = 0;
    reg [9:0] br_x = 0;
    reg [8:0] br_y = 0;
    reg [11:0] arg = 0;

    reg [9:0] cur_x;
    reg [8:0] cur_y;
    reg [2:0] state;

    assign finish = en && (state == fin);
    assign vram_we = state == fill_write_ram || state == draw_write_ram;
    assign vram_data = opcode == fill ? arg : rom_data;

    always@(ctrl_we, tl_we, br_we, arg_we)begin
        if(ctrl_we) {en, opcode} <= ctrl_in[1:0];
        if(tl_we) {tl_x, tl_y} <= {tl_in[25:16], tl_in[8:0]};
        if(br_we) {br_x, br_y} <= {br_in[25:16], br_in[8:0]};
        if(arg_we) arg = arg_in[11:0];
    end

    always@(posedge clk)begin
        if(en)begin
            case(state)
                init:begin
                    // init registers
                    cur_x <= tl_x;
                    cur_y <= tl_y;
                    vram_addr <= tl_y * width + tl_x;
                    if(opcode == fill)begin
                        state <= fill_set_addr;
                    end
                    else begin
                        rom_addr <= {4'b0, arg};
                        state <= draw_set_addr;
                    end
                end
                fill_set_addr:begin
                    // move to the next pixel
                    if(cur_x < br_x) begin
                        cur_x <= cur_x + 1;
                    end
                    else begin 
                        cur_x <= tl_x;
                        cur_y <= cur_y + 1;
                    end
                    state <= fill_write_ram;
                end
                fill_write_ram:begin
                    // if the position is out of the rectangle, goto finish
                    if(cur_y > br_y) begin
                        state <= fin;
                    end
                    else begin
                        // load address
                        vram_addr <= cur_y * width + cur_x;
                        state <= fill_set_addr;
                    end
                end
                draw_set_addr:begin
                    state <= draw_read_rom;
                    // load address
                    vram_addr <= cur_y * width + cur_x;
                end
                draw_read_rom:begin
                    // move to the next pixel
                    if(cur_x < br_x) begin
                        cur_x <= cur_x + 1;
                    end
                    else begin 
                        cur_x <= tl_x;
                        cur_y <= cur_y + 1;
                    end
                    state <= draw_write_ram;
                end
                draw_write_ram:begin
                    // if the position is out of the rectangle, goto finish
                    if(cur_y > br_y) begin
                        state <= fin;
                    end
                    else begin
                        // go to the next address of ROM
                        rom_addr <= rom_addr + 1;
                        state <= draw_set_addr;
                    end
                end
            endcase
        end
        else begin
            state <= init;
        end

    end
endmodule