//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
//Date        : Mon Jul 29 23:16:53 2019
//Host        : xilinx-sdx running 64-bit Ubuntu 16.04.5 LTS
//Command     : generate_target ultra96v2_wrapper.bd
//Design      : ultra96v2_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ultra96v2_wrapper
   (BT_ctsn,
    BT_rtsn);
  input BT_ctsn;
  output BT_rtsn;

  wire BT_ctsn;
  wire BT_rtsn;

  ultra96v2 ultra96v2_i
       (.BT_ctsn(BT_ctsn),
        .BT_rtsn(BT_rtsn));
endmodule
