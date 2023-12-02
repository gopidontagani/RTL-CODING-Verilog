module jk_ff(clk,rst,j,k,q);
input j,k,clk,rst;
output reg q;

assign q_t=q;
assign qbar=~q_t;
always @(posedge clk)begin
  if(rst==1)begin
  		q<=0;
  end
  else begin
	case({j,k})
		2'b00: q<=q_t;
		2'b01: q<=0;
		2'b10: q<=1;
		2'b11: q<=qbar;	
	endcase
 end	
end
endmodule

