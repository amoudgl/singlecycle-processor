`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:59:33 04/05/2015 
// Design Name: 
// Module Name:    pc 
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
module pc(
    input clk, input reset,
    output [6:0] addr,
    input [6:0] mux_inp
    );
	 
reg [6:0] add;

initial begin
add = 7'b0000000;
end
 
always@(posedge clk) 
begin
 if(reset) begin
 add <= 7'b0000001; 
 end
 else begin
 add <= mux_inp;
 end
end


assign addr = add; 

endmodule
