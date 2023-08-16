`timescale 1ns/1ps
//timescale ayarı, sonraki ödevlerde burayı yorumlamayacam


module tb_clockDivider;	//tb_clockDivider test benchinin tanımlanması
  
  reg tb_clk, tb_rst;	//testbench internal clock ve reset registerlarının tanımlanması
  
  wire tb_divideby2, tb_divideby4, tb_divideby8;	//testbench internal divided clockların tanımlanması
  
  clockDivider mut0(.clk(tb_clk), .rst(tb_rst), .divideby2(tb_divideby2), .divideby4(tb_divideby4), .divideby8(tb_divideby8));		//module under test 0 clockDivider modülü init
  
 initial begin
   //önemli
   $dumpfile("dumpfile.vcd");
   $dumpvars(0,tb_clockDivider); 
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
