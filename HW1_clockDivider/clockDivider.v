`timescale 1ns/1ps
//timescale ayarı, sonraki ödevlerde burayı yorumlamayacam

module clockDivider(
	input wire clk, rst,
	output wire divideby2, divideby4, divideby8);//clockDivider modülünün tanımlanması
  	
  reg [3:0]count; //4 bitlik clock sayacı
  
  //count değişkeni her arttığında [1] iki clockta bir, [2] dört clockta bir, [3] sekiz clockta bir toggle olacağı için sırasıyla iki, dört ve sekize bölünmüş clocklara tanımlanır.
  
  assign	divideby2=count[1];
  assign	divideby4=count[2];
  assign	divideby8=count[3];
    
  always @ (posedge clk) begin //clk nin yükselen kenarında gerçekleşecek olaylar
    
    if (~rst) count=4'b0000; //reset gelirse clock counter 0'dan başlamalı
    
    else count=count+1; //reset gelmezse clock saymalı
    	
  end
endmodule
