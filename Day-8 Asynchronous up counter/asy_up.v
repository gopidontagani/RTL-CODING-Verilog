`include "jk_ff.v"
module asy_up(clk,rst,count);
input clk,rst;
output [2:0]count;
jk_ff j1(.clk(clk),.rst(rst),.j(1),.k(1),.q(count[0]));
jk_ff j2(.clk(count[0]),.rst(rst),.j(1),.k(1),.q(count[1]));
jk_ff j3(.clk(count[1]),.rst(rst),.j(1),.k(1),.q(count[2]));

endmodule
