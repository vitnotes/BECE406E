module counter_tb();
reg clk,reset;
wire [3:0] count;
counter c1(clk,reset,count);
always #5 clk = ~clk;
initial begin
clk <= 0;
reset <= 0;
#10 reset <= 1;
#10 reset <= 0;
#10 reset <= 1;
#200 $finish;
end
endmodule