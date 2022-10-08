// Code your testbench here
// or browse Examples
module tb_counter ();
  logic clk;
  logic rst;
  logic [0:6] count;
  
  simple_counter tb_out (.clk(clk), .rst(rst), .count(count));
  
  initial begin
    $dumpfile("simple_counter.vcd");
    $dumpvars(1);
   rst =0;
    #1
    rst=1;
   clk=1;
    #9
    rst = 0;
   #200
    rst=1;
    #10
    rst=0;
    #200
    $stop();
    $finish();
  end
 
  always #1 clk=~clk;

  
endmodule
  