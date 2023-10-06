`include "half.v"
module fullsub_using_halfsub(a,b,bin,d,b_out);
input a,b,bin;
output d,b_out;
half g1(a,b,w1,w2);
half g2(w1,bin,d,w3);
or g3(b_out,w2,w3);
endmodule




