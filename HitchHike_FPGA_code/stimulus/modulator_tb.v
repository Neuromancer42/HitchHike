//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Thu Jan 18 23:10:35 2018
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: modulator_tb.v
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

module modulator_tb;

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
    #(SYSCLK_PERIOD * 10)
        INSIG = 1'b1;
    #(SYSCLK_PERIOD * 5 * 50)
        INSIG = 1'b0;
    #(SYSCLK_PERIOD * 4 * 50)
        INSIG = 1'b1;
    #(SYSCLK_PERIOD * 2 * 50)
        INSIG = 1'b0;
    #(SYSCLK_PERIOD * 4 * 50)
        INSIG = 1'b1;
    #(SYSCLK_PERIOD * 9 * 50)
        INSIG = 1'b0;
    #(SYSCLK_PERIOD * 2 * 50)
        INSIG = 1'b1;
    #(SYSCLK_PERIOD * 4 * 50)
        INSIG = 1'b0;
    #(SYSCLK_PERIOD * 2 * 50)
        INSIG = 1'b1;
    #(SYSCLK_PERIOD * 8 * 50)
        INSIG = 1'b0;
end


//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;


//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  modulator
//////////////////////////////////////////////////////////////////////
modulator modulator_0 (
    // Inputs
    .clock(SYSCLK),
    .reset(NSYSRESET),
    .trigger_signal(INSIG),

    // Outputs
    .output_signal( )

    // Inouts

);

endmodule

