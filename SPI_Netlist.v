// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Aug 25 14:16:31 2023
// Host        : DESKTOP-RNJ3L3A running 64-bit major release  (build 9200)
// Command     : write_verilog -force SPI_Netlist.v
// Design      : SPI_Top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module dbg_hub_CV
   (clk,
    sl_iport0_o,
    sl_oport0_i);
  input clk;
  output [0:36]sl_iport0_o;
  input [0:16]sl_oport0_i;


endmodule

module u_ila_0_CV
   (clk,
    probe0,
    SL_IPORT_I,
    SL_OPORT_O,
    probe1,
    probe2,
    probe3,
    probe4);
  input clk;
  input [0:0]probe0;
  input [0:36]SL_IPORT_I;
  output [0:16]SL_OPORT_O;
  input [0:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;


endmodule

module Memory
   (MISO_reg,
    seq,
    E,
    CLK,
    p_1_in,
    p_0_in,
    rx_valid_reg,
    Q);
  output MISO_reg;
  input [2:0]seq;
  input [0:0]E;
  input CLK;
  input [7:0]p_1_in;
  input p_0_in;
  input [0:0]rx_valid_reg;
  input [7:0]Q;

  wire \<const0> ;
  wire [7:0]ADDR;
  wire CLK;
  wire [0:0]E;
  wire GND_2;
  wire MISO_i_3_n_0;
  wire MISO_i_4_n_0;
  wire MISO_reg;
  wire [7:0]Q;
  wire VCC_1;
  wire [7:0]dout0;
  wire p_0_in;
  wire [7:0]p_1_in;
  wire [0:0]rx_valid_reg;
  wire [2:0]seq;
  wire [7:0]tx_data;

  FDRE #(
    .INIT(1'b0)) 
    \ADDR_reg[0] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[0]),
        .Q(ADDR[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_reg[1] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[1]),
        .Q(ADDR[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_reg[2] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[2]),
        .Q(ADDR[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_reg[3] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[3]),
        .Q(ADDR[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_reg[4] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[4]),
        .Q(ADDR[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_reg[5] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[5]),
        .Q(ADDR[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_reg[6] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[6]),
        .Q(ADDR[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_reg[7] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[7]),
        .Q(ADDR[7]),
        .R(\<const0> ));
  GND GND
       (.G(\<const0> ));
  GND GND_1
       (.G(GND_2));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MISO_i_3
       (.I0(tx_data[3]),
        .I1(tx_data[2]),
        .I2(seq[1]),
        .I3(tx_data[1]),
        .I4(seq[0]),
        .I5(tx_data[0]),
        .O(MISO_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MISO_i_4
       (.I0(tx_data[7]),
        .I1(tx_data[6]),
        .I2(seq[1]),
        .I3(tx_data[5]),
        .I4(seq[0]),
        .I5(tx_data[4]),
        .O(MISO_i_4_n_0));
  MUXF7 MISO_reg_i_2
       (.I0(MISO_i_3_n_0),
        .I1(MISO_i_4_n_0),
        .O(MISO_reg),
        .S(seq[2]));
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    Mem_reg_0_255_0_0
       (.A(ADDR),
        .D(p_1_in[0]),
        .O(dout0[0]),
        .WCLK(CLK),
        .WE(p_0_in));
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    Mem_reg_0_255_1_1
       (.A(ADDR),
        .D(p_1_in[1]),
        .O(dout0[1]),
        .WCLK(CLK),
        .WE(p_0_in));
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    Mem_reg_0_255_2_2
       (.A(ADDR),
        .D(p_1_in[2]),
        .O(dout0[2]),
        .WCLK(CLK),
        .WE(p_0_in));
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    Mem_reg_0_255_3_3
       (.A(ADDR),
        .D(p_1_in[3]),
        .O(dout0[3]),
        .WCLK(CLK),
        .WE(p_0_in));
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    Mem_reg_0_255_4_4
       (.A(ADDR),
        .D(p_1_in[4]),
        .O(dout0[4]),
        .WCLK(CLK),
        .WE(p_0_in));
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    Mem_reg_0_255_5_5
       (.A(ADDR),
        .D(p_1_in[5]),
        .O(dout0[5]),
        .WCLK(CLK),
        .WE(p_0_in));
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    Mem_reg_0_255_6_6
       (.A(ADDR),
        .D(p_1_in[6]),
        .O(dout0[6]),
        .WCLK(CLK),
        .WE(p_0_in));
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    Mem_reg_0_255_7_7
       (.A(ADDR),
        .D(p_1_in[7]),
        .O(dout0[7]),
        .WCLK(CLK),
        .WE(p_0_in));
  VCC VCC
       (.P(VCC_1));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dout_reg[0] 
       (.CLR(GND_2),
        .D(dout0[0]),
        .G(E),
        .GE(VCC_1),
        .Q(tx_data[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dout_reg[1] 
       (.CLR(GND_2),
        .D(dout0[1]),
        .G(E),
        .GE(VCC_1),
        .Q(tx_data[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dout_reg[2] 
       (.CLR(GND_2),
        .D(dout0[2]),
        .G(E),
        .GE(VCC_1),
        .Q(tx_data[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dout_reg[3] 
       (.CLR(GND_2),
        .D(dout0[3]),
        .G(E),
        .GE(VCC_1),
        .Q(tx_data[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dout_reg[4] 
       (.CLR(GND_2),
        .D(dout0[4]),
        .G(E),
        .GE(VCC_1),
        .Q(tx_data[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dout_reg[5] 
       (.CLR(GND_2),
        .D(dout0[5]),
        .G(E),
        .GE(VCC_1),
        .Q(tx_data[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dout_reg[6] 
       (.CLR(GND_2),
        .D(dout0[6]),
        .G(E),
        .GE(VCC_1),
        .Q(tx_data[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dout_reg[7] 
       (.CLR(GND_2),
        .D(dout0[7]),
        .G(E),
        .GE(VCC_1),
        .Q(tx_data[7]));
endmodule

module P2S
   (MISO_OBUF,
    MISO_reg_0,
    MISO_reg_1,
    MISO_reg_2,
    \seq_reg[2]_0 ,
    CLK,
    Q,
    En_P2S);
  output MISO_OBUF;
  output MISO_reg_0;
  output MISO_reg_1;
  output MISO_reg_2;
  input \seq_reg[2]_0 ;
  input CLK;
  input [1:0]Q;
  input En_P2S;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire En_P2S;
  wire MISO_OBUF;
  wire MISO_i_1_n_0;
  wire MISO_reg_0;
  wire MISO_reg_1;
  wire MISO_reg_2;
  wire [1:0]Q;
  wire \seq[0]_i_1_n_0 ;
  wire \seq[1]_i_1_n_0 ;
  wire \seq[2]_i_1_n_0 ;
  wire \seq_reg[2]_0 ;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h80808080808080FF)) 
    MISO_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(En_P2S),
        .I3(MISO_reg_0),
        .I4(MISO_reg_1),
        .I5(MISO_reg_2),
        .O(MISO_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(CLK),
        .CE(MISO_i_1_n_0),
        .D(\seq_reg[2]_0 ),
        .Q(MISO_OBUF),
        .R(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h0FFFFFFFF1111111)) 
    \seq[0]_i_1 
       (.I0(MISO_reg_2),
        .I1(MISO_reg_0),
        .I2(En_P2S),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(MISO_reg_1),
        .O(\seq[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7F7F000080FF)) 
    \seq[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(En_P2S),
        .I3(MISO_reg_0),
        .I4(MISO_reg_1),
        .I5(MISO_reg_2),
        .O(\seq[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00FF007FFF)) 
    \seq[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(En_P2S),
        .I3(MISO_reg_0),
        .I4(MISO_reg_1),
        .I5(MISO_reg_2),
        .O(\seq[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \seq_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\seq[0]_i_1_n_0 ),
        .Q(MISO_reg_1),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b1)) 
    \seq_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\seq[1]_i_1_n_0 ),
        .Q(MISO_reg_2),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b1)) 
    \seq_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\seq[2]_i_1_n_0 ),
        .Q(MISO_reg_0),
        .R(\<const0> ));
endmodule

module S2P
   (E,
    \FSM_onehot_cs_reg[3] ,
    Q,
    \FSM_onehot_cs_reg[3]_0 ,
    MISO_reg,
    \seq_reg[2]_0 ,
    \seq_reg[2]_1 ,
    \seq_reg[3]_0 ,
    p_0_in,
    \ADDR_reg[7] ,
    p_1_in,
    CLK,
    \FSM_onehot_cs_reg[3]_1 ,
    \FSM_onehot_cs_reg[1] ,
    out,
    SS_n_IBUF,
    \FSM_onehot_cs_reg[1]_0 ,
    rst_n_IBUF,
    En_S2P,
    MOSI_IBUF);
  output [0:0]E;
  output \FSM_onehot_cs_reg[3] ;
  output [9:0]Q;
  output \FSM_onehot_cs_reg[3]_0 ;
  output [0:0]MISO_reg;
  output \seq_reg[2]_0 ;
  output \seq_reg[2]_1 ;
  output \seq_reg[3]_0 ;
  output p_0_in;
  output [0:0]\ADDR_reg[7] ;
  output [7:0]p_1_in;
  input CLK;
  input \FSM_onehot_cs_reg[3]_1 ;
  input \FSM_onehot_cs_reg[1] ;
  input [4:0]out;
  input SS_n_IBUF;
  input \FSM_onehot_cs_reg[1]_0 ;
  input rst_n_IBUF;
  input En_S2P;
  input MOSI_IBUF;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]\ADDR_reg[7] ;
  wire CLK;
  wire [0:0]E;
  wire En_S2P;
  wire \FSM_onehot_cs_reg[1] ;
  wire \FSM_onehot_cs_reg[1]_0 ;
  wire \FSM_onehot_cs_reg[3] ;
  wire \FSM_onehot_cs_reg[3]_0 ;
  wire \FSM_onehot_cs_reg[3]_1 ;
  wire \FSM_onehot_ns_reg[4]_i_5_n_0 ;
  wire [0:0]MISO_reg;
  wire MOSI_IBUF;
  wire [9:0]Q;
  wire SS_n_IBUF;
  wire flag_reg_i_3_n_0;
  wire [4:0]out;
  wire p_0_in;
  wire [7:0]p_1_in;
  wire rst_n_IBUF;
  wire \rx_data[0]_i_1_n_0 ;
  wire \rx_data[1]_i_1_n_0 ;
  wire \rx_data[2]_i_1_n_0 ;
  wire \rx_data[3]_i_1_n_0 ;
  wire \rx_data[4]_i_1_n_0 ;
  wire \rx_data[5]_i_1_n_0 ;
  wire \rx_data[6]_i_1_n_0 ;
  wire \rx_data[7]_i_1_n_0 ;
  wire \rx_data[8]_i_1_n_0 ;
  wire \rx_data[9]_i_1_n_0 ;
  wire rx_valid;
  wire rx_valid_i_1_n_0;
  wire [3:0]seq;
  wire \seq[0]_i_1_n_0 ;
  wire \seq[1]_i_1_n_0 ;
  wire \seq[2]_i_1_n_0 ;
  wire \seq[3]_i_1_n_0 ;
  wire \seq[3]_i_2_n_0 ;
  wire \seq_reg[2]_0 ;
  wire \seq_reg[2]_1 ;
  wire \seq_reg[3]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \ADDR[7]_i_1 
       (.I0(rst_n_IBUF),
        .I1(rx_valid),
        .I2(Q[8]),
        .O(\ADDR_reg[7] ));
  LUT5 #(
    .INIT(32'hFFFFFF40)) 
    En_P2S_reg_i_1
       (.I0(SS_n_IBUF),
        .I1(rx_valid),
        .I2(out[3]),
        .I3(\FSM_onehot_cs_reg[1]_0 ),
        .I4(out[2]),
        .O(\seq_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFEEFEEEFFFFFEEE)) 
    En_P2S_reg_i_2
       (.I0(\FSM_onehot_cs_reg[1]_0 ),
        .I1(out[0]),
        .I2(out[4]),
        .I3(SS_n_IBUF),
        .I4(out[3]),
        .I5(rx_valid),
        .O(\seq_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hEEFFFFFFEECCFFFC)) 
    En_S2P_reg_i_2
       (.I0(out[4]),
        .I1(out[0]),
        .I2(rx_valid),
        .I3(SS_n_IBUF),
        .I4(\FSM_onehot_cs_reg[3]_1 ),
        .I5(out[1]),
        .O(\seq_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFFF5F1F1FFF5FFF1)) 
    \FSM_onehot_ns_reg[4]_i_2 
       (.I0(\FSM_onehot_cs_reg[3]_1 ),
        .I1(rx_valid),
        .I2(\FSM_onehot_cs_reg[1] ),
        .I3(out[4]),
        .I4(SS_n_IBUF),
        .I5(\FSM_onehot_ns_reg[4]_i_5_n_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_ns_reg[4]_i_5 
       (.I0(Q[8]),
        .I1(Q[9]),
        .O(\FSM_onehot_ns_reg[4]_i_5_n_0 ));
  GND GND
       (.G(\<const0> ));
  LUT2 #(
    .INIT(4'h8)) 
    Mem_reg_0_255_0_0_i_1
       (.I0(rst_n_IBUF),
        .I1(Q[0]),
        .O(p_1_in[0]));
  LUT4 #(
    .INIT(16'h55D5)) 
    Mem_reg_0_255_0_0_i_2
       (.I0(rst_n_IBUF),
        .I1(rx_valid),
        .I2(Q[8]),
        .I3(Q[9]),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'h8)) 
    Mem_reg_0_255_1_1_i_1
       (.I0(rst_n_IBUF),
        .I1(Q[1]),
        .O(p_1_in[1]));
  LUT2 #(
    .INIT(4'h8)) 
    Mem_reg_0_255_2_2_i_1
       (.I0(rst_n_IBUF),
        .I1(Q[2]),
        .O(p_1_in[2]));
  LUT2 #(
    .INIT(4'h8)) 
    Mem_reg_0_255_3_3_i_1
       (.I0(rst_n_IBUF),
        .I1(Q[3]),
        .O(p_1_in[3]));
  LUT2 #(
    .INIT(4'h8)) 
    Mem_reg_0_255_4_4_i_1
       (.I0(rst_n_IBUF),
        .I1(Q[4]),
        .O(p_1_in[4]));
  LUT2 #(
    .INIT(4'h8)) 
    Mem_reg_0_255_5_5_i_1
       (.I0(rst_n_IBUF),
        .I1(Q[5]),
        .O(p_1_in[5]));
  LUT2 #(
    .INIT(4'h8)) 
    Mem_reg_0_255_6_6_i_1
       (.I0(rst_n_IBUF),
        .I1(Q[6]),
        .O(p_1_in[6]));
  LUT2 #(
    .INIT(4'h8)) 
    Mem_reg_0_255_7_7_i_1
       (.I0(rst_n_IBUF),
        .I1(Q[7]),
        .O(p_1_in[7]));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dout_reg[7]_i_1 
       (.I0(Q[9]),
        .I1(Q[8]),
        .O(MISO_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    flag_reg_i_1
       (.I0(flag_reg_i_3_n_0),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(rx_valid),
        .I5(out[3]),
        .O(\FSM_onehot_cs_reg[3] ));
  LUT6 #(
    .INIT(64'h008800F800F800F8)) 
    flag_reg_i_2
       (.I0(rx_valid),
        .I1(out[3]),
        .I2(out[4]),
        .I3(SS_n_IBUF),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\FSM_onehot_cs_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    flag_reg_i_3
       (.I0(out[4]),
        .I1(Q[9]),
        .I2(Q[8]),
        .O(flag_reg_i_3_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    \rx_data[0]_i_1 
       (.I0(seq[1]),
        .I1(seq[0]),
        .I2(seq[2]),
        .I3(seq[3]),
        .O(\rx_data[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \rx_data[1]_i_1 
       (.I0(En_S2P),
        .I1(seq[1]),
        .I2(seq[0]),
        .I3(seq[2]),
        .I4(seq[3]),
        .O(\rx_data[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \rx_data[2]_i_1 
       (.I0(En_S2P),
        .I1(seq[1]),
        .I2(seq[0]),
        .I3(seq[2]),
        .I4(seq[3]),
        .O(\rx_data[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \rx_data[3]_i_1 
       (.I0(En_S2P),
        .I1(seq[1]),
        .I2(seq[0]),
        .I3(seq[2]),
        .I4(seq[3]),
        .O(\rx_data[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \rx_data[4]_i_1 
       (.I0(En_S2P),
        .I1(seq[1]),
        .I2(seq[0]),
        .I3(seq[2]),
        .I4(seq[3]),
        .O(\rx_data[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00002000)) 
    \rx_data[5]_i_1 
       (.I0(En_S2P),
        .I1(seq[1]),
        .I2(seq[0]),
        .I3(seq[2]),
        .I4(seq[3]),
        .O(\rx_data[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \rx_data[6]_i_1 
       (.I0(En_S2P),
        .I1(seq[1]),
        .I2(seq[0]),
        .I3(seq[2]),
        .I4(seq[3]),
        .O(\rx_data[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \rx_data[7]_i_1 
       (.I0(En_S2P),
        .I1(seq[1]),
        .I2(seq[0]),
        .I3(seq[2]),
        .I4(seq[3]),
        .O(\rx_data[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \rx_data[8]_i_1 
       (.I0(En_S2P),
        .I1(seq[1]),
        .I2(seq[0]),
        .I3(seq[2]),
        .I4(seq[3]),
        .O(\rx_data[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \rx_data[9]_i_1 
       (.I0(En_S2P),
        .I1(seq[1]),
        .I2(seq[0]),
        .I3(seq[2]),
        .I4(seq[3]),
        .O(\rx_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(CLK),
        .CE(\rx_data[0]_i_1_n_0 ),
        .D(MOSI_IBUF),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(CLK),
        .CE(\rx_data[1]_i_1_n_0 ),
        .D(MOSI_IBUF),
        .Q(Q[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(CLK),
        .CE(\rx_data[2]_i_1_n_0 ),
        .D(MOSI_IBUF),
        .Q(Q[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(CLK),
        .CE(\rx_data[3]_i_1_n_0 ),
        .D(MOSI_IBUF),
        .Q(Q[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(CLK),
        .CE(\rx_data[4]_i_1_n_0 ),
        .D(MOSI_IBUF),
        .Q(Q[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(CLK),
        .CE(\rx_data[5]_i_1_n_0 ),
        .D(MOSI_IBUF),
        .Q(Q[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(CLK),
        .CE(\rx_data[6]_i_1_n_0 ),
        .D(MOSI_IBUF),
        .Q(Q[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(CLK),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(MOSI_IBUF),
        .Q(Q[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(CLK),
        .CE(\rx_data[8]_i_1_n_0 ),
        .D(MOSI_IBUF),
        .Q(Q[8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(MOSI_IBUF),
        .Q(Q[9]),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'h0001)) 
    rx_valid_i_1
       (.I0(seq[1]),
        .I1(seq[0]),
        .I2(seq[2]),
        .I3(seq[3]),
        .O(rx_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(rx_valid_i_1_n_0),
        .Q(rx_valid),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \seq[0]_i_1 
       (.I0(seq[0]),
        .O(\seq[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF00E)) 
    \seq[1]_i_1 
       (.I0(seq[2]),
        .I1(seq[3]),
        .I2(seq[1]),
        .I3(seq[0]),
        .O(\seq[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hCCC2)) 
    \seq[2]_i_1 
       (.I0(seq[3]),
        .I1(seq[2]),
        .I2(seq[0]),
        .I3(seq[1]),
        .O(\seq[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \seq[3]_i_1 
       (.I0(En_S2P),
        .I1(seq[1]),
        .I2(seq[0]),
        .I3(seq[2]),
        .I4(seq[3]),
        .O(\seq[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \seq[3]_i_2 
       (.I0(seq[1]),
        .I1(seq[0]),
        .I2(seq[2]),
        .I3(seq[3]),
        .O(\seq[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \seq_reg[0] 
       (.C(CLK),
        .CE(\seq[3]_i_1_n_0 ),
        .D(\seq[0]_i_1_n_0 ),
        .Q(seq[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg[1] 
       (.C(CLK),
        .CE(\seq[3]_i_1_n_0 ),
        .D(\seq[1]_i_1_n_0 ),
        .Q(seq[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg[2] 
       (.C(CLK),
        .CE(\seq[3]_i_1_n_0 ),
        .D(\seq[2]_i_1_n_0 ),
        .Q(seq[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b1)) 
    \seq_reg[3] 
       (.C(CLK),
        .CE(\seq[3]_i_1_n_0 ),
        .D(\seq[3]_i_2_n_0 ),
        .Q(seq[3]),
        .R(\<const0> ));
endmodule

module SPI_Slave
   (MISO_OBUF,
    Q,
    seq,
    E,
    p_0_in,
    \ADDR_reg[7] ,
    p_1_in,
    \seq_reg[2] ,
    CLK,
    SS_n_IBUF,
    MOSI_IBUF,
    rst_n_IBUF);
  output MISO_OBUF;
  output [7:0]Q;
  output [2:0]seq;
  output [0:0]E;
  output p_0_in;
  output [0:0]\ADDR_reg[7] ;
  output [7:0]p_1_in;
  input \seq_reg[2] ;
  input CLK;
  input SS_n_IBUF;
  input MOSI_IBUF;
  input rst_n_IBUF;

  wire \<const1> ;
  wire [0:0]\ADDR_reg[7] ;
  wire CLK;
  wire [0:0]E;
  wire En_P2S;
  wire En_P2S_reg_i_3_n_0;
  wire En_S2P;
  wire En_S2P_reg_i_1_n_0;
  wire \FSM_onehot_cs[4]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[4] ;
  wire \FSM_onehot_ns_reg[0]_i_1_n_0 ;
  wire \FSM_onehot_ns_reg[1]_i_1_n_0 ;
  wire \FSM_onehot_ns_reg[2]_i_1_n_0 ;
  wire \FSM_onehot_ns_reg[3]_i_1_n_0 ;
  wire \FSM_onehot_ns_reg[4]_i_1_n_0 ;
  wire \FSM_onehot_ns_reg[4]_i_3_n_0 ;
  wire \FSM_onehot_ns_reg[4]_i_4_n_0 ;
  wire \FSM_onehot_ns_reg_n_0_[0] ;
  wire \FSM_onehot_ns_reg_n_0_[1] ;
  wire \FSM_onehot_ns_reg_n_0_[2] ;
  wire \FSM_onehot_ns_reg_n_0_[3] ;
  wire \FSM_onehot_ns_reg_n_0_[4] ;
  wire GND_1;
  wire MISO_OBUF;
  wire MOSI_IBUF;
  wire [7:0]Q;
  wire SS_n_IBUF;
  wire VCC_2;
  wire flag;
  wire ns__0;
  wire p_0_in;
  wire [7:0]p_1_in;
  wire rst_n_IBUF;
  wire [9:8]rx_data;
  wire [2:0]seq;
  wire \seq_reg[2] ;
  wire u1_n_1;
  wire u1_n_12;
  wire u1_n_14;
  wire u1_n_15;
  wire u1_n_16;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    En_P2S_reg
       (.CLR(GND_1),
        .D(u1_n_14),
        .G(u1_n_15),
        .GE(VCC_2),
        .Q(En_P2S));
  LUT4 #(
    .INIT(16'h4000)) 
    En_P2S_reg_i_3
       (.I0(SS_n_IBUF),
        .I1(\FSM_onehot_cs_reg_n_0_[1] ),
        .I2(MOSI_IBUF),
        .I3(flag),
        .O(En_P2S_reg_i_3_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    En_S2P_reg
       (.CLR(GND_1),
        .D(En_S2P_reg_i_1_n_0),
        .G(u1_n_16),
        .GE(VCC_2),
        .Q(En_S2P));
  LUT2 #(
    .INIT(4'h2)) 
    En_S2P_reg_i_1
       (.I0(\FSM_onehot_cs_reg_n_0_[1] ),
        .I1(SS_n_IBUF),
        .O(En_S2P_reg_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_cs[4]_i_1 
       (.I0(rst_n_IBUF),
        .O(\FSM_onehot_cs[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:00100,READ_ADD:01000,READ_DATA:10000,IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_cs_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_ns_reg_n_0_[0] ),
        .PRE(\FSM_onehot_cs[4]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:00100,READ_ADD:01000,READ_DATA:10000,IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\FSM_onehot_cs[4]_i_1_n_0 ),
        .D(\FSM_onehot_ns_reg_n_0_[1] ),
        .Q(\FSM_onehot_cs_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:00100,READ_ADD:01000,READ_DATA:10000,IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\FSM_onehot_cs[4]_i_1_n_0 ),
        .D(\FSM_onehot_ns_reg_n_0_[2] ),
        .Q(\FSM_onehot_cs_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:00100,READ_ADD:01000,READ_DATA:10000,IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\FSM_onehot_cs[4]_i_1_n_0 ),
        .D(\FSM_onehot_ns_reg_n_0_[3] ),
        .Q(\FSM_onehot_cs_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:00100,READ_ADD:01000,READ_DATA:10000,IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\FSM_onehot_cs[4]_i_1_n_0 ),
        .D(\FSM_onehot_ns_reg_n_0_[4] ),
        .Q(\FSM_onehot_cs_reg_n_0_[4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_ns_reg[0] 
       (.CLR(GND_1),
        .D(\FSM_onehot_ns_reg[0]_i_1_n_0 ),
        .G(ns__0),
        .GE(VCC_2),
        .Q(\FSM_onehot_ns_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \FSM_onehot_ns_reg[0]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(\FSM_onehot_cs_reg_n_0_[2] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[0] ),
        .I4(\FSM_onehot_cs_reg_n_0_[1] ),
        .I5(SS_n_IBUF),
        .O(\FSM_onehot_ns_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_ns_reg[1] 
       (.CLR(GND_1),
        .D(\FSM_onehot_ns_reg[1]_i_1_n_0 ),
        .G(ns__0),
        .GE(VCC_2),
        .Q(\FSM_onehot_ns_reg_n_0_[1] ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_ns_reg[1]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[0] ),
        .I1(SS_n_IBUF),
        .O(\FSM_onehot_ns_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_ns_reg[2] 
       (.CLR(GND_1),
        .D(\FSM_onehot_ns_reg[2]_i_1_n_0 ),
        .G(ns__0),
        .GE(VCC_2),
        .Q(\FSM_onehot_ns_reg_n_0_[2] ));
  LUT4 #(
    .INIT(16'h00F2)) 
    \FSM_onehot_ns_reg[2]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[1] ),
        .I1(MOSI_IBUF),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(SS_n_IBUF),
        .O(\FSM_onehot_ns_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_ns_reg[3] 
       (.CLR(GND_1),
        .D(\FSM_onehot_ns_reg[3]_i_1_n_0 ),
        .G(ns__0),
        .GE(VCC_2),
        .Q(\FSM_onehot_ns_reg_n_0_[3] ));
  LUT5 #(
    .INIT(32'h0000BAAA)) 
    \FSM_onehot_ns_reg[3]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[3] ),
        .I1(flag),
        .I2(MOSI_IBUF),
        .I3(\FSM_onehot_cs_reg_n_0_[1] ),
        .I4(SS_n_IBUF),
        .O(\FSM_onehot_ns_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_ns_reg[4] 
       (.CLR(GND_1),
        .D(\FSM_onehot_ns_reg[4]_i_1_n_0 ),
        .G(ns__0),
        .GE(VCC_2),
        .Q(\FSM_onehot_ns_reg_n_0_[4] ));
  LUT5 #(
    .INIT(32'h0000EAAA)) 
    \FSM_onehot_ns_reg[4]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(flag),
        .I2(MOSI_IBUF),
        .I3(\FSM_onehot_cs_reg_n_0_[1] ),
        .I4(SS_n_IBUF),
        .O(\FSM_onehot_ns_reg[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_ns_reg[4]_i_3 
       (.I0(\FSM_onehot_cs_reg_n_0_[3] ),
        .I1(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\FSM_onehot_ns_reg[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_ns_reg[4]_i_4 
       (.I0(\FSM_onehot_cs_reg_n_0_[1] ),
        .I1(\FSM_onehot_cs_reg_n_0_[0] ),
        .O(\FSM_onehot_ns_reg[4]_i_4_n_0 ));
  GND GND
       (.G(GND_1));
  VCC VCC
       (.P(\<const1> ));
  VCC VCC_1
       (.P(VCC_2));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    flag_reg
       (.CLR(GND_1),
        .D(u1_n_1),
        .G(u1_n_12),
        .GE(VCC_2),
        .Q(flag));
  S2P u1
       (.\ADDR_reg[7] (\ADDR_reg[7] ),
        .CLK(CLK),
        .E(ns__0),
        .En_S2P(En_S2P),
        .\FSM_onehot_cs_reg[1] (\FSM_onehot_ns_reg[4]_i_4_n_0 ),
        .\FSM_onehot_cs_reg[1]_0 (En_P2S_reg_i_3_n_0),
        .\FSM_onehot_cs_reg[3] (u1_n_1),
        .\FSM_onehot_cs_reg[3]_0 (u1_n_12),
        .\FSM_onehot_cs_reg[3]_1 (\FSM_onehot_ns_reg[4]_i_3_n_0 ),
        .MISO_reg(E),
        .MOSI_IBUF(MOSI_IBUF),
        .Q({rx_data,Q}),
        .SS_n_IBUF(SS_n_IBUF),
        .out({\FSM_onehot_cs_reg_n_0_[4] ,\FSM_onehot_cs_reg_n_0_[3] ,\FSM_onehot_cs_reg_n_0_[2] ,\FSM_onehot_cs_reg_n_0_[1] ,\FSM_onehot_cs_reg_n_0_[0] }),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .rst_n_IBUF(rst_n_IBUF),
        .\seq_reg[2]_0 (u1_n_14),
        .\seq_reg[2]_1 (u1_n_15),
        .\seq_reg[3]_0 (u1_n_16));
  P2S u2
       (.CLK(CLK),
        .En_P2S(En_P2S),
        .MISO_OBUF(MISO_OBUF),
        .MISO_reg_0(seq[2]),
        .MISO_reg_1(seq[0]),
        .MISO_reg_2(seq[1]),
        .Q(rx_data),
        .\seq_reg[2]_0 (\seq_reg[2] ));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module SPI_Top
   (MOSI,
    MISO,
    SS_n,
    clk,
    rst_n);
  input MOSI;
  output MISO;
  input SS_n;
  input clk;
  input rst_n;

  wire ADDR;
  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire SS_n;
  wire SS_n_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire memory_n_0;
  wire p_0_in;
  wire [7:0]p_1_in;
  wire rst_n;
  wire rst_n_IBUF;
  wire [7:0]rx_data;
  wire [0:36]sl_iport0_o_0;
  wire [0:16]sl_oport0_i_0;
  wire slave_n_12;
  wire [2:0]\u2/seq ;

  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* CORE_GENERATION_INFO = "dbg_hub,labtools_xsdbm_v3_00_a,{C_BSCAN_MODE=false,C_BSCAN_MODE_WITH_CORE=false,C_CLK_INPUT_FREQ_HZ=300000000,C_ENABLE_CLK_DIVIDER=false,C_EN_BSCANID_VEC=false,C_NUM_BSCAN_MASTER_PORTS=0,C_TWO_PRIM_MODE=false,C_USER_SCAN_CHAIN=1,C_USE_EXT_BSCAN=false,C_XSDB_NUM_SLAVES=1,component_name=dbg_hub_CV}" *) 
  (* DEBUG_PORT_clk = "" *) 
  (* IS_DEBUG_CORE *) 
  dbg_hub_CV dbg_hub
       (.clk(clk_IBUF_BUFG),
        .sl_iport0_o(sl_iport0_o_0),
        .sl_oport0_i(sl_oport0_i_0));
  Memory memory
       (.CLK(clk_IBUF_BUFG),
        .E(slave_n_12),
        .MISO_reg(memory_n_0),
        .Q(rx_data),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .rx_valid_reg(ADDR),
        .seq(\u2/seq ));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  SPI_Slave slave
       (.\ADDR_reg[7] (ADDR),
        .CLK(clk_IBUF_BUFG),
        .E(slave_n_12),
        .MISO_OBUF(MISO_OBUF),
        .MOSI_IBUF(MOSI_IBUF),
        .Q(rx_data),
        .SS_n_IBUF(SS_n_IBUF),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .rst_n_IBUF(rst_n_IBUF),
        .seq(\u2/seq ),
        .\seq_reg[2] (memory_n_0));
  (* CORE_GENERATION_INFO = "u_ila_0,labtools_ila_v6_00_a,{ALL_PROBE_SAME_MU=true,ALL_PROBE_SAME_MU_CNT=1,C_ADV_TRIGGER=false,C_DATA_DEPTH=1024,C_EN_STRG_QUAL=false,C_INPUT_PIPE_STAGES=0,C_NUM_OF_PROBES=5,C_PROBE0_TYPE=0,C_PROBE0_WIDTH=1,C_PROBE1_TYPE=0,C_PROBE1_WIDTH=1,C_PROBE2_TYPE=0,C_PROBE2_WIDTH=1,C_PROBE3_TYPE=0,C_PROBE3_WIDTH=1,C_PROBE4_TYPE=0,C_PROBE4_WIDTH=1,C_TRIGIN_EN=0,C_TRIGOUT_EN=0,component_name=u_ila_0_CV}" *) 
  (* DEBUG_PORT_clk = "n:clk_IBUF_BUFG" *) 
  (* DEBUG_PORT_probe0 = "n:clk_IBUF" *) 
  (* DEBUG_PORT_probe1 = "n:MISO_OBUF" *) 
  (* DEBUG_PORT_probe2 = "n:MOSI_IBUF" *) 
  (* DEBUG_PORT_probe3 = "n:rst_n_IBUF" *) 
  (* DEBUG_PORT_probe4 = "n:SS_n_IBUF" *) 
  (* IS_DEBUG_CORE *) 
  u_ila_0_CV u_ila_0
       (.SL_IPORT_I(sl_iport0_o_0),
        .SL_OPORT_O(sl_oport0_i_0),
        .clk(clk_IBUF_BUFG),
        .probe0(clk_IBUF),
        .probe1(MISO_OBUF),
        .probe2(MOSI_IBUF),
        .probe3(rst_n_IBUF),
        .probe4(SS_n_IBUF));
endmodule
