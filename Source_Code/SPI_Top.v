`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/21/2023 05:04:48 AM
// Design Name: 
// Module Name: SPI_Top
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


module SPI_Top
   (
	    input MOSI,
        output MISO,
        input SS_n,clk,rst_n
    );



        wire [9:0] rx_data;
        wire rx_valid;
        wire [7:0] tx_data;
        wire tx_valid;

SPI_Slave   slave(MOSI,MISO,SS_n,clk,rst_n,rx_data,rx_valid,tx_data,tx_valid);
Memory      memory(tx_data,tx_valid,rx_data,rx_valid,clk,rst_n);

endmodule
