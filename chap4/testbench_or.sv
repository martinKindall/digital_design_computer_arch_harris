module testbench_orGate;

	wire Y;
	reg A, B;

	orGate OR1(A, B, Y);

	initial
		begin
			A = 1'b0; B = 1'b0; #10
			A = 1'b0; B = 1'b1; #10
			A = 1'b1; B = 1'b0; #10
			A = 1'b1; B = 1'b1; #10
		$finish;
		end
endmodule
			
