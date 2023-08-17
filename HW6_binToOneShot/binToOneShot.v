`timescale 1ns/1ps

module binToOneShot(x,y);
  parameter IN_WIDTH=4;
  parameter OUT_WIDTH=16;
  
  input wire [IN_WIDTH-1:0]x;
  output wire [OUT_WIDTH-1:0]y;
  
  assign y=1<<x;	//1 bitini x'in değeri kadar shift et
  
endmodule
