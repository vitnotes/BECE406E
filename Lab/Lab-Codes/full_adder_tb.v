module full_adder_tb();
reg x, y, z;
wire sum, carry;
full_adder fa(x,y,z,sum,carry);
initial
begin
x=0;y=0;z=0;
#10 x=0;y=0;z=1;
#10 x=0;y=1;z=0;
#10 x=0;y=1;z=1;
#10 x=1;y=0;z=0;
#10 x=1;y=0;z=1;
#10 x=1;y=1;z=0;
#10 x=1;y=1;z=1;
end
endmodule