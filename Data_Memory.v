
module Data_Memory(
 input clk,
 // address input, shared by read and write port
 input [15:0]   mem_access_addr,
 
 // write port
 input [15:0]   mem_write_data,
 input     mem_write_en,
 input mem_read,
 // read port
 output reg [15:0]   mem_read_data
);

reg [15:0] memory [7:0];
integer f;
wire [2:0] ram_addr=mem_access_addr[2:0];
always@(ram_addr)begin
case (ram_addr)
3'b000: mem_read_data <= 16'b0000000000000001;
3'b001: mem_read_data <= 16'b0000000000000010;
3'b010: mem_read_data <= 16'b0000000000000001;
3'b011: mem_read_data <= 16'b0000000000000010;
3'b100: mem_read_data <= 16'b0000000000000001;
3'b101: mem_read_data <= 16'b0000000000000010;
3'b110: mem_read_data <= 16'b0000000000000001;
3'b111: mem_read_data <= 16'b0000000000000010;
endcase

 end
 
 always @(posedge clk) begin
  if (mem_write_en)
   memory[ram_addr] <= mem_write_data;
 end

endmodule
