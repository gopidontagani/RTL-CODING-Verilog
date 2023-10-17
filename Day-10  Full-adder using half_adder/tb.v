`include "fa_using_ha.v"
module tb;
reg a,b,cin;
wire sum,carry;
fa_using_ha dut(a,b,cin,sum,carry);
initial begin
 repeat(19)begin
  {a,b,cin}=$random;
  #6;
  $display("a=%b,b=%b,cin=%b,sum=%b,carry=%b",a,b,cin,sum,carry);
 end
end
endmodule
