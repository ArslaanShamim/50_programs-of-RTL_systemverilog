                                         // Code your design here
                                         //Odd counter
module counter ( rst,clk,out);
  input logic clk;
  input logic rst;
  output logic [0:6]out=8'd1;
  
 
  always @ (posedge clk) begin         //count ever positive clock cycle
   
    if (~rst) begin                    //if rst is 1 out is greater than 100, then out = 1 
      if (out >= 7'd100) begin
        out = 7'd1;
      end
      else begin
        out = out + 7'd2;              //otherwise count odd numbers
      end
          end
      
    else begin
      out = 7'd1;
  end
      
  end
endmodule
      