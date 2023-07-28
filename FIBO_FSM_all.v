module FIBO_FSM_all(Clk, Rst, Start, Done);
  parameter size = 3 ;
  input Clk, Rst, Start;
  output Done;
  wire [size:0] data, count;
  wire [size-1:0] alu_opcode;
  wire [size-2:0] wrt_addr, rd_addr1, rd_addr2;
  wire zero_flag, wrt_en, load_data;

  
 //Connecting memory - single register on the left
  Memory memory (Clk, data, count);

  //Connecting FSM
  Fibo_FSM Fibo_FSM(Clk, Rst, Start, zero_flag, wrt_addr, wrt_en, load_data, rd_addr1, rd_addr2, alu_opcode, Done);
  
  //Connecting datapath
  Fibo_Datapath Datapath(Clk, wrt_addr, wrt_en, load_data, rd_addr1, rd_addr2, alu_opcode, count, data, zero_flag);
  
endmodule