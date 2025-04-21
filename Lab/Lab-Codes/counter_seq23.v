module counter_seq23(clk_slow,clk,reset);
input clk,reset;
reg[24:0]count;
output clk_slow;

always@(posedge clk or posedge reset)
begin

if(reset)
count<=25'b0;
else
begin
count<=count+1'b1;
end
end
assign clk_slow=count[24];


endmodule