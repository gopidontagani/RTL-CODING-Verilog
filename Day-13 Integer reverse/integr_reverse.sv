//integer revrse
module tb;
int a,n,r;
int temp;
initial begin
	r=0;
    temp=n;
	n=5437;
  while(n!=0)begin
		a=n%10;
		r=r*10+a;
		n=n/10;
      
 end
     $display("temp=%0d",r);
end
endmodule
//result
//temp=7345
