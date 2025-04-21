module priority_encoder_tb;
  
    wire [2:0] y; // Output of the priority encoder
    reg [7:0] i;  // Input value to the priority encoder

    // Instantiate the priority_encoder_8_3 module
    priority_encoder dut(y, i);

    // Testbench initial block
    initial begin
        // Assign input values to test the priority encoder
        
        // Test Case 1 Input value = 1 (Binary: 00000001)
        i = 8'b00000001;
        #10;
        i = 8'b0000001x;
        #10;
        i = 8'b000001xx;
        #10;
        i = 8'b00001xxx;
        #10;
        i = 8'b0001xxxx;
        #10;
        i = 8'b001xxxxx;
        #10;
        i = 8'b01xxxxxx;
        #10;
        i = 8'b1xxxxxxx;
        #10;
        // Terminate simulation
     
    end
endmodule