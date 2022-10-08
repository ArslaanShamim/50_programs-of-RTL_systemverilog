// Code your design here
// 4x1 MUX
module MUX (
  input logic [0:3]a,     //1stinput
  input logic [0:3]b,     //2nd input 
  input logic [0:3]c,     //3rd input
  input logic [0:3]d,     //4rth input
  input logic [1:0]s,     //5th input which is select bit
  output logic [0:3]out); //output
  
  always @ (*) begin
    case (s)             //case on select bit
      2'b00 : out = a;   //1st case
      2'b01 : out = b;   //2nd case
      2'b10 : out = c;   //3rd case
      2'b11 : out = d;   //4rth case
    endcase
  end
endmodule