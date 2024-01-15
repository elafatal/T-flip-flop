module TFF ( input clk, input reset, input t, output reg q);  
  
  always @ (posedge clk) begin  
    if (reset)  
      q = 0;  
    else  
        if (t)  
            q = ~q;  
        else  
            q = q;  
  end  
endmodule  

