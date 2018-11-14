module transmission_tb();

reg a;
reg b;
wire red;

transmission transmission_tb(.a(a),.en(b),.result(res));

initial begin

a=0;b=0;
#10; a=1;b=0;
#10; a=0;b=1;
#10; a=1;b=1;

end

initial begin
$dumpfile("transmission.vcd");
$dumpvars(0,transmission_tb);
$monitor("time=%2d,a=%1b,eb=%1b,result=%1b",$time,a,b,res);

end

endmodule


