module full_adder(input x, y, z, output sum, carry);
assign sum = x^y^z;
assign carry = (x&y)|(y&z)|(z&x);
endmodule