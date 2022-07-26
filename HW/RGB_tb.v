`timescale 1ns/1ns
`include "RGB.v"

module RGB_tb;

reg a, b , c;
wire m, n;

RGB DUT (a, b, c, m, n);

initial begin 
    $dumpfile ("RGB_tb.vcd");
    $dumpvars(0, RGB_tb);

    a = 0;
    b = 0;
    c = 0;
    #10

    a = 0;
    b = 0;
    c = 1;
    #10

    a = 0;
    b = 1;
    c = 0;
    #10

    a = 1;
    b = 0;
    c = 0;
    #10


    $display ("Task Completed !!");

end
endmodule