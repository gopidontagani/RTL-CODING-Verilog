module mux4x1(clk,i,s,y);
input [3:0]i;
input [1:0]s;
input clk;
output reg y;
always @(posedge clk) begin
 y=s[1]?{s[0]?i[3]:i[2]}:{s[0]?i[1]:i[0]};
end
endmodule
