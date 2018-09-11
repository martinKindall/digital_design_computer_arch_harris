module tb_tristate;

	wire [3:0] y;
	reg [3:0] a;
	reg [3:0] b;
	reg en_a;
	reg en_b;

	tristate TRI1(a, en_a, y);
	tristate TRI2(b, en_b, y);

	initial begin
		a = 4'b0;
		b = 4'b0;
		en_a = 1'b0; 
		en_b = 1'b0; #10

		en_a = 1'b1; #10

		a = 4'hF; 
		b = 4'hA; # 10

		en_a = 1'b0; 
		en_b = 1'b1; #10

		en_b = 1'b0; #10

		$finish;
	end

endmodule // tb_tristate