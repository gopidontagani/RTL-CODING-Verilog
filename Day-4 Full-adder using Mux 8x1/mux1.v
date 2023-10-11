`include "mux.v"
module mux1(i7,i6,i5,i4,i3,i2,i1,i0,s,sum,carry);
input i7,i6,i5,i4,i3,i2,i1,i0;
input [2:0]s;
output sum,carry;
mux m1(.i7(1'b1),.i6(1'b0),.i5(1'b0),.i4(1'b1),.i3(1'b0),.i2(1'b1),.i1(1'b1),.i0(1'b0),.s(s[2:0]),.y(w1));
mux m2(.i7(1'b1),.i6(1'b1),.i5(1'b1),.i4(1'b0),.i3(1'b1),.i2(1'b0),.i1(1'b0),.i0(1'b0),.s(s[2:0]),.y(w2));
assign sum=w1;
assign carry=w2;
endmodule
 

