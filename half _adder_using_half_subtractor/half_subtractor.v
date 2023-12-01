module half_subtractor(a,b,difference,borrow);
input a,b;
output difference,borrow;
//continuous assignment
assign difference=a^b;
assign borrow=~a & b;
endmodule
