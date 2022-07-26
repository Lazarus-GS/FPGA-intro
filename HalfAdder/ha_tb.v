`timescale 1ns/1ns
`include "ha.v"

module ha_tb;

reg a, b;
wire s, c;

ha DUT (a, b, s, c);

initial begin 
    $dumpfile ("ha_tb.vcd");
    $dumpvars(0, ha_tb);

    a = 0;
    b = 0;
    #10

    a = 0;
    b = 1;
    #10

    a = 1;
    b = 0;
    #10

    a = 1;
    b = 1;
    #10


    $display ("Task Completed !!");

end
endmodule