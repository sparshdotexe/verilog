module testbench;

    reg [3:0] A;
    wire Y;

    red uut(A, Y);

    initial begin

        A = 4'b0000; #10;
        A = 4'b0001; #10;
        A = 4'b0111; #10;
        A = 4'b1110; #10;
        A = 4'b1111; #10;

        $finish;
    end

    initial begin
        $monitor("A=%d || Y=%d", A, Y);
    end

endmodule
