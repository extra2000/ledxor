`timescale 1ns / 1ps

module ledxor_tb;
    reg r_sw0;
    reg r_sw1;
    wire w_led;

    ledxor UUT(
        .x1_i(r_sw0),
        .x2_i(r_sw1),
        .y_o(w_led)
    );

    initial begin
        r_sw0 <= 1'b0;
        r_sw1 <= 1'b0;
        #200
        r_sw1 <= 1'b1;
        #200

        r_sw0 <= 1'b1;
        r_sw1 <= 1'b0;
        #200
        r_sw1 <= 1'b1;
    end
endmodule
