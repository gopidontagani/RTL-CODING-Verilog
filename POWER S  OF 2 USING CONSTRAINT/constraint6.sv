class constrain1;
	randc bit [15:0]a;
	constraint s{
	//by using $onehot we can achieve power of 2
		$onehot(a);
	}
	function void print(string name="power of 2 values");
		$display("this is %s",name);
		$display("a=%0d",a);
	endfunction
endclass
module top;
	constrain1 c;
	initial begin
	  c=new();
	  repeat(16)begin
	    assert(c.randomize());
		c.print();
	  end	
	end
endmodule
