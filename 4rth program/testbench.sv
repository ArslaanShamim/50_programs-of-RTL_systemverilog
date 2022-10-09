// Code your testbench here
// or browse Examples
module TB_ALU();
  logic [7:0]A;
  logic [7:0]B;
  logic CLK;
  logic [2:0]SEL_BIT;
  logic [15:0]OUT;

  ALU_OP TB_OP(.*);
  
  always begin
    CLK = 1'b0;
    #5;
    CLK = 1'b1;
    #5;
  end
  
  initial begin
    
    for(int i=0;i<=7;i++)begin
      @(posedge CLK);
      A = $random;
      B = $random;
      SEL_BIT = i;
    end
    $stop();
    $finish();
    
  end
  
    initial begin
      $dumpfile("ALU_OP.vcd");
    $dumpvars(1);
  end
  
endmodule