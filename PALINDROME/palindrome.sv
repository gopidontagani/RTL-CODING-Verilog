module tb;
string name,reverse_string;
initial begin
 	name="malayalam";
    reverse_string=name;
	for(int i=0;i<name.len();i++)begin
	 	reverse_string.putc(i,name[name.len()-1-i]);	
	end
	$display("before reverse=%s",name);
	$display("after reverse_string=%s",reverse_string);
	if(reverse_string==name)begin
		$display("Given string is palindrome");
	end
	else begin
		$display("Given string is not  palindrome");
	end
end
endmodule
//before reverse=malayalam
//after reverse_string=malayalam
//Given string is palindrome

// before reverse=gopi
// after reverse_string=ipog
// Given string is not  palindrome

