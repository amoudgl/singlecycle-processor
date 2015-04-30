`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:00:56 04/02/2015 
// Design Name: 
// Module Name:    instruction_mem 
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
module instruction_mem(addr,opcode);
input [6:0] addr;
output [15:0] opcode;

reg [15:0] mem [0:127];
reg [7:0] i;

initial begin
mem[0]=  16'b0000000000000000;
mem[1]=  16'b0101000000010101;
mem[2]=  16'b1100010101010001;
mem[3]=  16'b0101000000100101;
mem[4]=  16'b1100010101010001;

mem[5]=  16'b0001001100010010;
mem[6]=  16'b0010000100100000;
mem[7]=  16'b0010001000110000;
mem[8]=  16'b1100010001000001;
mem[9]=  16'b0101000000110101;
mem[10]= 16'b1100010101010001;
mem[11]= 16'b0100000000000100;
mem[12]= 16'b1000000000000101;
 for (i = 13; i < 128; i = i + 1) begin
 mem[i]= 16'b1111000000000000;
 end
end 

assign opcode = mem[addr];
endmodule
