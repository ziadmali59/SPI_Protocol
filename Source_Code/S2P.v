`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2023 10:34:19 AM
// Design Name: 
// Module Name: Counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module S2P
    (
        output reg [9:0] rx_data,
        output reg rx_valid,
        input MOSI,
        input En_S2P,clk
    );
    reg [3:0] seq=9;
        always @(posedge clk)// or posedge set_ctr) 
    begin
            rx_valid<=0;
        if (seq==4'd0) 
            begin
                rx_data[seq]<=MOSI;
                rx_valid<=1;
                seq<=4'd9;

            end 
        else if (En_S2P) 
            begin
            rx_data[seq]<=MOSI; 
            seq<=seq-1;
            rx_valid<=1'b0;
            end
    end
endmodule
