`include "encoder.v"
`timescale 1ns/1ps
module tb;
//clock
reg clk,rst;
//input
reg [7:0]a; 
//outputs
wire  full;
wire  half;
wire empty;
encoder dut(clk,rst,a,full,half,empty);
initial begin
    clk=0;
	forever #5 clk=~clk;
end
initial begin
    rst=1;
	#20;
	rst=0;
//	repeat(5)begin
	a=8'b00000001;
	#100;
 	a=8'b00010000;
 	 #200;
	a=8'b10000000;

//	end
end
initial begin
	#1000;
	$finish;
end		
endmodule
