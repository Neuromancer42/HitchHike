///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: top_tb.v
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

`timescale 1ns/100ps

module top_tb;

parameter SYSCLK_PERIOD = 10;// 10MHZ

reg SYSCLK;
reg NSYSRESET;
reg INSIG;

initial
begin
    SYSCLK = 1'b0;
    NSYSRESET = 1'b0;
    INSIG = 1'b0;
end

//////////////////////////////////////////////////////////////////////
// Reset Pulse
//////////////////////////////////////////////////////////////////////
initial
begin
    #(SYSCLK_PERIOD * 10 )
        NSYSRESET = 1'b1;
    #(SYSCLK_PERIOD * 100 )
        INSIG = 1'b1;
    #(SYSCLK_PERIOD * 4 * 20)
        INSIG = 1'b0;
    #(SYSCLK_PERIOD * 212)
        INSIG = 1'b1;
    #(SYSCLK_PERIOD * 5 * 20)
        INSIG = 1'b0;
    #(SYSCLK_PERIOD * 20 * 20)
        INSIG = 1'b1;
    #(SYSCLK_PERIOD * 5 * 20)
        INSIG = 1'b0;
    #(SYSCLK_PERIOD * 202)
        INSIG = 1'b1;
    #(SYSCLK_PERIOD * 6 * 20)
        INSIG = 1'b0;
    #(SYSCLK_PERIOD * 200)
        INSIG = 1'b1;
    #(SYSCLK_PERIOD * 12 * 20)
        INSIG = 1'b0;
end



//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;


//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  top
//////////////////////////////////////////////////////////////////////
top top_0 (
    // Inputs
    .clock(SYSCLK),
    .reset(NSYSRESET),
    .trigger_signal(INSIG),

    // Outputs
    .clock_out( ),
    .output_signal(),
    .signal_into_switch(),
    .output_data_rate()

    // Inouts

);

endmodule

