`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/21/2023 05:04:48 AM
// Design Name: 
// Module Name: Controller
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


module SPI_Slave
    (
        input MOSI,
        output  MISO,
        input SS_n,clk,rst_n, 

        output [9:0] rx_data,
        output rx_valid,

        input [7:0] tx_data,
        input tx_valid
    );
    reg En_P2S,En_S2P;
   
    localparam IDLE = 0;
    localparam CHK_CMD = 1;
    localparam WRITE = 2;
    localparam READ_ADD = 3;
    localparam READ_DATA = 4;
    
    (* fsm_encoding = "one_hot" *)
    reg [2:0] cs,ns;


    reg flag=0;// neda5alo fel always?

// state memory
    always @(posedge clk ,negedge rst_n) 
    begin
        if (~rst_n) 
        begin
            cs<=IDLE; 
        end
        else
            cs<=ns;    
    end
//////////////////////////////////////////


// next state logic
    always @(*) 
    begin
        case (cs)
            IDLE:
                begin
                    if (~SS_n) 
                    begin
                        ns=CHK_CMD;
                    end
                    else
                        begin
                        ns=IDLE;
                        end
                end
            CHK_CMD:
                begin
                    if (SS_n) 
                    begin
                        ns=IDLE;    
                    end
                    else if (~SS_n && ~MOSI) 
                    begin
                        ns=WRITE;  
                    end
                    else if (~SS_n && MOSI && flag==0) 
                    begin
                        ns=READ_ADD;    
                    end
                    else if (~SS_n && MOSI && flag==1) 
                    begin
                        ns=READ_DATA; 
                    end

                end
            WRITE:
                begin            
                    if (SS_n) 
                    begin
                        ns=IDLE;   
                    end
                    else if (~SS_n && ~rx_valid ) 
                    begin
                        ns=WRITE;   
                    end
                end
            READ_ADD:
                begin
                    if (SS_n) 
                    begin
                        ns=IDLE;   
                    end
                    else if (~SS_n && ~rx_valid ) 
                    begin
                        ns=READ_ADD;   
                    end    
                end
            READ_DATA: 
                begin
                    if (SS_n) 
                    begin
                        ns=IDLE;   
                    end
                    else if (~SS_n && tx_valid ) 
                    begin
                        ns=READ_DATA;    
                    end
                end
            default: ns=cs;
        endcase    
    end
///////////////////////

    always @(*) 
    begin
        case (cs)
            IDLE:
                begin
                    En_S2P=0;
                    En_P2S=0;
                end
            CHK_CMD:
                begin
                    if (~SS_n && ~MOSI) 
                    begin
                        En_S2P=1;   
                    end
                    else if (~SS_n && MOSI && flag==0) 
                    begin
                        En_S2P=1;    
                    end 
                    else if (~SS_n && MOSI && flag==1) 
                    begin
                        En_P2S=1;
                        En_S2P=1; 
                    end
                    
                end
            WRITE:
                begin
                       if (SS_n) 
                    begin
                        En_S2P=0;    
                    end
                     else if (~SS_n && rx_valid) 
                    begin
                        En_S2P=0;
                    end                    
                end
            READ_ADD:
                begin
                    if (SS_n) 
                    begin
                        En_S2P=0;
                        En_P2S=0;   
                    end
                    else if (~SS_n && ~rx_valid ) 
                    begin
                        En_P2S=0;   
                    end
                    else if (~SS_n && rx_valid)
                    begin
                            En_S2P=0;
                            flag=1;  
                    end
                    
                end
            READ_DATA:
                begin
                     if (SS_n) 
                    begin
                        En_S2P=0;
                        En_P2S=0;    
                    end
                    else if (~SS_n && ~tx_valid)
                    begin
                            flag=0;
                    end
                    
                end 
            default:
                begin
                    En_P2S=0;
                    En_S2P=0;
                    flag=0;
                end 
        endcase    
    end

// OUTPUT logic
    S2P u1(rx_data,rx_valid, MOSI, En_S2P,clk);
    P2S u2(MISO,tx_valid,tx_data,En_P2S,clk);

/* this is considered to be mealy fsm
   as o/p depends on inputs (MOSI, tx_data, tx_valid)
   and depends on current state to operate as shown in the next state logic
///////////////////////////
*/
endmodule
