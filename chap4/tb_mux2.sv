module tb_mux2;
	wire [3:0] y;
	reg s;
	reg [3:0] d0, d1;

	mux2 muxVar(d0, d1, s, y);

	initial begin
		d0[3:0] = 4'h0;
		d1[3:0] = 4'hF;
		s = 1'b0; #10
		s = 1'b1; #10

	$finish;
	end // initial

endmodule // tb_mux2