`include "half_subtractor.v"
module ha_adder(a,b,sum,carry);
input a,b;
output sum,carry;
not g1(w1,a);
half_subtractor hs(.a(w1),.b(b),.difference(w2),.borrow(carry));
//not g2(sum,w2);
assign sum=~w2;
endmodule
