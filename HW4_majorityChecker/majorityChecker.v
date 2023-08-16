`timescale 1ns/1ps

module majorityChecker(x, z);//majorityChecker modülünün tanımlanması
  
  input wire [4:0]x;	//5 pinlik giriş 
  
  output wire z;   
  assign z = (x[0]&x[1]&x[2])|(x[0]&x[1]&x[3])|(x[0]&x[1]&x[4])|(x[0]&x[2]&x[3])|(x[0]&x[2]&x[4])|(x[0]&x[3]&x[4])|(x[1]&x[2]&x[3])|(x[1]&x[2]&x[4])|(x[1]&x[3]&x[4])|(x[2]&x[3]&x[4]);	// 5 pinlik girişin herhangi üçü andlenince 1 geliyorsa çoğunluk 1'dir.
  
endmodule
