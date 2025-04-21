module mod8_up_down (
 output reg [3:0]q,
 input  mod,clk, rst);

 always @(posedge clk) begin
  if (rst) begin
   q <= 0;
  end
  else begin
   if(mod)
              begin
              q <= q + 1;
              end
    else
              begin
              q <= q - 1;
              end
  end
 end
endmodule