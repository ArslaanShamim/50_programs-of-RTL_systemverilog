// Code your testbench here
// or browse Examples
module tb_mux();
  logic [0:3]a;
  logic [0:3]b;
  logic [0:3]c;
  logic [0:3]d;
  logic [1:0]s;
  logic [0:3]out;
  
  MUX test_mux (.*);
  
  initial begin
    $dumpfile("mux.vcd");
    $dumpvars(1);
  end
  
  initial begin
    s = 2'b0;       
    a = $random;      //random values of a, b, c, d
    b = $random;
    c = $random;
    d = $random;
    
    for(int i=1; i < 4; i++) begin     //values(0-3) for select bit
      #5 s = i;
    end
    #5
    $stop();
    $finish();
  end
endmodule
