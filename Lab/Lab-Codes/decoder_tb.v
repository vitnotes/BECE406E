module decoder_tb();
wire [7:0] out;
reg [2:0] in;

decoder3_to_8 dut(in,out);

initial begin  
in=3'b001;#10;
in=3'b010;#10;
in=3'b101;#10;
in=3'b111;#10;
end
endmodule