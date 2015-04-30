`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIIT-H
// Engineer: Vinamra Benara
// 
// Create Date:    15:47:29 03/29/2015 
// Design Name:    SCPD
// Module Name:    alu 
// Project Name:   EW2
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
module alu(inp1,inp2,sel,out1);
input  [15:0] inp1;
input  [15:0] inp2;
input   [2:0] sel;
output [15:0] out1;

reg [15:0] outp;

always@(inp1,inp2,sel)
begin
 case (sel)
  3'b000:  outp <= inp1+inp2;
  3'b001:  outp <= inp1-inp2;
  3'b010:  outp <= inp1&inp2;
  3'b011:  outp <= inp1|inp2;
  3'b100:  outp <= inp1^inp2;
  3'b101:  outp <= inp1;
  3'b110:  outp <= inp2;
  default: outp <= inp1+inp2;
 endcase
end

assign out1 = outp;

endmodule
