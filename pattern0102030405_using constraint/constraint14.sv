class sample;
rand int a[];
constraint a_c{
	a.size()==12;
}
constraint a_c1{
	foreach(a[i])
		if(i%2==0)
			a[i]==0;
		else
			a[i]==(i+1)/2;
}
function void print();
	$display("Required pattern is=%p",a);
endfunction
endclass
module top;
sample sa;
initial begin
   //repeat(1)begin
	  sa=new();
	  sa.randomize();
	  sa.print();
  // end	
	
end
endmodule
//Required pattern is='{0, 1, 0, 2, 0, 3, 0, 4, 0, 5, 0, 6}
