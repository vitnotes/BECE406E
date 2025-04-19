module array_multiplier(input [3:0]A, B, output [7:0]z);
  wire [3:0]p0, p1, p2, p3; // partial products
  wire [10:0]c; // carry of HA/FA
  wire [5:0]s;  // sum of HA/FA
 
  // Generate partial products
  assign p0 = A & {4{B[0]}};
  assign p1 = A & {4{B[1]}};
  assign p2 = A & {4{B[2]}};
  assign p3 = A & {4{B[3]}};

  assign z[0] = p0[0];

  //row 0
  adder h0(p0[1], p1[0], z[1], c[0]);
  adder h1(p1[1], p2[0], s[0], c[1]);
  adder h2(p2[1], p3[0], s[1], c[2]);
 
  //row1
  full_adder f0(p0[2], c[0], s[0], z[2], c[3]);
  full_adder f1(p1[2], c[1], s[1], s[2], c[4]);
  full_adder f2(p2[2], c[2], p3[1], s[3], c[5]);
 
  //row2
  full_adder f3(p0[3], c[3], s[2], z[3], c[6]);
  full_adder f4(p1[3], c[4], s[3], s[4], c[7]);
  full_adder f5(p2[3], c[5], p3[2], s[5], c[8]);
 
  //row3
  adder h3(c[6], s[4], z[4], c[9]);
  full_adder f6(c[9], c[7], s[5], z[5], c[10]);
  full_adder f7(c[10], c[8], p3[3], z[6], z[7]);
endmodule