//module fifo #(
//    parameter WIDTH = 8,  // Width of data bus
//    parameter DEPTH = 5   // FIFO depth
//)(
//    input clk,              // Clock input
//    input reset,            // Reset input (active high)
//    input write_en,         // Write enable
//    input read_en,          // Read enable
//    input [WIDTH-1:0] din,  // Data input
//    output reg [WIDTH-1:0] dout, // Data output
//    output reg full,        // Full flag
//    output reg empty        // Empty flag
//);
//
//    // Memory array for FIFO
//    reg [WIDTH-1:0] fifo_mem [0:DEPTH-1];
//    reg [2:0] write_ptr;   // Write pointer (3 bits to handle depth 5)
//    reg [2:0] read_ptr;    // Read pointer (3 bits to handle depth 5)
//    reg [2:0] count;       // Count to track how many elements are in FIFO
//   
//    // Sequential logic for reading and writing to FIFO
//    always @(posedge clk) begin
//        if (reset) begin
//            write_ptr <= 0;
//            read_ptr <= 0;
//            count <= 0;
//            full <= 0;
//            empty <= 1;
//        end
//        else begin
//            // Write Operation
//            if (write_en && !full) begin
//                fifo_mem[write_ptr] <= din;
//                write_ptr <= (write_ptr + 1) % DEPTH;  // Increment pointer
//                count <= count + 1;
//            end
//           
//            // Read Operation
//            if (read_en && !empty) begin
//                dout <= fifo_mem[read_ptr];
//                read_ptr <= (read_ptr + 1) % DEPTH;    // Increment pointer
//                count <= count - 1;
//            end
//           
//            // Update Full and Empty flags
//            full <= (count == DEPTH);     // Full when count reaches DEPTH
//            empty <= (count == 0);        // Empty when count is 0
//        end
//    end
//
//endmodule