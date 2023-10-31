class sample;
rand int array[];
function void print();
	$display("array=%p",array);
endfunction
constraint a{
	array.size()==20;
	foreach(array[i])
		array[i]==(i+2)/2;
}
endclass
module top;
sample s;
initial begin
	s=new();
	s.randomize();
	s.print();
end
endmodule
//array='{1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10}
