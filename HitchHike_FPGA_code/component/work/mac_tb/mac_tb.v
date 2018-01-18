//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Jan 18 03:37:04 2018
// Version: v11.8 SP2 11.8.2.4
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// mac_tb
module mac_tb(
    // Inputs
    clock,
    insig,
    reset,
    // Outputs
    datacmd,
    head,
    sending
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  clock;
input  insig;
input  reset;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output datacmd;
output head;
output sending;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          clock;
wire          datacmd_net_0;
wire   [1:0]  demodulator_0_ctg;
wire   [7:0]  demodulator_0_cur_flag;
wire   [47:0] demodulator_0_cur_scheme;
wire   [1:0]  demodulator_0_ord;
wire          head_net_0;
wire          insig;
wire          mac_0_working;
wire   [23:0] randgen_0_cur_rand;
wire          reset;
wire          sending_net_0;
wire          sending_net_1;
wire          head_net_1;
wire          datacmd_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign sending_net_1 = sending_net_0;
assign sending       = sending_net_1;
assign head_net_1    = head_net_0;
assign head          = head_net_1;
assign datacmd_net_1 = datacmd_net_0;
assign datacmd       = datacmd_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------demodulator
demodulator demodulator_0(
        // Inputs
        .clock      ( clock ),
        .reset      ( reset ),
        .insig      ( insig ),
        .working    ( mac_0_working ),
        // Outputs
        .ord        ( demodulator_0_ord ),
        .ctg        ( demodulator_0_ctg ),
        .cur_flag   ( demodulator_0_cur_flag ),
        .cur_scheme ( demodulator_0_cur_scheme ) 
        );

//--------mac
mac mac_0(
        // Inputs
        .clock      ( clock ),
        .reset      ( reset ),
        .ord        ( demodulator_0_ord ),
        .cur_rand   ( randgen_0_cur_rand ),
        .ctg        ( demodulator_0_ctg ),
        .cur_flag   ( demodulator_0_cur_flag ),
        .cur_scheme ( demodulator_0_cur_scheme ),
        // Outputs
        .sending    ( sending_net_0 ),
        .head       ( head_net_0 ),
        .datacmd    ( datacmd_net_0 ),
        .working    ( mac_0_working ) 
        );

//--------randgen
randgen randgen_0(
        // Inputs
        .clock    ( clock ),
        .reset    ( reset ),
        // Outputs
        .cur_rand ( randgen_0_cur_rand ) 
        );


endmodule
