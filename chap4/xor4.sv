module xor4(input logic [3:0] a, 
			output logic y);

	assign y = ^a;
endmodule // xor4