///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: randgen.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::IGLOO> <Die::AGLN250V2> <Package::100 VQFP>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module randgen( clock, reset, cur_rand );
input clock, reset;
output reg[23:0] cur_rand;

reg[2:0] d1;
reg[2:0] d2;
reg[2:0] d3;
reg[2:0] d4;
reg[2:0] d5;
reg[2:0] d6;
reg[2:0] d7;
reg[2:0] d8;

reg[5:0] counter;
reg[23:0] rd;

wire linear_feedback;

assign linear_feedback = !(rd[23] ^ rd[11]);

always @(posedge clock or negedge reset)
begin
    if (!reset) begin
        counter <= 6'd0;
        d1 <= 3'd0;
        d2 <= rd % 2;
        d3 <= rd % 3;
        d4 <= rd % 4;
        d5 <= rd % 5;
        d6 <= rd % 6;
        d7 <= rd % 7;
        d8 <= rd % 8;
        rd = 24'b0;
    end
    else if (counter <= 6'd49) begin
        counter <= 6'd0;
        cur_rand <= {d8, d7, d6, d5, d4, d3, d2, d1};
        d1 <= 3'd0;
        d2 <= rd % 2;
        d3 <= rd % 3;
        d4 <= rd % 4;
        d5 <= rd % 5;
        d6 <= rd % 6;
        d7 <= rd % 7;
        d8 <= rd % 8;
        rd = {rd[22:0], linear_feedback};
    end
    else begin
        counter <= counter + 1;
    end
end

endmodule