`include "d_ff.v"
module jcounter(clk,rst,count);
input clk,rst;
output [3:0]count;
not g1(w1,count[3]);
d_ff d1(.clk(clk),.rst(rst),.din(w1),.dout(count[0]));
d_ff d2(.clk(clk),.rst(rst),.din(count[0]),.dout(count[1]));
d_ff d3(.clk(clk),.rst(rst),.din(count[1]),.dout(count[2]));
d_ff d4(.clk(clk),.rst(rst),.din(count[2]),.dout(count[3]));
endmodule
