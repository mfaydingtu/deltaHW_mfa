`timescale 1ns/1ps

module parityChecker(x, y, z, result);//parityChecker modülünün tanımlanması
  
  input wire x, y, z;	//3 giriş 
  //girişlerin toplamı tek sayı ise 1, çift ise 0 dönmeli. bunun için XOR'lamak işe yarayabilir.
  output wire result;   
  assign result = x^y^z;	// 3 girişin XOR'lanmış hali
  
endmodule
