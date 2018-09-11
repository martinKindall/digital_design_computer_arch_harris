module testbench_inv;

	wire [3:0]Y;
	reg [3:0]A;

	inv_custom INV1(A,Y);

	initial
		begin
			A[0] = 1'b0; 
			A[1] = 1'b0; 
			A[2] = 1'b0; 
			A[3] = 1'b0; #10
			A[1] = 1'b1;
			A[3] = 1'b1; #10
		$finish;
		end
endmodule
