`timescale 1ns/1ps
`include "sr_ff.v"
module tb;
reg s,r,clk,rst;
wire q;
sr_ff dut(clk,rst,s,r,q);
integer seed=1234;
initial begin
 clk=0;
 forever #5 clk=~clk;
end
initial begin
     rst=1;
	 #20;
	 rst=0;
	 repeat(9)begin
	 {s,r}=$random(seed);
	 #5;
	 end
end
initial begin
 #200;
 $finish;
end
endmodule


