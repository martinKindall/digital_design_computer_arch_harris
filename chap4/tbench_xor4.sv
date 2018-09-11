module testBench_xor4;
	wire y;
	reg [3:0] a;

	xor4 xorVar(a, y);

	initial 
		begin
			a[3:0] = 1'b0; #10
			a[1] = 1'b1; #10
			a[2] = 1'b1; #10
			a[3] = 1'b1; #10

		$finish;	
		end
endmodule // testBench_xor4