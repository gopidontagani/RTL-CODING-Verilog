`include "fullsub_using_halfsub.v"
module tb;
reg a,b,bin;
wire d,b_out;
fullsub_using_halfsub dut(a,b,bin,d,b_out);
 initial begin
   repeat(5)begin
    {a,b,bin}=$random;
	#5;
	$display("a=%b,b=%b,bin=%b,d=%b,b_out=%b",a,b,bin,d,b_out);
   end
 end
 endmodule
