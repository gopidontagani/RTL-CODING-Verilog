`include "half_adder.v"
module half_sub(a,b,difference,borrow);
input a,b;
output difference,borrow;
not g1(w1,a);
half_adder hs(.a(w1),.b(b),.sum(w2),.carry(borrow));
//not g2(sum,w2);
assign difference=~w2;
endmodule
