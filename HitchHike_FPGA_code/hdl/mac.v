///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: mac.v
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

module mac( clock, reset, ord, cur_rand, ctg, cur_flag, cur_scheme, sending, head, datacmd, working);

parameter ITS_MAC_ADDR = 3'b000;

input clock, reset;
input[1:0] ord;
input[23:0] cur_rand;
input[1:0] ctg;
input[7:0] cur_flag;
input[47:0] cur_scheme;
output reg sending;
output reg head;
output reg datacmd;
output reg working;

reg[1:0] memo;

reg init, launch, blank, start, past;
reg counting, choosing, resuming, calculating;
reg awaitbeacon, awaitscheme, awaitheartbeat;

reg[7:0] flag;
reg[47:0] scheme;
reg[23:0] randint;
reg[2:0] rd;
reg[2:0] id;
reg[2:0] choice;

reg[3:0] i;
reg[3:0] j;
reg[3:0] cnt;

reg[9:0] counter;
reg[9:0] tick;
reg[9:0] frame_begin;
reg[9:0] data_len;
reg[9:0] cursor;
reg[15:0] data_size;
reg[15:0] data_sent;

reg[5:0] div_counter;

always @(posedge clock or negedge reset)
begin
    if (!reset) begin
        awaitbeacon <= 1'b1;
        awaitscheme <= 1'b0;
        awaitheartbeat <= 1'b0;
        div_counter <= 6'd0;
        init <= 1'b1;
        sending <= 1'b0;
        working <= 1'b0;
        memo <= 2'd0;
        data_size <= 16'd10; //===
        data_sent <= 16'd0;
        id <= ITS_MAC_ADDR;
    end
    else if (div_counter == 6'd49) begin
        div_counter <= 6'd0;
        if (memo != ord) begin
            if (awaitbeacon == 1'b1 && ctg != 2'b01) begin
                memo <= ord;
            end
            else if (awaitscheme == 1'b1 && ctg != 2'b10) begin
                memo <= ord;
            end
            else if (awaitheartbeat == 1'b1 && ctg != 2'b11) begin
                memo <= ord;
            end
            else if (init) begin
                init <= 1'b0;
                launch <= 1'b1;
                blank <= 1'b0;
                start <= 1'b0;
                past <= 1'b0;
                counting <= 1'b1;  // !!!!!
                choosing <= 1'b0;
                calculating <= 1'b0;
                i <= 4'd0;
                j <= 4'd0;
                cnt <= 4'd0;
                flag <= cur_flag;
                scheme <= cur_scheme;
                randint <= cur_rand;
                sending <= 1'b0;
                working <= 1'b1;
            end
            else if (launch) begin
                if (ctg == 2'b01)
                begin
                    if (counting) begin
                        if (i == 4'd8) begin
                            i <= 4'd0;
                            counting <= 1'b0;
                            choosing <= 1'b1;
                        end
                        else begin
                            if (!flag[0]) begin
                                cnt <= cnt + 1;
                            end
                            i <= i + 1;
                            flag <= {flag[0], flag[7:1]};
                        end
                    end
                    else if (choosing) begin
                        if (!flag[0]) begin
                            if (cnt == 4'd1) begin
                                rd <= randint[2:0];
                                choosing <= 1'b0;
                                resuming <= 1'b1;
                                cnt <= 4'd0;
                            end
                            else begin
                                cnt <= cnt - 1;
                            end
                            randint <= {randint[2:0], randint[23:3]};
                        end
                        i <= i + 1;
                        flag <= {flag[0], flag[7:1]};
                    end
                    else if (resuming) begin
                        if (i == 4'd8) begin
                            i <= 4'd0;
                            resuming <= 1'b0;
                            calculating <= 1'b1;
                        end
                        else begin
                            i <= i + 1;
                            flag <= {flag[0], flag[7:1]};
                            randint <= {randint[2:0], randint[23:3]};
                        end
                    end
                    else if (calculating) begin
                        if (!flag[0]) begin
                            if (rd == 3'd0) begin
                                choice <= i;
                                calculating <= 1'b0;
                            end
                            else begin
                                rd <= rd - 1;
                            end
                        end
                        i <= i + 1;
                        flag <= {flag[0], flag[7:1]};
                    end
                    else begin
                        if (i == 4'd8) begin
                            i <= 4'd0;
                            launch <= 1'b0;
                            blank <= 1'b1;
                            counter <= 10'd0;
                            data_len <= 10'd0;
                            tick <= 10'd0;
                            if (choice == 3'd0) begin
                                frame_begin <= 10'd0;
                            end
                            else begin
                                frame_begin <= {3'b000, choice, 4'b0100};
                            end
                        end
                        else begin
                            i <= i + 1;
                            flag <= {flag[0], flag[7:1]};
                        end
                    end
                end
                else if (ctg == 2'b10) begin
                    if (counting) begin
                        if (i == choice) begin
                            data_len <= {1'b0, scheme[5:0], 3'b000};
                            counting <= 1'b0;
                            resuming <= 1'b1;
                        end
                        else begin
                            frame_begin <= frame_begin + {1'b0, scheme[5:0], 3'b000};
                        end
                        i <= i + 1;
                        scheme <= {scheme[5:0], scheme[47:6]};
                    end
                    else if (resuming) begin
                        if (i == 4'd8) begin
                            resuming <= 1'b0;
                            counter <= 10'd0;
                            launch <= 1'b0;
                            blank <= 1'b1;
                            i <= 4'd0;
                            tick <= 10'd0;
                            if (choice != 3'd0) begin
                                frame_begin <= frame_begin + {5'b00000, choice, 2'b00};
                            end
                        end
                        else begin
                            i <= i + 1;
                            scheme <= {scheme[5:0], scheme[47:6]};
                        end
                    end
                end
                else if (ctg == 2'b11)
                begin
                    counter <= 10'd0;
                    launch <= 1'b0;
                    blank <= 1'b1;
                    tick <= 10'd0;
                end
            end
            else if (blank) begin
                if (counter == frame_begin) begin
                    blank <= 1'b0;
                    start <= 1'b1;
                end
                else begin
                    counter <= counter + 1;
                end
            end
            else if (start) begin
                if (ctg == 2'b01) begin
                    datacmd <= 1'b0;
                    if (tick == 10'd20) begin
                        sending <= 1'b0;
                        start <= 1'b0;
                        past <= 1'b1;
                    end
                    else begin
                        sending <= 1'b1;
                        if (tick == 10'd0) begin
                            head <= 1'b0;
                        end
                        else if (tick[9:2] == 8'd0) begin
                            head <= id[2];
                            id <= {id[1:0], id[2]};
                        end
                        else begin
                            head <= data_size[15];
                            data_size <= {data_size[14:0], data_size[15]};
                        end
                        tick <= tick + 1;
                    end
                end
                else begin
                    if (tick == 10'd4) begin
                        if (cursor == data_len) begin
                            sending <= 1'b0;
                            start <= 1'b0;
                            past <= 1'b1;
                        end
                        else if (data_size == data_sent) begin
                            sending <= 1'b0;
                        end
                        else begin
                            sending <= 1'b1;
                            datacmd <= 1'b1;
                            data_sent <= data_sent + 1;
                        end
                    end
                    else begin
                        if (tick == 10'd1) begin
                            head <= 1'b1;
                        end
                        else begin
                            head <= id[2];
                            id <= {id[1:0], id[2]};
                        end
                        tick <= tick + 1;
                        sending <= 1'b1;
                        datacmd <= 1'b0;
                        cursor <= 10'd0;
                    end
                end
                counter <= counter + 1;
            end
            else if (past) begin
                if (ctg == 2'b01) begin
                    if (counter == 10'd160) begin
                        frame_begin <= 10'd0;
                        awaitbeacon <= 1'b0;
                        awaitscheme <= 1'b1;
                        past <= 1'b0;
                        working <= 1'b0;
                        memo <= ord;
                    end
                    else begin
                        counter <= counter + 1;
                    end
                end
                else begin
                    if (counter == 10'd576) begin
                        awaitscheme <= 1'b0;
                        awaitheartbeat <= 1'b1;
                        past <= 1'b0;
                        working <= 1'b0;
                        memo <= ord;
                    end
                    else begin
                        counter <= counter + 1;
                    end
                end
            end
        end
    end
    else begin
        div_counter <= div_counter + 1;
    end
end

endmodule