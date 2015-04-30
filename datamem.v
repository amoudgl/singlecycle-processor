`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIIT-H
// Engineer: VINAMRA BENARA, Abhinav moudgil
// 
// Create Date:    14:47:49 04/02/2015 
// Design Name: 
// Module Name:    data_mem 
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
module datamemory(
    input  [5:0] address, // 6 bit address. 64 registers.
    input  write_en,
	input  clk, 
    input  [15:0] datain,
    output [15:0] out
    );
	 
reg [15:0] mem[0:63]; 
	
always@(negedge clk) 
begin
 if(write_en) 
 mem[address] <= datain;
end 

assign out = mem[address];

endmodule
