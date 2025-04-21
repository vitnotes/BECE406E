module struct_tb();
reg x,y,z;
wire d0,d1,d2,d3,d4,d5,d6,d7;
decoder_struct d10(x,y,z,d0,d1,d2,d3,d4,d5,d6,d7);
initial begin
// Initialize Inputs
// Wait 100 ns for global reset to finish
// Add stimulus here
x = 0;y = 0;z = 1;
#10;x = 0;y = 1;z = 0;
#10;x = 0;y = 1;z = 1;
#10;x = 1;y = 0;z = 0;
#10;x = 1;y = 0;z = 1;
#10;x = 1;y = 1;z = 0;
#10;x = 1;y = 1;z = 1;#10;

end
endmodule