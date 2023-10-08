module decoder(a,d0,d1);
input a;
output reg d0,d1;
always @(*)begin
  if(a==1'b0)begin
   d0=1'b1;
   d1=1'b0;
  end 
  else begin
   d0=1'b0;
   d1=1'b1;
  end
end
endmodule
