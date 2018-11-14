`include "../or/or.v"
`include "../half_adder/half_adder.v"

module full_adder(input cin, input a,input b,output sum,output carry);

	wire half_adder_carry1,half_adder_carry2,half_adder_sum;

	half_adder h1(
	.a(a),
	.b(b),
	.sum(half_adder_sum),
	.carry(half_adder_carry1)
	);

	half_adder h2(
	.a(cin),
	.b(half_adder_sum),
	.sum(sum),
	.carry(half_adder_carry2)
	);

	or_gate o(
	.A(half_adder_carry2),
	.B(half_adder_carry1),
	.res(carry)

	);

endmodule

