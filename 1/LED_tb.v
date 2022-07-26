`timescale 1ns/1ns
`include "LED.v"

module LED_tb;

reg i;
wire j;

LED DUT(i, j);

initial begin
    $dumpfile("LED_tb.vcd");
    $dumpvars(0, LED_tb);

    i = 0;
    #10;

    i = 1;
    #10;

    i = 0;
    #10;

    $display ("Test Completed!");

end

endmodule