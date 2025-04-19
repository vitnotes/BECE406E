module mux4_1(z,d0,d1,d2,d3,s0,s1);
input d0,d1,d2,d3,s0,s1;
output z;
reg z;
always @(d0 or d1 or d2 or d3 or s0 or s1)
begin
case({s0,s1})
2'b00: z<=d0;
2'b01: z<=d1;
2'b10: z<=d2;
2'b11: z<=d3;
endcase
end
endmodule