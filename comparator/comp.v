module comp(
    input [3:0] A, B,
    output C
);

    wire w0, w1, w2, w3;
    wire w4, w5;

    xnor_gate first  (.X(A[0]), .Y(B[0]), .Z(w0));
    xnor_gate second (.X(A[1]), .Y(B[1]), .Z(w1));
    xnor_gate third  (.X(A[2]), .Y(B[2]), .Z(w2));
    xnor_gate fourth (.X(A[3]), .Y(B[3]), .Z(w3));

    and_gate and1 (.P(w0), .Q(w1), .R(w4));
    and_gate and2 (.P(w2), .Q(w3), .R(w5));
    and_gate and3 (.P(w4), .Q(w5), .R(C));

endmodule
