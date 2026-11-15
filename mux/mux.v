module mux(
  input A, B, S,
  output Y
);

  assign Y = (B & S) | (A & ~S);

endmodule


