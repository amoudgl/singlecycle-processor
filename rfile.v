module regfile(clk,ra,rb,rw,wr,rav,rbv,val);
//////input ports//////////
input [15:0] val;
input [3:0] ra,rb,rw;
input clk,wr;
////output ports/////////////
output [15:0] rav,rbv;

/////////////var///////////
reg [15:0] rfile [0:15]; // rfile[x]= register of 16 bits
reg [4:0] i;

///////init////////
initial begin
rfile[0] = 16'b0000000000001000;
rfile[1] = 16'b0;
rfile[2] = 16'b1;
for(i=3; i < 16 ; i= i + 1) begin
rfile[i] =16'b0;
end
end

///////assignment//////////
assign rav = rfile[ra];
assign rbv = rfile[rb];

/////code begins//////  
always@(posedge clk)
begin
  if(wr) begin// write
  rfile[rw] <= val; // rw= address where data will be written
  end
end

endmodule
