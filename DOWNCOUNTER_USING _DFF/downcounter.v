`include "d_ff.v"
module downcounter(clk,rst,count);
input clk,rst;
output [2:0]count;
assign d0=(~count[0]);
assign d1=~(count[0] ^ count[1]);
assign d2=(~count[0] & ~count[1] & ~count[2] | count[2] & count[0] |count[1] & count[2]);
d_ff g1(clk,rst,d0,count[0]);
d_ff g2(clk,rst,d1,count[1]);
d_ff g3(clk,rst,d2,count[2]);
endmodule
