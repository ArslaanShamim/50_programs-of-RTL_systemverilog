// Code your testbench here
// or browse Examples
module tb_counter ();
  logic clk;
  logic rst;
  logic [0:6] out;
  
  counter tb_out (.clk(clk), .rst(rst), .out(out));
  
  initial begin
    $dumpfile("simple_counter.vcd");
    $dumpvars(1);
    rst=1;
    #10
    rst=0;
    #200
    rst=1;
    #20
    rst=0;
    #150
    $stop();
    $finish();
  end
  
  always begin 
   clk=1;
    #2
    clk=0;
    #2;
  end
  
endmodule
  