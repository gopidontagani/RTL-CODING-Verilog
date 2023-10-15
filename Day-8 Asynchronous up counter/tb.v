`timescale 1ns/1ps
`include "asy_up.v"
module tb;
reg clk,rst;
wire [2:0]count;
asy_up dut(clk,rst,count);

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
 #500;
 $finish;
end
endmodule




