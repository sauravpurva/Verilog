module not_tb();

reg a;
wire f;

not_gate not_tb(.a(a),.f(f));

initial begin

a=0;
#10; a=1;

end

initial begin
$dumpfile("not.vcd");
$dumpvars(0,not_tb);
$monitor("time=%2d,a=%1b,f=%1b",$time,a,f);

end

endmodule


