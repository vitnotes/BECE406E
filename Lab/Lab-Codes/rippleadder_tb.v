module rippleadder_tb();
reg a[3:0], b[3:0], c_in;
wire sum[3:0], carry;
rippleadder ra(a[3:0], b[3:0], c_in, sum[3:0], carry);
initial
begin
a = 4'b0001;
b = 4'b1001;
c_in = 0;
#10
a = 4'b0000;
b = 4'b1001;
c_in = 1;
end
endmodule