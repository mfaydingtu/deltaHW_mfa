`timescale 1ns/1ps

module tb_syncBCDcounter_4bit;
  
  reg tb_clk, tb_rst;
  
  wire [3:0]tb_count;
  
  syncBCDcounter_4bit mut0(.clk(tb_clk), .rst(tb_rst), .count(tb_count));	//mut0 init
  
  initial begin
   //önemli
    $dumpfile("dumpfile.vcd");
    $dumpvars(0,tb_syncBCDcounter_4bit); 
   //yukarıdaki iki satır olmadan EPWave çalıştırılamıyor. EDA Playground ile verilog testbench yazarken dump almak zorundayız
  end
  
  initial begin
    tb_clk=0;
    tb_rst=0;
   	#50 tb_rst=1;	
    #500 $finish;
  end
  
  always begin
    #10 tb_clk=~tb_clk;	//20ns periyotlu clock sinyali
  end
  
endmodule
