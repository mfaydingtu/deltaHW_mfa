`timescale 1ns/1ps

module PIPOshift(in, out, clk, rst);
  
  
  input [3:0]in; 
  input clk, rst;
  
  output reg [3:0]out;
  
  always @(posedge clk) begin
    
    if(~rst) out=4'b0000; //reset
    
    else out<=in; //parallel shifter değil de 4 kanallı buffer ya da sampler oldu gibi lol
          
  end
  
endmodule
