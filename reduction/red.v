// reduction basically means to combine all the bits of a vector into a single
// output bit using a logical operator.

module red(
  input [3:0] A, output Y
);

assign Y = &A;

endmodule
