`timescale 1ns/1ps
//timescale ayarı, sonraki ödevlerde burayı yorumlamayacam


module tb_majorityChecker;	//tb_majorityChecker test benchinin tanımlanması
  reg [4:0]tb_x;	//testbench internal giriş
  wire tb_z;	//testbench internal çıkış
  integer i;
  
  
  majorityChecker mut0(.x(tb_x), .z(tb_z));	//module under test 0 
  
 initial begin
   //önemli
   $dumpfile("dumpfile.vcd");
   $dumpvars(0,tb_majorityChecker); 
   //yukarıdaki iki satır olmadan EPWave çalıştırılamıyor. EDA Playground ile verilog testbench yazarken dump almak zorundayız
 end
  
  
   initial begin
     for(i=0; i<32; i=i+1) begin	
        tb_x=i;	//x sırayla 0-31 arası değerlere eşitlenir.
       	#10;
     end
   end
  
endmodule	//voila!
