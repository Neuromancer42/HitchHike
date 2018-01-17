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

//`timescale <time_units> / <precision>

module demodulator( clock, reset, insig, working, ord, ctg, cur_flag, cur_scheme );
input clock, reset;
input insig, working;

parameter LOWERBOUND_0 = 10'd0;
parameter UPPERBOUND_0 = 10'd3;
parameter LOWERBOUND_1 = 10'd4;
parameter UPPERBOUND_1 = 10'd6;

output reg[1:0] ord;
output reg[1:0] ctg;  // !?
output reg[7:0] cur_flag;
output reg[47:0] cur_scheme;

reg[5:0] counter;
reg[50:0] buffer;
reg[5:0] len;
reg[9:0] latency;
reg[10:0] waittime;
reg checksum;

always @(posedge clock or negedge reset)
begin
    if (!reset) begin
        counter <= 6'd0;
        ord <= 2'd0;
        ctg <= 2'd0;
        cur_flag <= 8'd0;
        cur_scheme <= 48'd0;
        buffer <= 51'd0;
        len <= 6'd0;
        latency <= 10'd0;
        waittime <= 11'd0;
        checksum <= 1'b0;
    end
    else begin
        if (counter == 6'd49) begin
            counter <= 6'd0;
            if (working) begin
                buffer <= 51'd0;
                len <= 6'd0;
                latency <= 10'd0;
                waittime <= 11'd0;
                checksum <= 1'b0;
            end
            else if (insig) begin
                latency <= latency + 1;
                waittime <= 11'd0;
            end
            else begin
                if (waittime == 11'd500) begin
                    buffer <= 51'd0;
                    len <= 6'd0;
                    latency <= 10'd0;
                    waittime <= 11'd0;
                    checksum <= 1'b0;
                end
                else if (LOWERBOUND_0 < latency && latency < UPPERBOUND_0) begin
                    buffer <= {buffer[49:0], 1'b0};
                    len <= len + 1;
                end
                else if (LOWERBOUND_1 < latency && latency < UPPERBOUND_1) begin
                    buffer <= {buffer[49:0], 1'b1};
                    len <= len + 1;
                    checksum <= checksum ^ 1'b1;
                end
                else begin
                    if (len == 6'd3) begin
                        if (buffer[2:1] == 2'b01 && checksum == 1'b0) begin
                            ord <= ord + 1;
                            ctg <= 2'b01;
                            len <= 6'd0;
                        end
                    end
                    else if (len == 6'd11) begin
                        if (buffer[10:9] == 2'b10 && checksum == 1'b0) begin
                            ord <= ord + 1;
                            ctg <= 2'b10;
                            cur_flag <= buffer[8:1];
                            buffer <= 51'd0;
                            len <= 6'd0;
                        end
                    end
                    else if (len == 6'd51) begin
                        if (buffer[50:49] == 2'b11 && checksum == 1'b0) begin
                            ord <= ord + 1;
                            ctg <= 2'b11;
                            cur_scheme <= buffer[48:1];
                            buffer <= 51'd0;
                            len <= 6'd0;
                        end
                    end
                    else begin
                        waittime <= waittime + 1;
                    end
                end
            end
        end
        else begin
            counter <= counter + 1;
        end
    end
end

endmodule