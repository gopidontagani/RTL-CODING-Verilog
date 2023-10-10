module dff(clk,rst,din,dout);
input clk,rst;
input din;
output reg dout;
always @(posedge clk)begin
	if(rst==1)begin
		dout<=0;
	end
	else begin
		dout<=din;
	end
end
endmodule
