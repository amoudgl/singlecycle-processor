`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:47:38 04/05/2015 
// Design Name: 
// Module Name:    mux_16 
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
module mux_16(
    input [15:0] inp2,
    input [3:0] immi,
    input sel,
	 output wire [15:0] out
    );

assign out = (sel) ? (immi | 16'b0000000000000000) : inp2;
endmodule
