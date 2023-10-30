`include "modcounter.v"
module tb;
reg clk,rst;
parameter SIZE=4;
wire [SIZE-1:0]count;
modcounter dut(.*);
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
