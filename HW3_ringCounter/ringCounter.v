`timescale 1ns/1ps

module ringCounter(clk, rst, count);//johnsonCounter modülünün tanımlanması
  parameter WIDTH = 4;// johnson counter boyutu için parametre. ölçeklendirilebilirlik sağlıyor
  
  input wire clk, rst;
  output reg [WIDTH-1:0]count; //önceden tanımlanan parametreye göre otomatik boyutlandırılan çıkış registeri
    
  always @ (posedge clk) begin //clk nin yükselen kenarında gerçekleşecek olaylar
    
    if (~rst) count=4'b0001;	//reset gelirse sayaç sıfırlanır, ring counterin sıfırı 0001'dir.
    
    //ring counterin doğruluk tablosuna göre her clockta tüm bitleri kaydırmak gerekiyor
    
    
    else count={count[0],count[WIDTH-1:1]}; //reset gelmezse bu kod parçası tam olarak bu işi yapar.
    	
  end
endmodule

