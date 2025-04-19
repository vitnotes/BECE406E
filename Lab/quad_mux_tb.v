module quad_mux_tb;
reg [3:0]a, b;
reg sel, e;
wire [3:0]y;
quad_mux m(sel, e, a, b, y);
initial begin
sel = 1; e = 0; a = 4'b0011; b = 4'b0101; 
#10 sel = 0; e = 0; a = 4'b0010; b = 4'b0111;
#10 sel = 1; e = 1; a = 4'b1011; b = 4'b0001; 
#10;
end
endmodule