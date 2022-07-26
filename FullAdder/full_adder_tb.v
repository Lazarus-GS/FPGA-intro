`timescale 1ns/1ns
`include "full_adder.v"

module full_adder_tb;

reg A, B, C;
wire sum, carry;

full_adder uut (A, B, C, sum, carry);

initial begin 
    $dumpfile ("full_adder_tb.vcd");
    $dumpvars(0, full_adder_tb);

    A = 0;
    B = 0;
    C = 0;
    #20

    A = 0;
    B = 0;
    C = 1;
    #20

    A = 0;
    B = 1;
    C = 0;
    #20

    A = 0;
    B = 1;
    C = 1;
    #20

    A = 1;
    B = 0;
    C = 0;
    #20

    A = 1;
    B = 0;
    C = 1;
    #20

    A = 1;
    B = 1;
    C = 0;
    #20

    A = 1;
    B = 1;
    C = 1;
    #20


   

    $display ("Task Completed !!");

end
endmodule