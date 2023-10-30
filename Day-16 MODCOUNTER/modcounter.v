module modcounter(clk,rst,count);
parameter SIZE=4;
parameter MOD=10;  
input clk,rst;
output reg [SIZE-1:0]count;
always @(posedge clk)begin
	if(rst==1)begin
		count<=0;
	end
	else begin
	  if(count<MOD-1)begin
		count<=count+1;
	  end
	  else begin
	  	count<=0;
	  end
	end
end
endmodule
