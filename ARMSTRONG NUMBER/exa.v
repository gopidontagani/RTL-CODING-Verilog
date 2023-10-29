//armstrong number
module tb;
integer a;
integer number;
integer sum;
integer temp;
initial begin
	sum=0;
	number=371;
    temp=number;
  while(number!=0)begin
		a=number%10;
		sum=sum+a**3;
		number=number/10;
      
  end
  $display("sum=%0d",sum);
 if(sum==temp)begin
     $display("given number is a armstrong number");
 end
 else begin
     $display("given number is a not armstrong number");
 end
end
endmodule
// given number is a armstrong number

