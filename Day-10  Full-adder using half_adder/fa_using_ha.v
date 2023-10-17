`include "half.v"
module fa_using_ha(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;
half g1(a,b,w1,w2);
half g2(w1,cin,sum,w3);
or g3(carry,w2,w3);
endmodule
