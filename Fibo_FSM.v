module Fibo_FSM(Clk, Rst, Start, zero_flag, wrt_addr, wrt_en, load_data, rd_addr1, rd_addr2, alu_opcode, Done);
  parameter size = 3 ;
  input Clk, Rst, Start, zero_flag;
  output [size-1:0] alu_opcode;
  output [size-2:0] wrt_addr, rd_addr1, rd_addr2;
  output wrt_en, load_data, Done;
  wire [size-1:0] opcode;
  wire [size-2:0] R1, R2;
  
  FSM FSM (Clk, Rst, Start, zero_flag, opcode, R1, R2, Done);
  
  FSM_DECO FSM_DECO(opcode, R1, R2, wrt_addr, wrt_en, load_data, rd_addr1, rd_addr2, alu_opcode);

endmodule