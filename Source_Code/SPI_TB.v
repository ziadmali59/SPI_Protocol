`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 08/23/2023 08:08:53 PM
// Design Name:
// Module Name: SPI_TB
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




module SPI_TB();
//input define
reg MOSI;
reg SS_n,clk,rst_n;
//output define
wire MISO;
//Module define
SPI_Top DUT (MOSI,MISO,SS_n,clk,rst_n);


initial
    begin
        $readmemh("TEST1.mem",Memory.Mem);
        //read from Prog.txt    
    end


//clock define
initial
begin
    clk=1'b1;
    forever
    begin
        #4 clk=~clk;    
    end    
end


initial
begin
    rst_n=1'b0;
    SS_n=1;
    #12
    rst_n=1'b1;
    SS_n=1'b0;
    //Chk_CMD state
    MOSI=0;
    //start write state
    #8
    MOSI=0;
    #8
    MOSI=0;
    //write address 69’h
    #8
    MOSI=0;
    #8
    MOSI=1;
    #8
    MOSI=1;
    #8
    MOSI=0;
    #8
    MOSI=1;
    #8
    MOSI=0;
    #8
    MOSI=0;
    #8
    MOSI=1;
    #8
    SS_n=1;
    //address saved
    #8
    SS_n=0;
    MOSI=0;
    #8
    MOSI=0;
    #8
    MOSI=1;
    //write data B3’h in address 69’h
    #8
    MOSI=1;
    #8
    MOSI=0;
    #8
    MOSI=1;
    #8
    MOSI=1;
    #8
    MOSI=0;
    #8
    MOSI=0;
    #8
    MOSI=1;
    #8
    MOSI=1;
    #8
    SS_n=1;
    //data saved
    #8
    SS_n=0;
    MOSI=1;
    #8
    MOSI=1;
    #8
    MOSI=0;
    //read address 69’h
    #8
    MOSI=0;
    #8
    MOSI=1;
    #8
    MOSI=1;
    #8
    MOSI=0;
    #8
    MOSI=1;
    #8
    MOSI=0;
    #8
    MOSI=0;
    #8
    MOSI=1;
    #8
    SS_n=1;
   #8
   //read data keda el tx_data 3aykoon B3’h w serial miso bardo bit by bit
   //from address 69’h
   SS_n=0;
   MOSI=1;
   #8
   MOSI=1;
   #8
   MOSI=1;
   #8
   	 MOSI=$random;
       #8
       MOSI=$random;
       #8
       MOSI=$random;
       #8
       MOSI=$random;
       #8
       MOSI=$random;
       #8
       MOSI=$random;
       #8
       MOSI=$random;
       #8
       MOSI=$random;
       #8
   SS_n=1;
   #8  








//////////////////////
   SS_n=1'b0;
       //Chk_CMD state
       MOSI=0;
       //start write state
       #8
       MOSI=0;
       #8
       MOSI=0;
       //write address FF’h
       #8
       MOSI=1;
       #8
       MOSI=1;
       #8
       MOSI=1;
       #8
       MOSI=1;
       #8
       MOSI=1;
       #8
       MOSI=1;
       #8
       MOSI=1;
       #8
       MOSI=1;
       #8
       SS_n=1;
 
    //address saved
    #8
    SS_n=0;
    MOSI=0;
    #8
    MOSI=0;
    #8
    MOSI=1;
    //write data 01’h in address FF’h // check el clock mel objects
    #8
    MOSI=0;
    #8
    MOSI=0;
    #8
    MOSI=0;
    #8
    MOSI=0;
    #8
    MOSI=0;
    #8
    MOSI=0;
    #8
    MOSI=0;
    #8
    MOSI=1;
    #8
    SS_n=1;
    //data saved


#8
    SS_n=0;
    MOSI=1;
    #8
    MOSI=1;
    #8
    MOSI=0;
    //read address FG’h
    #8
    MOSI=1;
    #8
    MOSI=1;
    #8
    MOSI=1;
    #8
    MOSI=1;
    #8
    MOSI=1;
    #8
    MOSI=1;
    #8
    MOSI=1;
    #8
    MOSI=0;
    #8
    SS_n=1;
   #8










#8   //read data in address FG’h (bos fel initial memory file howa kam              
                                                           //(line 255)
   SS_n=0;
   MOSI=1;
   #8
   MOSI=1;
   #8
   MOSI=1;
   #8
   	 MOSI=$random;
       #8
       MOSI=$random;
       #8
       MOSI=$random;
       #8
       MOSI=$random;
       #8
       MOSI=$random;
       #8
       MOSI=$random;
       #8
       MOSI=$random;
       #8
       MOSI=$random;
       #8
   SS_n=1;
   #8  
    $stop;


end
endmodule



