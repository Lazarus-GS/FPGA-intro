module v7458ic ( 
    
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

assign p2y = (p2a & p2b) | (p2c & p2d);
assign p1y = (p1d & p1e & p1f) | (p1c & p1b & p1a);

endmodule