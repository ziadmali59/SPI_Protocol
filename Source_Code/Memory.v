`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/21/2023 11:30:20 AM
// Design Name: 
// Module Name: Memory
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


module Memory
    //#(parameter MEM_DEPTH =256,ADDR_SIZE=8)
    (
        output reg [7:0] dout,
        output  tx_valid,

        input [9:0] din,
        input rx_valid,
        input clk,rst_n
    );
    reg [7:0] Mem [0:255];
    reg [7:0] ADDR=0;
    //initial 
      // begin
        //    $readmemh("TEST1.mem",Mem);
            //read from Prog.txt    
        //end
       // integer i;
    always @(posedge clk )  //write
    begin
        if (~rst_n) 
        begin
          Mem[ADDR]<=0;
        end
        else if (rx_valid)
                begin
                    if (din[9:8]==2'b00)
                        begin
                             ADDR<=din[7:0];
                        end
                     else if (din[9:8]==2'b01)
                        begin
                            Mem[ADDR]<=din[7:0];
                        end
                        else if (din[9:8]==2'b10)
                            begin
                            ADDR=din[7:0];
                            end
                end
    end

    always @(*) // read
    begin // hena mesh lazem rst condition ashan el fsm idle bye7meeny 
    if (din[9:8]==2'b11) 
        begin
            dout=Mem[ADDR];
        end   
    end
    
    assign tx_valid=(din[9:8]==2'b11);
endmodule
