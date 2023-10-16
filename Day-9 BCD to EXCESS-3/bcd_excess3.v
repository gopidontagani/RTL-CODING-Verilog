module bcd_excess3(in,out);
input [3:0]in;
output reg [3:0]out;
integer i;
always @(*)begin
	 	if(in<4'b1010)begin
			out=in+4'b0011;
		end
		else begin
			out=4'bxxxx;
		end
end
endmodule
