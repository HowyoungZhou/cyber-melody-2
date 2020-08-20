`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    21:16:06 08/03/2009
// Design Name:
// Module Name:    ctrl
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
module ctrl(input  clk,
				input  reset,
				input  [31:0] Inst_in,
				input  zero,
				input  overflow,
				input  MIO_ready,
				
				output reg MemRead,
				output reg MemWrite,
				output reg[3:0]ALU_operation,
				output [4:0]state_out,
				output reg CPU_MIO,
				output reg IorD,
				output reg IRWrite,
				output reg [1:0]RegDst,
				output reg RegWrite,
				output reg [1:0]MemtoReg,
				output reg ALUSrcA,
				output reg [1:0]ALUSrcB,
				output reg [1:0]PCSource,
				output reg PCWrite,
				output reg PCWriteCond,
				output reg Branch
				);
				
    parameter IF=4'b0000, ID=4'b0001, Mem_Ex=4'b0010, Mem_RD=4'b0011,
            LW_WB=4'b0100, Mem_W=4'b0101, R_Exc=4'b0110, R_WB=4'b0111,
            Beq_Exc=4'b1000, J=4'b1001, I_Exc=4'b1010, I_WB=4'b1011,
            Lui_WB=4'b1100, Bne_Exc=4'b1101, Jr=4'b1110, Jal=4'b1111;

    parameter value0 = 20'b10010100000100001000,
              value1 = 20'b00000000001100000000,
              value2 = 20'b00000000001010000000,
              value3 = 20'b00110000001010001000,
              value4 = 20'b00000001000001000000,
              value5 = 20'b00101000001010001000,
              value6 = 20'b00000000000010000100,
              value7 = 20'b00000000000011010000,
              value8 = 20'b01000000010010000011,
              value9 = 20'b10000000101100000000,
              value10= 20'b00000000001010000110,
              value11= 20'b00000000001011000000,
              value12= 20'b00000010001101000000,
              value13= 20'b01000000010010000010,
              value14= 20'b10000000000010000000,
              value15= 20'b10000011101101100000;
	parameter AND=4'b0000, OR=4'b0001, ADD=4'b0010, SUB=4'b0110, NOR=4'b0100, SLT=4'b0111, XOR=4'b0011, SRL=4'b0101, SLL=4'b1000;
	parameter LW = 6'b100011, SW = 6'b101011, R = 0, BEQ = 6'b000100, JUMP = 6'b000010,
              ADDI = 6'b001000, ANDI = 6'b001100, ORI = 6'b001101, XORI = 6'b001110,
              SLTI = 6'b001010, LUI = 6'b001111, BNE = 6'b000101, JAL = 6'b000011;

	`define signals {PCWrite, PCWriteCond, IorD, MemRead, MemWrite, IRWrite, MemtoReg, PCSource, ALUSrcB, ALUSrcA, RegWrite, RegDst, CPU_MIO, ALUop, Branch}
	
	reg [1:0] ALUop = 0;
	reg [4:0] state = 0;
	wire [4:0] rs,rt,rd,shamt;
	wire [5:0] funct, opcode;
	assign {opcode, rs,rt,rd,shamt,funct} = Inst_in;
	assign state_out = state;

    always @ * begin
        case(ALUop)
            2'b00: ALU_operation = ADD;
            2'b01: ALU_operation = SUB;
            2'b10:
            case (funct)
                6'b100000: ALU_operation = ADD;
                6'b100010: ALU_operation = SUB;
                6'b100100: ALU_operation = AND;
                6'b100101: ALU_operation = OR;
                6'b100111: ALU_operation = NOR;
                6'b101010: ALU_operation = SLT;
                6'b000000: ALU_operation = XOR;
				6'b000110: ALU_operation = SRL;
				6'b000100: ALU_operation = SLL;
                default:   ALU_operation = ADD;
            endcase
            2'b11:
            case (opcode)
                ADDI: ALU_operation = ADD;
                ANDI: ALU_operation = AND;
                ORI: ALU_operation = OR;
                XORI: ALU_operation = XOR;
                SLTI: ALU_operation = SLT;
                default: ALU_operation = ADD;
            endcase
        endcase
    end
    
    always @ * begin
		case(state)
			IF: `signals = value0;
			ID: `signals = value1;
			Mem_Ex: `signals = value2;
			Mem_RD: `signals = value3;
			LW_WB: `signals = value4;
			Mem_W: `signals = value5;
			R_Exc: `signals = value6;
			R_WB: `signals = value7;
			Beq_Exc: `signals = value8;
			J: `signals = value9;
            I_Exc: `signals = value10;
            I_WB: `signals = value11;
            Lui_WB: `signals = value12;
            Bne_Exc: `signals = value13;
            Jr: `signals = value14;
            Jal: `signals = value15;
			default: `signals = value0;
		endcase
	end

	always @(posedge clk or posedge reset) begin
		if (reset==1) state <= IF; else
		case (state)
			IF: state <= MIO_ready ? ID : IF;
			ID: case (opcode)
                ADDI, ANDI, ORI, XORI, SLTI: state <= I_Exc;
                LUI: state <= Lui_WB;
				LW, SW: state <= Mem_Ex;
				R: state <= funct == 6'b001000 ? Jr : R_Exc;
				BEQ: state <= Beq_Exc;
                BNE: state <= Bne_Exc;
				JUMP: state <= J;
                JAL: state <= Jal;
				default: state <= ID; // nop
			endcase
			Mem_Ex: state <= opcode == LW ? Mem_RD : Mem_W;
			J, Jr, Jal, Beq_Exc, Bne_Exc, R_WB, I_WB, LW_WB, Lui_WB: state <= IF;
			Mem_W: state <=  MIO_ready ? IF : Mem_W;
			Mem_RD: state <= MIO_ready ? LW_WB : Mem_RD;
			R_Exc: state <= R_WB;
            I_Exc: state <= I_WB;
			default: state <= ID; // nop
		endcase
	end
endmodule
