module mio_bus(
    input wire mem_w,
    input wire [15:0] switches,
    input wire [7:0] key_code,
    input wire key_ready,
    input wire [31:0] cpu_out,
    input wire [31:0] addr,
    input wire [31:0] ram_in,
    // input wire [31:0] vram_in,
    input wire [31:0] counter_in,
    // input wire [31:0] pitch_gen_in,
    input gp_finish,
    output reg [31:0] cpu_in,
    output reg [31:0] ram_out,
    // output reg [31:0] vram_out,
    output reg [31:0] pitch_gen_out,
    output reg [13:0] ram_addr,
    // output reg [17:0] vram_addr,
    output reg [31:0] gpio_out,
    output reg [31:0] gp_ctrl_out,
    output reg [31:0] gp_tl_out,
    output reg [31:0] gp_br_out,
    output reg [31:0] gp_arg_out,
    output reg ram_we,
    // output reg vram_we,
    output reg pitch_gen_we,
    output reg gpio_we,
    output reg gp_ctrl_we,
    output reg gp_tl_we,
    output reg gp_br_we,
    output reg gp_arg_we
    );

    always @(*) begin
        gp_arg_we = 0;
        gp_br_we = 0;
        gp_ctrl_we = 0;
        gp_tl_we = 0;
        gpio_we = 0;
        pitch_gen_we = 0;
        ram_we = 0;
        
        case(addr[31:28])
            4'h0: begin // RAM I/O 00000000 - 00000ffc
                ram_we = mem_w;
                ram_addr = addr[15:2];
                ram_out = cpu_out;
                cpu_in = ram_in;
            end
            4'h1: begin // counter read only 10000000 - 1fffffff
                cpu_in = counter_in;
            end
            4'h2: begin // pitch generator write only 20000000-2fffffff
                pitch_gen_we = mem_w;
                pitch_gen_out = cpu_out;
                // cpu_in = pitch_gen_in;
            end
            // 4'hc: begin // VRAM write only c0000000 - c00257FF
            //     vram_we = mem_w;
            //     vram_addr = addr >> 2; // word address
            //     vram_out = cpu_out;
            //     // cpu_in = vram_in;
            // end
            4'hc: begin // graphic processor write only c0000000 - c0000004
                case(addr[2:0])
                    0: begin
                        gp_ctrl_we = mem_w;
                        gp_ctrl_out = cpu_out;
                    end
                    1: begin
                        gp_tl_we = mem_w;
                        gp_tl_out = cpu_out;
                    end
                    2: begin
                        gp_br_we = mem_w;
                        gp_br_out = cpu_out;
                    end
                    3: begin
                        gp_arg_we = mem_w;
                        gp_arg_out = cpu_out;
                    end
                    4: cpu_in = {31'b0, gp_finish};
                endcase
            end
            4'hd: begin // PS/2 read only d0000000 - dfffffff
                cpu_in = {key_ready, 23'b0, key_code};
            end
            4'he: begin // GPIO write only e0000000 - efffffff
                gpio_we = mem_w;
                gpio_out = cpu_out;
            end
            4'hf: begin // switches read only f0000000 - ffffffff
                cpu_in = {16'b0, switches};
            end            
        endcase
    end

endmodule
