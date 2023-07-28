module FSM(Clk, Rst, Start, zero_flag, opcode, R1, R2, Done);
  parameter size = 3 ;
  input Clk, Rst, Start, zero_flag;
  output reg Done = 0;
  output reg [size-1:0] opcode;  //where state represents the present state
  output reg [1:0] R1, R2;
  reg [1:0] R3;
  reg next_state, state;
  parameter S0=0, S1=1, S2=2, S3=3, S4=4, S5=5, S6=6, S7=7, S8=8, S9=9;
  
  
  always @(posedge Clk or posedge Rst)    //State transitions
  begin
    if(Rst)
      state = S0;
    else 
      state <= next_state;
  end
  
  
  always @(state or Start)    //Next state assignment
  begin
    if(Start)
      begin
        case(state)
          S0: begin 
                next_state = S1;
                R1 = 00;
                R2 = 00; 
                R3 = 00 ; 
                opcode = 000;
              end
          S1: begin  R1 = 01; R2 = 01; next_state = S2; opcode = 100;  end
          S2: begin  next_state = S3; opcode = 001; end
				  S3: begin  next_state = S4; opcode = 001; end
          S4: begin 
              	 opcode = 101;
                if (zero_flag==0)
                  next_state = S5;
                else
                  begin next_state = S0; Done = 1 ; end
              end
          S5: begin R3 <= R1; next_state = S6; opcode = 111; end
          S6: begin R1 <= R1 + R2; next_state = S7; opcode = 110; end
          S7: begin R2 <= R3; next_state = S8; opcode = 111; end
          S8: begin 
                opcode = 011;
                if (zero_flag==0)
                  next_state = S5;
                else
                  next_state = S9;
              end
          S9: begin next_state = S0; Done = 1 ; opcode = 101; end
        endcase
      end
    else
      next_state = S0;
  end
    
endmodule
              
                    