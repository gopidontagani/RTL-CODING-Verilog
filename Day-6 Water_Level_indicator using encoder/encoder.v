//water level indicator using 8*3 encoder
module encoder(clk,rst,a,full,half,empty);
//clock
input clk,rst;
//input
input [7:0]a; 
//outputs
output reg full;
output reg half;
output reg empty;
always @(posedge clk)begin
    if(rst==1)begin
		full=1'b0;
		half=1'b0;
		empty=1'b0;

	end
	else begin
	case(a)
		
			8'b10000000:begin //it indicates Tank is full
				full=1'b1;
				half=1'b0;
				empty=1'b0;
			end
			8'b00010000:begin //it indicates Tank is half
				full=1'b0;
				half=1'b1;
				empty=1'b0;
				
			end
			8'b00000001:begin //it indicates Tank is empty
				full=1'b0;
				half=1'b0;
				empty=1'b1;	
			end
		
	endcase
	end
end

endmodule
