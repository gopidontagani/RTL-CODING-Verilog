`include "half_adder.v"
module full_sub(a,b,bin,difference,borrow);
input a,b,bin;
output difference,borrow;
not g1(w1,a);
half_adder hs(.a(w1),.b(b),.sum(w2),.carry(w3));
half_adder hs1(.a(w2),.b(bin),.sum(w4),.carry(w5));
assign difference=~w4;
assign borrow=w3 | w5;
endmodule
