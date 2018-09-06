module and_tb();

reg a;
reg b;
wire f;

and_gate and_tb(.A(a),.B(b),.res(f));

initial begin

a=0;b=0;
#10; a=1;b=0;
#10; a=0;b=1;
#10; a=1;b=1;

end

initial begin
$dumpfile("and.vcd");
$dumpvars(0,and_tb);
$monitor("time=%2d,a=%1b,b=%1b,f=%1b",$time,a,b,f);

end

endmodule


