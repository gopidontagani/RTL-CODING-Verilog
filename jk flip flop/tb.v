`timescale 1ns/1ps
`include "jk_ff.v"
module tb;
reg j,k,clk,rst;
wire q;
jk_ff dut(clk,rst,j,k,q);
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
	 {j,k}=$random(seed);
	 #5;
	 end
end
initial begin
 #200;
 $finish;
end
endmodule




