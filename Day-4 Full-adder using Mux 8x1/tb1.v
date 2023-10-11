`include "mux1.v"
module tb;
reg i7,i6,i5,i4,i3,i2,i1,i0;
reg [2:0]s;
wire sum,carry;
mux1 dut(i7,i6,i5,i4,i3,i2,i1,i0,s,sum,carry);
initial begin
 repeat(20)begin
 s=$random;
 i7=$random;
 i6=$random;
 i5=$random;
 i4=$random;
 i3=$random;
 i2=$random;
 i1=$random;
 i0=$random;

 #5;
 $display("i7=%b,i6=%b,i5=%b,i4=%b,i3=%b,i2=%b,i1=%b,i0=%b,s=%b,sum=%b,carry=%b",i7,i6,i5,i4,i3,i2,i1,i0,s,sum,carry);
 end
end 
endmodule 

