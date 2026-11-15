module testbench;

    reg clk;
    reg [3:0] d;
    wire [3:0] q;

    flop uut(
        .clk(clk),
        .d(d),
        .q(q)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Test inputs
    initial begin
        $monitor("Time=%0t | clk=%b | d=%b | q=%b", $time, clk, d, q);

        d = 4'b0000;
        #10 d = 4'b1010;
        #10 d = 4'b1100;
        #10 d = 4'b1111;
        #10 d = 4'b0011;

        #10 $finish;
    end

endmodule
