module mux(i7,i6,i5,i4,i3,i2,i1,i0,s,y);
input i7,i6,i5,i4,i3,i2,i1,i0;
input [2:0]s;
output reg y;
always @(*)begin
  y=s[2]?(s[1]?(s[0]?i7:i6):(s[0]?i5:i4)):(s[1]?(s[0]?i3:i2):(s[0]?i1:i0));
end
endmodule

