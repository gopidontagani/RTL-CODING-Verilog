module compile_direct(i0,i1,s,y);
input i0,i1,s;
`ifdef BEHAV
output reg y;
`else
output y;
`endif
`ifdef BEHAV
always @(*)begin
    y=s?i1:i0;
end	
`elsif DATA
    assign y=s?i1:i0;
`else
    
    not g1(n1,s);
	and g2(n2,n1,i0);
	and g3(n3,s,i1);
	or  g4(y,n2,n3);
`endif	
endmodule
