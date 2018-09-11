module tb_fullAdder;

	wire s, cout;
	reg a, b, cin;

	fullAdder fAdder1(a, b, cin, s, cout);

	initial begin
		a = 1'b0;
		b = 1'b0; 
		cin = 1'b0; #10
		a = 1'b1; #10
		b = 1'b1; #10
		a = 1'b0; #10
		a = 1'b1; 
		cin = 1'b1; #10

		$finish;
	end
endmodule // tb_fullAdder