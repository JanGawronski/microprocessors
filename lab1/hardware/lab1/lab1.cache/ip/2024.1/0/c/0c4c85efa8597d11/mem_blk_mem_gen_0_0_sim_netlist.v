// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Oct 21 14:39:08 2025
// Host        : UTCALB-03 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mem_blk_mem_gen_0_0_sim_netlist.v
// Design      : mem_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mem_blk_mem_gen_0_0,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta,
    clkb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [3:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [7:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta;
  wire [7:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;
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
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.7033 mW" *) 
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
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "mem_blk_mem_gen_0_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
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
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b1),
        .regceb(1'b1),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
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
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RSqbsRZSIb+QlYJMfFv1T7uHQ7PiCEXQkl687MHGm2LgPB15GIYcPmqKUSXgtkLsIFes91PTAyyB
9H9cyY4ZUxedcRg/9ZOB5pm3zPqAbcvGPmg1ivMhr/MlS19t5lYKM2tQo+0Yd+arJXlVZu2BMnvn
+I3G9t9tJuWUIWKjI+I=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VRSQ05ZaB6bIhFIQ823mTvlJaG9+5iW5C3+KxGjq0sq9ziCshKOLpOGPDMmOWDqA4uBaxC5IKISr
w8+A8mqbYjXo5m1g8sGjNaETS0HKJsK+l5Y++tN4IEUs+DwxgrPR/+LWtChuOzVkfC7BG3LVUEMj
zM3GAyGcXGJ3sdBItZAfsevyiy7kr4Fw+nk2hWytGteu1NZk3VzPE7KQHLkOlHBPXf6P0j8LpKcr
2oNDgQ/WaEmg6OOvFeJuaWDaee8Sn6wKP/caMyoGdSeczsPtRrJeoSRlbNHlxhCv7zg+Cn2AgwrR
PTqGsMrkhv9U0sq+waS0CmwChsk4WB7RspGYUg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tNziOjCznlvIl4dadmB9r23Duf+HQHWOuHmupEU3PJxrazHVtZdNKspG9sRXhF9mjbpnSiKYCdFK
Jr9W/dxUid36faFIPKQazVTuOiE0hkzVQAGpYxXjT/ITB/9EFBvgvP5L3EAhHv32x6MA1vkFSI7x
HrZ09YNFEF6T7DPTZE4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QCYfxgkUHlX1cre1q9aS3sVDIOX36YBK4ZwJXAVUwA6f1OQ77XibjpWJHt5FK9F0PcYp/j21pqzO
BRdkDcFLVAjxER4J5t5iMVhoeMk+3fpiKfYrm4WFl1ygsJsfFJP0jqO1OkjC8iFBtm3n6b7CTl1o
cjBbcBp8UgW6E8rf5inXA0dRqybnyxKJSnMFYLinvpVU6QEc4OKO7mi/i/s9p/efiP+CdQf0yDRU
Fw7o7x0D7tjBv943g5L+4wGZ2JYU+ISqn4Ajxy/bWTTJDe6T/15evhngS61MC8Xjamzc4YLZBP8o
ShfSLoeZeO+Hk5n3xzJRghM0DQ6Sj7NqXFY68w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uy8FDDy3dZQGAnMQV0HBesEs+/oZdaq35Kj1PGhy9J/+EBZm0nhhQgYtku8tWABW2jKAC1GtNTvo
uReQyr1hteMxTbD5OIuqv86eb1hXZVENlZ7ichG8auUjkeHAkaSYNbHOuDLIhSqHEL67XbcZ9zPG
1JOY3+VONSww0KYPcQbGSo/2DaC5C0Y+mZODRfJ4+b0WXjce6UaJetilBc3VtqqmodIM2d3HDawF
R0xVJfHj86rXmUkY+SNUw60zsV6raCY6G3k/rXpei1d6zn8tCThkKG5fwiWY8zA7kRdTFIlVKP9h
fb6kfzRBRT/BgVQ8d4RgEcEVV8m3u/Mf4KIlTw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pk1GeRlkUK9lt6DVXYVdtOABlzDEWQDcBsP/p+Wo5HaglDLG5b8gk08xTP3IcJ1RKcfuARPMGO2s
/VqFbnVADV90T1rhjIuWMcBnzYQK/ALUvwv11Uju9Gn0fvPIz52l3QBnpjHI1nlsFB7WeqkzVfHZ
tg9gO9bPHjHLjVd9BzH6McrEWY5RkZ0UBy0Fmh/SownJX1b0YGE7LdwKydEMEpyvb28bwTOwfEv/
4RtsfYtEvTjo6e1ZBm66D9IQmKUu32wzTfn5bFZHdyjZg6+HcTzvHMtQX2+AggXfP6FsO2/83qkb
0bfj226fnLhr32dJxtsaJS5OR63GYtzDJ05ITA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCfWqKmUoUSVOTKNAl5p8n1hfz7SMU2kDOUMBjsDncgSFqiu2zUy1I6GSDrVnF/2umJG5/mWcpvi
rQaFJOlrJ8DNctSuavdlopRAwTMsVi6dAlNGrAawSiDIxtI3tN3MDVdMiH5H+pJMqMt59yXneyCf
2RRSRz2sUQK/aj0lXlqKjVJzVbk8HaBQ8akBJF4iWSMK4foIzJ6iO1EupYovuW6uEiO7jQRWezlW
pbbDenOHHWbfinuX5cbkjpTKHGsEKct65q+ZXJp60m3sconSK3Y2eLQxusuJ1FHDJ4GGKO8mEzCv
3cfGdXX3pVL81OfGO/JD1aMs9H98CO5ssbHqlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A4S1e3DHcTeWzaDVuWDRb3Yf1BjiEsR1RtAeL0BJ7J/oPWMNj96MeGsUiHtZoiYqteTZxqax2cyZ
PV0cMLoBK4Ya8CyM+BTnkFA2ablsGt5Es4TgG/nFS9VEhmeKxu8boAsqW5697aiqOATJf/LucQh5
GOnPXHAuPrDj0A/fu8N2QduqGyysWUSc1KsoJ0/0noJYvLJ2yOhFi4uIUYQfG5LOuOrca5P43pqA
iwUKW/RrFXal2acJdFeXIKffZpKanSV97urdzKyBvf9EPV/M8g9uPFJJ1z6aS+FbknhVPs0pt6eD
+J/qib4gVp/HGnRo4YlxauUMv6Yv9wxiaObY6ttDfYf5p3uzWZMlf3i7YOzZwcd4aS/6+vkD28LG
L9piBIpLx2dvQy74RdvCVdvaP1LC6RMju9RfuXJhuX4ZAmDxRi0zQyRda838ikzwYeOCSKLIvRPb
nuJ8Zx2ot8EFqSeGaaRFaEMU6Zf5SptCUuVMHvSkinBewcwrLB5uiJTJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gj+uMxV+tK4Di7pgSOE82FOBeWmUB1A7OKFOSMUW3qrmQ4/YhryfHMlWPxfAq8avQL7tnBTnRFEg
czbErdIcNzYjrM7Qq00QC/mTqmeQX4/apbqGvN+rwK4RR5oj22wfTib/UQNEQX6fbpi6PtmAeUR9
eShsfq+YWcf7z2Zw4Q+o4+E6m4/3CzU68vglNpzNsJ8S9/8XpdIrvAA/WRAX6OEOC4wlNIKDZsq/
+zMbFgSzN1rP844I/CDmxYM0NIzBWWhYBkPfJyQyigmUoXb84lDip0/Dmnq4EHvu7D/tZNnDl5st
JpftRfEpT6S8e/5MBeKUuhbfg6etHo/oFZvPKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aWTy3xv6SqKsldtLS2gY4KrTS8U+KtFNRHS314f6EYZy1MHE9t7oICJ8eNB8up8A+odoE23N3fJb
1alhaadeRWU2GjlIiK1LjZ5PQw+jb1u1GWtRiY+TcTlD75XUlqwykVBrCDfm565DmgZjZle9T3/t
WEfLo+m/8GfBe8trVnoftsk/XI00BMFXRzw8doPGDhNECS1NUrLebryb9iO5Hf4A/40dtslTARsR
nicN0KoIIyiQ+QzliqyXU/8VjS45inON8R0Kv9Qx46EXUp7bds5uQ7QycRhpLG0IPnMIweudU67w
eQmpHJzvZKBCZks/R0OafZx44H6Jib2+QazBCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UGdPiChIPj1lSozqzCQx17Bi+8FWSuMUMzXUkDLH5zcP1t8tZLzh4CU4WAR8lmJxn8gH763fLp5c
RYU6zA0yxHzl2ksc5YRU1XEfQQT9ha8fQnz+18wVKcsa5UIOfMbGDwnS9yfX59ntG8CB0uF8bJKE
y1CS6U/1Stfs1w2mF94iDxI2n2GJlb1UPtWpmxMBI88hY0GktTPXP2Y7JKl8zRl/Lq0wIF8pHwXk
B4nOgKm6hfzPj0xZ6E/TuER/JE3fy8RSm24IlL/CUgpReEslEOYjQ4EKKZRG9/fxg26utQWW9p+G
fWVU53qrFGzBhKQ96Paj1ROkv6hDHyUb6n7uSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21184)
`pragma protect data_block
AvSTAbtxV/SUgSODfxwH+nSiLg3Oluxp0XBozuNYkxPPKvLAGd6+/1TX6PxTaU4FkTDco0hOBiJt
0FMTlPuJWyM53vDILVOZQxU4dyfZbxxYINhAd68IHTge4lq+ItOc42hVT+toU2FzyIhSPzyqwm6+
/663NX0dfHmSobehy3gNsch5DjG50H/3WzvbO6qfd6R9Hc4Gj7w2waxrI9YBxOIIxgmj5PjFO7Ml
Qhso3F5NdAawM2K63iQ+a/yK15JXETUNYIMZ8/hCf24jMj0K03SkDKKFQWCwSWE+1VXcFmnOuErN
kpQ3NkkTbHn1aL5e2fstBmGm1TRI5O8qi2lom9f6K3ENMppDQALy+ZYjbbqmhI6v8Ghu1lM3Bcvo
NgINVqJZCzYEoAw8b3xpxSDBoA10lpGQ09M0Z+VVxnmbWH5DpqkLcYDMTFtbOHlCZcxm20jQHp+8
mLBPXFTuUf1iIKKxyk/WIEu8KnOETouGwMRGycLJWjV/MNdKSfeNrYWkJLLdT3iXPhECJY8+WBge
L+uEL+PKrsONY85ZxGLw/fG6mJXq5OyKKPuXbj8kSdwhSZsyCy+eBoRI9ajL/L40Y2XqDDIq/bO5
ABnBimOll8JVs8KSx2JHrzoECrjkJnEvuLEKwQgUi5b8NSVUHYzWrlb0LCeeBMuA28gLblqFpVyF
3narQUVJttaKKc/OKCS+SOKJGLX64+Hp2cQ/1z5tlLR+XHn5xJJ+JJ64eFxhG3p+rOGtd6rtyCOy
vkiM0NhI8xIEFs7ig05F43Msue8o1oDLqhJ1KfmqcAL5CHeYD2w8QE+X7q+RBGmdYhj9Hg0nvIc5
w5M+ORPBJ8faiXgVeoaX5o9y6kgzov4OIuCREPa2ao8VcZ4FibrEYewnviFe1qoYgHBLU2jho6K9
ecSiC5czy4NYPPXWQeKkQfeAG0pyHP5CmCtnJRuLw21aWccv7dfjmWoe94MX26swMsrd+MhVy51K
c+lBHEemr40pslF7ormDilmluFqySyZ/BG/f3CnSy1xkHn6Hbe5dUm6OKQLFgSHsmhSqTvhaB+jV
xJ5ULVEp9pZcTtSsskhrkxwoKPIXBQT4+8TmoOIqY2jlUQX8mz4xVaudKXVHQeVKcubCPLaGEsAb
YTZ2yiAK33hlCCvKnamwE5h+Yu+7lpG+zbW84VlE9uzegZyKc5uoGsw5L75853yc4dUkdZN6hfU9
ZuRtp1+2oznzWtW0/09NyHXysiUFo/SSXl6VgiQXzIRuNsk6GXqRH5zX4q27KoTu2pk092q3ktGI
FoPY9VgWbfIXK2Vg6TPyGwmMxDiC1Y6KPQbJ8mPmHrATyxgrS2qTukCiP+YofVjGnusUQ1sPDD/4
WV1gaJEDeGWODmJ7951Ss+TLcz0PXDhzT+l6h6D6bymOXY+LYOcEI1az8lhgZJ1paHiLJofjLf04
tgZplP0Z5vEMnH7ra6S99/a4D5u4y8kRTgzdAjHDtXkDf8VidootpA1MVIGMqlg/J1fnsX3tgpXw
to/2jCD+OmqYau/VfZIjKdwhbFVo6ieKXr2i2TAbetFLV67+Pjvjp6mXlx7JOvl6yr5Wd5PaIC4k
y1RLcQrq8E4e1bAcrmXsq1PB10dtH+5O+JJiekmqrFkHa2st4mUAswdwTZ5DKna2/+UqvJpNk7i8
bzTu0JoUXeio5xdwS2xb4bTc6Xl6md2XKrYsDpXm8+tn6NPcdFBLrFHdyc/vGMHRqz+cI3hbWm4O
GCtOiunqmnUcTN/RlLqTB83nSXNBU+/nEUL3gf66LzsHbSJH9rLGAnh6K5RNfzwbmbcsi3JJOjw9
wbsJGiJv9VbiuJZknMcR6ySKKwzVAfJzU2/UhCFhZ4c/T5T/PP7LY8UG8L17x52MnKblz5uWx8Fz
qQpjD7AVcg9K1cPNnvX87JXH5XfFQbZHv/91Oi1g98GCmfBZ8ehX0RgB4V4XJBC3Gbf3cJ2D0k0d
UgiP3qyzzDAFiCOQMi8PM8EfYs+bF5PXhWw3+dq9HyMZG/fHyBWYxaaIHeEw3PpzNKGUJmG0sMZr
aOSWp8iAgz9iezgcGCUr8xBQlx/ul0cVXr9KMD/4RpeAQUg4ANoWUVX8IO8qzYw6OaUAXRWQYA4P
tv3I2wyFBg1KqLZeKDXSupJcL3zg39NWntG04O3mcgZC3mFnqqvZ8+qWLCoyYWpbd/6pUuv8X7Ob
bh6AQphtTaFNKAmaRaGNBZsCrLNOCbgrRKSPMsF0niygU8dLOxMbp7DqX56s9WyZ+9qyt0SAcdYl
oLJz32H+tnUlgbe+ZlDsvwRmZ0dJQIbpX1XWNXEe3fRV3Kql2wjHPKA+k2s0iy2U5jQkgJa7kYU/
FnbwhdibTbGVqNdRxaVDZllYap/cO2jVS2s/Q6Mybv4gxfRjXYiQD11VrZxazY0RLqQ21C1TcrPv
qlbaiM2LfDAcmG6oHBxvoCYMh/eMPs9Xl5nls3MNl996mmIqsEDruUxF+gIAX74FWrPzYdIUju4a
tbsv9NAEh/ddY93uCB8wHVH9/f0KjSwshBMC1BsCwlqC9EYQUYsaLx0c4r6q+2Wbw8EtukyPauRG
0/WWddywX28crgAaEf3QqIzBZ4aKZBs1yqSl4JkirjKurnnmVGr+Pq5+jjPE/gFDVWQGbInpn0A/
OPLq6h5RCBjw74QoE6byDXysq8DLgNXflwumWU+xGqVUd24e1V7BuUfBkeixBV6y6nG0m1cQInR1
mkMFkLmXWB7s7JQ+QExkAp9n/4wvmSl0bWrBmmYjgYQufYzXPTNhF+tP9K35zz8sJG6xyinLs+8D
uCHtEUCEZFTZBALmLH2Up+CTDjaUyE6RxEy/sjh0aYyRLkdQaJwdXsxlZmcJSx4PG/+g69HQFyo7
FW9kLazSCLzKBXz6/MJahgLC9Uhkn2aqKpo9+WbwyfoqwvaVSV5ZJRBK+9eSMHDbL8yQiUaRdfIL
63C/ncY4GMGfmDh/1utB/lXxKRS5dalJGbAlJWYJv7OLcDGBszEMUDgdfkW2zdhDEIzt6kCClttq
cMdC1eB+/+BUDYggyxhOfT8M5D9PFAxibCrjclD5IOaf+VDreM/6N7RRm1GMV2pj2qlqNJACX75w
on6AcV+Bo77RgHXiLtdGxfA3PVPLWtB718k9S/JOYYvUwkWjNvJfQMHzBiV0/ThunR+8d1zBgVCf
AW1mFcV7tmA4ta/XMz7zGCSnm89alN52o2QuhEnfeNO3+hoE8PuXbf/+DA/mDla0SrGdc+zzO4hv
fML5mLXYAQiTwQfAfr7vPG9xSxEvYibp9iNGGIodcRy3xVKIxdAVFWmHFcanIsiDk13132RAl8x/
7fmc77uqJk5Fl2lSo8a2cu6lf9QVJZSJe/uuyC05ZgFDzJbv+7BF1JMp8QfxUDE/AYNGExRALsoV
fy+FwEabVs0lOCyFzSKx1jpDro++2nkpzJbIM9Za2XPa2frd5QCi3+PiAGy9QMqYgVginiQUcGcG
cTPjh8U6JGT+I2dqlnlK3iHI8vLDx1wtECEUL4xTLc/lLJ29dF3Tw5RVRtIsgUwayt8YgqXF3AFP
fVamgt1YpeKVnPoXjPMpX/Yl9qk7Qnf6iabsXSKof4+SHb8gmf/jeli31iXuMNcWhhFmMptVBaUy
AcQqUBXnEheEcNQDuaDHQVx2Q3H5FSeP7In2zyhWTN5/On7y26NnUqwIVfIFMe+XCemeJo7iA9kQ
JNXCN97a5bs/j8qkQGM0alHf0JH1srF1RLJHZe0NaWDNLcdzOBHyEDyk98mgr+S/XPNnots7UFvQ
6RnKoO5w9uf1TJAshybkIGbzox+DBb8NNjytUYQ4i5n/FLSmiW2uXkfaBqbJXzk5ESR5A6YiAFTV
wZ/+HWNpgO3Vn1mWmR3nLayUVt3H1h1E4luCWhlgFqqEoptORfJ0n1FEUDzvfZ+FcRTGmlBMO0NP
kU3j5fBHmoh1YnDVJg1EMwQK0fdAgCz1Wu8s3Gko3vVstOzwxedHPAebc9RYZrQGQ1hJZjuqZrkB
RQoFC81OgFQ6fJ3eg/4Nz83r6wjUXzfWpxYgzLGNA0bJMDa8xvzVMCGNn24gKvsZqjOU4iEutZvT
LHD4QGp0minkeOJ+FSYsiRDrgg/3r3wYLOfNqOcmqNcX7tj4W7NcFUk95zS5KISJ2DiOakqfrghy
hVW8TZ4n9yE34wG+8wrlPYs164nowbuvx4xh993nfZaTC2dF5qCQCkmi1wP8mz1BhGu7/tJ48uc5
wR4BbAD4GM1cG4V46crnvVR4xVa4Meh16Njm3SNyV4B8VawLLDOwFFamO3Rf6gUnyB6nMpWeFrYY
oAGxXgy5gF1AcnVe+1zOa4s4LmRGBLlbqLfvcF8LK8fJprzeQ9Ghyrhn263zh8rrbd0ysiPeFHvA
iyA1W+jjNJB9pUMFP8qCXno1ohfL0Os1XOws3OSQJzQQIZSyL0iX35QHHGKsSXP8IGVREN1cQWC4
TX6TBG47oQo0aXaaYof2IZusYEpNnYi/l5+peNmImkmc7QGdWJnuGKFPopM6N2KGFgYHhTqN5FRd
3NiicsmBh8JEEXCagc9h5J+zOvyt3cwCiis96xqd6KlAb31We6AeqhQEBFTkbf8eY5poc6mpvWNU
Wd1W9hQuasBIH8s08sE1n16f3qKPVDjWiWs9jPmnxV/DEg0L3jlfHHRaZwR9Gie3/KwGiT/7K0LW
pI/V4JnTt5cQwt9x6OQWr/GakkEL+ZfNbQrD0LEWPFUAmFFreL7HF9zIRZgDkjgteDqAG42O48X9
OqxE8Qlf4mSP5ZSWTLudJ1f1lhJjQTETPa2fUXn1XhmSXgeaVAOEV7yAhThWvceIUAPKi/7rXc1F
EMGRvAfMqwfHRoC08BL5hcnyV5tKUnV+wyDD2dyLCA1uJ3a7Wd/Kb777n34nDAgPDxOcF0miwLee
0P70Ttvw28MHgc6r2mT09j49rwmYOdrSwYpohwbqcIjFdqyXa3FQSTL1HDbOs1Vb9uTANAfVsQAC
vpkTMXtU9CPRvsGbPIFX2nhTyf1OAi8j8xSjAEkAtkSAgxHED1Fo/Nepc4WYkAwkiMg7gbcN7akK
GZvVLrPmfgBBy83dnnS2c4u5yv86jo/GrmIDHwBz627Tt1eg9Mdgr8ZACerYdG3KEdEX0UR89H4+
IBOAtc8hoT9vQMW2wxbt9Z01PURYiYm7OIaUi1bZ5/JVVR0wE5gEie5Bwbu1/koXnWQTTd7hLVhD
JpKZlLKoJLwrq4I6ENcXetvX1KhVwJPOntkr9RATbBHA0HFIxBkdXVEC4ZAaymFzNkdT7LoJp8lq
PdzjzHHiAZ/k0pD/SZdtIn4MTuc7Kkh55u3s65d+aX/meRAObBPbcH+m72PBcvhBOvdHUOhtM6wr
MVSQMmlPdUPeYkDZ4nyUneLri1vUJYW2A+ACCjjQyBWTso1Qx5Hn2nbQwsuAMPTPa1xt7z3ZNxB2
VyvhXPSa+gsPDu/aTjTVH3K/lq4Dt7VATm7RdU20w9HJfhbuelWKaZaJ6nYf2EFVQvpA/h5aEUAW
6oE+plZLWmfnV0o7EkdZlDw6QFO4qcJ6W2B8Y/pCO5iUV6UwnO3A5zX+pxpoRxMkjES4c7WzcAVS
bw65autks0g/7O7NiIlDLJ5YDZKUDFVPUHdH127guZofULH+7B8rq44X1ADNxJwbos/2i9DvDr0h
DIcGJiahaygSo5uhvYNg9vewXZpi7MNBN8zQe6BIy/YLvvAniFyIJpes6AmuS8wdshtU1YhRoDWD
OEDNANT/6c6AGBsdEckVtmtXHIZu5f6f5nIHhgrnoAynO6PXFMIXCkwUVesVTlYysKKSMvvV0LSq
0vxtf42ucd5IdX/CPFtatqYk2AfKcgH9nU2yQKIpxQQqn5SPRTsJVfzY8FojXTaxJmwxeZdihhlk
SumEwRbAV9vhS3XW0ysaNMpe0qu1+M05Xw1OvCY4CdB3hI7q6a05V0ibmsRtnRLwNoCBmltAQbIp
exDvyYzeWUJ/WmRvX9hZxr1eKqSL31JRd62S3doOTrvJYBjHXEwMs2kQnIiAiqfd4PLgTgqE0ADg
K3e14ZaW1f1lrgqZWy9Z7bTuEWjo6grKZaiEPJJFkmI08iLryshZlHUeb3Z8GN/MhATI1NbIsEC7
m1NZeH7s8T/5bRuwtamE/WMI3ASgvJcLlWvp/HG/ee9dI9tRxhVlp34knAaFTxmLUG5ooOb0AX9I
/exviQ8krDGor6Rda4g4ikhWxBL9IjJ6+tlkrYJNZy/j46SficsKiXKulMC6Rvfdy57LwMuz/AEA
8Bt4QQGNMdveZF5zemGn3c2h0Hs2h3WwjLl0YP1JIBUIsTuUMB5amENBjsVWHC6ujTuOO0yqu0Wb
9lBlUGsyw+zfdYrCL8JO/ygevabg+KcV6lsSldsZJSbjQejQ9AdqH3MFYtEsy09ATyVxSIuIWrS3
wd4qD63XUO9dD4lJEVJ8ldsA4p5Nb9A4O1K/r4BgjmM2ue7IFqCmjyiv2fZdbwlDF9vwbgqZLOtj
2faUPvWGpZuZoQt4LOiNFKJsJctRQTpmqab8ihsLFPNPwUAZQjFWCSKngPbHcSsw8j7Np+Cq47vd
gs6XSh6NbhMqpKdT2RwsT1QqG2TKdg/da5PjHzDQcF6GPn062hV1BQNE6nPkAdqzYfPBUjPrzUrt
+acLJQpXmT4OKDxgD1/6DAbbEQQ7lKfuLMNvBKD8spJEGwdi+DV1EB6r84HhGBKOSV/2gN2vVPCn
RP16XXZp8tPn5rjCeeKjGW4HcJ+blg52Wh1y4oCbrQFBSu4RXycj8FTyNnA+Sh3pdTUrw2bXLs41
9ugVEDbQhFf/rAb71SBQMdjESr0vBvWswqhAp8X21thf8pCcDftTYCYqbl7mbRSp3kYrBuhJKKaj
O0SAM+pV7FgN89BGEycd1LfFkIOP2tj3fqbh1+RZrYMlpnHXPvYPtJfGuKTafztsSkp3/CQyshg/
WEDOEPs1CnEUHN+7aQeegRHjD710P5dcnLKFBAR34pN3XPXZ5Aj8/qDPRM7Z16HBpaggTuzaNy3+
7OyzU0TYbYboxAXHooIs7cxYbT9yhfsqJw9z5QtWaro7LoCr0tDpRnKMqCM7FZ/vAEjdHZV+il8j
87IrJU061p6b+GCzSCsaaFJ9sH/y5KzbfLeDda9wcJHZ7EBLJ6NRQldIQ2sIhVxlAXEDsPsatXM/
b97MWvDD5eDuiiVrgSH8fTbF+16eMVKeouDigKTKYNniMoWc8bILqBQFS1YcnW4IScsSYIrowElW
5rFPIJE+c3CjtaylJZs/tjeRnu0mEVbHYeA9IcMcaimsfnP+/SWffpbB93pkvPO85WGrrpKUvebS
SNumuIcr81ekqxnwn4uuEX0cfJzsxLnfjjLuDu4IL9S2g06ahHp0tkkbI9B1WNjzql29ailbeKL/
gRz+OZ6aQ0DpSuLmhC23Ip56wKKZ6Nr/wNG/dhyhYu7ZuqXZLSxACZ5cCQCWx3J+0+fXuLXSDVM3
AADOZslv0pmm+QxIAHX4UrfVxoLOj+t/+7mpigM+ggh8g3WbB0dmokhesGGS7tRYw5qaZWYxTbwQ
XqjxAX5RLYbVQQQTCNH4eAAKjq2EOR83HFGOqJ7ztzX8znKTUQNpEbhf4mivpTd/uBfK9xY+jBvQ
/TZa3yhC4cQuBtkTHu4+FwhvHOz7q6bzKU3bCDXFYOdyHchSV9qSUUnPcPnUDkI3rcbMB3NHw8RT
0n2I5urjNeFW2Hp5fVxBZDMr11NHmsYgdzW0IjQ059bTF29mWTu6iBVTFpEYay6WSAOpPT+KVdab
RAtYuaNGza1oCmTgYxcXaFNgtEwMdWf8PBtmKrnBo0bZTccoN2ABQHhG4fDNA9wpWeYM/VMZLjG4
BXI2UkmKk19SMk6y6dmKimqhCohPbxoboI/DGSe2iL86v+e/eaqVWdrBRn1R+aDG+/HRCMfVDdKW
LKp9pqMeYD8fVM49r9++ZLLUKjgYceunBaTNkh2eM/TO9463onNW1fn4B52xCxTqcccTm7fhnWMX
hV3ASFdZA+idiecgJHnV9RukxxJaU1BqygyXaV6/ZFjOeEjTzCtndQo21M2NYlI7Djnxhzmu0iDd
ieSTajpRvJty1cZ71v9W8bCzIt96xZ30lWwv1dGQ0uHjIDP99ZvJfYJhGO77/3g4YDqNGD1h1aTv
hpguiMVfvSqN3P+PgkkCjapdV7B4klT2dXkBj1t0rSV/ceH2fRWEFI/3hj3HQBAJCMltjqGAGciu
kISMUNFyMVZraR7n7UkyZ7ar5jn4vCAzjSCtbka1N2HZImWGzzuDdbSJkzB/a0PJf6Y4mDXKCihK
0hGdd7SVubMc5pEKACbdIiSPJP58e7VZwIma7fbQ3zZS5tG4knaHFX3VFiUO3vnd4HWzurMljLZ7
nxswsR+7vlL40ViZ257IVe4mK5P0ZrNHzsezBviC3a+RJEdPD5TJ9Oxgu1gefM2a1DOx9yyR/0Rg
KBZGFWc8pcjGs5o1jBwBy3FWajMU2tS1OQDGLpbxZ+HE0Wgd+8HybbTImm/Xwx3+Vo7i3op/qFqI
seJ4Yp56f9cs2PQE+Gudd/Oq96QyWqqb45Z2dp6HpssNoYKiGdSlf2b/o5Em8IazwFJGD61jnoHm
fa7GauDzI00Zc8Wze0FKhCRZ6SEfaOoSx81gobdEcsGkdWcEHPeIfc32mayfOQ4CGywL9GY1iEt3
ihxeh73ytG1gQOy/PUF5OqlUG23SbBBU7oQnLxF18d8Fw2Bg1Bsxm0WwTZgge7AypzJJxaoDA1Ft
QanNq71LjxT7piAENRD4h2XHuOZ5AKJaenQ+FivYGi9xx6tjG2SiJqdpEELE+T2u/fmDFatrhqjd
QNkouDqFO1y/ZU3tDYRiTQilm3sTBOKDiKT2uqxt/7p+Spbs2wvU95jY3YAlnymii8bsEqS2Q7qT
hXhqar/17Nww4Tz8FNM6IlwCyv/NmMC4bzA4KUD/6EdSzkfhX+KjGtqfGd2CvZ1aUc1Lfy124ZDp
69TZfXmbm0P7x3TsjUwu87XNGmuvXRl/+1LgI+Rx9HbT85IyLe4POxGU8R++mOQ6j94QIjs4Y7Pw
8ZnyYb4HEDQkWEZ9AmVz3VBIG+v0Pbqw+e3vxuj/qqRlm+hO/Bfonw9CXbTAlb2IF+WLCghA8rgk
YmZbt8w7jRHdW8nu3PCwT9yU5PWy2cpz/Np+nMw732h0+Oz5v1jxkQlobAt1zuzm2bdgAOYlfe0Z
W0G10XEUAoPX+gU9q3jmaKrh4hstwXDy/YexvJgLx8YfBMrYoLBBlzvsAntMGMobfohXPY1Zvp2k
QNfZDZM5t8jjnmw5JofQkwzQeisUN00dXXZsvGxkI7C4/Co4Sqlws6x4BIj+zwsrPNjgI0vSp3n+
/tsz4ebeFrDcCN1FfgUvAvzoynAnxYfGg/ChJBr8wrnA6Iq0xOWYu0+QpU9fysyMKwLH4I6l+QOq
yf9++gUndxJp2Gk/LoOMev8YtPilVxHuts91WUXHz2HLEmT1XMZ9wRMbgaXRBXjDhx4KHTyhKwi8
pymLx3RVclXkcXPmphEYjWPaabfhuatZ/529V7xnpBXvY/q2JVzFuf+0keqnKacK2HFOyuPgEq59
1EXs+PvoF8aMQVra9nJxoNrw7CZ6mzwBuBne8B+ozAkxFuFyknMAggSYqlBxbqZBzcc0cHzSM7bN
9bb+OWEo3C7BhpG58Ll46UHWSdbIxfyYFKYPJV6OyIzhDBJ9XnXbSfmmVj4RB7N9Avs9jY1hTubD
NjSfQiwwWSrYlEcoLz2dK+2jHUi7kflrg+OdybNNL3kJlOaik6brZlf8k62oyYWtZS4QoaYtkKqz
Rb8sFSG0LU6GWv8ON7J+BOBpH7AxFRC3W2xpMjBl53h4af1HEWdDCSdQSo4xS3bEnYaz14Aks2CX
lv789+dcWiY+KjvE6kZu3/gYYU6Ts4AR4jBKszBbjEKFtsA0YShTcZiYtr7+t37SMYxvDu+/A6O5
mcib7BWOAC0nYOIqf/bKhAqQuZTWYxnQkV4H2yV8PTEkDSVpwZa9xBN6mhIg5InlWk2b5XeHphZo
XXExkj6o2BUtaKcBe7TOB/NS6WSTDnxG3XHxs7hu4T8ZBXNpQoGefkHO8lIH+cjWF+q4BCa1Ne6J
xlaOPxbdbRKJOG0GWxK/hHD5GcAL0oZ8G6dGOqFiUiNt7Hzpy3hgbGNjZRQY2AYNZx4luM21F1q1
xv8RnXOZ6jfVXPM0yCjhCyyeKaunQIGmtWaR0itDHX761cqVOkYAeHhoz4RX+D/6ADGT+1keQMoF
Q2RaPXgpz4JKmDLMu3g4S1cvZ51tN2KXsYhrOy0A8W2MhPPSTSGpO7+avTMExCP0qxMD13Bz7Egy
+I5GQsl9tJqNnZuS8p7HUR0KLqitPhQ6t3csBxJl+N4wceNJGMn1Pcj06RdUk6+QOgFwigvX1pQl
bF1NaMbtylsl++kRTeTUZOe3dfvLDNBKmdEBZRz8kwvov5Sz6KRzi/tUcutNAjuy1inZ/tddhBAR
/qEv+06tCR8QulP3YzgQOBie6cGK9Z/zZszPhZr5A+EEzTgrAyyVW/KtgLfXIRMakju9yGcpLSKm
1imY2i5lZu1+7iQcHeL0V3eTW/Zyx8zzZ37TsZRjFDVeR0674FAb5hHK314wbKLvUCAQ81rmh9LN
hjbexwcGslVevsaK6FlpPcRak8OEG7wg7h9ma3W+beBXLtQROU5OOtfFgemNCQyPO2RX0lViFpl3
nmqlSxxftBNMpXHmqRS/0z6TRTtuQVoe4mC/ur2g53Ezan7YhVAh55gAK21sT9ueitEzm06pJx06
VrjtK/j2k1MU+8iJ1ppuirPI8d4MnMZij/MWRWft0T2Pu0Zu4i46ntUrGyyiq1irMOtNvMs+CM7k
SYDoEdFq3ZYxRqFzJ4mP5CoLacGe+gMKOpLxi1dXCouqFEWMzJ72FFrJMjt/PQ2R9a8iMOO2NGJf
WUSgMyq4dK4WcLfJxflodMk6cHUtfnWZC1/Cxyfkm1mGU0wy6ppNEgoKDPWMdh+4VjvVt4BD22ek
4zFxwkU8PdCfRY66a1W5adO1EuHzKqWQDayoCV/pC/zPwU64BcR7335ehV+IfbmVoFNrhBgIAon1
YPIUibvMo1K8rMD3UWa1WPbWsK5E748pJSC6J0llZKETL8hvFnVt55dakTWl349sIRsDpmij5WBC
cUnNoQd/SK7Wv0r3/wbSUNLWkj45XKj6/+u61x5F1Z84uQ9R0owOMWWOsQYv2TeDoqPmY4u0c8kO
Oa3gZs4QcYGG8QxMXYpeMrgarBS5oZyvVasjjVmpItl8JVvP2x8OR25LdoSII8SbL2vVGKHFJ8Sq
05l8YYIMk2EJuc5uNP8CEn64N5LW3y1bF7lTzEkXe+llqhCN8eMyXHfGGOdKiUCOucaMVi/tLl/f
3UX2LAJ7mcRPvNHRxJFTjptFEKH+tfAkzFRIhgPSIJbVXx//JwuYiBC0uP1Z3P7A+7e/jku/709z
63IZwHyCCxl17pBnUb1a+OBF7lDG6/epmENt8Wdpsvqvgm7LmVXb5hpLNZEy0MfFtZeyxnXV9B2d
O/ohn17J5iMW+wpvMKimeaDwaqJIAbOx4I9kcihjvBQ7JNNXSsqnNB4/hwO2yTF3AA50pDayEKFB
p1xGJKyEklPhReRAsPwCr1NBoXHK9n8dnr/WDm6SmmMaAJpfbZXmV3WlH96VYLfgWIEt8TE61A87
Z8NT/iiDWtRriSIXHbgrH4T5liK6CYGU4VEuWbZoHuZGoSXlu/Fq/PxbiI+Gx9PhGqXr2dmSV3jl
NuKRbMH2Si0bNJgXoFAXZmA4t/5YtWdSPJqasRo/tW9JUbmjmJhHwYVBmlDdF08aUdTqL8HcACcR
Z5PgIrPJFeGab64ZoEFPf4kZ6qLXsrBZUsXxQvYLK5zU7cGi28bdR7DQ3uAdp382SaN8PTaKlDWK
c503B6jG56h7bMg0z85WsputwTppxtflfqScNOhYmyh11PvfnqtmqDXsjJYAeYxDDIvF3qVs1eDB
4tBgBAit+K+dg1JW5NJDxH8oK1hDUim35CjWN0n0VD6Onl5El8IMuaYFvwinhpIX6iwFafGgBbLc
uUDmd5WAI4oKKQ3fdGHhL6KQgOsFoOMsdT+MwKdlJx2c+B99Y2VcLpv3NycJPZPXsc9Bm6aAQJKD
vdIgrADNwSTo/HSomwofIxmnODVSBaj+T/JVk0x4IYWX5jNQto+VebVAGVcl4del+F2CHg8pZ7ug
Hv1IhVkQyl4E8DxDPW4VHlBYHhA2P7d411BxZy/UOvLVgjq3rNZCti1nas+bqCzmJZYtBcS/2Z+k
1EFWllpjR6XTbC31Q+IBT26zQS2Bl8lQzE8IDfxN7YjxQieo/K8z2DWeTcd6a8W3io6sFKFjxYsH
99MKf241qAUaCkrOCbUwyRmszxWNO+dWsWDT0cZUfjNa00UHSiNFsE8VNGtkkT/KdCtdGv1qJ5R9
Aks2tY0y14zFLKcuIszIl67nGc9i2CzfQd4ZPCuUGe5pd0cOZSGELkq4AJ9o8mFaN/5rDw/CKckl
CuKBDgXMiXZFbQre2AfwvLkKzaoqPlpRAsBAoTA0wO5yN5UFReMtVcLCVAbMgka0MCNjJp908vmR
n3ATja1h6R/HhSmlFD343fdID4ZbCqktnm8y1mGDu5xRjRwUB69iEFLEWexqZwX/3TlkBUOe77Nb
PYuJbKNhY0ouSiUHYzHDxUglnUSNodAfqCBYNL7h8cNENrJBIZ4MeTvnD4YhgIkoaGxJ0k8bU1NL
gRjgG/Dyh9w0ufl1ODCS+5BIoeAOIkxA2llsUIaSlnkgtyIYmMsVKY9QJrf6SxkITgWWaunjVBDd
8EQUggdUJg18bbj9632mIIRqhQ2ummsHeH/zK4OnSygPC7RL6jdjZ7KsHQK3lVC689CWvZdadEg+
+IqRzo1lfNfCziqs84fy3oHQicZhSDSVcENtTmRoH+PplHf0DBP0bgo3pXuxqoTDqISHhAUdfzbQ
zOlX/8zFS+Y7Xlrhdf7fS8v3n//xIUb9jP8ZZoaf8FIXFEYOHQoj1lnyCtY/L9Jbs2T0o4ldjbEE
FI0tEboFzVLEK4xO3TqUkjl62Au6e7BvtXhuL6DT4QHFKAICMV/ZrQdUzAJUyDfCHKGGAz0NpsJA
bJh9GEpPmp1ZASp5p406sXhUteuf/+y51hbpTIhDnex5fupDEEpGITt08yQEXr+fjIhiB0kwdVl5
67IQ76TypFvQSbwMvGbIw3UFQSzZwSsZIx/7gS/wsA+adWq6jHp60e31MrCVXwFSYkZm11f7JYMP
VGwN78B225kRZ5T8H9uWLCD2VS/ORKi9khI+SrByZ3CPw140gWvD8+9rs0EeKRkSMWErml+UMVR2
esB4n44DVwhthlGPptNjwYJupbVsGpI5ekqEvvRIWHu29GHjLkpTMxKjz+3qupoQw9LIzmIko2ME
C1igbuKZFIW+79ZpW2TnTak6Twr6Dwd5hyZOD7xaXAGi/AAcsXMfGfjwyB/0x/MQOnm4zdH9ecj3
S4JNXcpVL/KN92FtN999bfDhhCqNR8c6OedTfY1jMAVO58kYvXMoZJfeT25pvVicFUOA5q4hsJDl
qqssTxyrfUkohuNvLq+rYt4LO76OkZY5KX6PSBkkfMBZ+7A3vFhXYC80ZudcYOsXq+S2nGGunM4y
YKwgTPyY0jJi++DCih9+jO2BrZlVFeR04NZkqMThnn/XD0vpBSoCGG7bpkNu6QVvzphlhPVmjvoh
4mF2tvwpKgJC/U7vZWQJ921D8lEIm9tCzkCDvlTaLtHdfuW9AVx1VapM5TYlx57wIONoU3Y4shY8
zjYcnEq9P1jYEUjCSGkBTQhbM45VjgqkTNqcwO5y+K2poskx1Gy5OrtaHoJ28dLAk0CuG884hu71
BYeM+Sk2Xaf90obRdmLaxqKmQsU8OzSwU0nxDuIPyTGvgIoaugb5Xl4HRRtio51efSHwPdwlCPY3
wyP+soH5f9+MfzL5fCyGXUwMIvgHKyoLqGKSB8jSmkJeu7dM2cS7ilFVV/pNvLHesj0wBNH8BwJe
nuz37ferWO4RK6GPL0PgLP6NfCUMqHysXoycQ8capPYw7+UXXdNfjYMbj3LuDeO39CIaG8JwT1Ot
rjHtjtEqzXf9CKuAZYn9B8nxq/eFS8b/ULuB6nAmoUxu0JpFNo9zhzgvKZeYitvZzJT0fW3xTNDU
sXSCmTNsGjmu8/gMHrizVK7xMwbQofh1JcuYDQ6PsRpkJqjLsFcub/l51LwWL7n7xS9bzhEY7fbg
V36RvqK4TNdCeHhSisPMR4fFjRtzZBZgPKusE1hZju7jFXydyV9X42gFFbvdo7K3D9E2kk8wkj8r
NXYGmadt8MjbqdbGr35JROYWppIg8XC98RihkorO0p/c2GFA5r/W85W6l3hEhBY8pLyKPQthyzBl
8pKPw2KSeySHrYoVb/GrCxdxd7qgClSmcPUe6ywMbr2nfFFNXfRyRfD8t0UdqCG3mZ106aNJURYY
4hjBWtPS0FwhqDhXNlIgRVL7z1Bf4dBJj4Hly6IKZRryaO4IBKWKTS28c9Drt3r3x7g6gxi0skCI
VZPoFsGD1p3+Gd6VjFNW/N4BKrtJHNYC/3SCr9nDB/8yYF+xJih+1vtpX3RcSsMqt7PMlJv7dj2Y
+Fpt1OJW0CMVcjPPVomEHMUVZ2NfPFRcfEmq/9vC+yGSIlmsdZ0njv+wNGbM3DGduolgh9Ti2TWs
he7EidfeDhPw7Ax7mca6nAV/xTwCh2oVdpyqrjo0iR8ko7l3LOxEdygq22yZerF9XFLhulCLf23x
3ydlL83tIfL92au0eJ+dlGMCxo0UR1mOBjD0v5ci0ZUd1Snke/6B9EsabjRp0YTEU3D5+BWTvUw5
rjmgF6OrXDzwiSKK1JN5tTSGgG8ThdeXnnCucoiiAQoEXpTAIL4jriXBCA0P1pkomX4CAYhUpmac
DEzyDRvHWPQtmq5y2XpxugTLhtrd0LstBGKegTcZD8F5zt5CKwxVxsS7PnLrQUjZNA5xcM7bkEcz
7Udpzr08DyRlDA61F+tJRxZFeXX5ENZBma84sQdJiJhmbmhfJ4+iGL5TeIW50w+KhL4a8WnPDKqM
HJryIC/EDwwbBX6oTF6yMGsuctaRXVe1giVfq/Gc8qmCavqkRESO6EFr/R/WXe3sXkaFICzo9a9K
F4/ea9lsqc+lPJmuVtiBNQbyQgT+NA/EnbbElojCfjWn6YGj1nafiGPE7WmwlL6hJadl5UW1dIyk
YdcxDnmznMviO51VcNHy4D/Lcv5F5rH7bV2ma0mvWCfHHUHMA0vigo9dr+mHuWowQl9RdyHmb+Qi
juFDH/pHn6P1je9z3NbkFquV3CGCA/jvepvAmtzYENf4FyQzP3oAjFnjF8e6NbtHKXRWPd1nJ4LS
vFPHkaRiaH4LOG+MBzjFDd7s9CTgSIuTGCqq8xcaIinTB7R0l797fN+71zj+KjtxHMTeA2zTvE/9
FDIyagX65UBfEYBU5h5ajBYIXz3Y742kQj11DfKa516nFUwstJ5+rCUlZZHCNgvFo8ym1btMkhr6
hlI0adE0XkDilDNMZvQ2ytXwUEoZc4aNTe0S9rf986o2/V94l0tCcgc9R3UqyQZ19KB4gTqg+W4g
w/IqbCBjVrgVp7Y1QWa5R8DQPsTFRLEyy4m+nYyK/nbi3h8VWi4IOoh0jzK+H6TD7YXA0WP4vJFv
NkxtL/2nzQFYa4ToEVzj5hsu66IWKkqq2O8+LmZ06gWvLklicquip+lK6kaIazdOivOdnQaD124L
luNk3nPspy3X1aqECbgT49BcUy67r+t509GprVEJgg2QIpcB7bE10gpZM3t1gS9kr6ChRpNXZXtT
TzvhCRAt+BnpYbOr+5UaCWjz2NcBzwCCl4O34ghm2TUdbBlpSZGxlnLda1xCbnsr+xiUWrrN/kfo
NoYbnN0Y0d3wF890HXJO4Kyb5S1t0kMr2dQHrr/cY0YkrRmTbh7m0yH/q9iv01HJnVqq3fdEvooJ
6mJ316X0JHfs912KgN45FxF3KidHuD+3KCZg/Du5ah9Mv8KlLGmSXCReqjF6E0dv5qeHoR5hli+n
2GRGnKS7h3AyLr1ouTNETYFQf7Yp90MpdMDFDEZzFTFD2wYHjUYdfS4AUxuRM/SN67iubJmWV54t
iKOOvtU/DdsYuE3AKm4SWVssOPhIkxWXVHQkh9a4nZUxbGlOc9OddoWpVFbb80uFQOi5VE8hTd2c
ifapfZTLQnBPV5AI1mHDe/VefK4lyeX1+iHiOj08Wbflwgh0+P3CqQLFVEF/YlxZs2K35MUCqpQl
kDScyZxXS58FtP+MCd9+SD/l6ynBLt0BJx78TO+CVK7D1+tdYkb+P7V4cs00ZQeVVCEx/Yc4IG/a
HvfKTotv3s6uS5qJlowkwgqWQDdoJS45s0Ij+mmefogH/RLsyw7XU0ofLY1RCdq7hwJEPJIBUy9L
ry1Igr93cRuYkJslC3WXA1k33f2Fi8uDOxCiOPVlCNRAOAqdQluihmaMtKL9RVdGUZEt3uLYXyqv
zc7DGW0eQ/XkUQGkqxu0rZKMbr0wZ2sr64KIMTt4KSdIkKjJVsgmfQKBEvu9mVqnECDYLY3/cvDQ
CwID/szX1a95+5+5S+AAa9fEZ/+TpAYBfRcszLDr8AXvr/UrHH1uJZvtOwMwR2R8b8uJn7UZ4944
GUgXvKCmHTKUnbFyJqLXB63vavUJ1RhaSF+r5eGHPUWb99kHaR2ofGBgVEJE8tmQdl8d3w801iCs
cRNOWt5WaGg/Fwp/NXJ5s4H1L6EBgoJxX1gXfF9Ae0qEtfz3b7xc2+BuN2zQ77RwRPNJ4ZaOf95J
hGlW7q4o5J08rqW+avLIQyrup47DAaNAg1J5GWYTtz0HbEY5zrpq74FYChdprdMN7JJq/5t1lkQD
g6IUrV5N5u8f4twcR9MAbZijsxBXnOoq4tmem8yAjZ3ZtPGWT3Qdq+gGHD4FqnrhQroAiUaxH4PW
BGy1Duus0s/B3zcaH3ak3b5as1nUdC2LERDLLBE2et1maYGXnhjomRQT8pcFfhhBJUeuWGe5kJ7d
gUUVjvLcdJsvsOM0XMFx3yl8Jr6KNf7Asvkr3sWyNWvNGpqlWh00fG9itYocW3ZQbTX43PP3prad
lsxK0kP6iQ9BF5z2BZP9r9HsYkaWA1YxAUeqddVdUa9tY3KxCkEF9u+hXGDxa0AO2ytXl8QHsYNj
p6uZI+/ss9PB63eYFrn++xaRfpfCru+33XMDQjfYjCEmnubACNPs9dsQaIkOpbCv2s6icONw45Mx
EEoKVqz2XADAYhE+wIq6RMq8QDCKeDDlO1fMaTNOiFkr7LzTyBjxxn8LULKIzxdAJbqeIyUmmmee
Mo/cEahcuc3u4h/d3P7FyQQMCHYPFAd4ugu4ncRRIyADDe/JKhebybccXyUM3VxBCuR6KFvYa/LC
5b71ijC/nWgNYHSLSGnkUjNNz0GmuWMPUtaQiJC/4vS101FlQ0o7yLEC5ctuUlPHB4Q3ufGedk98
XU6owfPD24NUtobvxDBPWm4AZ0dhw7Cx6n6YIncfqF3CnCkCjTnbi/l5MzS79l0KIrFf/DcvlUNn
xsxcPmFMVCbg3NttyIQPdokDAn3Ivf7xo1sGP9UVYhst+jGCzCQEGnbiRgcP6Hy0ZN5b7cc1JWVG
s3y1Uf+ACJDwU6c2Ikm3CZH1OIWmoEPm+dvm1LxdQiEm+LHzc7h7UC4f4PwuUkXfiWu/6EV0wvbF
1m201kfzpsI5SUiQxqJhz17F0cvWNFfgVfoAGOFuAaVmosLIqjutGFIZgfUl0ZR+vwLJb4XDr0q5
V7ujOR6/fsqPlPA+BnyMVoxXx8xKGesXolvJLGRcZaDD+apVGVcWdi5fDC1rdMWGeMGXHnYWKn34
fYGpYKDZfbtsT3apfw2aZgn6pY+3KW8o7dgSbClepMTlBYpBuVGP0PEbzakdubfoOYvhs4X3/U6b
ko64n050nol/ZFcDop9c7n54OgL15i/EnJsnPpfhZ6PzMiAPtjNmyzO8atRvZvFbQmkRQSzPkgJN
yIKpnTwh4DDDBMJeWSN/CEYvmQmtHtub5azTFPa7zPKzkMbarLw4oKhHGVRBfuQkrzk3EljYF2wv
WByLH+wr7ABtU0YmNMMmpom8pvEPJj+qTTgh7QJvcqC2eIx2lwERPV5bUqauVCfkZUWKH21Rwwfh
kZm6TJxO0poQVuvNokwxamIEIGgsVVxrByDHI+6ND3RRy6y9vZvTbfUXCVRBj6Z1+8RydxL4q5Nl
ECbLjTzcdW+Yhhn92v3fUOEWvw3H9W6CYsq+FzABb88LqEwS35YYQx/Zcz7/20b0x/Coz2KW9Su9
mq61K3QUfWcZBWatLNYr752IvIP99WOQe0KJd/k5VYm24+xCs25BGNljtGfgKYEkrQWohmoS1Tn9
Ec0wUT8cCYleW9I8pdOkyItS/8hz/jjTINnomj2+KzDXY9iFGiHgziWFo1gf6N3TQbucyHIih+ol
JVXia4XJ03JSw3QYTrTGGzZmcP+IQDux/TrymOh3qtDMM19GZo1DlT/7FdI+7XFYfln3bu8NcGsc
7GU5zXqXF50i9/sVrZDCLYC7gv4Ceg1HHKbz/zq3zAEJJkgJL3Bpqc4Xoe2zJy40tzlr/v2k+LL5
HbnXVptmFN1BAoEZXP4xqXwepEDomg904YjcTW+A8F9ls67cC3tFlGm5Wf/vuqZIXDxhT3kFkwt/
fZ8QU/cccX8FlrO1wt/aBebXktPcjuFgrbtyWg7nCNxUXWnIObur1QuXS3JpbDlh0Png+GN2CJWj
0ag6BjWNMTN02ehzSxmjrDTk5vT7QwYpbcToveBqDz77F8Cr550Xrz0lRcEW97EflldHt+zUqmP3
eoqB+uSV7kBHdYCMjd9GwtzmUnaMdmT1GNnMHAQx+Lg3yL7h+3MlEcOV7HxDjuYetY1BwZflfcIV
3qiakVvnrrUlUXvN8MojkK2kbvsvmU5JVkG6eslgsJLzG5cJKj0hZu8ju/5/08Yms85iROuTdTBx
4poT2f5IBcgjqVJsXPq52dEhRvS5lB3jPfjWijIpfqwRnmefp1g2CWViaSN6yRB868uI7idZVyjR
xnLtFrmOTRdK9LmZDDSMXVtE+Xlj1/ovNOq2xBDhyJcxAETjeya0ZxxN2vMmAFf2nFXDTaYW60PJ
6XbnKNFAO8NlELNyVXhydf4Q28reTmYaWSfoCstptDu1V5GbpX2NUq0p0yMbzhPi1Y1l+N6fx49C
pmN+iUTglKJKmVLkrUp9trHXMFlV/VUKGLvgfvkaI8Oq1apxsOlQAbarHPjxaynxZBg9YTI/ub7x
I9zER2FTiBGbg2xYvQpUw5AxJjwngH2zqYXR+QEe7yaAnjieir97UdQELiZfU9xn5/zp+z4GMT6M
5gHUEgpR29vkge4hLXrpltU775E2LaJ0LUeHvrIqFVBN5T41bJs1BnAwXsuRTJEtoY6keQUzAlsa
SkvD5X8KLPe5rGh++s4cYx3Teuhjtm+0eVn/zTzsQvsvUGeCe3BDKWoAxiurbgzba9R7knwjGTaT
r75lDjcgCdSGzUMo9QPO7D/AtoxRLiCtOy8eT8PRtT39lR8DmQkkpQWjrA1LDXFeN705diXrf4V5
ODpuR7WRL9DTUd7E0BB7UwB4WXDRYirDQ8N97458n4BkSF0sAksLy5e8NTiK2fSO4by4A3w91lVC
IJ/QQNOxX2s0ClUaOSW1W/VJySfMBIi5BecehUcRHJTn5rrRw+CT43a3K4a90k4fNpaRnOxF1gqS
/Mm7OM6zoeRpeIUtE9CqjVsZFNpA5FOfTFZmXrUTX6CMiiYyT/BH56QrdMP1uaWxUBQsq6UQigI9
uHo0TOCQapTaWCXfbgKLjUXbnTUjBcNFVV3Q+uW/9WPLsK3id7wGH9AFA0GFt0/JmQwCrlu4qxou
2hCMFLYFJJzxgNwqLhGdasNvECRmYm1A7JcwWFRVg1Y1a0XgrW9d8m1/eKMYKWYbCxXw8OlMNs49
3VKnfd5GoNvYhASzZKyGrYFP2n7p9Txte2NpHiwmnmUYScUD8V0TwtowlDYejpR5GeL4QXoVxIw/
Z763sGTk0nne3BGhq0G4VRV51f+CslrqPtEhbhpgr2gSl+G8n5BUh3yR/s3r1y5sM+6sh2idUmj9
BYEFjV5P6y2PT0vP7Jfow1QTEvxOi+3CGGuIctjUquO8GgScrMdRqgvXtr7mM69kbd3B88zKiZx8
tN3r71+ZfpPclv7qE/D3EuH9xTMyyvnTrawts0NG/ASVfQb4shuh+qbvDZvzoFyAV4gvgSuJVd9B
WSdNElDfjaDHnkerEZ7xo2G1GpSM8//a4CU+61IgKYkY80QMA1GaEHmxP0CCSgQmgyGy2ysZpkLY
juJmiNeoUPOFbDKua/h18XiS34uOWzcBiBX+dMCiqyuvmKC4+dI/7tkgz2hrKGiRn7bsF5yvc4e+
L9uBn0hBeCrbTa0/ncsf6JoUsI0dO8DpZH24PLAI7glC4VX6ehe3WSOsaIZCTPzxnyvPmXfFd1hv
VESAQ5XLnUH5fsQOX/7+hGbpeBPVzgpudxP9tjHIOJF0q9jpFOyZvNtLVvTf1ZIw0oSlG0G1K8m4
Z2LWzWfyjSl6A9DilExuNcNtm7IOloKQCLSgXhafM9TuS63pnxf1oD/+lc3QB2WsHq5vFemncVQy
YF55kapBQxWqgFOMDvOl0UJIY6dr+K0NhKQimrAniEsuMnCiVndrSX/zYp2vpFBMRINHiG5i4g6w
qEWqi8D7bthKLjPid02FmcI1fQLVAAqDs7bbWK2U3VpHO6DPE2mbRu5IKKa0lFJ1hl2X6DhLiez4
oQEgIz0VIWG4lSWbU/E8mfrq6P8PpnteLtuMzxctmRMQR5WTj4F3Sb11Z3m6vSYbPUqWsPBOiJjJ
DQJmTPiGeYPwe6fSTu7xTs2l505PkEb/jT0yMPylVrs0RvSBY58bUqQQHRgnp4auQG5M4LTWbEns
GwGUZh1BpxB3id0+YHUICttvILUbwgHi4Ju0mnk1W8Fmi5ufkX3AQJ/fiJub9eo3Hn7wR2f0Zkwh
miVCmYfO1rHpuAmnwMXeTKfAoSXfUJC3LovQCGXxSGGj/uidZbYKBVkQ7GhE9E9jQ1EdeF1lu0QS
Sfin8GxERH32ssEeKags0xQJESnj8eXDAF8NxkKRpj5Dolh7N1CeCsE58oLlw23Wgf2DkNWqgyLR
lmQ6FdGDlF3+9DWwQw0w64fKNDBYdIQg9D7vFmTjl/fDg8cYLDTqAKTK0gJnecy9AXSW7hPBmu6f
SqKNKWgT6Ggmu80Sw9LhMQBWiB2gZLMJysnDAUqRKEff23P/gAQe/f5kHzAQUaMZ5BuKr2OHlU1K
sgh0MTDngBs+Wzg4hLbDPuCvikkHhO2Kk9kqh5uuHdJNARTP1cAAdaaXyfBDSprDqC59th0ZT6wv
YUE4PxK2VmN0il1SyMxf5rNzPYj2G4E1FxmdZc+0Sch+d68Vgsgy+egDPQtZY5B5gqWECY0rkZuj
i+Xlo9EqQo2cOi5eRZyB/ov9b5E95f3yWoHX0RCQWceEvSk4coYXQyiuFdGZ+gtCLOxtgcGHw5aM
OPk/vNOVykKtT9OmdTfIknyGI5XGijJAX3hdSWW9a/LYdafwly1MVuN3UK3MJ+QLUxB1eK3o0kV1
FVpEalMCDImrAtdOvUHLEwVnqo2Yk2FcQZ/e57Dd90KLszpndwdrAgLYkXlNvl+Ad+e0pobr8IA8
bzv4fwuAt/UF/JyllCH2tKb1sMeSnQ4oXc7RcLfmVTox1DO94c6y4gmW/jV6JmycQYGf/PjOSu0j
RqDcMN8UiBaZBwG2jGM5xVk3EpOkNIxPozkLJqq7/wKuSJwUgFxG+LzIDChpn2NAyGcRR++CtsdX
JM5nkKwRr2A1vT9FWQxZGXTg/2GaFwi0y+nSnIzdKJePeBXKeG1k5RpPLD6LLHcwmGUpAuJGdPux
iAab5xBc40lFK6H/IaWc0ohsTPpkeR5DBcLaq4hbC3UU/5B96fMZ0AOSDiQU7i3IjhaLkxPBwmO2
UMP+vG+BWuTLdQrjYIjtvhyubQMfkpScnt1GdH2BMdHqDTuN8Q5NOSGp4EmAXATQS4zkIoZMcsmD
AemobrIM/XfYqApxUxS5ABoC2zVmgxG6HNmUgwEoe8osqMvN1ucZer8hveyT3shcI7JMoY54Hz1w
kh74TLBquv39Ww1KsV1uy3zYQJib+eAyyGb9Ugj9yDkjDTTlArHqOnxNKyP4qRGAiLzEVP4Cljd7
/W4vPYygPMp7jn+Gtf+n4NsyZu0HSDLWUwpE8ajEWTWEz6weXDboZh9O9mPPmPg9B0NP2A6PZyCu
jH02ezFbPVks2b/9IV5ZnHZ3n4E5u2yHdTkNq04cAccW7xGhlhBHlIgKmWpK5/MgO9N8swSp6Tb6
9JCNM/KRAbebyukpDpnRtjadijz6bKel9BB6MzYuEzBc16v6xFTuc5J5rQar2Ot8/6jzXPLkYa6u
w7JFg2wBtXpY4Jc0gJEw6TeUA+QkRnNWpemVZCKFaZczUszd8u6rcRrkLVv1pmnTI27LNVfGQzYu
htehkcpdgPbI1wf415CO3/83F52y/nYVs++5VyLKqYyVpLQYZ/wvTN7zg5ZmvWmfmDJsXJ19tyik
YvPx95R9NlGzl2vjOhMJONsnLF/zS7gBtxNuSq1oqRZSfeKBaXiFhaDy5Z0gPZz9axr3Ujbpeed2
LMKYMnGpcx3S9NQhYX99JPOV1yrxTSXwZzkFxl5L/B+AZ/Y6pLNbtKovEZHnWD+F1DoYAP5kYkKI
rDML54S1Q9ZO6ZpN0cDqkT2Ekhrs/DgkddChZRJHeYIglCA9yqDF7f4V1+ne8bQhbf4YuFVf7PnO
Mq+2JtT7t3+41UMqgWDxkii4T8NjMay8IY+B7i8ky+WHUCzuHC13/5vMKLiOgiEPEqjlLXqujoRE
AJ03w4ceS1OsoGWlddLM8w47vJhqj5Okd3iWJy58q3ZeWrw8cuMP2vWxK9pVjc5IvCMbtGgsyXY7
wI4/MPZ+JjerzglkQiJegCEf+nh0eAns8vb2Jmz6JArDIPmbdbWxlQcrmbHc5N3ExQtI/OOAl5QD
XES5Ez9DJLxK41dQKfG3aAsqdj7YANgtKjiI9b2wlehGLT9zNlEhQVX9nGqk3jye3SI85Pvlj8/F
DdS1au8pGaEbbY9N1z8iZIBntfonHGpCjTgyFQvDxKBPOF4JQkmy2E70U/uggC6vuJEnde99Rr68
nOGYqOXRpb8sFZGx4dfg4maxQa3aUVQdbLhe4tE2c9ECJkumhz1UqdhO0LMEgjlIwXgFcqcATDtD
62Z6GXyFOWM+0xnB6QXcmbv4HK7RYAoGtuTbgTwEjL1WbETw8YAUNzs+P1scNK+B+Oogy9qfj9nT
9NAVC8g0arkmiI48xMlxS405UrjFG4kxu0A+pS02ldbaIFdce5btrX7EWp2k6JCxU4fM7IBMdHqv
6Rzmyz2WPLgZ1ZIY7c9z0mpAIslyEbV97Z1/fFA0Bwkxh4fWYqkQ4r6GG8/6hMX8Y5S6UnOg/P+X
Qd4so8eBnGDdzsT359COKEIe1D5FGeMERyTtCyTL0a3GhlV+x1Ylz6xlFgmFpy5sTRqAlnN2gG7Z
N8bduPoDVU/s5YbUH5tu+dt5xPHvJQ0nbv9AulK1tv/U0hatURVI/TO+fx89R1ToH5dJb85TOrNq
vIgwQXN0cOuvA/csaGXOMbEBnXB01Ozqvh3n+j95OdJbNxKdDEvG5PGoVQ++YLdvrrq+eK73BDYN
FUDnzlDLli9K51gHuosCIY3VSNSBJgI7jL5o56S1frs6PFYzgEksGDInWaZooFKx6JSB+4Q3zWdC
hIGA5z39afNmqIKwb+DzbzVCcgGHyh+0mCIMQZs7Z7e/31T/qv4CzH2uDlxGmpl3g9Q8XiXbw9yO
rqzJtE8UD82Rp8A+DpGiumbmzzMiDGeX9y8FZYc4AAJ6neu/ygHTcvxpSL1XeCVRDFj1nF+uwkz/
1tinir0LIQf9DMJcZGWdsky4AwoHkg/ya1tIkrRlDxIMM1Cc2Gz0w8N9rPX89z/6ziBQd3Fq0eeT
avJ02hATUbyD2Job+WF03ytEvFFo2zyg9oDYk0Coyb7kjxlqQQJLxA4LKObgeRjpSsPOekbRuAUL
ZFJot7MAVWejad3TvRBR06P/ZerJOMeNS91tCvlwgHqrgC2xqDca8UYCketCxmhrBfz46wj2Zqrh
1oVf9jLi7SesnzOvp01XqnTu406ER1V9QXXB7FKQfn3/7o0fzFbYI8til+A6E/oYeByrgn/c4xtu
15APq+duLRc7gdmDbWDd+yL22n+A5MXyqOU1CglnBKEbpgJmBw3ccrDlZa+xqjA0umijGIgqVnJY
XDgMQpeUfOQ3h+JQYDCUrgEkXtCs3FoLZIwL//dSJPaQ+SB1Vqv+CVpk91ic4v6oydoXToYgKFqN
9tmohpXU1hYPLivBdnIgTQv1UJFHGperilJC13urkQIfsgVJ4dPOf7TkAAhNnW+J/h8pMnsmG3eY
JkoUOb6vGGjIDhJGzth7KeiBnUALyiOZR3H82tf0AzQ3G+RCB+VAD5P9faYVXy/yjDiMnGUuIvJP
PGiijXXxJktMbloWfOMw32dYlQFFA18Tt/W0IR+QavMZaBP9y+IQYyWWdyzP68eWrUPgcRbDFLMh
B7kV7vIlPskZrdkqExmTCfyvNcQ6we7XRAgPlOUti0XprVrkkxEvCgFF4M+2V5euhJgmhxKrwotl
7m4tfBoBQm1wiCycowO2bJWqmHLUw8gHw3uOaL5Mpp2W4zMcCnHJVF52rD0G+zAIC1GxkYAGgENR
xs2d/AzWoz09Qv02Hx9KyavC3a7kb4zexLKe7c8RjDtspkUMJc/HDohTrah+bIZjRO2HnOapKNZn
G4kzzFy0kX3zdk1LfQwagRWgueK77TC4CEe2/V1B+cZMMvBfeyuhf1qxq++ia3mvoSYjGKQ/L0uv
K7fnb0VVCeaFaRcWB5F5lAAQIXYVPl8XvOE7nWEbZFqYwy0CWcUfIidHDUvH++1wkAGkdLc8zety
3oVJdtkJkFCy5GSVR33pSjx61+D8cGeyfs8fyOFnqkeAefMrb4woI/g3dhaMibkiUTWibWQfLS2u
tUqA5eel+/EgEH6GhvAjWtn+cWPhkDmi5wYR0Ua+coMipGIHQN+OLZrCNCjyWlvwje7lOnbroiEJ
MD5d/43EDD+iIJg/TTfOIwDmQlSCnaH/9RHLkuUqYLqyH3EN6x6RrCeviVXajveA0JS2WblMzRdI
FYXflk0K3qyHDTwuwXVqVlt027dVEiilKQGJA6R0mSu4S+XAQmOcpdXEyXvw3ClNY0L7y+fnAU7A
0Oh+LvRdZFSwE0dZCOwsglik+z1s3ES6tQsvt5pWun2e0+wj6vNaT6iJ5568Vd8/Dn3rmRNHDvro
aSkgV2B5mZnwy06sDiHq7hlE7ZZ9nMq1Eqj2GnwL1oCtlv7CTbqNP5Dpq9r+SoGQGjnSmxFYN12l
8F9tYmF67IaWIb+NZP+ifAjr72h99XAg/xQfe3XicpLLiUxDTBGjaV4gn6VwtTZYvbgbvfz6mTYy
LHVTac8Zz7P8msERK29rhCnhJEvbtj804o9fEBvQg9Pv7knS7NP4273btAZHZYPTe7o6LAb60r2C
uhafAGAx+E8FiV+JqkzHtmJ/LsbufisuBr4ESHGmocnzVeKx/iCS5AH7+tpRFzoFlv538guAwBzI
z2UqrJrUs7dYGYWcaD/KMhsJheJbfpZ+2zUt8qnCZSAaqxDHOrE3Pwwul5pwh3IARHwIGD4jaaW5
nISremVTu3ZFiaZWrSUDbXNW396rB/wIEpkQM9xKbxLaoXoEuBWU8EIWcuVA8vNtOAa0GkTa0kP9
oHQCgQSek4vAA+BDLgtsA6PNl/T1LWAxGkNg2kcDCZhRS06D59EVaBO6guxWdya/cDrr6i9UjaUt
aJ3hN9bZU0A2BlDJA0I2mYccKsv3QffADFlJ9jy6GLK+yMq07c3cOlGpS7215z6v25y3JPkAo4OR
4eh8d+8gIsOxVdiCExxPMvJdScb62KLgWuLXxcQuV6o/q2DMgu2kLuTFZoK7dbRrvWQi7CIEC1cX
ZT2dZBkN4UrZQWU3I9OMTjfHsCrh5NrfOJhAwT7f5Lh5xJNf6l9go/uHU0LK1XWxrqQwPV3HsCnG
TVesaOAc71hgmRF3On8Edx4g7tUllJHvr914V9t8DGlzQ7rbO80QRaGw7ZFUMK7ng7NXc2Qiv6gC
Uc+3HJkdqBRvYzGtEue51LXdPG3OKcU+uCu7Ws3LltlerD894IghKyUJf0vvykrub73Ffn7FR5be
WDnzEciLEl730/YY04gqAiwBg+LH2UpWoFt0qagUzd0km7TEcXrlkx+vDJv1ckBza8hI+OQgSuW5
obPUG2oLs2VAmbBgzL6TJjBQ45rCt8YvGb+fLCOxUXx9YxXgYWyKwsnZ/zfqmh++qiSOSoImBwb2
J0EEeGrEDyt5A7RfLtKQv32elT4aWZaK5qH+BMcBv4DVaGWQwE9dYs9sZZmxurVKjxJdA24OwvDH
wp8EUU/kAeTiOWTgeqHCjuh/kiMQiCcwvekCn7VIxOvH8cscN1O4fqtkViraGL1AucXO8lSDEs3o
R70wXuTtNcFU1on1BzLdbjLbQbdjXz8W3o8yAAtkmmiXtXb3rIOmp54pPS3PxbdV0i5gSKzuDohR
iT1yZWI36gPfC1DQljnbg8LtQ5m4Qt+eX7p14ojpfr1Sp245Od7JIIqh/gzYHjj1PX7+D6M4bPRU
DHJP5VmiHwHeoBDhpirQg5KKqAJBu3ULJiAKLDlxxraUQha64bcEiYdQs66L55c7HBXUwTykyeXY
LPIb/3udSPlTMdXN4VxYa0YnthAcutYc3zJdVQpSpV3cTt/g6xtV95N2lrD4Hu3ayrwGo+QdM6kP
tKrNc/3k2Em9HujumRIwKNVtpWDme/ksrV5W+pMHffPdCnDUCKAhNLj26c7IKMZc61Bdvggn0RE3
N+zPqtG0q+Tyf0dSjqJvGKeWKE2t0pA0Y7bi3vbVv7Ck0jRROnV3l4lhKHhJ9UZZ+DhRHL1PG8wm
QUFpU3RO0GoDPUXYXgw3ROmyvY2yDRrE8ZZZ+0wDg15Zyi0dCe8b6PzeQam8m1+JVfJJ14D5XXk6
2xr0QekzOc4Pp7d7PdgnEXgr9Hb6pwSNmjx8l7GvaNbstpfOBTVTNxBxL++q9EodP9LRfICSk/F0
iSjQvZoGkrieK+YnnHWigoLs5eZIoyWQxVKEgSs454DDuQRI4WPfpJKaVqPViW58gG5dmuAqixZi
aJiHxKNTLIdL0zeONG11YCSeQtXVFck3eLOWVL+md5A06Y10XoU+BnOyBq2CHXBL1R4/CAosbiqs
ESsyYELnDN2QM78/xy7vzPMEumLNxTmp7sE7ATGan/IzgBYGFFT4xODK9PcCkBuEbejIPlHw9vEb
xPQwPR+VyNdGycZTwRZ2+SYs56hKtAXiaOEMycundi+Wi3COz0xBhQsS9kOp7jLC1FPhqkgjDNNB
+GHFHDheLPDf4CamuFnpT55OPUY8wlTBtXw4oN5eRmXU+pwgitYyzI2O/ofZkD8foYUZR3YQnIVc
4HnByvJKB5qYd92Snbh+od7ekAuiYXAolDaYS9OCVh/8rSzKT4MKOI8G9CHfEC1t3yJRVYqAzg4D
nexYEWshVtVcV+MLXFhkvf1oV7UJrhfXoA6GQbQKig5AqRBWAPrLYgHgO7aQ+gzPdUg25HH0GTVm
NnHzGPLX4nJIp+xk23MyZ9sXpvgPdGU+Gq3Lu5nQ5wkC1+lNs4CijGusmrg/XfSt3K5N9xSFeTPU
Jm7BqHxQ3lP2LtFADRN8uCs2EvSgzV1+mB2F4KVluRvQ7N9wOQ7vzaqRlHjOm9tLD78uWVRv9YB+
FtS+xTqHmY2Euv+2uMsOhrHe500+XXxEDVgbazErAVw9PvB+FPQzf5ITN8Wv++YJgwUjqp7OcdAz
Rq2SjV47DMXLjIVj1Bq8fzbZvr7ZmDX4JisKYU4AwI0bmr0UDg==
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
