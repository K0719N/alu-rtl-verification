module alu (
    input  [7:0] a,
    input  [7:0] b,
    input        op, // 0 = add, 1 = sub
    output [7:0] result,
    output carry
);
// 9 bit sum, top bit is the carry
    assign {carry, result} = (op == 0) ? a + b : a - b; // goes 1 when sum is too big for 8 bit
endmodule