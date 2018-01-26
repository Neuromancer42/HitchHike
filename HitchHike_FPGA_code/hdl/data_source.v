`timescale 1ns/100ps
module data_source( clock, reset, trigger, input_data, output_data, sending, mac_data );
input clock, reset;
input trigger;
input[9:0] input_data;
input sending;
input[15:0] mac_data;

output reg output_data;

reg[143:0] state;
reg[15:0] counter;
reg[7:0] data1;
reg[7:0] data2;
reg[7:0] data3;
reg[7:0] data4;
reg[7:0] data5;

always @(posedge clock or negedge reset)
begin
    if (!reset)
    begin
        output_data <= 0;

        data1 <= #1 8'b10010010;
        data2 <= input_data[7:0];
        data3[1:0] <= input_data[9:8];

        data2 <= #1 8'b10101010;
        data3[1:0] <= #1 2'b10;

        data3[7:2] <= #1 6'b000000;
        data4 <= #1 8'b00000000; 
        //state[143:0] <= {data1,data1,data1,data1,data1,data1, data2,data2,data2, data3,data3,data3, data1,data1,data1, data4,data4,data4};
        state[143:0] <= {data1,data1,data1,data1,data1,data1,mac_data[15:8],mac_data[15:8],mac_data[15:8],mac_data[7:0],mac_data[7:0],mac_data[7:0],mac_data[15:8],mac_data[15:8],mac_data[15:8],mac_data[7:0],mac_data[7:0],mac_data[7:0]}; 
        //state[143:0] <= {data1,data1,data1,data1,data1,data1,8'd0,8'd0,8'd0,8'b11111111,8'b11111111,8'b11111111, 8'd0, 8'd0, 8'd0, 8'b11111111, 8'b11111111,8'b11111111};
        counter <= 0;
    end
    else if (trigger)
    begin
        if (counter==16'd0)
        begin
            counter <= counter+1;
            if (sending)
            begin
                output_data <= 1'b1;
                //output_data <= state[143];
                //state <= {state[142:0],state[143]};
            end
            else
            begin
                output_data <= 1'b0;
            end
        end
        else
        begin
            counter <= counter + 1;
            if (counter==16'd49)
                counter <= 0;
        end
    end
    else
    begin
        output_data <= 0;

        data1 <= #1 8'b10010010;
        //data2 <= input_data[7:0];
        //data3[1:0] <= input_data[9:8];

        //data2 <= #1 8'b10101010;
        data3[1:0] <= #1 2'b10;

        data3[7:2] <= #1 6'b000000;
        data4 <= #1 8'b00000000; 
        //state[143:0] <= {data1,data1,data1,data1,data1,data1, data2,data2,data2, data3,data3,data3, data1,data1,data1, data4,data4,data4};        
        state[143:0] <= {data1,data1,data1,data1,data1,data1,mac_data[15:8],mac_data[15:8],mac_data[15:8],mac_data[7:0],mac_data[7:0],mac_data[7:0],mac_data[15:8],mac_data[15:8],mac_data[15:8],mac_data[7:0],mac_data[7:0],mac_data[7:0]}; 
        //state[143:0] <= {data1,data1,data1,data1,data1,data1,8'd0,8'd0,8'd0,8'b11111111,8'b11111111,8'b11111111, 8'd0, 8'd0, 8'd0, 8'b11111111, 8'b11111111,8'b11111111};
        counter <= 0;
    end
end

endmodule

