// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Oct 21 14:19:41 2025
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
