`timescale 1ns/1ps

module tb_nBitComparator;
  
  parameter WIDTH=2;
  
  reg [WIDTH-1:0] tb_a, tb_b;
  wire tb_lesser, tb_greater, tb_equal;
  
  integer i,j;
  
  nBitComparator mut0(.a(tb_a), .b(tb_b), .lesser(tb_lesser), .greater(tb_greater), .equal(tb_equal));
  
  initial begin
   //önemli
    $dumpfile("dumpfile.vcd");
    $dumpvars(0,tb_nBitComparator); 
   //yukarıdaki iki satır olmadan EPWave çalıştırılamıyor. EDA Playground ile verilog testbench yazarken dump almak zorundayız
  end
  
  initial begin
    for(i=0; i<2**WIDTH; i=i+1) begin
      for(j=0; j<2**WIDTH; j=j+1) begin
        tb_a=i;
        tb_b=j;
        #10;
      end
    end
  end
endmodule
    
      	
      

