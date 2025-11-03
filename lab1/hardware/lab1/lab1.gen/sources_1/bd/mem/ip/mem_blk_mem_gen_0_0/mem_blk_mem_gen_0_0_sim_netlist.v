// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Oct 21 14:39:09 2025
// Host        : UTCALB-03 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/student/Documents/lab1/lab1.gen/sources_1/bd/mem/ip/mem_blk_mem_gen_0_0/mem_blk_mem_gen_0_0_sim_netlist.v
// Design      : mem_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mem_blk_mem_gen_0_0,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module mem_blk_mem_gen_0_0
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
  mem_blk_mem_gen_0_0_blk_mem_gen_v8_4_8 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21232)
`pragma protect data_block
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
IGStvssd+65ewAtrzskw5Bp6LYFXtYvnBqmPGA==
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
