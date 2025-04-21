module fa_mux(sum,cout,a,b,cin);
output cout,sum;
input a,b,cin;
wire cinb;
assign cinb=~cin;
mux4_1 m1(sum,cin,cinb,cinb,cin,a,b);
mux4_1 m2(cout,0,cin,cin,1,a,b);
endmodule