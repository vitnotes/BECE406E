module rippleadder(input a[3:0], b[3:0], c_in, output sum[3:0], carry);
wire c[2:0];
full_adder fa1(a[0], b[0], c_in, sum[0], c[0]);
full_adder fa1(a[1], b[1], c[0], sum[1], c[1]);
full_adder fa1(a[2], b[2], c[1], sum[2], c[2]);
full_adder fa1(a[3], b[3], c[2], sum[3], carry);
endmodule