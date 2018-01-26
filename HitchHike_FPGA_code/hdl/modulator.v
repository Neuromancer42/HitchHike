module modulator( clock, reset, trigger_signal, output_signal, send, data );
input clock, reset, trigger_signal;
output reg output_signal;
output reg send;
output reg[15:0] data;

reg[15:0] clock_counter;
reg[5:0] counter;
reg download;
reg upload;
reg counting;

reg[50:0] buffer;
reg[5:0] len;
reg[3:0] header;

parameter LOWERBOUND_0 = 15'd400;
parameter UPPERBOUND_0 = 15'd600;
parameter LOWERBOUND_1 = 15'd1200;
parameter UPPERBOUND_1 = 15'd1600;

always @(negedge reset or posedge clock)
begin
    if (~reset)
    begin
        clock_counter <= 0;
        output_signal <= 1'b0;
        counter <= 0;
        download <= 1'b1;
        upload <= 1'b0;

        buffer <= 0;
        len <= 0;
        header <= 0;

        counting <= 1'b0;
        
        send <= 1'b0;

        data <= 0;
    end
    else if (trigger_signal)
    begin
        if (counter==0)
        begin
            counter <= counter+1;
            clock_counter <= clock_counter+1;
            if (clock_counter<=16'd448)
                output_signal <= 1'b0;
            else if (clock_counter<=16'd6000)
                if (upload)
                begin
                    output_signal <= 1'b1;
                end
                else if (download)
                begin
                    output_signal <= 1'b0;
                    data <= data + 1;
                end
            else
                output_signal <= 1'b0;
            
            if (download)
            begin
                counting <= 1'b1;
                send <= 1'b0;
            end
            else if (upload)
            begin
                counting <= 1'b0;
                send <= 1'b1;
            end

/*
            if (download)
            begin
                clock_counter <= clock_counter+1;
                if (len == 6'd4)
                begin
                    download <= 1'b0;
                    header <= buffer[3:0];
                    if (buffer[3:0] == 4'b1010)
                    begin
                        upload <= 1'b1;
                        send <= 1'b1;
                    end
                end
            end
            else if (upload)
            begin
                clock_counter <= clock_counter+1;
                if (clock_counter<=16'd448)
                    output_signal <= 1'b0;
                else if (clock_counter<=16'd6000)
                    output_signal <= 1'b1;
                else
                    output_signal <= 1'b0;
            end
*/
        end
        else
        begin
            counter <= counter+1;
            if (counter==6'd49)
                counter <= 0;
        end
    end
    else
    begin
        if (download)
        begin
            if (counting)
            begin
                data <= clock_counter;
                download <= 1'b0;
                upload <= 1'b1;
            end
        end
        if (upload)
        begin
            if (!counting)
            begin
                data <= 0;
                upload <= 1'b0;
                download <= 1'b1;
            end
        end
        clock_counter <= 0;
        counter <= 0;
        output_signal <= 1'b0;
/*
        if (download)
        begin
            if (counting)
            begin
                if (LOWERBOUND_0 <= clock_counter && clock_counter <= UPPERBOUND_0)
                begin
                    buffer[50:0] <= {buffer[49:0],1'b0};
                    len <= len + 1;
                end
                else if (LOWERBOUND_1 <= clock_counter && clock_counter <= UPPERBOUND_1)
                begin
                    buffer[50:0] <= {buffer[49:0],1'b1};
                    len <= len + 1;
                end
                else
                begin
                    len <= 0;
                end
                counting <= 1'b0;
            end
            clock_counter <= 0;
            counter <= 0;
        end
        else if (upload)
        begin
            counting <= 1'b0;
            clock_counter <= 16'd0;
            output_signal <= 1'b0;
            counter <= 0;
            upload <= 1'b0;
            download <= 1'b1;
            header <= 0;
            len <= 0;
            buffer <= 0;   
            send <= 1'b0;
        end
*/
    end
end

endmodule

