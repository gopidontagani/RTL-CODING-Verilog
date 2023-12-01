`include "fullsub_using_half_adder.v"
module tb;
reg a,b,bin;
wire difference,borrow;
integer seed=12345;
full_sub ha(.*);
initial begin
	repeat(8)begin
		{a,b,bin}=$random(seed);
		#10;
		$display("a=%b,b=%b,bin=%b,difference=%b,borrow=%b",a,b,bin,difference,borrow);
	end
end
endmodule
//a=1,b=0,bin=1,difference=0,borrow=0
//a=0,b=1,bin=1,difference=0,borrow=1
//a=0,b=1,bin=0,difference=1,borrow=1
//a=1,b=0,bin=0,difference=1,borrow=0
//a=0,b=1,bin=1,difference=0,borrow=1
//a=1,b=1,bin=1,difference=1,borrow=1
//a=1,b=0,bin=1,difference=0,borrow=0
//a=1,b=0,bin=1,difference=0,borrow=0


