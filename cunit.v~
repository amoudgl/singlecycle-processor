`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIIT-H
// Engineer: Abhinav Moudgil
// 
// Create Date:    01:31:46 04/05/2015 
// Design Name: 
// Module Name:    control_unit 
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
module control_unit(opcode,flag,done,alu_mux,alu_sel,reg_wr,datm_wr,pc_mux);

///inputs///
input flag;
input [3:0] opcode;   //////clk removed//////////

/// outputs///
output alu_mux, reg_wr, datm_wr, pc_mux,done;
output [2:0] alu_sel;

///variable///
reg alu_m,regf_wr,dm_wr,pc_m,don;
reg [2:0] alu_selc;

initial
pc_m = 1'b0;

always@(opcode,flag)
begin
 case( opcode )//opcode first 4 bits
  4'b0000: begin //add
           alu_m   <= 0;
			  alu_selc <= 3'b000;
			  regf_wr <= 1'b0;
			  dm_wr   <= 0;
			  pc_m    <= 0;
  			  don <= 0;
			  end
			  
  4'b0001: begin //add
           alu_m   <= 0;
			  alu_selc <= 3'b000;
			  regf_wr <= 1'b1;
			  dm_wr   <= 0;
			  pc_m    <= 0;
  			  don <= 0;
			  end
			  
  4'b0010: begin //mov
           alu_m   <= 0;
			  alu_selc <= 3'b101;
			  regf_wr <= 1'b1;
			  dm_wr   <= 0;
			  pc_m    <= 0;
			  don <= 0;
			  end
			  
  4'b1100: begin //addi
			  alu_m   <= 1; // immidiate
			  alu_selc <= 3'b000;
			  regf_wr <= 1'b1;
			  dm_wr   <= 0;
			  pc_m    <= 0;
			  don <= 0;
			  end
			  
  4'b1101: begin //movi
			  alu_m   <= 1;
			  alu_selc <= 3'b110; // inp2 at alu output
			  regf_wr <= 1'b1;
			  dm_wr   <= 0;
			  pc_m    <= 0;
			  don <= 0;
			  end
			  
  4'b1000: begin //blt (checks for less-than flag)
			   if(!flag) begin
			    alu_m   <= 0;
			    alu_selc <= 3'b000;
			    regf_wr <= 0;
			    dm_wr   <= 0;
			    pc_m    <= 1;// immi value
				 don <= 0;
				end
            else begin
             alu_m   <= 0;
			    alu_selc <= 3'b000;
			    regf_wr <= 0;
			    dm_wr   <= 0;
			    pc_m    <= 0;
				 don <= 0;
				end 				
			  end
			  
  4'b0101: begin //store
			  alu_m   <= 0;
			  alu_selc <= 3'b000;
			  regf_wr <= 0;
			  dm_wr   <= 1;
			  pc_m    <= 0;
			  don <= 0;
			  end
			  
  4'b0100: begin //cmp (sets less than flag)  (doubt, need help)
			  alu_m   <= 0;
			  alu_selc <= 3'b001; // subtracting mode & set flag till result is positive
			  regf_wr <= 0;
			  dm_wr   <= 0;
			  pc_m    <= 0;
			  don <= 0;
			  end
			  
  default: begin // check (doubt)
           don <= 1;
			  alu_m   <= 0;
			  alu_selc <= 3'b000;
			  regf_wr <= 1'b0;
			  dm_wr   <= 0;
			  pc_m    <= 0;
           end
 endcase			  
end

assign alu_sel = alu_selc;
assign alu_mux = alu_m;
assign reg_wr  = regf_wr;
assign datm_wr = dm_wr;
assign pc_mux  = pc_m; 
assign done    = don;

endmodule
