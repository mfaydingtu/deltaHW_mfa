`timescale 1ns/1ps

module SIPOshift(in, out, clk, rst);
  
  
  input in, clk, rst;
  
  output reg [3:0]out;
  //cevap anahtarı tmp diye bir buffer daha atmış, register israfı.
  
  always @(posedge clk) begin
    
    if(~rst) out=4'b0000; //reset
    
    else begin
      out<=out<<1;//bufferi 1 sola kaydır
      out[0]<=in;//bufferin lsb ini kaydırılacak veriye eşitle
      
          
    end
  end
  
endmodule
