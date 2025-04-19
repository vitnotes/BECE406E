module rca_tb();
reg [3:0] a;
reg [3:0] b;
reg c_in;
wire [3:0]sum;
wire carry;
rca rca1(a,b,c_in,sum,carry);
initial
begin
a = 4'b0010; b = 4'b0100; c_in = 0;
#10 a = 4'b0001; b = 4'b0110;c_in = 0;
#10 a = 4'b0110; b = 4'b0100;c_in = 1;
#10 a = 4'b0111; b = 4'b1111;c_in = 1; #10;
end
endmodule