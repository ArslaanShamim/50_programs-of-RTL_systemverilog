                        // Code your design here
                        //Airthmetic Operations

module ALU_OP(input logic [7:0]A,
              input logic [7:0]B,
              input logic CLK,
              input logic [2:0]SEL_BIT,
              output logic [15:0]OUT);
  logic carry;
  
  always @(posedge CLK) begin  //operations only performs when positive edge of clock is high
    
    case(SEL_BIT)
      3'b000:                          //case 1 is addition
      {carry, OUT}= {1'b0, A} + {1'b0, B};
      3'b001:                          //case 2 is subtraction
        OUT= A - B;
      3'b010:                          //case 3 is multiplication
        OUT= A * B;
      3'b011:                          //case 4 is division
        OUT= A / B;
      3'b100:                          //case 5 is logical AND
        OUT= A & B;
      3'b101:                          //case 6 is logical OR
        OUT= A | B;
      3'b110:                          //case 7 is logical XOR
        OUT= A ^ B;
      3'b111:                          //case 8 is logical NOR
        OUT= ~(A | B);
    endcase
    
  end
  
endmodule