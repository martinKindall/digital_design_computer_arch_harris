module gates_tbench;

	wire [3:0] Y1, Y2, Y3, Y4, Y5;
	reg [3:0] A, B;

	gates Gates1(A, B, Y1, Y2, Y3, Y4, Y5);

	initial
		begin
			B[0] = 1'b0; 
			B[1] = 1'b0; 
			B[2] = 1'b0; 
			B[3] = 1'b1;
			A[0] = 1'b0; 
			A[1] = 1'b0; 
			A[2] = 1'b0; 
			A[3] = 1'b0; #10
			A[1] = 1'b1;
			A[3] = 1'b1; #10

		$finish;
		end
endmodule 