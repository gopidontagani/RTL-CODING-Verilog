`include "jcounter.v"
module tb;
reg clk,rst;
wire [3:0]count;
jcounter dut(.*);
initial begin
	clk=0;
	forever #5 clk=~clk;
end	
initial begin
	rst=1;
	#20;
	rst=0;
	
end
initial begin
	#200;
	$finish;
end
endmodule
