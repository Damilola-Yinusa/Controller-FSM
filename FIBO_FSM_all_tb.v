module FIBO_FSM_all_tb ();
  reg Clk, Rst, Start;
  wire Done;
  
  FIBO_FSM_all Fibo_Design (Clk, Rst, Start, Done);
  
  
  always #5 Clk = ~Clk;
  
  initial 
    begin
      
      Clk=0; Rst=1; Start=0;
 	 		#10 Rst=0; Start=0; 
    		#10 Rst=0; Start=1; 
    		#10 Rst=0; Start=1; 
    		#10 Rst=0; Start=1; 
    		#10 Rst=0; Start=1; 
    		#10 Rst=0; Start=1; 
    		#10 Rst=0; Start=1; 
    		#10 Rst=0; Start=1; 
    		#10 Rst=0; Start=1; 
    		#10 Rst=0; Start=1; 
    		#10 Rst=0; Start=1; 
    		
	 	end
endmodule
