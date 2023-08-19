`timescale 1ns/1ps

module SISOshift(in, out, clk, rst);
  
  
  input in, clk, rst;
  
  output out;
  
  reg [3:0]buffer; //internal buffer
  
  assign out=buffer[3]; //bufferin son elemanı kaydırılmış çıkış
  
  always @(posedge clk) begin
    
    if(~rst) buffer=4'b0000; //reset
    
    else begin
      buffer<=buffer<<1;//bufferi 1 sola kaydır
      buffer[0]<=in;//bufferin lsb ini kaydırılacak veriye eşitle
      
          
    end
  end
  
endmodule
