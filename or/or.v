`include "../nor/nor.v"
module or_gate(input A, input B, output res);

	wire temp;
	nor_gate nand_temp(
		.a(A),
		.b(B),
		.f(temp)
	);
	not_gate not_temp(
		.a(temp),
		.f(res)
	);

endmodule