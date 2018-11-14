`include "../nand/nand.v"

module and_gate(input A, input B, output res);

	wire temp;
	nand_gate nand_temp(
		.a(A),
		.b(B),
		.f(temp)
	);
	not_gate not_temp(
		.a(temp),
		.f(res)
	);

endmodule