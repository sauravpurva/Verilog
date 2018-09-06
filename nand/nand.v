module nand_gate(input a,input b,output f);
	
	wire c;
	supply1 vdd;
	supply0 gnd;

	pmos(f,vdd,a);
	pmos(f,vdd,b);

	nmos(f,c,a);
	nmos(c,gnd,b);

endmodule