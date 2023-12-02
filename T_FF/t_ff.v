module t_ff(clk,rst,t,q);
input clk,rst,t;
output  reg q;
assign q_t=q;
assign qbar=~q;
always @(posedge clk)begin
  if(rst==1)begin
    q<=0;
  end
  else if(t==1)begin
    q<=qbar;
  end
  else begin
    q<=q_t;
  end
end  
endmodule 


