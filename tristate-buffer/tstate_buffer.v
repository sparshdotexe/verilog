module tstate_buffer(
  input [3:0] a,
  input en,
  output [3:0] y
);

// if done thru ternary op
assign y = en ? a : 4'bz;

// always @(*) begin
//  if (en) begin
//    y <= a;
//  end
//  else begin
//    y <= 'bz;
//  end
//
// end

endmodule
