`include "ha_adder_using_hs.v"
module tb;
reg a,b;
wire sum,carry;
ha_adder ha(.*);
initial begin
	repeat(5)begin
		a=$random;
		b=$random;
		#10;
		$display("a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);
	end
end
endmodule
// a=0,b=1,sum=1,carry=0
// a=1,b=1,sum=0,carry=1
// a=1,b=1,sum=0,carry=1
// a=1,b=0,sum=1,carry=0
// a=1,b=1,sum=0,carry=1
