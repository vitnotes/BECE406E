module add_seg(a,b,cin,seg1,seg2);
input [3:0]a,b;
input cin;
output [6:0] seg1,seg2;
wire [3:0] sum;
wire carry;



bcd_add fa1(a,b,cin,sum,carry);
bcdseg fa2(sum,seg1);
bcdseg fa3(carry,seg2);


endmodule