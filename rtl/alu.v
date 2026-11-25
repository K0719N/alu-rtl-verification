module alu (
    input  [7:0] a,
    input  [7:0] b,
    output [7:0] result,
    output carry
);
// 9 bit sum, top bit is the carry
    assign {carry, result} = a + b; // goes 1 when sum is too big for 8 bit
endmodule