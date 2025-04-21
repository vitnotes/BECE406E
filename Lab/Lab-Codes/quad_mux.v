module quad_mux(input sel, e, input [3:0]a, b, output reg [3:0]y);

always @ (*)
begin
y = e ? 0 : (sel ? b : a);
end

endmodule