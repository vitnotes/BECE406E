module fa_mux_tb();
reg x,y,z;
wire sum,cout;
fa_mux fa1(sum,cout,x,y,z);
initial begin
x=0;y=0;z=0;
#10 x=0;y=0;z=1;
#10 x=0;y=1;z=0;
#10 x=0;y=1;z=1;
#10 x=1;y=0;z=0;
#10 x=1;y=0;z=1;
#10 x=1;y=1;z=0;
#10 x=1;y=1;z=1;#10
end
endmodule
