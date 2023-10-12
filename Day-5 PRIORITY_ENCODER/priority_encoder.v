module priority_encoder(d,y);
input [3:0]d;
output reg [1:0]y;
always @(*)begin
	casez(d)
	4'b???1:y=2'b00;
	4'b??10:y=2'b01;
	4'b?100:y=2'b10;
	4'b1000:y=2'b11;
	endcase
end
endmodule
