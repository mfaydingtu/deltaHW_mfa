`timescale 1ns/1ps

module CLA4bit(a, b, sum, cin, cout);
  
  parameter WIDTH=4;
  
  input [WIDTH-1:0] a, b;
  input cin;
  output [WIDTH-1:0] sum;
  output cout;
  
  
  wire [WIDTH-1:0]carry;
  wire [WIDTH-1:0]g, p;
  
  assign g[0]=a[0]&b[0];	//carry generate biti
  assign p[0]=a[0]|b[0];	//carry propagate biti (normalde xor ama orlayınca da final durum değişmez)
  assign carry[0]=g[0]|(p[0]&cin);
  assign sum[0]=a[0]^b[0]^cin;
  genvar i;
  generate
    for(i=1; i<WIDTH; i=i+1) begin
      assign g[i]=a[i]&b[i];
      assign p[i]=a[i]|b[i];
      assign carry[i]=g[i]|(p[i]&carry[i-1]);
      assign sum[i]=a[i]^b[i]^carry[i-1];
    end
  endgenerate
 
  assign cout=carry[WIDTH-1];
  
endmodule
