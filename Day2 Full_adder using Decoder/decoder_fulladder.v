`include "decoder.v"
`include "decoder1.v"
module decoder_fulladder(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
  decoder g3(.a(a),.d0(w1),.d1(w2));
  decoder1 g4(.en(w1),.a(b),.b(c),.d0(w3),.d1(w4),.d2(w5),.d3(w6));
  decoder1 g5(.en(w2),.a(b),.b(c),.d0(w7),.d1(w8),.d2(w9),.d3(w10));
  or g1(sum,w4,w5,w7,w10);
  or g2(carry,w6,w8,w9,w10);
endmodule



