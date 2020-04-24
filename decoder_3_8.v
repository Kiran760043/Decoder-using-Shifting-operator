//////////////////////////////////////////////////////////////////////////////////
// Design Name: 3x8 Decoder using shifter
// Engineer: kiran
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module decoder_3_8(in, out);

    parameter N = 3;

    input  wire [N-1:0] in;
    output reg  [2**N-1:0] out;

    always @(*)
        begin
            out = 1 << in;
        end

endmodule
