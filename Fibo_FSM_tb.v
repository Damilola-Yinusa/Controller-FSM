module Fibo_FSM_tb ();
  parameter size = 3 ;
  reg Clk, Rst, Start, zero_flag;
  wire [size-1:0] alu_opcode;
  wire [size-2:0] R1, R2, wrt_addr, rd_addr1, rd_addr2;
  wire wrt_en, load_data;
  wire Done;
  
  Fibo_FSM Fibonacci_Seq(Clk, Rst, Start, zero_flag, wrt_addr, wrt_en, load_data, rd_addr1, rd_addr2, alu_opcode, Done);
  
  always #10 Clk = ~Clk;
  
  initial 
    begin
      
      Clk=0; Rst=1; Start=0;
 	 		#10 Rst=0; Start=0; zero_flag=0;
    		#10 Rst=0; Start=1; zero_flag=0;
    		#10 Rst=0; Start=1; zero_flag=0;
    		#10 Rst=0; Start=1; zero_flag=0;
    		#10 Rst=0; Start=1; zero_flag=0;
    		#10 Rst=0; Start=1; zero_flag=0;
    		#10 Rst=0; Start=1; zero_flag=0;
    		#10 Rst=0; Start=1; zero_flag=0;
    		#10 Rst=0; Start=1; zero_flag=0;
    		#10 Rst=0; Start=1; zero_flag=0;
    		#10 Rst=0; Start=1; zero_flag=0;
    		
	 	end
endmodule

