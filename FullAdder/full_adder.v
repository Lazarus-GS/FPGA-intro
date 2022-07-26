module full_adder (

    input A, B, C,
    output sum, carry
);

wire half_sum, halfcarry_1, halfcarry_2;

half_adder HA1 (A, B, half_sum, halfcarry_1);
half_adder HA2 (half_sum, C, sum, halfcarry_2);

assign carry = halfcarry_1 | halfcarry_2;

endmodule

module half_adder (

    input A, B,
    output S, C
);

assign S = A ^ B;
assign C = A & B;

endmodule