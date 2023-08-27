`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2023 01:32:47 PM
// Design Name: 
// Module Name: P2S_To_Counter
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


module P2S
    (
        output reg MISO,
        input tx_valid,
        input [7:0] tx_data,
        input En_P2S,clk
    );
    reg [2:0] seq=7;
        always @(posedge clk)// or posedge set_ctr) 
    begin
        if (seq==4'd0 /*&& tx_valid==1*/) 
            begin
                MISO<=tx_data[seq];
                seq<=4'd7;

            end 
        else if (En_P2S && tx_valid==1) 
            begin
            MISO<=tx_data[seq]; 
            seq<=seq-1;
            
            end
    end
endmodule
