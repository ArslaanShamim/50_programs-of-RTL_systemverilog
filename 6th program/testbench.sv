// Code your testbench here
// or browse Examples

module LFSR_tb ();

  logic Clk;
  logic Rst;
  logic [3:0] Out;

  four_bit_LFSR LFSR (.*);
  
  initial begin           //generate dump file
    $dumpfile("four_bit_LFSR.vcd");
     $dumpvars(2);
  end

  always begin           //generate clock
    Clk = 1'b1;
    #5;
    Clk = 1'b0;
    #5;
  end

  initial begin
    Rst <= 1'b1;       // reset is high
       @(posedge Clk);
       @(posedge Clk);
    Rst <= 1'b0;      // after 2 positive edge of clock reset will become low
    for (int i=0; i<=32; i=i+1) //loop run 32 times
       @(posedge Clk);
    #5
    $stop();
    $finish();
  end


endmodule