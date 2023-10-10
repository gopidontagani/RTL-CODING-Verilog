`include "dff.v"
module siso(clk,rst,sin,sout);
input clk,rst,sin;
output sout;
dff d1(.clk(clk),.rst(rst),.din(sin),.dout(w1));
dff d2(.clk(clk),.rst(rst),.din(w1),.dout(w2));
dff d3(.clk(clk),.rst(rst),.din(w2),.dout(w3));
dff d4(.clk(clk),.rst(rst),.din(w3),.dout(sout));
endmodule
