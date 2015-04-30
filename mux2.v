`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:41:33 04/05/2015 
// Design Name: 
// Module Name:    mux_7 
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
module mux_7(
    input [6:0] norm,
    input [6:0] immi,
    input sel,
	 output [6:0] out
    );

assign out = (sel) ? immi : norm;
endmodule
