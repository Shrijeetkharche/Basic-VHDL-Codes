`timescale 1ns / 1ps
	
module BasicGates(a, b, AND_G, OR_G, NOT_G, NAND_G, NOR_G, XOR_G, XNOR_G);
	
	input a, b;
	output AND_G, OR_G, NOT_G, NAND_G, NOR_G, XOR_G, XNOR_G;
	
	assign AND_G = a & b;
	assign OR_G = a | b;
	assign NOT_G = ~ a;
	assign NAND_G = ~(a & b);
	assign NOR_G = ~(a | b);
	assign XOR_G = a ^ b;
	assign XNOR_G = ~(a ^ b);

endmodule
