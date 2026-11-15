module testbench;

    reg [3:0] d0, d1, d2, d3;
    reg [1:0] s;
    wire [3:0] Y;

    mux4 uut(d0, d1, d2, d3, s, Y);

    initial begin

        d0 = 4'b0001;
        d1 = 4'b0010;
        d2 = 4'b0100;
        d3 = 4'b1000;

        s = 2'b00; #10;
        s = 2'b01; #10;
        s = 2'b10; #10;
        s = 2'b11; #10;

        $finish;
    end

    initial begin
        $monitor("S=%b | Y=%b", s, Y);
    end

endmodule
