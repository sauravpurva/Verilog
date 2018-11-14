`include "../and/and.v"
`include "../xor/xor.v"

module half_adder(input a,input b,output sum,output carry);
	and_gate h1(a,b,carry);
	xor_gate h2(a,b,sum);
endmodule
	
