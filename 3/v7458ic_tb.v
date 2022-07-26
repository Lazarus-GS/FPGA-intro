`timescale 1ns/1ns
`include "v7458ic.v"

module v7458ic_tb;

reg a, b, c, d, e, f, g, h, i, j;
wire m, n;

v7458ic DUT(a, b, c, d, e, f, m, g, h, i, j, n);

initial begin
    $dumpfile("v7458ic_tb.vcd");
    $dumpvars(0, v7458ic_tb);

    a = 0;
    b = 0;
    c = 0;
    d = 1;
    e = 0;
    f = 0;
    g = 0;
    h = 0;
    i = 0;
    j = 0;
    #10;

    a = 1;
    b = 0;
    c = 0;
    d = 1;
    e = 0;
    f = 1;
    g = 1;
    h = 0;
    i = 1;
    j = 0;
    #10;

    a = 0;
    b = 0;
    c = 1;
    d = 1;
    e = 1;
    f = 0;
    g = 0;
    h = 1;
    i = 0;
    j = 1;
    #10;

    a = 1;
    b = 0;
    c = 1;
    d = 1;
    e = 1;
    f = 1;
    g = 1;
    h = 1;
    i = 1;
    j = 1;
    #10;

    $display ("Test Completed!");

end

endmodule