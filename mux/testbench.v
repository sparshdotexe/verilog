module testbench;

    reg A, B, S;
    wire Y;

    mux uut(A, B, S, Y);

    initial begin

        A = 0; B = 0; S = 0;
        #10;

        A = 0; B = 1; S = 0;
        #10;

        A = 1; B = 0; S = 0;
        #10;

        A = 1; B = 1; S = 0;
        #10;

        $finish;
    end

    initial begin
        $monitor("A=%b B=%b S=%b | Y=%b", A, B, S, Y);
    end

endmodule
