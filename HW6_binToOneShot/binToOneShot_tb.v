`timescale 1ns/1ps

module tb_binToOneShot;
  
  parameter IN_WIDTH=4;
  parameter OUT_WIDTH=16;
  integer i;
  
  reg [IN_WIDTH-1:0]tb_x;
  wire [OUT_WIDTH-1:0]tb_y;
  
  binToOneShot mut0(.x(tb_x), .y(tb_y)); // mut tanımla
  initial begin
  
    for(i=0; i<OUT_WIDTH; i=i+1) begin
    	//x'e alabileceği tüm değerleri tek tek ata
      tb_x = i;
      #10;
    end
  end
  
  initial begin
   //önemli
    $dumpfile("dumpfile.vcd");
    $dumpvars(0,tb_binToOneShot); 
   //yukarıdaki iki satır olmadan EPWave çalıştırılamıyor. EDA Playground ile verilog testbench yazarken dump almak zorundayız
  end
    
endmodule
