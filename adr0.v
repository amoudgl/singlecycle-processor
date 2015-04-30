`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:36:56 04/05/2015 
// Design Name: 
// Module Name:    addr_norm 
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
module addr_norm( normo, pcv );

input  [6:0] pcv;
output [6:0] normo;

reg [6:0] ooo;

always @ (pcv)
begin
ooo <= pcv + 1;
end

assign normo = ooo;

endmodule
