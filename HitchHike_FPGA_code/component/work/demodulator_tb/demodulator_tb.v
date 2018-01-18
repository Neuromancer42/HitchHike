//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Jan 18 16:31:05 2018
// Version: v11.8 SP2 11.8.2.4
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// demodulator_tb
module demodulator_tb(
    // Inputs
    clock,
    data_source,
    insig,
    reset,
    // Outputs
    output_data
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input        clock;
input  [9:0] data_source;
input        insig;
input        reset;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output       output_data;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire         clock;
wire   [9:0] data_source;
wire         demodulator_0_sending;
wire         insig;
wire         output_data_net_0;
wire         reset;
wire         output_data_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign output_data_net_1 = output_data_net_0;
assign output_data       = output_data_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------data_source
data_source data_source_0(
        // Inputs
        .clock       ( clock ),
        .reset       ( reset ),
        .trigger     ( insig ),
        .input_data  ( data_source ),
        .sending     ( demodulator_0_sending ),
        // Outputs
        .output_data ( output_data_net_0 ) 
        );

//--------demodulator
demodulator demodulator_0(
        // Inputs
        .clock   ( clock ),
        .reset   ( reset ),
        .insig   ( insig ),
        // Outputs
        .sending ( demodulator_0_sending ) 
        );


endmodule
