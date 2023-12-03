`timescale 1ns/1ps
`include "downcounter.v"
module tb;
reg clk,rst;
wire [2:0]count;
downcounter dut(.*);
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
 #100;
 $finish;
end
endmodule
