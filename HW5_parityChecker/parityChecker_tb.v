`timescale 1ns/1ps
//timescale ayarı, sonraki ödevlerde burayı yorumlamayacam


module tb_parityChecker;	//tb_parityChecker test benchinin tanımlanması
  reg tb_x, tb_y, tb_z;	//testbench internal giriş
  wire tb_result;	//testbench internal çıkış
  integer i;
  
  
  parityChecker mut0(.x(tb_x), .y(tb_y), .z(tb_z), .result(tb_result));	//module under test 0 
  
 initial begin
   //önemli
   $dumpfile("dumpfile.vcd");
   $dumpvars(0,tb_parityChecker); 
   //yukarıdaki iki satır olmadan EPWave çalıştırılamıyor. EDA Playground ile verilog testbench yazarken dump almak zorundayız
 end
  
  
   initial begin
     for(i=0; i<8; i=i+1) begin	
       tb_x=i[0];
       tb_y=i[1];
       tb_z=i[2];//tüm girişlere sırası ile tüm olası değerler verilir.
       	#10;
     end
   end
  
endmodule	//voila!
