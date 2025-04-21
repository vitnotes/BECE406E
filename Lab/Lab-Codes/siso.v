module siso ( din ,clk ,reset ,dout );

output dout ;

input din ;
input clk ;
input reset ;   
wire [2:0]s;

d_ff u0 (din,clk,reset,s[0]);


d_ff u1 (s[0],clk,reset,s[1]);


d_ff u2 (s[1],clk,reset,s[2]);


d_ff u3 (s[2],clk,reset,dout);


endmodule
