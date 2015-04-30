`timescale 1ns / 1ps

module datapath(input clk, input rst,
					 output DONE,
					 output [15:0] dm_out);

wire [15:0] opc, ra_val, rb_val, mx_16, aluo;
wire wr_en_reg, m_7_s, m_16_s, dmwr, fla ;
wire [6:0] adress, m_7_o, norm_out ;
wire [2:0] alusl ;
					 
regfile r1 (
  .clk  (clk),
  .ra (opc[7:4]), 
  .rb (opc[3:0]), 
  .rw (opc[11:8]),    
  .wr (wr_en_reg),
  .rav (ra_val),  
  .rbv (rb_val),  
  .val  (aluo)    
 );
 
instruction_mem i0 (
  .addr (adress), 
  .opcode   (opc) 
 );
 
datamemory d0 (
  .address  (rb_val[5:0]), 
  .write_en   (dmwr), 
  .clk   (clk), 
  .datain  (ra_val), 
  .out  (dm_out) 
 );

mux_16 m16_0 (
  .inp2 (rb_val), 
  .immi (opc[3:0]),
  .sel   (m_16_s), 
  .out (mx_16) 
 );
 
mux_7 m7_0 (
  .norm  (norm_out), 
  .immi  (opc[6:0]), 
  .sel   (m_7_s),    
  .out  (m_7_o)      
 );
 
control_unit c0 (
  .opcode (opc[15:12]), 
  .flag    (fla), 
  .done  (DONE),   
  .alu_mux   (m_16_s),
  .alu_sel (alusl),   
  .reg_wr  (wr_en_reg),
  .datm_wr   (dmwr),   
  .pc_mux   (m_7_s)    
 ); 
 
alu a0(
  .inp1  (ra_val), 
  .inp2  (mx_16),  
  .sel   (alusl),  
  .out1   (aluo)    
 );
 
pc pc0 (
  .reset  (rst),
  .addr   (adress), 
  .clk      (clk),  
  .mux_inp  (m_7_o) 
 );
 
 
addr_norm adr0( 
  .normo  (norm_out),
  .pcv    (adress)    
 );
 
flag f00 (
  .clk  (clk),
  .alu_out (aluo[15]),
  .f_out (fla)
);
 
  
endmodule

