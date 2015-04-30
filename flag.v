`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:25:49 04/05/2015 
// Design Name: 
// Module Name:    flag 
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
module flag ( clk, alu_out , f_out );
input  alu_out,clk;
output f_out;

reg fl;

always@(posedge clk)
 fl <= alu_out;
 
assign f_out = fl;

endmodule
