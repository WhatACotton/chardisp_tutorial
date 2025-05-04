// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Sun May  4 20:51:21 2025
// Host        : cotton-amethyst-ubuntu running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/cotton/hdd/projects/ip_repo/chardisp_ip_1_0/src/CGROM/CGROM_sim_netlist.v
// Design      : CGROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "CGROM,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module CGROM
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [7:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.1884 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "CGROM.mem" *) 
  (* C_INIT_FILE_NAME = "CGROM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  CGROM_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18288)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
