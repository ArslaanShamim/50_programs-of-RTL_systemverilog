                                 // Code your design here
                                 //simple (1-100) counter

module simple_counter ( rst,clk,count);
  input logic clk;
  input logic rst;
  output logic [0:6]count=8'd0;
  
 
  always @ (posedge clk) begin    //always count positive edge of clock
   
    if (~rst) begin
      if (count >= 7'd100) begin  //if reset is not equal to 1 then caltulate 
        count = 7'd0;
      end
      else begin
        count = count + 7'd1;
      end
          end
      
    else begin                   //if reset is equal to 1 then count variable is equal to 0
      count = 7'd0;
  end
      
  end
endmodule
      
