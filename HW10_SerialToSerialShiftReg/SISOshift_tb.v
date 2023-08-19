`timescale 1ns/1ps

module tb_SISOshift;
  
  reg tb_in, tb_clk, tb_rst ;
  
  wire tb_out;
  
  SISOshift mut0(.in(tb_in), .out(tb_out), .clk(tb_clk), .rst(tb_rst));
  
  initial begin
   //önemli
    $dumpfile("dumpfile.vcd");
    $dumpvars(0,tb_SISOshift); 
   //yukarıdaki iki satır olmadan EPWave çalıştırılamıyor. EDA Playground ile verilog testbench yazarken dump almak zorundayız
  end
  
  initial begin
    tb_in=0;
    tb_clk=0;
    tb_rst=0;
    #12 tb_rst=1;
    #10 tb_in = 1;
    #10 tb_in = 1;
    #10 tb_in = 0;
    #10 tb_in = 1;
    #10 tb_in = 0;
    #10 tb_in = 1;
    #10 tb_in = 1;
    #10 tb_in = 0;
    #10 tb_in = 1;
    #10 tb_in = 1;
    $finish;
  end
  
  always #5 tb_clk=~tb_clk;
endmodule
