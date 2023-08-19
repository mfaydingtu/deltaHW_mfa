`timescale 1ns/1ps

module PISOshift(in, out, clk, sl);
  
  
  input [3:0]in; 
  input clk, sl;
  
  
  output reg out;
  
  reg [3:0]buffer;
  
  assign out=buffer[3];
  
  always @(posedge clk) begin
  
    
    if(~sl) begin	//"shift/~load" registeri 0 iken inputu bufferla
      buffer<=in;
    end
    
    
    else begin	//değilse show must begin
      
      buffer<=buffer<<1;
      buffer[0]<=in;
    
    end
  end
  
endmodule
