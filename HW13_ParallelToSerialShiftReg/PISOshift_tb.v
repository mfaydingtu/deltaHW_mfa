`timescale 1ns/1ps

module tb_PISOshift;
  
  reg [3:0]tb_in; 
  reg tb_clk, tb_sl ;
  
  wire [3:0]tb_out;
  
  
  PISOshift mut0(.in(tb_in), .out(tb_out), .clk(tb_clk), .sl(tb_sl));
  
  initial begin
   //önemli
    $dumpfile("dumpfile.vcd");
    $dumpvars(0,tb_PISOshift); 
   //yukarıdaki iki satır olmadan EPWave çalıştırılamıyor. EDA Playground ile verilog testbench yazarken dump almak zorundayız
  end
  
  initial begin
    tb_in=4'b1101;
    tb_clk=0;
    tb_sl=0;
    #12 tb_sl=1;
    
    #40;
    
    $finish;
  end
  
  always #5 tb_clk=~tb_clk;
endmodule
