//////////////////////////////////////////////////////////////////////////////////
// Design: Test bench for Decoder
// Engineer: kiran
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps


module test_decoder_3_8();
    parameter N = 3;
// inputs to the DUT
    reg [N-1:0] in = 3'b000;
// outputs from the DUT
    wire [2**N-1:0] out;




decoder_3_8 DUT ( .in(in), .out(out) );

initial
    begin
        $display($time, " << Simulation Results >>");
        $monitor($time, "in = %b, out = %b", in, out);
    end

 initial begin
        for(integer i=0; i<=7; i=i+1) begin
            #2;
            in = in + 3'b001;
        end
        $finish;
    end

endmodule
