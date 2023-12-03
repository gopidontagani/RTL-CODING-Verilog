`timescale 1ns/1ps
`include "up_down_counter.v"
module tb;
reg clk,rst,a;
wire [2:0]count;
up_down_counter dut(.*);
initial begin
 clk=0;
 forever #5 clk=~clk;
end
initial begin
 rst=1;
 #20;
 rst=0;
 a=1;
 #70;
 a=0;
 #50;
end
initial begin
 #1000;
 $finish;
end
endmodule




