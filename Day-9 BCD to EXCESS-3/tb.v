`include "bcd_excess3.v"
module tb;
reg [3:0]in;
wire [3:0]out;
integer i;
bcd_excess3 dut(.*);
initial begin
 for(i=0;i<20;i=i+1)begin
	in=i;
	#5;
	$display("in=%b,out=%b",in,out);
end
end
endmodule



