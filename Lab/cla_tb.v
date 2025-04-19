module cla_tb();
    reg [3:0] A, B;
    reg Cin;
    wire [3:0] S;
    wire Cout;

    cla c(A, B, Cin, S, Cout);

    initial
begin
        A = 4'b0011; B = 4'b0111; Cin = 1'b0; #10;
 A = 4'b0110; B = 4'b0101; Cin = 1'b0; #10;
 A = 4'b0001; B = 4'b1011; Cin = 1'b1; #10;
 A = 4'b1001; B = 4'b0111; Cin = 1'b1; #10;
    end
endmodule