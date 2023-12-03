module up_down_counter(clk,rst,a,count);
input clk,rst,a;
output reg [2:0]count;
always @(posedge clk)begin
 if(rst==1)begin
  count<=0;
 end 
 else if(a==1)begin
  count<=count+1; //up-counter if a=1
 end
 else begin
  count<=count-1; //down-counter if a=0
 end
end
endmodule
