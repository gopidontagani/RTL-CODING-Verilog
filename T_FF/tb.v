`timescale 1ns/1ps
`include "t_ff.v"
module tb;
reg clk,rst,t;
wire q;
t_ff dut(clk,rst,t,q);
initial begin
 clk=0;
 forever #5 clk=~clk;
end
initial begin
 rst=1;
 #20;
 rst=0;
 repeat (10)begin
  t=$random;
  #5;
 end
end
initial begin
 #200;
 $finish;
end
endmodule
