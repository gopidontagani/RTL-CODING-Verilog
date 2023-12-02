`timescale 1ns/1ps
`include "d-ff.v"
module tb;
reg clk,rst,d;
wire q;
d_ff dut(.*);
initial begin
 clk=0;
 forever #5 clk=~clk;
end
initial begin
 rst=1;
 #20;
 rst=0;
 repeat(10)begin
  d=$random;
  #5;
 end
end
initial begin
 #100;
 $finish;
end
endmodule
