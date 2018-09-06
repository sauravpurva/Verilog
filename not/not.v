module not_gate(input a,output f);
	
	wire c;
	supply1 vdd;
	supply0 gnd;

	
	pmos(f,vdd,a);

	nmos(f,gnd,a);

endmodule