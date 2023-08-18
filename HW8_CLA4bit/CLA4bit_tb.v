`timescale 1ns/1ps

module tb_CLA4bit;

  
  parameter WIDTH=4;
  
  reg [WIDTH-1:0] tb_a, tb_b;
  reg tb_cin;
  
  wire [WIDTH-1:0] tb_sum;
  wire tb_cout;
  
  
  integer i, j;
  CLA4bit mut0(.a(tb_a), .b(tb_b), .sum(tb_sum), .cin(tb_cin), .cout(tb_cout));
  
  
  initial begin
   //önemli
    $dumpfile("dumpfile.vcd");
    $dumpvars(0,tb_CLA4bit); 
   //yukarıdaki iki satır olmadan EPWave çalıştırılamıyor. EDA Playground ile verilog testbench yazarken dump almak zorundayız
  end
       
  initial begin
    for(i=1; i<2**WIDTH; i=i+1) begin
      for(j=1; j<2**WIDTH; j=j+1) begin
        tb_a=i;
        tb_b=j;
        tb_cin=0;
        #10;
        tb_cin=1;
        #10;
      end
    end
  end
endmodule
    
