//`include "Parameter.v"
// fpga4student.com 
// FPGA projects, VHDL projects, Verilog projects 
// Verilog code for RISC Processor 
// Verilog code for Instruction Memory
module Instruction_Memory(
 input[15:0] pc,
 output reg[15:0] instruction
);

 reg [15:0] memory [14:0];
 wire [3:0] rom_addr = pc[4:1];
 always@(rom_addr)begin
case (rom_addr)
4'b0000: instruction <= 16'b0000010000000000;
4'b0001: instruction <= 16'b0000010001000001;
4'b0010: instruction <= 16'b0010000001010000;
4'b0011: instruction <= 16'b0001001010000000;
4'b0100: instruction <= 16'b0011000001010000;
4'b0101: instruction <= 16'b0100000001010000;
4'b0110: instruction <= 16'b0101000001010000;
4'b0111: instruction <= 16'b0110000001010000;
4'b1000: instruction <= 16'b0111000001010000;
4'b1001: instruction <= 16'b1000000001010000;
4'b1010: instruction <= 16'b1001000001010000;
4'b1011: instruction <= 16'b0010000000000000;
4'b1100: instruction <= 16'b1011000001000001;
4'b1101: instruction <= 16'b1100000001000000;
4'b1110: instruction <= 16'b1101000000000000;
endcase

 end
 
endmodule
