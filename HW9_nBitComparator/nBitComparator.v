`timescale 1ns/1ps

module nBitComparator(a, b, lesser, greater, equal);
  
  parameter WIDTH=2;
  
  input [WIDTH-1:0] a,b;
  output lesser, greater, equal;
  
  
  assign lesser = a<b;
  assign greater = a>b;
  assign equal = a==b;
  
endmodule
