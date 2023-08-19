`timescale 1ns/1ps

module tb_PIPOshift;
  
  reg [3:0]tb_in; 
  reg tb_clk, tb_rst ;
  
  wire [3:0]tb_out;
  
  integer i;
  
  PIPOshift mut0(.in(tb_in), .out(tb_out), .clk(tb_clk), .rst(tb_rst));
  
  initial begin
   //önemli
    $dumpfile("dumpfile.vcd");
    $dumpvars(0,tb_PIPOshift); 
   //yukarıdaki iki satır olmadan EPWave çalıştırılamıyor. EDA Playground ile verilog testbench yazarken dump almak zorundayız
  end
  
  initial begin
    tb_in=0;
    tb_clk=0;
    tb_rst=0;
    #12 tb_rst=1;
    for(i=0; i<16; i=i+1) #10 tb_in=i;
 
    $finish;
  end
  
  always #5 tb_clk=~tb_clk;
endmodule
