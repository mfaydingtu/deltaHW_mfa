//bidirectional shift register yaparım yapmasına da hangi tür?? serial ya da parallel out olabilir

`timescale 1ns/1ps

module biDirShift(in, out, clk, rst, dir);
  
  
  input in, clk, rst, dir;
  
  output reg [3:0]out;
  
  always @(posedge clk) begin
    
    if(~rst) out=4'b0000; //reset
    
    else begin
      if(dir) begin
        out<=out<<1;//bufferi 1 sola kaydır
        out[0]<=in;//bufferin lsb ini kaydırılacak veriye eşitle
      end
      
      else begin
        out<=out>>1;//bufferi 1 sağa kaydır
        out[3]<=in;//bufferin msb ini kaydırılacak veriye eşitle
      end
          
    end
  end
  
endmodule
