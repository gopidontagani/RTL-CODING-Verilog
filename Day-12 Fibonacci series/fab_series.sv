//The Fibonacci series is an infinite series, starting from '0' and '1'
module top;
int q[$:9];
initial begin
	 q[0]=0;
	 q[1]=1;
	for(int i=2;i<10;i++)begin	  
		 q[i]=q[i-2]+q[i-1];
	end
     $display("q=%p",q);
end	
endmodule

//Result
//q='{0, 1, 1, 2, 3, 5, 8, 13, 21, 34}
