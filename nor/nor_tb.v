module nor_tb();

reg a;
reg b;
wire f;

nor_gate nor_tb(.a(a),.b(b),.f(f));

initial begin

a=0;b=0;
#10; a=1;b=0;
#10; a=0;b=1;
#10; a=1;b=1;

end

initial begin
$dumpfile("nor.vcd");
$dumpvars(0,nor_tb);
$monitor("time=%2d,a=%1b,b=%1b,f=%1b",$time,a,b,f);

end

endmodule


