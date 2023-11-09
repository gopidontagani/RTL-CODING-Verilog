class sample;
rand bit[3:0]a[];
constraint a_c{a.size() inside {[15:20]};}
constraint a_c1{
	foreach(a[i])
		if(i%2==0) //even index
			a[i]%2==1; //odd value
		else
			a[i]%2==0; //even value
}		
function void print();
       foreach(a[i]) begin
			if(i%2==0)
				$write("even index=%0d",i);
			else
				$write("odd index=%0d",i);
			if(a[i]%2==0)
				$display("\t\teven value=%0d",a[i]);
			else
	     		$display("\t\todd value=%0d",a[i]);
	 end					
endfunction
endclass
module top;
sample sa;
initial begin
   repeat(1)begin
	sa=new();
	sa.randomize();
	sa.print();
   end	
end
endmodule
