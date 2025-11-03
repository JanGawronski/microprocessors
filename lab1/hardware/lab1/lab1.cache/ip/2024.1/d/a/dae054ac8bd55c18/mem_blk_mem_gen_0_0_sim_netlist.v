// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Oct 21 14:02:21 2025
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
