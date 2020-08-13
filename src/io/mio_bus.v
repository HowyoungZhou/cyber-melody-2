module MIO_BUS(
    input wire [15:0] sw,
    input wire [7:0] key_code,
    input wire key_ready,
    input wire mem_w,
    input wire [31:0] Cpu_data2bus, //data from CPU
    input wire [31:0] addr_bus, //addr from CPU
    input wire [31:0] ram_data_out,
    input wire [31:0] vram_data_out,
    input wire [31:0] counter_out,
    output reg [31:0] Cpu_data4bus, //write to CPU
    output reg [31:0] ram_data_in, //from CPU write to Memory
    output reg [31:0] vram_data_in, //from CPU write to VGA RAM
    output reg [9: 0] ram_addr, //Memory Address signals
    output reg [10:0] vram_addr, //address of vga ram
    output reg data_ram_we,
    output reg data_vram_we,
    output reg GPIOf0000000_we, // GPIOffffff00_we
    output reg GPIOe0000000_we, // GPIOfffffe00_we
    output reg [31:0] Peripheral_in //送外部设备总线
    );

reg data_ram_rd, data_vram_rd, sw_rd, key_rd, counter_rd;

always @(*) begin // RAM & IO decode signals:
    data_ram_we = 0; // 主存写信号
    data_ram_rd = 0; // 主存读信号
    data_vram_we = 0; // VRAM 写信号
    data_vram_rd = 0; // VRAM 读信号
    GPIOf0000000_we = 0; // 设备1：PIO 写信号
    GPIOe0000000_we = 0; // 计数器：Counter_x 写信号
    sw_rd = 0; // SW 读信号
    key_rd = 0; // key 读信号
    counter_rd = 0; // 计数器读信号
    ram_addr = 10'h0; // 内存物理地址：RAM_B 地址
    ram_data_in = 32'h0; // 内存读数据：RAM_B 输出数据
    vram_addr = 11'h0;
    vram_data_in = 32'h0; // VRAM 读数据
    Peripheral_in=32'h0; // 外设总线：CPU 输出，外设写入数据
    case(addr_bus[31:28]) // 开始译码
        4'h0: begin // RAM 读写(00000000 - 00000ffc, actually lower 4KB RAM)
            data_ram_we = mem_w;
            ram_addr = addr_bus[11:2];
            ram_data_in = Cpu_data2bus;
            data_ram_rd = ~mem_w;
        end
        4'h1: begin // 计数器读（10000000 - 1fffffff Counter )
            counter_rd = ~mem_w;
        end
        4'he: begin // 七段显示器写(e0000000 - efffffff, SSeg7_Dev)
            GPIOe0000000_we = mem_w;
            Peripheral_in = Cpu_data2bus;
        end
        4'hf: begin // 开关读(f0000000 - ffffffff switch )
            sw_rd = ~mem_w;
        end
        4'hd: begin // 键盘读(d0000000 - dfffffff button )
            key_rd = ~mem_w;
        end
        4'hc: begin // VRAM 读写(c0000000 - c00012bc, actually lower 1200 words VRAM)
            data_vram_we = mem_w;
            vram_addr = addr_bus[10:0];
            vram_data_in = Cpu_data2bus;
            data_vram_rd = ~mem_w;
        end
    endcase
end

always @(*)begin // Data to CPU
    Cpu_data4bus = 32'h0;
    casex({data_vram_rd,data_ram_rd, sw_rd, key_rd, counter_rd})
        5'b1xxxx: Cpu_data4bus = vram_data_out; //read from VRAM
        5'bx1xxx: Cpu_data4bus = ram_data_out; //read from RAM
        5'bxx1xx: Cpu_data4bus = {16'b0,sw}; //read from SW
        5'bxxx1x: Cpu_data4bus = {24'b0,key_code};//read from key
        5'bxxxx1: Cpu_data4bus = counter_out; //read from counter
    endcase
end

endmodule