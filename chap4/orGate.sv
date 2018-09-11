module orGate(input logic a, b, 
		output logic y);

	assign y = ~a & b | a & ~b | a & b;

endmodule
