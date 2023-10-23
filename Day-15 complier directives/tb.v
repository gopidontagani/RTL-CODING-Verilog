`include "compile_direct.v"
module tb;
reg i0,i1,s;
wire y;
compile_direct dut(i0,i1,s,y);
initial begin
 repeat(10)begin
  i0=$random;
  i1=$random;
  s=$random;
  #5;
  $display("i0=%b,i1=%b,s=%b",i0,i1,s);
 end
end
endmodule



