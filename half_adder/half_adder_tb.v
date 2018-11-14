module half_adder_tb();

reg a;
reg b;
wire sum,carry;

half_adder half_adder_tb(.a(a),.b(b),.sum(sum),.carry(carry));

initial begin

a=0;b=0;
#10; a=1;b=0;
#10; a=0;b=1;
#10; a=1;b=1;

end

initial begin
$dumpfile("half_adder.vcd");
$dumpvars(0,half_adder_tb);
$monitor("time=%2d,a=%1b,b=%1b,sum=%1b,carry=%1b",$time,a,b,sum,carry);

end

endmodule


