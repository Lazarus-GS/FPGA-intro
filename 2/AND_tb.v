`timescale 1ns/1ns
`include "AND.v"

module AND_tb;

reg i, j;
wire k;

ANDgate DUT (i, j, k);

initial begin 
    $dumpfile ("AND_tb.vcd");
    $dumpvars(0, AND_tb);

    i = 0;
    j = 0;
    #10

    i = 0;
    j = 1;
    #10

    i = 1;
    j = 0;
    #10

    i = 1;
    j = 1;
    #10

    $display ("Task Completed !!");

end
endmodule