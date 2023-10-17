`include "mux4x1.v"
module tb;
reg [3:0]i;
reg [1:0]s;
reg clk;
wire y;
mux4x1 dut(clk,i,s,y);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
 repeat(5) begin
  {i,s}=$random;
  #10;

 $display("i=%b,s=%b,y=%b",i,s,y);
 end
end
initial begin
	#200;
	$finish;
end
endmodule
