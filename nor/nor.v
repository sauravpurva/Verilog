module nor_gate(input a,input b,output f);
	
	wire c;
	supply1 vdd;
	supply0 gnd;

	pmos(f,c,a);
	pmos(c,vdd,b);

	nmos(f,gnd,a);
	nmos(f,gnd,b);

endmodule