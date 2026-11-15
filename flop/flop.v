// d flip flop with asynchronous reset
// module flop(
//   input clk,
//   input reset,
//   input [3:0] d,
//   output reg [3:0] q
// );
//
// always @ (posedge clk, negedge reset)
// begin
//   if (reset == 0) q <= 0;
//   else q <= d;
// end
//
// endmodule



module flop(
  input clk,
  input reset,
  input [3:0] d,
  output reg [3:0] q
);

always @ (posedge clk, negedge reset)
begin
  if (reset == 0) q <= 0;
  else q <= d;
end

endmodule
