     // Code your design here
     //4-BIT Simple Linear Feedback Shift Register (LFSR)

module four_bit_LFSR(input logic Clk,            //clock
                     input logic Rst,            //reset
                     output logic [3:0]Out);     //output

    logic [3:0]ff;                 //current record
    logic [3:0]nxt_ff;             //next record

  always_ff @(posedge Clk)  //working on positive edge of clock.
    begin
    if (Rst)                //If reset is high then ff contain 1001.
      ff <= 4'h9;
    else
      ff <= nxt_ff;         //otherwise ff contain next record
  end 
  
  assign nxt_ff[3] = ff[1] ^ ff[0]; //nxt "3rd" bit is XOR of 0 and 1st bit 
  assign nxt_ff[2:0] = ff[3:1];     //0-3 bit of nxt will store 1-3 bit of ff

  assign Out = ff;

endmodule
