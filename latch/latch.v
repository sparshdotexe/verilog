module latch(
  input enable,
  input [1:0] data,
  output reg [1:0] q
);

always @ (enable, data)
  if (enable) q <= data;

endmodule
