`timescale 1ns / 1ps

module ledxor(
        x1_i,
        x2_i,
        y_o
    );
    input x1_i;
    input x2_i;
    output y_o;

    assign y_o = (x1_i & ~x2_i) | (~x1_i & x2_i);
endmodule
