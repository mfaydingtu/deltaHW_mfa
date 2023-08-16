`timescale 1ns/1ps
//timescale ayarı, sonraki ödevlerde burayı yorumlamayacam


module tb_johnsonCounter;	//tb_clockDivider test benchinin tanımlanması
  parameter WIDTH = 4;	//johnson counter boyutu parametresi 4 olarak atanır
  reg tb_clk, tb_rst;	//testbench internal clock ve reset registerlarının tanımlanması
  
  wire [3:0]tb_count;	//testbench internal divided clockların tanımlanması
  
  johnsonCounter mut0(.clk(tb_clk), .rst(tb_rst), .count(tb_count));	//module under test 0 johnson counter modülü init
  
 initial begin
   //önemli
   $dumpfile("dumpfile.vcd");
   $dumpvars(0,tb_johnsonCounter); 
   //yukarıdaki iki satır olmadan EPWave çalıştırılamıyor. EDA Playground ile verilog testbench yazarken dump almak zorundayız
   
   
   tb_clk = 0;
   tb_rst = 0;
   
   #50 tb_rst = 1;	//50ns sonra reset 1 yapılır ve modül aktifleşir
   
 end
  
  always
    #10 tb_clk=~tb_clk;	//20ns periyotlu bir clock üretilir
  
  initial
    #500 $finish;	//500ns sonra testbench durdurulur.
  
endmodule	//voila!
