module jk_ff_tb;
reg J,K,clk,rst;
wire Q;
jk_ff JKflipflop(.J(J),.K(K), .clk(clk),.rst(rst),.Q(Q));
initial
begin
clk=0; J=0; K=0;
#5 rst = 1;
#30 rst = 0;

#100 $finish;
end
always #5 clk=~clk;
always #30 J=~J;
always #40 K=~K;
endmodule