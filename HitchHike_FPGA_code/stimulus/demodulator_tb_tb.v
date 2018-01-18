///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: demodulator_tb_tb.v
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

module demodulator_tb_tb;

parameter SYSCLK_PERIOD = 100;// 10MHZ

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
        INSIG = 1'b1;
    #(SYSCLK_PERIOD * 496*50)
        INSIG = 1'b0;
    #(SYSCLK_PERIOD * 100)
        INSIG = 1'b1;
    #(SYSCLK_PERIOD * 424*50)
        INSIG = 1'b0;
    #(SYSCLK_PERIOD * 100)
        INSIG = 1'b1;
    #(SYSCLK_PERIOD * 496*50)
        INSIG = 1'b0;
    #(SYSCLK_PERIOD * 100)
        INSIG = 1'b1;
    #(SYSCLK_PERIOD * 424*50)
        INSIG = 1'b0;
    #(SYSCLK_PERIOD * 100)
        INSIG = 1'b1;
end


//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;


//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  top
//////////////////////////////////////////////////////////////////////
demodulator_tb demodulator_tb_0 (
    // Inputs
    .clock(SYSCLK),
    .reset(NSYSRESET),
    .insig(INSIG),
    .data_source({10{1'b0}}),

    // Outputs
    .output_data()

    // Inouts

);

endmodule

