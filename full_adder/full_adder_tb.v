module full_adder_tb();

reg a;
reg b;
reg cin;
wire sum,carry;

full_adder full_adder_tb(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));

initial begin

a=0;b=0;cin=0;
#10; a=1;b=0;cin=0;
#10; a=0;b=1;cin=0;
#10; a=0;b=0;cin=1;
#10; a=0;b=1;cin=1;
#10; a=1;b=0;cin=1;
#10; a=1;b=1;cin=0;
#10; a=1;b=1;cin=1;

end

initial begin
$dumpfile("full_adder.vcd");
$dumpvars(0,full_adder_tb);
$monitor("time=%2d,a=%1b,b=%1b,c=%1b,sum=%1b,carry=%1b",$time,a,b,cin,sum,carry);

end

endmodule


