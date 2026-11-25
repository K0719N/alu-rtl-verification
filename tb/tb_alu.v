`timescale 1ns/1ps
module tb_alu;
    reg  [7:0] a, b;
    wire [7:0] result;
    wire carry;

    alu dut (.a(a), .b(b), .carry(carry), .result(result)); // the alu we testing

    initial begin
        $dumpfile("alu.vcd");     // save waves to look in gtkwave
        $dumpvars(0, tb_alu);

        a = 8'd3;   b = 8'd5;   #10;
        $display("a=%d b=%d result=%d carry=%d", a, b, result, carry);

        a = 8'd200; b = 8'd100; #10;
        $display("a=%d b=%d result=%d carry=%d", a, b, result, carry);
       
        a = 8'd255; b = 8'd1; #10;
        $display("a=%d b=%d result=%d carry=%d", a, b, result, carry);

        $finish;
    end
endmodule