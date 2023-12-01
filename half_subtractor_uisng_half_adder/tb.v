`include "hs_using_ha_adder.v"
module tb;
reg a,b;
wire difference,borrow;
integer seed=12345;
half_sub ha(.*);
initial begin
	repeat(5)begin
		a=$random(seed);
		b=$random(seed);
		#10;
		$display("a=%b,b=%b,difference=%b,borrow=%b",a,b,difference,borrow);
	end
end
endmodule
// a=0,b=1,difference=1,borrow=1
// a=1,b=1,difference=0,borrow=0
// a=1,b=1,difference=0,borrow=0
// a=1,b=0,difference=1,borrow=0
// a=1,b=1,difference=0,borrow=0
