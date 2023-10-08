`include "decoder_fulladder.v"
module tb;
reg a,b,c;
wire sum,carry;
decoder_fulladder dut(a,b,c,sum,carry);
initial begin
 repeat(10)begin
 {a,b,c}=$random;
 #5;
 $display("a=%b,b=%b,c=%b,sum=%b,carry=%b",a,b,c,sum,carry);
 end
end
endmodule


