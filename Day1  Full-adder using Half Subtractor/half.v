module half(a,b,d,b_out);
input a,b;
output d,b_out;
assign d=a^b;
assign b_out=~a&b;
endmodule


