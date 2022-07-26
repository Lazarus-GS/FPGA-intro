module RGB (R, G, B, B0, B1);

input R, G, B;
output B0, B1;

assign B0 = ~R & ~G & B | R & ~G & ~B ;
assign B1 = ~R & G & ~B | R & ~G & ~B ;


endmodule