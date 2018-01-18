///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: demodulator.v
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


//`timescale 1ns/100ps

module demodulator( clock, reset, insig, sending );
input clock, reset;
input insig;
output reg sending;

parameter LOWERBOUND_0 = 10'd416;
parameter UPPERBOUND_0 = 10'd432;
parameter LOWERBOUND_1 = 10'd488;
parameter UPPERBOUND_1 = 10'd504;

reg finish;
reg[5:0] counter;
reg[50:0] buffer;
reg[5:0] len;
reg[9:0] latency;
reg[10:0] waittime;
reg[11:0] idle;

always @(posedge clock or negedge reset)
begin
    if (!reset) begin
        finish <= 1'b0;
        sending <= 1'b0;
        counter <= 6'd0;
        buffer <= 51'd0;
        len <= 6'd0;
        latency <= 10'd0;
        waittime <= 11'd0;
        idle <= 12'd0;
    end
    else begin
        if (counter == 6'd49) begin
            counter <= 6'd0;
            if (finish) begin
                if (idle == 12'd2999) begin
                    sending <= 1'b1;
                    idle <= idle + 1;
                end
                else if (idle == 12'd3099) begin
                    finish <= 1'b0;
                    sending <= 1'b0;
                    buffer <= 51'd0;
                    len <= 6'd0;
                    latency <= 10'd0;
                    waittime <= 11'd0;
                    idle <= 12'd0;
                end
                else begin
                    idle <= idle + 1;
                end
            end
            else if (insig) begin
                latency <= latency + 1;
                waittime <= 11'd0;
            end
            else begin
                if (waittime == 11'd1000) begin
                    buffer <= 51'd0;
                    len <= 6'd0;
                    latency <= 10'd0;
                    waittime <= 11'd0;
                end
                else begin
                    if (LOWERBOUND_0 < latency && latency < UPPERBOUND_0) begin
                        buffer <= {buffer[49:0], 1'b0};
                        len <= len + 1;
                    end
                    else if (LOWERBOUND_1 < latency && latency < UPPERBOUND_1) begin
                        buffer <= {buffer[49:0], 1'b1};
                        len <= len + 1;
                    end
                    else begin
                        if (len == 6'd4) begin
                            if (buffer[3:0] == 4'b1010) begin
                                finish <= 1'b1;
                            end
                        end
                        else begin
                            waittime <= waittime + 1;
                        end
                    end
                    latency <= 10'd0;
                end
            end
        end
        else begin
            counter <= counter + 1;
        end
    end
end

endmodule