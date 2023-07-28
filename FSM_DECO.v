module FSM_DECO(opcode, operand1, operand2, wrt_addr, wrt_en, load_data, rd_addr1, rd_addr2, alu_opcode);
  parameter size = 4;
  input [size-2:0] opcode;
  input [1:0] operand1, operand2;
  output reg [size-2:0] alu_opcode;
  output reg [1:0] wrt_addr, rd_addr1, rd_addr2;
  output reg wrt_en, load_data;
  
  
  always @(opcode)
  begin
    alu_opcode = opcode;
    rd_addr2 = operand2;
    case(opcode)
      3'b000: wrt_en = 0;
      001: begin
            wrt_addr = operand1;
            wrt_en = 1;
            load_data = 0;
          end
      010: begin
            rd_addr1 = operand1;
            wrt_addr = operand1;
            wrt_en = 1;
            load_data = 0;
          end 
      011: begin
            rd_addr1 = operand1;
            wrt_addr = operand1;
            wrt_en = 1;
            load_data = 0;
          end 
      100: begin
            wrt_addr = operand1;
            wrt_en = 1;
            load_data = 1;
          end
      101: begin
            rd_addr1 = operand1;
            wrt_en = 0;
          end
      110: begin
            rd_addr1 = operand1;
            rd_addr2 = operand2;
            wrt_addr = operand1;
            wrt_en = 1;
            load_data = 0;
          end
      111: begin
            rd_addr1 = operand2;
            wrt_addr = operand1;
            wrt_en = 1;
            load_data = 0;
          end
    endcase
  end
endmodule
          
        
        
        
        
        
        
        
        
        
        
        
                       
                       