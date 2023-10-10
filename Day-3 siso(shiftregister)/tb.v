`include "siso.v"
module tb;
reg clk,rst,sin;
wire sout;
siso dut(.*);
initial begin
	clk=0;
	forever #5 clk=~clk;
end	
initial begin
	rst=1;
	sin=0;
	#20;
	rst=0;
	#10; sin=1;
	
	#10; sin=0;
	
	#10; sin=1;

	
end
initial begin
	#200;
	$finish;
end
endmodule
