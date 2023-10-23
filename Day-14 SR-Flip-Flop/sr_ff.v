module sr_ff(clk,rst,s,r,q);
input s,r,clk,rst;
output reg q;

assign q_t=q;

always @(posedge clk)begin
  if(rst==1)begin
  		q<=0;
  end
  else begin
	case({s,r})
		2'b00: q<=q_t;
		2'b01: q<=0;
		2'b10: q<=1;
		2'b11: q<=1'bx;	
	endcase
 end	
end
endmodule

