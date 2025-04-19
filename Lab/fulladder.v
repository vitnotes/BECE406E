module fulladder(input x, y, z, output sum, carry);
wire sum1, c1, c2;
adder s1(x,y,sum1,c1);
adder s2(z,sum1,sum,c2);
assign carry = c1|c2;
endmodule