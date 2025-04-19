module bcd_add(a,b,carry_in,sum,carry);

input [3:0] a,b;

input carry_in;

output reg [3:0] sum;

output reg carry;
wire [6:0] seg1,seg2;
reg [3:0]sum_temp;

always @(a,b,carry_in)

begin

 sum_temp = a+b+carry_in;

if(sum_temp > 9)

begin


sum_temp= sum_temp+6;

carry = 1;
sum = sum_temp[3:0];

end
else

begin

carry = 0;
 sum = sum_temp[3:0];

end

end

endmodule