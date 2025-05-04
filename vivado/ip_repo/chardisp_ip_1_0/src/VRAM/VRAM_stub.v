// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Sun May  4 20:50:06 2025
// Host        : cotton-amethyst-ubuntu running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/cotton/hdd/projects/ip_repo/chardisp_ip_1_0/src/VRAM/VRAM_stub.v
// Design      : VRAM
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *)
module VRAM(clka, wea, addra, dina, douta, clkb, web, addrb, dinb, 
  doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[2:0],addra[11:0],dina[23:0],douta[23:0],clkb,web[2:0],addrb[11:0],dinb[23:0],doutb[23:0]" */;
  input clka;
  input [2:0]wea;
  input [11:0]addra;
  input [23:0]dina;
  output [23:0]douta;
  input clkb;
  input [2:0]web;
  input [11:0]addrb;
  input [23:0]dinb;
  output [23:0]doutb;
endmodule
