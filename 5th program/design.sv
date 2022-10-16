// Code your design here
//Simple Shift Register

module S_Shift_Reg(input logic Clk,            //Clock
                   input logic Rst,            //Reset
                   input logic [7:0]In,        //Input
                   output logic[7:0]Out);      //Output

  logic [7:0] sr;
  logic [7:0] nxt;

  always_ff @(posedge Clk)  //Only works on positive edge of clock
    if (Rst)
      sr <= 7'b0;          //If reset is 1 then output show 0
    else
      sr <= nxt;           //otherwise it shifts
  
  assign nxt = {sr[7:0],In};
  assign Out = sr;

endmodule