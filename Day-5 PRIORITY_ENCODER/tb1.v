`include"priority_encoder.v"
module tb;
reg [3:0]d;
wire [1:0]y;
priority_encoder dut(d,y);
initial begin
	repeat(10)begin
		d=$random;
		#5;
		$display("d=%b,y=%b",d,y);
	end
end
endmodule
