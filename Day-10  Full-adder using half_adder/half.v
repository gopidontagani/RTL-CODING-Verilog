module half(a,b,sum,carry);
input a,b;
output reg sum,carry;
always @(*)begin
 {carry,sum}=a+b;
end
endmodule
