`timescale 1ns / 1ps

module BasicGates2(a, b, AND_G, OR_G, NOT_G, NAND_G, NOR_G, XOR_G, XNOR_G);

	input a, b;
	output AND_G, OR_G, NOT_G, NAND_G, NOR_G, XOR_G, XNOR_G;
	
	reg AND_G, OR_G, NOT_G, NAND_G, NOR_G, XOR_G, XNOR_G;
	
	always@(a or b)
	begin
		AND_G = a & b;
		OR_G = a | b;
		NOT_G = ~ a;
		NAND_G = ~(a & b);
		NOR_G = ~(a | b);
		XOR_G = a ^ b;
		XNOR_G = ~(a ^ b);
	end

endmodule
