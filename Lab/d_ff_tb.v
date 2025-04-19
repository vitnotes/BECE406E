module d_ff_tb; 
reg data, clk, reset ; 
wire q;
d_ff dffr(.data(data), .clk(clk), .reset(reset),.q(q)); 
initial begin 
clk=0; data = 0; reset= 1; 
#5 reset = 0; 
#80 reset = 1; 
//$monitor($time, "Itclk=%b\t ,reset=%b\t, data=%b\t, q=%b",clk,reset,data,q); 
#100 $finish; 
end 
always #5 clk = ~clk; 
always #30 data = ~data; 
endmodule