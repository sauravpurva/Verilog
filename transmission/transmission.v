module transmission(input a, input en, output result);

	wire en_comp;

	pmos(result,a,~en);
	nmos(result,a,en);
endmodule