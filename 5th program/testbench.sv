// Code your testbench here
// or browse Examples
module Pro6_tb ();
  logic Clk;
  logic Rst;
  logic [7:0]In;
  logic [7:0]Out;
  
  S_Shift_Reg tb_6 (.*);
  
  initial begin
    $dumpfile("S_Shift_Reg.vcd");
    $dumpvars(1);
  end

  always begin
    Clk = 1'b1;
    #5;
    Clk = 1'b0;
    #5;
  end

  initial begin
    Rst <= 1'b1;
   In <= 8'b0;
         @(posedge Clk);
   In <= 8'b1;
         @(posedge Clk);
   In <= 2;
       @(posedge Clk);
    Rst <= 1'b0;
      @(posedge Clk);
  
    for (int i=0; i<16; i=i+1) begin
     In <= $random;
        @(posedge Clk);
    end
       @(posedge Clk);
      Rst <= 1'b1;
      In <=5;
    #40;
    $stop();
    $finish();
  end
endmodule