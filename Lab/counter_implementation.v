module counter_implementation ( clk, reset,mode,count);
input clk, reset,mode;
output [3:0] count;
wire clk4;

counter23 D1(.clk(clk),.reset(reset), .clk_slow (clk4));
//counter4  D2 (.count(count),.clock(clk4),.Reset(reset));
mod8_up_down D3(.q(count),.mod(mode),.clk(clk4), .rst(reset));

endmodule