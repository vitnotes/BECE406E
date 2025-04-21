module d_ff ( data ,clk1, reset ,q); 
input data, clk1, reset ; 
output q ;
reg q; 
wire clk;
counter_ff23 c1(clk1,reset, clk);
always @ ( posedge clk) 
if (reset) begin 
q<= 1'b0; 
end 
else begin 
q <= data;
 
end endmodule
