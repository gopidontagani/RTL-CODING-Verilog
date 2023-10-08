module decoder1(en,a,b,d0,d1,d2,d3);
input a,b;
input en;
output reg d0,d1,d2,d3;
always @(*)begin
  if(en==1'b0)begin
    d0=1'b0;
	d1=1'b0;
    d2=1'b0;
    d3=1'b0;
  end	
  else begin
    if(a==0 && b==0)begin
      d0=1'b1;
      d1=1'b0;
      d2=1'b0;
      d3=1'b0;
    end 
  
    else if(a==0 && b==1)begin
      d0=1'b0;
      d1=1'b1;
      d2=1'b0;
      d3=1'b0;
    end  
    else if(a==1 && b==0)begin
      d0=1'b0;
      d1=1'b0;
      d2=1'b1;
      d3=1'b0;
    end
    else begin
     d0=1'b0;
     d1=1'b0;
     d2=1'b0;
     d3=1'b1;
    end
  end
end
endmodule
