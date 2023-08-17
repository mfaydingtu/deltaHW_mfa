`timescale 1ns/1ps

module syncBCDcounter_4bit(clk, rst, count);
  
  input wire clk, rst;
  output reg [3:0]count;
  
  always @(posedge clk) begin
    
    if (~rst|count==9) count=4'b0000; //counter 9'a ulaşınca ya da resetlenince counter sıfırlanır
    else count=count+1; //aksi durumda her clockta bir artar
  end
  
endmodule
