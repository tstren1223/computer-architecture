// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Apr  9 02:00:31 2021
// Host        : DESKTOP-D4F922H running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/T480/Desktop/Lab1/Lab1.sim/sim_1/synth/func/xsim/testbench_func_synth.v
// Design      : alu
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module alu
   (clk,
    rst_n,
    src1,
    src2,
    ALU_control,
    result,
    zero,
    cout,
    overflow);
  input clk;
  input rst_n;
  input [31:0]src1;
  input [31:0]src2;
  input [3:0]ALU_control;
  output [31:0]result;
  output zero;
  output cout;
  output overflow;

  wire [3:0]ALU_control;
  wire [3:0]ALU_control_IBUF;
  wire \an3/a41/co_2 ;
  wire \an3/a42/co_0 ;
  wire \an3/a42/co_1 ;
  wire \an3/a42/co_2 ;
  wire \an3/a43/co_0 ;
  wire \an3/a43/co_2 ;
  wire \an3/a44/co_0 ;
  wire \an3/a44/co_2 ;
  wire \an3/a45/co_0 ;
  wire \an3/a45/co_1 ;
  wire \an3/a45/co_2 ;
  wire \an3/a46/co_0 ;
  wire \an3/a46/co_2 ;
  wire \an3/a47/co_0 ;
  wire \an3/a47/co_2 ;
  wire \an3/a48/co_0 ;
  wire \an3/a48/co_2 ;
  wire \an3/co_2 ;
  wire \an3/co_5 ;
  wire \an4/a41/co_2 ;
  wire \an4/a42/co_0 ;
  wire \an4/a42/co_1 ;
  wire \an4/a42/co_2 ;
  wire \an4/a43/co_0 ;
  wire \an4/a43/co_2 ;
  wire \an4/a44/co_0 ;
  wire \an4/a44/co_2 ;
  wire \an4/a45/co_0 ;
  wire \an4/a45/co_1 ;
  wire \an4/a45/co_2 ;
  wire \an4/a46/co_0 ;
  wire \an4/a46/co_2 ;
  wire \an4/a47/co_0 ;
  wire \an4/a47/co_2 ;
  wire \an4/a48/co_0 ;
  wire \an4/a48/co_2 ;
  wire \an4/co_2 ;
  wire \an4/co_5 ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire cout;
  wire cout1_2;
  wire cout_OBUF;
  wire cout_reg_LDC_i_1_n_0;
  wire cout_reg_LDC_i_2_n_0;
  wire cout_reg_LDC_n_0;
  wire cout_reg_P_n_0;
  wire overflow;
  wire overflow_OBUF;
  wire overflow_reg_LDC_i_1_n_0;
  wire overflow_reg_LDC_i_2_n_0;
  wire overflow_reg_LDC_i_3_n_0;
  wire overflow_reg_LDC_n_0;
  wire overflow_reg_P_n_0;
  wire [31:0]result;
  wire [30:30]result1;
  wire [30:0]result2;
  wire [30:2]result3;
  wire [31:0]result_OBUF;
  wire \result_reg[0]_LDC_i_1_n_0 ;
  wire \result_reg[0]_LDC_i_2_n_0 ;
  wire \result_reg[0]_LDC_i_3_n_0 ;
  wire \result_reg[0]_LDC_i_4_n_0 ;
  wire \result_reg[0]_LDC_i_5_n_0 ;
  wire \result_reg[0]_LDC_i_6_n_0 ;
  wire \result_reg[0]_LDC_i_7_n_0 ;
  wire \result_reg[0]_LDC_i_8_n_0 ;
  wire \result_reg[0]_LDC_n_0 ;
  wire \result_reg[0]_P_n_0 ;
  wire \result_reg[10]_LDC_i_1_n_0 ;
  wire \result_reg[10]_LDC_i_2_n_0 ;
  wire \result_reg[10]_LDC_i_3_n_0 ;
  wire \result_reg[10]_LDC_i_5_n_0 ;
  wire \result_reg[10]_LDC_i_6_n_0 ;
  wire \result_reg[10]_LDC_n_0 ;
  wire \result_reg[10]_P_n_0 ;
  wire \result_reg[11]_LDC_i_1_n_0 ;
  wire \result_reg[11]_LDC_i_2_n_0 ;
  wire \result_reg[11]_LDC_i_3_n_0 ;
  wire \result_reg[11]_LDC_i_5_n_0 ;
  wire \result_reg[11]_LDC_n_0 ;
  wire \result_reg[11]_P_n_0 ;
  wire \result_reg[12]_LDC_i_1_n_0 ;
  wire \result_reg[12]_LDC_i_2_n_0 ;
  wire \result_reg[12]_LDC_i_3_n_0 ;
  wire \result_reg[12]_LDC_i_5_n_0 ;
  wire \result_reg[12]_LDC_n_0 ;
  wire \result_reg[12]_P_n_0 ;
  wire \result_reg[13]_LDC_i_1_n_0 ;
  wire \result_reg[13]_LDC_i_2_n_0 ;
  wire \result_reg[13]_LDC_i_3_n_0 ;
  wire \result_reg[13]_LDC_i_5_n_0 ;
  wire \result_reg[13]_LDC_n_0 ;
  wire \result_reg[13]_P_n_0 ;
  wire \result_reg[14]_LDC_i_1_n_0 ;
  wire \result_reg[14]_LDC_i_2_n_0 ;
  wire \result_reg[14]_LDC_i_3_n_0 ;
  wire \result_reg[14]_LDC_i_5_n_0 ;
  wire \result_reg[14]_LDC_i_6_n_0 ;
  wire \result_reg[14]_LDC_n_0 ;
  wire \result_reg[14]_P_n_0 ;
  wire \result_reg[15]_LDC_i_1_n_0 ;
  wire \result_reg[15]_LDC_i_2_n_0 ;
  wire \result_reg[15]_LDC_i_3_n_0 ;
  wire \result_reg[15]_LDC_i_5_n_0 ;
  wire \result_reg[15]_LDC_n_0 ;
  wire \result_reg[15]_P_n_0 ;
  wire \result_reg[16]_LDC_i_1_n_0 ;
  wire \result_reg[16]_LDC_i_2_n_0 ;
  wire \result_reg[16]_LDC_i_3_n_0 ;
  wire \result_reg[16]_LDC_i_5_n_0 ;
  wire \result_reg[16]_LDC_i_6_n_0 ;
  wire \result_reg[16]_LDC_n_0 ;
  wire \result_reg[16]_P_n_0 ;
  wire \result_reg[17]_LDC_i_1_n_0 ;
  wire \result_reg[17]_LDC_i_2_n_0 ;
  wire \result_reg[17]_LDC_i_3_n_0 ;
  wire \result_reg[17]_LDC_i_5_n_0 ;
  wire \result_reg[17]_LDC_n_0 ;
  wire \result_reg[17]_P_n_0 ;
  wire \result_reg[18]_LDC_i_1_n_0 ;
  wire \result_reg[18]_LDC_i_2_n_0 ;
  wire \result_reg[18]_LDC_i_3_n_0 ;
  wire \result_reg[18]_LDC_i_5_n_0 ;
  wire \result_reg[18]_LDC_n_0 ;
  wire \result_reg[18]_P_n_0 ;
  wire \result_reg[19]_LDC_i_1_n_0 ;
  wire \result_reg[19]_LDC_i_2_n_0 ;
  wire \result_reg[19]_LDC_i_3_n_0 ;
  wire \result_reg[19]_LDC_i_5_n_0 ;
  wire \result_reg[19]_LDC_n_0 ;
  wire \result_reg[19]_P_n_0 ;
  wire \result_reg[1]_LDC_i_1_n_0 ;
  wire \result_reg[1]_LDC_i_2_n_0 ;
  wire \result_reg[1]_LDC_i_3_n_0 ;
  wire \result_reg[1]_LDC_i_5_n_0 ;
  wire \result_reg[1]_LDC_n_0 ;
  wire \result_reg[1]_P_n_0 ;
  wire \result_reg[20]_LDC_i_1_n_0 ;
  wire \result_reg[20]_LDC_i_2_n_0 ;
  wire \result_reg[20]_LDC_i_3_n_0 ;
  wire \result_reg[20]_LDC_i_5_n_0 ;
  wire \result_reg[20]_LDC_i_6_n_0 ;
  wire \result_reg[20]_LDC_n_0 ;
  wire \result_reg[20]_P_n_0 ;
  wire \result_reg[21]_LDC_i_1_n_0 ;
  wire \result_reg[21]_LDC_i_2_n_0 ;
  wire \result_reg[21]_LDC_i_3_n_0 ;
  wire \result_reg[21]_LDC_i_5_n_0 ;
  wire \result_reg[21]_LDC_n_0 ;
  wire \result_reg[21]_P_n_0 ;
  wire \result_reg[22]_LDC_i_1_n_0 ;
  wire \result_reg[22]_LDC_i_2_n_0 ;
  wire \result_reg[22]_LDC_i_3_n_0 ;
  wire \result_reg[22]_LDC_i_5_n_0 ;
  wire \result_reg[22]_LDC_i_6_n_0 ;
  wire \result_reg[22]_LDC_n_0 ;
  wire \result_reg[22]_P_n_0 ;
  wire \result_reg[23]_LDC_i_1_n_0 ;
  wire \result_reg[23]_LDC_i_2_n_0 ;
  wire \result_reg[23]_LDC_i_3_n_0 ;
  wire \result_reg[23]_LDC_i_5_n_0 ;
  wire \result_reg[23]_LDC_n_0 ;
  wire \result_reg[23]_P_n_0 ;
  wire \result_reg[24]_LDC_i_1_n_0 ;
  wire \result_reg[24]_LDC_i_2_n_0 ;
  wire \result_reg[24]_LDC_i_3_n_0 ;
  wire \result_reg[24]_LDC_i_5_n_0 ;
  wire \result_reg[24]_LDC_n_0 ;
  wire \result_reg[24]_P_n_0 ;
  wire \result_reg[25]_LDC_i_1_n_0 ;
  wire \result_reg[25]_LDC_i_2_n_0 ;
  wire \result_reg[25]_LDC_i_3_n_0 ;
  wire \result_reg[25]_LDC_i_5_n_0 ;
  wire \result_reg[25]_LDC_n_0 ;
  wire \result_reg[25]_P_n_0 ;
  wire \result_reg[26]_LDC_i_1_n_0 ;
  wire \result_reg[26]_LDC_i_2_n_0 ;
  wire \result_reg[26]_LDC_i_3_n_0 ;
  wire \result_reg[26]_LDC_i_5_n_0 ;
  wire \result_reg[26]_LDC_i_6_n_0 ;
  wire \result_reg[26]_LDC_n_0 ;
  wire \result_reg[26]_P_n_0 ;
  wire \result_reg[27]_LDC_i_1_n_0 ;
  wire \result_reg[27]_LDC_i_2_n_0 ;
  wire \result_reg[27]_LDC_i_3_n_0 ;
  wire \result_reg[27]_LDC_i_5_n_0 ;
  wire \result_reg[27]_LDC_n_0 ;
  wire \result_reg[27]_P_n_0 ;
  wire \result_reg[28]_LDC_i_1_n_0 ;
  wire \result_reg[28]_LDC_i_2_n_0 ;
  wire \result_reg[28]_LDC_i_3_n_0 ;
  wire \result_reg[28]_LDC_i_5_n_0 ;
  wire \result_reg[28]_LDC_i_6_n_0 ;
  wire \result_reg[28]_LDC_n_0 ;
  wire \result_reg[28]_P_n_0 ;
  wire \result_reg[29]_LDC_i_1_n_0 ;
  wire \result_reg[29]_LDC_i_2_n_0 ;
  wire \result_reg[29]_LDC_i_3_n_0 ;
  wire \result_reg[29]_LDC_i_5_n_0 ;
  wire \result_reg[29]_LDC_n_0 ;
  wire \result_reg[29]_P_n_0 ;
  wire \result_reg[2]_LDC_i_1_n_0 ;
  wire \result_reg[2]_LDC_i_2_n_0 ;
  wire \result_reg[2]_LDC_i_3_n_0 ;
  wire \result_reg[2]_LDC_i_5_n_0 ;
  wire \result_reg[2]_LDC_i_6_n_0 ;
  wire \result_reg[2]_LDC_n_0 ;
  wire \result_reg[2]_P_n_0 ;
  wire \result_reg[30]_LDC_i_1_n_0 ;
  wire \result_reg[30]_LDC_i_2_n_0 ;
  wire \result_reg[30]_LDC_i_3_n_0 ;
  wire \result_reg[30]_LDC_i_5_n_0 ;
  wire \result_reg[30]_LDC_i_6_n_0 ;
  wire \result_reg[30]_LDC_i_9_n_0 ;
  wire \result_reg[30]_LDC_n_0 ;
  wire \result_reg[30]_P_n_0 ;
  wire \result_reg[31]_LDC_i_1_n_0 ;
  wire \result_reg[31]_LDC_i_2_n_0 ;
  wire \result_reg[31]_LDC_i_3_n_0 ;
  wire \result_reg[31]_LDC_i_4_n_0 ;
  wire \result_reg[31]_LDC_i_5_n_0 ;
  wire \result_reg[31]_LDC_n_0 ;
  wire \result_reg[31]_P_n_0 ;
  wire \result_reg[3]_LDC_i_1_n_0 ;
  wire \result_reg[3]_LDC_i_2_n_0 ;
  wire \result_reg[3]_LDC_i_3_n_0 ;
  wire \result_reg[3]_LDC_i_5_n_0 ;
  wire \result_reg[3]_LDC_n_0 ;
  wire \result_reg[3]_P_n_0 ;
  wire \result_reg[4]_LDC_i_1_n_0 ;
  wire \result_reg[4]_LDC_i_2_n_0 ;
  wire \result_reg[4]_LDC_i_3_n_0 ;
  wire \result_reg[4]_LDC_i_5_n_0 ;
  wire \result_reg[4]_LDC_i_6_n_0 ;
  wire \result_reg[4]_LDC_n_0 ;
  wire \result_reg[4]_P_n_0 ;
  wire \result_reg[5]_LDC_i_1_n_0 ;
  wire \result_reg[5]_LDC_i_2_n_0 ;
  wire \result_reg[5]_LDC_i_3_n_0 ;
  wire \result_reg[5]_LDC_i_5_n_0 ;
  wire \result_reg[5]_LDC_n_0 ;
  wire \result_reg[5]_P_n_0 ;
  wire \result_reg[6]_LDC_i_1_n_0 ;
  wire \result_reg[6]_LDC_i_2_n_0 ;
  wire \result_reg[6]_LDC_i_3_n_0 ;
  wire \result_reg[6]_LDC_i_5_n_0 ;
  wire \result_reg[6]_LDC_n_0 ;
  wire \result_reg[6]_P_n_0 ;
  wire \result_reg[7]_LDC_i_1_n_0 ;
  wire \result_reg[7]_LDC_i_2_n_0 ;
  wire \result_reg[7]_LDC_i_3_n_0 ;
  wire \result_reg[7]_LDC_i_5_n_0 ;
  wire \result_reg[7]_LDC_n_0 ;
  wire \result_reg[7]_P_n_0 ;
  wire \result_reg[8]_LDC_i_1_n_0 ;
  wire \result_reg[8]_LDC_i_2_n_0 ;
  wire \result_reg[8]_LDC_i_3_n_0 ;
  wire \result_reg[8]_LDC_i_5_n_0 ;
  wire \result_reg[8]_LDC_i_6_n_0 ;
  wire \result_reg[8]_LDC_n_0 ;
  wire \result_reg[8]_P_n_0 ;
  wire \result_reg[9]_LDC_i_1_n_0 ;
  wire \result_reg[9]_LDC_i_2_n_0 ;
  wire \result_reg[9]_LDC_i_3_n_0 ;
  wire \result_reg[9]_LDC_i_5_n_0 ;
  wire \result_reg[9]_LDC_n_0 ;
  wire \result_reg[9]_P_n_0 ;
  wire rst_n;
  wire rst_n_IBUF;
  wire [31:0]src1;
  wire [31:0]src1_IBUF;
  wire [31:0]src2;
  wire [31:0]src2_IBUF;
  wire zero;
  wire zero1_4;
  wire zero_OBUF;
  wire zero_reg_LDC_i_10_n_0;
  wire zero_reg_LDC_i_11_n_0;
  wire zero_reg_LDC_i_12_n_0;
  wire zero_reg_LDC_i_13_n_0;
  wire zero_reg_LDC_i_14_n_0;
  wire zero_reg_LDC_i_15_n_0;
  wire zero_reg_LDC_i_17_n_0;
  wire zero_reg_LDC_i_18_n_0;
  wire zero_reg_LDC_i_19_n_0;
  wire zero_reg_LDC_i_1_n_0;
  wire zero_reg_LDC_i_20_n_0;
  wire zero_reg_LDC_i_21_n_0;
  wire zero_reg_LDC_i_22_n_0;
  wire zero_reg_LDC_i_23_n_0;
  wire zero_reg_LDC_i_24_n_0;
  wire zero_reg_LDC_i_25_n_0;
  wire zero_reg_LDC_i_26_n_0;
  wire zero_reg_LDC_i_28_n_0;
  wire zero_reg_LDC_i_29_n_0;
  wire zero_reg_LDC_i_2_n_0;
  wire zero_reg_LDC_i_30_n_0;
  wire zero_reg_LDC_i_31_n_0;
  wire zero_reg_LDC_i_32_n_0;
  wire zero_reg_LDC_i_33_n_0;
  wire zero_reg_LDC_i_34_n_0;
  wire zero_reg_LDC_i_35_n_0;
  wire zero_reg_LDC_i_36_n_0;
  wire zero_reg_LDC_i_37_n_0;
  wire zero_reg_LDC_i_38_n_0;
  wire zero_reg_LDC_i_39_n_0;
  wire zero_reg_LDC_i_3_n_0;
  wire zero_reg_LDC_i_40_n_0;
  wire zero_reg_LDC_i_41_n_0;
  wire zero_reg_LDC_i_42_n_0;
  wire zero_reg_LDC_i_43_n_0;
  wire zero_reg_LDC_i_44_n_0;
  wire zero_reg_LDC_i_45_n_0;
  wire zero_reg_LDC_i_46_n_0;
  wire zero_reg_LDC_i_47_n_0;
  wire zero_reg_LDC_i_48_n_0;
  wire zero_reg_LDC_i_49_n_0;
  wire zero_reg_LDC_i_4_n_0;
  wire zero_reg_LDC_i_50_n_0;
  wire zero_reg_LDC_i_51_n_0;
  wire zero_reg_LDC_i_53_n_0;
  wire zero_reg_LDC_i_54_n_0;
  wire zero_reg_LDC_i_55_n_0;
  wire zero_reg_LDC_i_56_n_0;
  wire zero_reg_LDC_i_57_n_0;
  wire zero_reg_LDC_i_58_n_0;
  wire zero_reg_LDC_i_59_n_0;
  wire zero_reg_LDC_i_5_n_0;
  wire zero_reg_LDC_i_60_n_0;
  wire zero_reg_LDC_i_61_n_0;
  wire zero_reg_LDC_i_62_n_0;
  wire zero_reg_LDC_i_63_n_0;
  wire zero_reg_LDC_i_64_n_0;
  wire zero_reg_LDC_i_65_n_0;
  wire zero_reg_LDC_i_66_n_0;
  wire zero_reg_LDC_i_67_n_0;
  wire zero_reg_LDC_i_69_n_0;
  wire zero_reg_LDC_i_6_n_0;
  wire zero_reg_LDC_i_70_n_0;
  wire zero_reg_LDC_i_71_n_0;
  wire zero_reg_LDC_i_72_n_0;
  wire zero_reg_LDC_i_73_n_0;
  wire zero_reg_LDC_i_74_n_0;
  wire zero_reg_LDC_i_75_n_0;
  wire zero_reg_LDC_i_77_n_0;
  wire zero_reg_LDC_i_78_n_0;
  wire zero_reg_LDC_i_79_n_0;
  wire zero_reg_LDC_i_7_n_0;
  wire zero_reg_LDC_i_81_n_0;
  wire zero_reg_LDC_i_82_n_0;
  wire zero_reg_LDC_i_83_n_0;
  wire zero_reg_LDC_i_85_n_0;
  wire zero_reg_LDC_i_86_n_0;
  wire zero_reg_LDC_i_87_n_0;
  wire zero_reg_LDC_i_89_n_0;
  wire zero_reg_LDC_i_8_n_0;
  wire zero_reg_LDC_i_90_n_0;
  wire zero_reg_LDC_i_91_n_0;
  wire zero_reg_LDC_i_93_n_0;
  wire zero_reg_LDC_i_94_n_0;
  wire zero_reg_LDC_i_95_n_0;
  wire zero_reg_LDC_i_9_n_0;
  wire zero_reg_LDC_n_0;
  wire zero_reg_P_n_0;

  IBUF \ALU_control_IBUF[0]_inst 
       (.I(ALU_control[0]),
        .O(ALU_control_IBUF[0]));
  IBUF \ALU_control_IBUF[1]_inst 
       (.I(ALU_control[1]),
        .O(ALU_control_IBUF[1]));
  IBUF \ALU_control_IBUF[2]_inst 
       (.I(ALU_control[2]),
        .O(ALU_control_IBUF[2]));
  IBUF \ALU_control_IBUF[3]_inst 
       (.I(ALU_control[3]),
        .O(ALU_control_IBUF[3]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF cout_OBUF_inst
       (.I(cout_OBUF),
        .O(cout));
  LUT2 #(
    .INIT(4'h8)) 
    cout_OBUF_inst_i_1
       (.I0(cout_reg_LDC_n_0),
        .I1(cout_reg_P_n_0),
        .O(cout_OBUF));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    cout_reg_LDC
       (.CLR(cout_reg_LDC_i_2_n_0),
        .D(1'b1),
        .G(cout_reg_LDC_i_1_n_0),
        .GE(1'b1),
        .Q(cout_reg_LDC_n_0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    cout_reg_LDC_i_1
       (.I0(ALU_control_IBUF[1]),
        .I1(ALU_control_IBUF[2]),
        .I2(cout1_2),
        .I3(ALU_control_IBUF[3]),
        .I4(ALU_control_IBUF[0]),
        .I5(rst_n_IBUF),
        .O(cout_reg_LDC_i_1_n_0));
  LUT6 #(
    .INIT(64'h5555555555555155)) 
    cout_reg_LDC_i_2
       (.I0(rst_n_IBUF),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(cout1_2),
        .I4(ALU_control_IBUF[3]),
        .I5(ALU_control_IBUF[0]),
        .O(cout_reg_LDC_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    cout_reg_LDC_i_3
       (.I0(src2_IBUF[31]),
        .I1(\an3/a48/co_2 ),
        .I2(src1_IBUF[31]),
        .O(cout1_2));
  FDPE #(
    .INIT(1'b1)) 
    cout_reg_P
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(cout_reg_LDC_i_1_n_0),
        .Q(cout_reg_P_n_0));
  OBUF overflow_OBUF_inst
       (.I(overflow_OBUF),
        .O(overflow));
  LUT2 #(
    .INIT(4'h8)) 
    overflow_OBUF_inst_i_1
       (.I0(overflow_reg_LDC_n_0),
        .I1(overflow_reg_P_n_0),
        .O(overflow_OBUF));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    overflow_reg_LDC
       (.CLR(overflow_reg_LDC_i_2_n_0),
        .D(1'b1),
        .G(overflow_reg_LDC_i_1_n_0),
        .GE(1'b1),
        .Q(overflow_reg_LDC_n_0));
  LUT4 #(
    .INIT(16'h0010)) 
    overflow_reg_LDC_i_1
       (.I0(ALU_control_IBUF[0]),
        .I1(ALU_control_IBUF[3]),
        .I2(overflow_reg_LDC_i_3_n_0),
        .I3(rst_n_IBUF),
        .O(overflow_reg_LDC_i_1_n_0));
  LUT4 #(
    .INIT(16'h5455)) 
    overflow_reg_LDC_i_2
       (.I0(rst_n_IBUF),
        .I1(ALU_control_IBUF[0]),
        .I2(ALU_control_IBUF[3]),
        .I3(overflow_reg_LDC_i_3_n_0),
        .O(overflow_reg_LDC_i_2_n_0));
  LUT6 #(
    .INIT(64'h03C0500A00000000)) 
    overflow_reg_LDC_i_3
       (.I0(\an3/a48/co_2 ),
        .I1(\an4/a48/co_2 ),
        .I2(src2_IBUF[31]),
        .I3(src1_IBUF[31]),
        .I4(ALU_control_IBUF[2]),
        .I5(ALU_control_IBUF[1]),
        .O(overflow_reg_LDC_i_3_n_0));
  FDPE #(
    .INIT(1'b1)) 
    overflow_reg_P
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(overflow_reg_LDC_i_1_n_0),
        .Q(overflow_reg_P_n_0));
  OBUF \result_OBUF[0]_inst 
       (.I(result_OBUF[0]),
        .O(result[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[0]_inst_i_1 
       (.I0(\result_reg[0]_LDC_n_0 ),
        .I1(\result_reg[0]_P_n_0 ),
        .O(result_OBUF[0]));
  OBUF \result_OBUF[10]_inst 
       (.I(result_OBUF[10]),
        .O(result[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[10]_inst_i_1 
       (.I0(\result_reg[10]_LDC_n_0 ),
        .I1(\result_reg[10]_P_n_0 ),
        .O(result_OBUF[10]));
  OBUF \result_OBUF[11]_inst 
       (.I(result_OBUF[11]),
        .O(result[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[11]_inst_i_1 
       (.I0(\result_reg[11]_LDC_n_0 ),
        .I1(\result_reg[11]_P_n_0 ),
        .O(result_OBUF[11]));
  OBUF \result_OBUF[12]_inst 
       (.I(result_OBUF[12]),
        .O(result[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[12]_inst_i_1 
       (.I0(\result_reg[12]_LDC_n_0 ),
        .I1(\result_reg[12]_P_n_0 ),
        .O(result_OBUF[12]));
  OBUF \result_OBUF[13]_inst 
       (.I(result_OBUF[13]),
        .O(result[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[13]_inst_i_1 
       (.I0(\result_reg[13]_LDC_n_0 ),
        .I1(\result_reg[13]_P_n_0 ),
        .O(result_OBUF[13]));
  OBUF \result_OBUF[14]_inst 
       (.I(result_OBUF[14]),
        .O(result[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[14]_inst_i_1 
       (.I0(\result_reg[14]_LDC_n_0 ),
        .I1(\result_reg[14]_P_n_0 ),
        .O(result_OBUF[14]));
  OBUF \result_OBUF[15]_inst 
       (.I(result_OBUF[15]),
        .O(result[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[15]_inst_i_1 
       (.I0(\result_reg[15]_LDC_n_0 ),
        .I1(\result_reg[15]_P_n_0 ),
        .O(result_OBUF[15]));
  OBUF \result_OBUF[16]_inst 
       (.I(result_OBUF[16]),
        .O(result[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[16]_inst_i_1 
       (.I0(\result_reg[16]_LDC_n_0 ),
        .I1(\result_reg[16]_P_n_0 ),
        .O(result_OBUF[16]));
  OBUF \result_OBUF[17]_inst 
       (.I(result_OBUF[17]),
        .O(result[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[17]_inst_i_1 
       (.I0(\result_reg[17]_LDC_n_0 ),
        .I1(\result_reg[17]_P_n_0 ),
        .O(result_OBUF[17]));
  OBUF \result_OBUF[18]_inst 
       (.I(result_OBUF[18]),
        .O(result[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[18]_inst_i_1 
       (.I0(\result_reg[18]_LDC_n_0 ),
        .I1(\result_reg[18]_P_n_0 ),
        .O(result_OBUF[18]));
  OBUF \result_OBUF[19]_inst 
       (.I(result_OBUF[19]),
        .O(result[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[19]_inst_i_1 
       (.I0(\result_reg[19]_LDC_n_0 ),
        .I1(\result_reg[19]_P_n_0 ),
        .O(result_OBUF[19]));
  OBUF \result_OBUF[1]_inst 
       (.I(result_OBUF[1]),
        .O(result[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[1]_inst_i_1 
       (.I0(\result_reg[1]_LDC_n_0 ),
        .I1(\result_reg[1]_P_n_0 ),
        .O(result_OBUF[1]));
  OBUF \result_OBUF[20]_inst 
       (.I(result_OBUF[20]),
        .O(result[20]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[20]_inst_i_1 
       (.I0(\result_reg[20]_LDC_n_0 ),
        .I1(\result_reg[20]_P_n_0 ),
        .O(result_OBUF[20]));
  OBUF \result_OBUF[21]_inst 
       (.I(result_OBUF[21]),
        .O(result[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[21]_inst_i_1 
       (.I0(\result_reg[21]_LDC_n_0 ),
        .I1(\result_reg[21]_P_n_0 ),
        .O(result_OBUF[21]));
  OBUF \result_OBUF[22]_inst 
       (.I(result_OBUF[22]),
        .O(result[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[22]_inst_i_1 
       (.I0(\result_reg[22]_LDC_n_0 ),
        .I1(\result_reg[22]_P_n_0 ),
        .O(result_OBUF[22]));
  OBUF \result_OBUF[23]_inst 
       (.I(result_OBUF[23]),
        .O(result[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[23]_inst_i_1 
       (.I0(\result_reg[23]_LDC_n_0 ),
        .I1(\result_reg[23]_P_n_0 ),
        .O(result_OBUF[23]));
  OBUF \result_OBUF[24]_inst 
       (.I(result_OBUF[24]),
        .O(result[24]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[24]_inst_i_1 
       (.I0(\result_reg[24]_LDC_n_0 ),
        .I1(\result_reg[24]_P_n_0 ),
        .O(result_OBUF[24]));
  OBUF \result_OBUF[25]_inst 
       (.I(result_OBUF[25]),
        .O(result[25]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[25]_inst_i_1 
       (.I0(\result_reg[25]_LDC_n_0 ),
        .I1(\result_reg[25]_P_n_0 ),
        .O(result_OBUF[25]));
  OBUF \result_OBUF[26]_inst 
       (.I(result_OBUF[26]),
        .O(result[26]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[26]_inst_i_1 
       (.I0(\result_reg[26]_LDC_n_0 ),
        .I1(\result_reg[26]_P_n_0 ),
        .O(result_OBUF[26]));
  OBUF \result_OBUF[27]_inst 
       (.I(result_OBUF[27]),
        .O(result[27]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[27]_inst_i_1 
       (.I0(\result_reg[27]_LDC_n_0 ),
        .I1(\result_reg[27]_P_n_0 ),
        .O(result_OBUF[27]));
  OBUF \result_OBUF[28]_inst 
       (.I(result_OBUF[28]),
        .O(result[28]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[28]_inst_i_1 
       (.I0(\result_reg[28]_LDC_n_0 ),
        .I1(\result_reg[28]_P_n_0 ),
        .O(result_OBUF[28]));
  OBUF \result_OBUF[29]_inst 
       (.I(result_OBUF[29]),
        .O(result[29]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[29]_inst_i_1 
       (.I0(\result_reg[29]_LDC_n_0 ),
        .I1(\result_reg[29]_P_n_0 ),
        .O(result_OBUF[29]));
  OBUF \result_OBUF[2]_inst 
       (.I(result_OBUF[2]),
        .O(result[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[2]_inst_i_1 
       (.I0(\result_reg[2]_LDC_n_0 ),
        .I1(\result_reg[2]_P_n_0 ),
        .O(result_OBUF[2]));
  OBUF \result_OBUF[30]_inst 
       (.I(result_OBUF[30]),
        .O(result[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[30]_inst_i_1 
       (.I0(\result_reg[30]_LDC_n_0 ),
        .I1(\result_reg[30]_P_n_0 ),
        .O(result_OBUF[30]));
  OBUF \result_OBUF[31]_inst 
       (.I(result_OBUF[31]),
        .O(result[31]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[31]_inst_i_1 
       (.I0(\result_reg[31]_LDC_n_0 ),
        .I1(\result_reg[31]_P_n_0 ),
        .O(result_OBUF[31]));
  OBUF \result_OBUF[3]_inst 
       (.I(result_OBUF[3]),
        .O(result[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[3]_inst_i_1 
       (.I0(\result_reg[3]_LDC_n_0 ),
        .I1(\result_reg[3]_P_n_0 ),
        .O(result_OBUF[3]));
  OBUF \result_OBUF[4]_inst 
       (.I(result_OBUF[4]),
        .O(result[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[4]_inst_i_1 
       (.I0(\result_reg[4]_LDC_n_0 ),
        .I1(\result_reg[4]_P_n_0 ),
        .O(result_OBUF[4]));
  OBUF \result_OBUF[5]_inst 
       (.I(result_OBUF[5]),
        .O(result[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[5]_inst_i_1 
       (.I0(\result_reg[5]_LDC_n_0 ),
        .I1(\result_reg[5]_P_n_0 ),
        .O(result_OBUF[5]));
  OBUF \result_OBUF[6]_inst 
       (.I(result_OBUF[6]),
        .O(result[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[6]_inst_i_1 
       (.I0(\result_reg[6]_LDC_n_0 ),
        .I1(\result_reg[6]_P_n_0 ),
        .O(result_OBUF[6]));
  OBUF \result_OBUF[7]_inst 
       (.I(result_OBUF[7]),
        .O(result[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[7]_inst_i_1 
       (.I0(\result_reg[7]_LDC_n_0 ),
        .I1(\result_reg[7]_P_n_0 ),
        .O(result_OBUF[7]));
  OBUF \result_OBUF[8]_inst 
       (.I(result_OBUF[8]),
        .O(result[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[8]_inst_i_1 
       (.I0(\result_reg[8]_LDC_n_0 ),
        .I1(\result_reg[8]_P_n_0 ),
        .O(result_OBUF[8]));
  OBUF \result_OBUF[9]_inst 
       (.I(result_OBUF[9]),
        .O(result[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[9]_inst_i_1 
       (.I0(\result_reg[9]_LDC_n_0 ),
        .I1(\result_reg[9]_P_n_0 ),
        .O(result_OBUF[9]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[0]_LDC 
       (.CLR(\result_reg[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[0]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[0]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0004)) 
    \result_reg[0]_LDC_i_1 
       (.I0(ALU_control_IBUF[3]),
        .I1(\result_reg[0]_LDC_i_3_n_0 ),
        .I2(\result_reg[0]_LDC_i_4_n_0 ),
        .I3(\result_reg[0]_LDC_i_5_n_0 ),
        .I4(\result_reg[0]_LDC_i_6_n_0 ),
        .I5(rst_n_IBUF),
        .O(\result_reg[0]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555545)) 
    \result_reg[0]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(ALU_control_IBUF[3]),
        .I2(\result_reg[0]_LDC_i_3_n_0 ),
        .I3(\result_reg[0]_LDC_i_4_n_0 ),
        .I4(\result_reg[0]_LDC_i_5_n_0 ),
        .I5(\result_reg[0]_LDC_i_6_n_0 ),
        .O(\result_reg[0]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFFFEFEEE)) 
    \result_reg[0]_LDC_i_3 
       (.I0(ALU_control_IBUF[2]),
        .I1(ALU_control_IBUF[1]),
        .I2(src1_IBUF[0]),
        .I3(src2_IBUF[0]),
        .I4(ALU_control_IBUF[0]),
        .O(\result_reg[0]_LDC_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAAAABABAAABA)) 
    \result_reg[0]_LDC_i_4 
       (.I0(\result_reg[0]_LDC_i_7_n_0 ),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(\an4/a48/co_2 ),
        .I4(src2_IBUF[31]),
        .I5(src1_IBUF[31]),
        .O(\result_reg[0]_LDC_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAAAEAEAAAEA)) 
    \result_reg[0]_LDC_i_5 
       (.I0(\result_reg[0]_LDC_i_8_n_0 ),
        .I1(ALU_control_IBUF[0]),
        .I2(ALU_control_IBUF[1]),
        .I3(\an4/a48/co_2 ),
        .I4(src2_IBUF[31]),
        .I5(src1_IBUF[31]),
        .O(\result_reg[0]_LDC_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC404C4C40404C404)) 
    \result_reg[0]_LDC_i_6 
       (.I0(result2[0]),
        .I1(ALU_control_IBUF[3]),
        .I2(\result_reg[30]_LDC_i_6_n_0 ),
        .I3(src1_IBUF[31]),
        .I4(src2_IBUF[31]),
        .I5(\an4/a48/co_2 ),
        .O(\result_reg[0]_LDC_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h40000040)) 
    \result_reg[0]_LDC_i_7 
       (.I0(ALU_control_IBUF[0]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(src2_IBUF[0]),
        .I4(src1_IBUF[0]),
        .O(\result_reg[0]_LDC_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00004004)) 
    \result_reg[0]_LDC_i_8 
       (.I0(ALU_control_IBUF[0]),
        .I1(ALU_control_IBUF[1]),
        .I2(src2_IBUF[0]),
        .I3(src1_IBUF[0]),
        .I4(ALU_control_IBUF[2]),
        .O(\result_reg[0]_LDC_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[0]_LDC_i_9 
       (.I0(src1_IBUF[0]),
        .I1(src2_IBUF[0]),
        .O(result2[0]));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[0]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[0]_LDC_i_1_n_0 ),
        .Q(\result_reg[0]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[10]_LDC 
       (.CLR(\result_reg[10]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[10]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[10]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[10]_LDC_i_1 
       (.I0(\result_reg[10]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[10]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[10]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[10]_LDC_i_3_n_0 ),
        .O(\result_reg[10]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[10]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[10]),
        .I4(\result_reg[10]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[10]_LDC_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[10]_LDC_i_4 
       (.I0(src1_IBUF[10]),
        .I1(src2_IBUF[10]),
        .O(result2[10]));
  LUT6 #(
    .INIT(64'hB833B800B800B800)) 
    \result_reg[10]_LDC_i_5 
       (.I0(\result_reg[10]_LDC_i_6_n_0 ),
        .I1(ALU_control_IBUF[2]),
        .I2(result3[10]),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[10]),
        .I5(src1_IBUF[10]),
        .O(\result_reg[10]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h69669969)) 
    \result_reg[10]_LDC_i_6 
       (.I0(src2_IBUF[10]),
        .I1(src1_IBUF[10]),
        .I2(\an4/a43/co_0 ),
        .I3(src2_IBUF[9]),
        .I4(src1_IBUF[9]),
        .O(\result_reg[10]_LDC_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \result_reg[10]_LDC_i_7 
       (.I0(src2_IBUF[10]),
        .I1(src1_IBUF[10]),
        .I2(src2_IBUF[9]),
        .I3(\an3/a43/co_0 ),
        .I4(src1_IBUF[9]),
        .O(result3[10]));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[10]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[10]_LDC_i_1_n_0 ),
        .Q(\result_reg[10]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[11]_LDC 
       (.CLR(\result_reg[11]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[11]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[11]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[11]_LDC_i_1 
       (.I0(\result_reg[11]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[11]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[11]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[11]_LDC_i_3_n_0 ),
        .O(\result_reg[11]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[11]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[11]),
        .I4(\result_reg[11]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[11]_LDC_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[11]_LDC_i_4 
       (.I0(src1_IBUF[11]),
        .I1(src2_IBUF[11]),
        .O(result2[11]));
  LUT6 #(
    .INIT(64'h74338B008B007400)) 
    \result_reg[11]_LDC_i_5 
       (.I0(\an4/a43/co_2 ),
        .I1(ALU_control_IBUF[2]),
        .I2(\an3/a43/co_2 ),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[11]),
        .I5(src1_IBUF[11]),
        .O(\result_reg[11]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hB2FF00B2)) 
    \result_reg[11]_LDC_i_6 
       (.I0(src1_IBUF[9]),
        .I1(src2_IBUF[9]),
        .I2(\an4/a43/co_0 ),
        .I3(src2_IBUF[10]),
        .I4(src1_IBUF[10]),
        .O(\an4/a43/co_2 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \result_reg[11]_LDC_i_7 
       (.I0(src2_IBUF[10]),
        .I1(src1_IBUF[9]),
        .I2(\an3/a43/co_0 ),
        .I3(src2_IBUF[9]),
        .I4(src1_IBUF[10]),
        .O(\an3/a43/co_2 ));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[11]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[11]_LDC_i_1_n_0 ),
        .Q(\result_reg[11]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[12]_LDC 
       (.CLR(\result_reg[12]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[12]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[12]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[12]_LDC_i_1 
       (.I0(\result_reg[12]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[12]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[12]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[12]_LDC_i_3_n_0 ),
        .O(\result_reg[12]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[12]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[12]),
        .I4(\result_reg[12]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[12]_LDC_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[12]_LDC_i_4 
       (.I0(src1_IBUF[12]),
        .I1(src2_IBUF[12]),
        .O(result2[12]));
  LUT6 #(
    .INIT(64'h74338B008B007400)) 
    \result_reg[12]_LDC_i_5 
       (.I0(\an4/co_2 ),
        .I1(ALU_control_IBUF[2]),
        .I2(\an3/co_2 ),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[12]),
        .I5(src1_IBUF[12]),
        .O(\result_reg[12]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \result_reg[12]_LDC_i_6 
       (.I0(\an4/a43/co_2 ),
        .I1(src2_IBUF[11]),
        .I2(src1_IBUF[11]),
        .O(\an4/co_2 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \result_reg[12]_LDC_i_7 
       (.I0(src2_IBUF[11]),
        .I1(\an3/a43/co_2 ),
        .I2(src1_IBUF[11]),
        .O(\an3/co_2 ));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[12]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[12]_LDC_i_1_n_0 ),
        .Q(\result_reg[12]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[13]_LDC 
       (.CLR(\result_reg[13]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[13]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[13]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[13]_LDC_i_1 
       (.I0(\result_reg[13]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[13]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[13]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[13]_LDC_i_3_n_0 ),
        .O(\result_reg[13]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[13]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[13]),
        .I4(\result_reg[13]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[13]_LDC_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[13]_LDC_i_4 
       (.I0(src1_IBUF[13]),
        .I1(src2_IBUF[13]),
        .O(result2[13]));
  LUT6 #(
    .INIT(64'h74338B008B007400)) 
    \result_reg[13]_LDC_i_5 
       (.I0(\an4/a44/co_0 ),
        .I1(ALU_control_IBUF[2]),
        .I2(\an3/a44/co_0 ),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[13]),
        .I5(src1_IBUF[13]),
        .O(\result_reg[13]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hB2FF00B2)) 
    \result_reg[13]_LDC_i_6 
       (.I0(src1_IBUF[11]),
        .I1(src2_IBUF[11]),
        .I2(\an4/a43/co_2 ),
        .I3(src2_IBUF[12]),
        .I4(src1_IBUF[12]),
        .O(\an4/a44/co_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \result_reg[13]_LDC_i_7 
       (.I0(src2_IBUF[12]),
        .I1(src1_IBUF[11]),
        .I2(\an3/a43/co_2 ),
        .I3(src2_IBUF[11]),
        .I4(src1_IBUF[12]),
        .O(\an3/a44/co_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[13]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[13]_LDC_i_1_n_0 ),
        .Q(\result_reg[13]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[14]_LDC 
       (.CLR(\result_reg[14]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[14]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[14]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[14]_LDC_i_1 
       (.I0(\result_reg[14]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[14]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[14]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[14]_LDC_i_3_n_0 ),
        .O(\result_reg[14]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[14]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[14]),
        .I4(\result_reg[14]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[14]_LDC_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[14]_LDC_i_4 
       (.I0(src1_IBUF[14]),
        .I1(src2_IBUF[14]),
        .O(result2[14]));
  LUT6 #(
    .INIT(64'hB833B800B800B800)) 
    \result_reg[14]_LDC_i_5 
       (.I0(\result_reg[14]_LDC_i_6_n_0 ),
        .I1(ALU_control_IBUF[2]),
        .I2(result3[14]),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[14]),
        .I5(src1_IBUF[14]),
        .O(\result_reg[14]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h69669969)) 
    \result_reg[14]_LDC_i_6 
       (.I0(src2_IBUF[14]),
        .I1(src1_IBUF[14]),
        .I2(\an4/a44/co_0 ),
        .I3(src2_IBUF[13]),
        .I4(src1_IBUF[13]),
        .O(\result_reg[14]_LDC_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \result_reg[14]_LDC_i_7 
       (.I0(src2_IBUF[14]),
        .I1(src1_IBUF[14]),
        .I2(src2_IBUF[13]),
        .I3(\an3/a44/co_0 ),
        .I4(src1_IBUF[13]),
        .O(result3[14]));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[14]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[14]_LDC_i_1_n_0 ),
        .Q(\result_reg[14]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[15]_LDC 
       (.CLR(\result_reg[15]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[15]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[15]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[15]_LDC_i_1 
       (.I0(\result_reg[15]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[15]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[15]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[15]_LDC_i_3_n_0 ),
        .O(\result_reg[15]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[15]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[15]),
        .I4(\result_reg[15]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[15]_LDC_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[15]_LDC_i_4 
       (.I0(src1_IBUF[15]),
        .I1(src2_IBUF[15]),
        .O(result2[15]));
  LUT6 #(
    .INIT(64'h74338B008B007400)) 
    \result_reg[15]_LDC_i_5 
       (.I0(\an4/a44/co_2 ),
        .I1(ALU_control_IBUF[2]),
        .I2(\an3/a44/co_2 ),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[15]),
        .I5(src1_IBUF[15]),
        .O(\result_reg[15]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hB2FF00B2)) 
    \result_reg[15]_LDC_i_6 
       (.I0(src1_IBUF[13]),
        .I1(src2_IBUF[13]),
        .I2(\an4/a44/co_0 ),
        .I3(src2_IBUF[14]),
        .I4(src1_IBUF[14]),
        .O(\an4/a44/co_2 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \result_reg[15]_LDC_i_7 
       (.I0(src2_IBUF[14]),
        .I1(src1_IBUF[13]),
        .I2(\an3/a44/co_0 ),
        .I3(src2_IBUF[13]),
        .I4(src1_IBUF[14]),
        .O(\an3/a44/co_2 ));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[15]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[15]_LDC_i_1_n_0 ),
        .Q(\result_reg[15]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[16]_LDC 
       (.CLR(\result_reg[16]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[16]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[16]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[16]_LDC_i_1 
       (.I0(\result_reg[16]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[16]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[16]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[16]_LDC_i_3_n_0 ),
        .O(\result_reg[16]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[16]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[16]),
        .I4(\result_reg[16]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[16]_LDC_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[16]_LDC_i_4 
       (.I0(src1_IBUF[16]),
        .I1(src2_IBUF[16]),
        .O(result2[16]));
  LUT6 #(
    .INIT(64'hB833B800B800B800)) 
    \result_reg[16]_LDC_i_5 
       (.I0(\result_reg[16]_LDC_i_6_n_0 ),
        .I1(ALU_control_IBUF[2]),
        .I2(result3[16]),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[16]),
        .I5(src1_IBUF[16]),
        .O(\result_reg[16]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h69669969)) 
    \result_reg[16]_LDC_i_6 
       (.I0(src2_IBUF[16]),
        .I1(src1_IBUF[16]),
        .I2(\an4/a44/co_2 ),
        .I3(src2_IBUF[15]),
        .I4(src1_IBUF[15]),
        .O(\result_reg[16]_LDC_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \result_reg[16]_LDC_i_7 
       (.I0(src2_IBUF[16]),
        .I1(src1_IBUF[16]),
        .I2(src2_IBUF[15]),
        .I3(\an3/a44/co_2 ),
        .I4(src1_IBUF[15]),
        .O(result3[16]));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[16]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[16]_LDC_i_1_n_0 ),
        .Q(\result_reg[16]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[17]_LDC 
       (.CLR(\result_reg[17]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[17]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[17]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[17]_LDC_i_1 
       (.I0(\result_reg[17]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[17]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[17]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[17]_LDC_i_3_n_0 ),
        .O(\result_reg[17]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[17]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[17]),
        .I4(\result_reg[17]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[17]_LDC_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[17]_LDC_i_4 
       (.I0(src1_IBUF[17]),
        .I1(src2_IBUF[17]),
        .O(result2[17]));
  LUT6 #(
    .INIT(64'h74338B008B007400)) 
    \result_reg[17]_LDC_i_5 
       (.I0(\an4/a45/co_0 ),
        .I1(ALU_control_IBUF[2]),
        .I2(\an3/a45/co_0 ),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[17]),
        .I5(src1_IBUF[17]),
        .O(\result_reg[17]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hB2FF00B2)) 
    \result_reg[17]_LDC_i_6 
       (.I0(src1_IBUF[15]),
        .I1(src2_IBUF[15]),
        .I2(\an4/a44/co_2 ),
        .I3(src2_IBUF[16]),
        .I4(src1_IBUF[16]),
        .O(\an4/a45/co_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \result_reg[17]_LDC_i_7 
       (.I0(src2_IBUF[16]),
        .I1(src1_IBUF[15]),
        .I2(\an3/a44/co_2 ),
        .I3(src2_IBUF[15]),
        .I4(src1_IBUF[16]),
        .O(\an3/a45/co_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[17]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[17]_LDC_i_1_n_0 ),
        .Q(\result_reg[17]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[18]_LDC 
       (.CLR(\result_reg[18]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[18]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[18]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[18]_LDC_i_1 
       (.I0(\result_reg[18]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[18]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[18]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[18]_LDC_i_3_n_0 ),
        .O(\result_reg[18]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[18]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[18]),
        .I4(\result_reg[18]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[18]_LDC_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[18]_LDC_i_4 
       (.I0(src1_IBUF[18]),
        .I1(src2_IBUF[18]),
        .O(result2[18]));
  LUT6 #(
    .INIT(64'h74338B008B007400)) 
    \result_reg[18]_LDC_i_5 
       (.I0(\an4/a45/co_1 ),
        .I1(ALU_control_IBUF[2]),
        .I2(\an3/a45/co_1 ),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[18]),
        .I5(src1_IBUF[18]),
        .O(\result_reg[18]_LDC_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \result_reg[18]_LDC_i_6 
       (.I0(\an4/a45/co_0 ),
        .I1(src2_IBUF[17]),
        .I2(src1_IBUF[17]),
        .O(\an4/a45/co_1 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \result_reg[18]_LDC_i_7 
       (.I0(src2_IBUF[17]),
        .I1(\an3/a45/co_0 ),
        .I2(src1_IBUF[17]),
        .O(\an3/a45/co_1 ));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[18]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[18]_LDC_i_1_n_0 ),
        .Q(\result_reg[18]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[19]_LDC 
       (.CLR(\result_reg[19]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[19]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[19]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[19]_LDC_i_1 
       (.I0(\result_reg[19]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[19]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[19]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[19]_LDC_i_3_n_0 ),
        .O(\result_reg[19]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[19]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[19]),
        .I4(\result_reg[19]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[19]_LDC_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[19]_LDC_i_4 
       (.I0(src1_IBUF[19]),
        .I1(src2_IBUF[19]),
        .O(result2[19]));
  LUT6 #(
    .INIT(64'h74338B008B007400)) 
    \result_reg[19]_LDC_i_5 
       (.I0(\an4/a45/co_2 ),
        .I1(ALU_control_IBUF[2]),
        .I2(\an3/a45/co_2 ),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[19]),
        .I5(src1_IBUF[19]),
        .O(\result_reg[19]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hB2FF00B2)) 
    \result_reg[19]_LDC_i_6 
       (.I0(src1_IBUF[17]),
        .I1(src2_IBUF[17]),
        .I2(\an4/a45/co_0 ),
        .I3(src2_IBUF[18]),
        .I4(src1_IBUF[18]),
        .O(\an4/a45/co_2 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \result_reg[19]_LDC_i_7 
       (.I0(src2_IBUF[18]),
        .I1(src1_IBUF[17]),
        .I2(\an3/a45/co_0 ),
        .I3(src2_IBUF[17]),
        .I4(src1_IBUF[18]),
        .O(\an3/a45/co_2 ));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[19]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[19]_LDC_i_1_n_0 ),
        .Q(\result_reg[19]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[1]_LDC 
       (.CLR(\result_reg[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[1]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[1]_LDC_i_1 
       (.I0(\result_reg[1]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[1]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[1]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[1]_LDC_i_3_n_0 ),
        .O(\result_reg[1]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[1]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[1]),
        .I4(\result_reg[1]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[1]_LDC_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[1]_LDC_i_4 
       (.I0(src1_IBUF[1]),
        .I1(src2_IBUF[1]),
        .O(result2[1]));
  LUT6 #(
    .INIT(64'h60559F009F006000)) 
    \result_reg[1]_LDC_i_5 
       (.I0(ALU_control_IBUF[2]),
        .I1(src1_IBUF[0]),
        .I2(src2_IBUF[0]),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[1]),
        .I5(src1_IBUF[1]),
        .O(\result_reg[1]_LDC_i_5_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[1]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[1]_LDC_i_1_n_0 ),
        .Q(\result_reg[1]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[20]_LDC 
       (.CLR(\result_reg[20]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[20]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[20]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[20]_LDC_i_1 
       (.I0(\result_reg[20]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[20]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[20]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[20]_LDC_i_3_n_0 ),
        .O(\result_reg[20]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[20]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[20]),
        .I4(\result_reg[20]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[20]_LDC_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[20]_LDC_i_4 
       (.I0(src1_IBUF[20]),
        .I1(src2_IBUF[20]),
        .O(result2[20]));
  LUT6 #(
    .INIT(64'hB833B800B800B800)) 
    \result_reg[20]_LDC_i_5 
       (.I0(\result_reg[20]_LDC_i_6_n_0 ),
        .I1(ALU_control_IBUF[2]),
        .I2(result3[20]),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[20]),
        .I5(src1_IBUF[20]),
        .O(\result_reg[20]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h69669969)) 
    \result_reg[20]_LDC_i_6 
       (.I0(src2_IBUF[20]),
        .I1(src1_IBUF[20]),
        .I2(\an4/a45/co_2 ),
        .I3(src2_IBUF[19]),
        .I4(src1_IBUF[19]),
        .O(\result_reg[20]_LDC_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \result_reg[20]_LDC_i_7 
       (.I0(src2_IBUF[20]),
        .I1(src1_IBUF[20]),
        .I2(src2_IBUF[19]),
        .I3(\an3/a45/co_2 ),
        .I4(src1_IBUF[19]),
        .O(result3[20]));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[20]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[20]_LDC_i_1_n_0 ),
        .Q(\result_reg[20]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[21]_LDC 
       (.CLR(\result_reg[21]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[21]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[21]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[21]_LDC_i_1 
       (.I0(\result_reg[21]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[21]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[21]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[21]_LDC_i_3_n_0 ),
        .O(\result_reg[21]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[21]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[21]),
        .I4(\result_reg[21]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[21]_LDC_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[21]_LDC_i_4 
       (.I0(src1_IBUF[21]),
        .I1(src2_IBUF[21]),
        .O(result2[21]));
  LUT6 #(
    .INIT(64'h74338B008B007400)) 
    \result_reg[21]_LDC_i_5 
       (.I0(\an4/a46/co_0 ),
        .I1(ALU_control_IBUF[2]),
        .I2(\an3/a46/co_0 ),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[21]),
        .I5(src1_IBUF[21]),
        .O(\result_reg[21]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hB2FF00B2)) 
    \result_reg[21]_LDC_i_6 
       (.I0(src1_IBUF[19]),
        .I1(src2_IBUF[19]),
        .I2(\an4/a45/co_2 ),
        .I3(src2_IBUF[20]),
        .I4(src1_IBUF[20]),
        .O(\an4/a46/co_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \result_reg[21]_LDC_i_7 
       (.I0(src2_IBUF[20]),
        .I1(src1_IBUF[19]),
        .I2(\an3/a45/co_2 ),
        .I3(src2_IBUF[19]),
        .I4(src1_IBUF[20]),
        .O(\an3/a46/co_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[21]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[21]_LDC_i_1_n_0 ),
        .Q(\result_reg[21]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[22]_LDC 
       (.CLR(\result_reg[22]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[22]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[22]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[22]_LDC_i_1 
       (.I0(\result_reg[22]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[22]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[22]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[22]_LDC_i_3_n_0 ),
        .O(\result_reg[22]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[22]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[22]),
        .I4(\result_reg[22]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[22]_LDC_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[22]_LDC_i_4 
       (.I0(src1_IBUF[22]),
        .I1(src2_IBUF[22]),
        .O(result2[22]));
  LUT6 #(
    .INIT(64'hB833B800B800B800)) 
    \result_reg[22]_LDC_i_5 
       (.I0(\result_reg[22]_LDC_i_6_n_0 ),
        .I1(ALU_control_IBUF[2]),
        .I2(result3[22]),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[22]),
        .I5(src1_IBUF[22]),
        .O(\result_reg[22]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h69669969)) 
    \result_reg[22]_LDC_i_6 
       (.I0(src2_IBUF[22]),
        .I1(src1_IBUF[22]),
        .I2(\an4/a46/co_0 ),
        .I3(src2_IBUF[21]),
        .I4(src1_IBUF[21]),
        .O(\result_reg[22]_LDC_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \result_reg[22]_LDC_i_7 
       (.I0(src2_IBUF[22]),
        .I1(src1_IBUF[22]),
        .I2(src2_IBUF[21]),
        .I3(\an3/a46/co_0 ),
        .I4(src1_IBUF[21]),
        .O(result3[22]));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[22]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[22]_LDC_i_1_n_0 ),
        .Q(\result_reg[22]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[23]_LDC 
       (.CLR(\result_reg[23]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[23]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[23]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[23]_LDC_i_1 
       (.I0(\result_reg[23]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[23]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[23]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[23]_LDC_i_3_n_0 ),
        .O(\result_reg[23]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[23]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[23]),
        .I4(\result_reg[23]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[23]_LDC_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[23]_LDC_i_4 
       (.I0(src1_IBUF[23]),
        .I1(src2_IBUF[23]),
        .O(result2[23]));
  LUT6 #(
    .INIT(64'h74338B008B007400)) 
    \result_reg[23]_LDC_i_5 
       (.I0(\an4/a46/co_2 ),
        .I1(ALU_control_IBUF[2]),
        .I2(\an3/a46/co_2 ),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[23]),
        .I5(src1_IBUF[23]),
        .O(\result_reg[23]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hB2FF00B2)) 
    \result_reg[23]_LDC_i_6 
       (.I0(src1_IBUF[21]),
        .I1(src2_IBUF[21]),
        .I2(\an4/a46/co_0 ),
        .I3(src2_IBUF[22]),
        .I4(src1_IBUF[22]),
        .O(\an4/a46/co_2 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \result_reg[23]_LDC_i_7 
       (.I0(src2_IBUF[22]),
        .I1(src1_IBUF[21]),
        .I2(\an3/a46/co_0 ),
        .I3(src2_IBUF[21]),
        .I4(src1_IBUF[22]),
        .O(\an3/a46/co_2 ));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[23]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[23]_LDC_i_1_n_0 ),
        .Q(\result_reg[23]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[24]_LDC 
       (.CLR(\result_reg[24]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[24]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[24]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[24]_LDC_i_1 
       (.I0(\result_reg[24]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[24]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[24]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[24]_LDC_i_3_n_0 ),
        .O(\result_reg[24]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[24]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[24]),
        .I4(\result_reg[24]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[24]_LDC_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[24]_LDC_i_4 
       (.I0(src1_IBUF[24]),
        .I1(src2_IBUF[24]),
        .O(result2[24]));
  LUT6 #(
    .INIT(64'h74338B008B007400)) 
    \result_reg[24]_LDC_i_5 
       (.I0(\an4/co_5 ),
        .I1(ALU_control_IBUF[2]),
        .I2(\an3/co_5 ),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[24]),
        .I5(src1_IBUF[24]),
        .O(\result_reg[24]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \result_reg[24]_LDC_i_6 
       (.I0(\an4/a46/co_2 ),
        .I1(src2_IBUF[23]),
        .I2(src1_IBUF[23]),
        .O(\an4/co_5 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \result_reg[24]_LDC_i_7 
       (.I0(src2_IBUF[23]),
        .I1(\an3/a46/co_2 ),
        .I2(src1_IBUF[23]),
        .O(\an3/co_5 ));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[24]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[24]_LDC_i_1_n_0 ),
        .Q(\result_reg[24]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[25]_LDC 
       (.CLR(\result_reg[25]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[25]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[25]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[25]_LDC_i_1 
       (.I0(\result_reg[25]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[25]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[25]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[25]_LDC_i_3_n_0 ),
        .O(\result_reg[25]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[25]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[25]),
        .I4(\result_reg[25]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[25]_LDC_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[25]_LDC_i_4 
       (.I0(src1_IBUF[25]),
        .I1(src2_IBUF[25]),
        .O(result2[25]));
  LUT6 #(
    .INIT(64'h74338B008B007400)) 
    \result_reg[25]_LDC_i_5 
       (.I0(\an4/a47/co_0 ),
        .I1(ALU_control_IBUF[2]),
        .I2(\an3/a47/co_0 ),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[25]),
        .I5(src1_IBUF[25]),
        .O(\result_reg[25]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hB2FF00B2)) 
    \result_reg[25]_LDC_i_6 
       (.I0(src1_IBUF[23]),
        .I1(src2_IBUF[23]),
        .I2(\an4/a46/co_2 ),
        .I3(src2_IBUF[24]),
        .I4(src1_IBUF[24]),
        .O(\an4/a47/co_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \result_reg[25]_LDC_i_7 
       (.I0(src2_IBUF[24]),
        .I1(src1_IBUF[23]),
        .I2(\an3/a46/co_2 ),
        .I3(src2_IBUF[23]),
        .I4(src1_IBUF[24]),
        .O(\an3/a47/co_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[25]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[25]_LDC_i_1_n_0 ),
        .Q(\result_reg[25]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[26]_LDC 
       (.CLR(\result_reg[26]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[26]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[26]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[26]_LDC_i_1 
       (.I0(\result_reg[26]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[26]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[26]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[26]_LDC_i_3_n_0 ),
        .O(\result_reg[26]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[26]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[26]),
        .I4(\result_reg[26]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[26]_LDC_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[26]_LDC_i_4 
       (.I0(src1_IBUF[26]),
        .I1(src2_IBUF[26]),
        .O(result2[26]));
  LUT6 #(
    .INIT(64'hB833B800B800B800)) 
    \result_reg[26]_LDC_i_5 
       (.I0(\result_reg[26]_LDC_i_6_n_0 ),
        .I1(ALU_control_IBUF[2]),
        .I2(result3[26]),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[26]),
        .I5(src1_IBUF[26]),
        .O(\result_reg[26]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h69669969)) 
    \result_reg[26]_LDC_i_6 
       (.I0(src2_IBUF[26]),
        .I1(src1_IBUF[26]),
        .I2(\an4/a47/co_0 ),
        .I3(src2_IBUF[25]),
        .I4(src1_IBUF[25]),
        .O(\result_reg[26]_LDC_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \result_reg[26]_LDC_i_7 
       (.I0(src2_IBUF[26]),
        .I1(src1_IBUF[26]),
        .I2(src2_IBUF[25]),
        .I3(\an3/a47/co_0 ),
        .I4(src1_IBUF[25]),
        .O(result3[26]));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[26]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[26]_LDC_i_1_n_0 ),
        .Q(\result_reg[26]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[27]_LDC 
       (.CLR(\result_reg[27]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[27]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[27]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[27]_LDC_i_1 
       (.I0(\result_reg[27]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[27]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[27]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[27]_LDC_i_3_n_0 ),
        .O(\result_reg[27]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[27]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[27]),
        .I4(\result_reg[27]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[27]_LDC_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[27]_LDC_i_4 
       (.I0(src1_IBUF[27]),
        .I1(src2_IBUF[27]),
        .O(result2[27]));
  LUT6 #(
    .INIT(64'h74338B008B007400)) 
    \result_reg[27]_LDC_i_5 
       (.I0(\an4/a47/co_2 ),
        .I1(ALU_control_IBUF[2]),
        .I2(\an3/a47/co_2 ),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[27]),
        .I5(src1_IBUF[27]),
        .O(\result_reg[27]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hB2FF00B2)) 
    \result_reg[27]_LDC_i_6 
       (.I0(src1_IBUF[25]),
        .I1(src2_IBUF[25]),
        .I2(\an4/a47/co_0 ),
        .I3(src2_IBUF[26]),
        .I4(src1_IBUF[26]),
        .O(\an4/a47/co_2 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \result_reg[27]_LDC_i_7 
       (.I0(src2_IBUF[26]),
        .I1(src1_IBUF[25]),
        .I2(\an3/a47/co_0 ),
        .I3(src2_IBUF[25]),
        .I4(src1_IBUF[26]),
        .O(\an3/a47/co_2 ));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[27]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[27]_LDC_i_1_n_0 ),
        .Q(\result_reg[27]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[28]_LDC 
       (.CLR(\result_reg[28]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[28]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[28]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[28]_LDC_i_1 
       (.I0(\result_reg[28]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[28]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[28]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[28]_LDC_i_3_n_0 ),
        .O(\result_reg[28]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[28]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[28]),
        .I4(\result_reg[28]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[28]_LDC_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[28]_LDC_i_4 
       (.I0(src1_IBUF[28]),
        .I1(src2_IBUF[28]),
        .O(result2[28]));
  LUT6 #(
    .INIT(64'hB833B800B800B800)) 
    \result_reg[28]_LDC_i_5 
       (.I0(\result_reg[28]_LDC_i_6_n_0 ),
        .I1(ALU_control_IBUF[2]),
        .I2(result3[28]),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[28]),
        .I5(src1_IBUF[28]),
        .O(\result_reg[28]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h69669969)) 
    \result_reg[28]_LDC_i_6 
       (.I0(src2_IBUF[28]),
        .I1(src1_IBUF[28]),
        .I2(\an4/a47/co_2 ),
        .I3(src2_IBUF[27]),
        .I4(src1_IBUF[27]),
        .O(\result_reg[28]_LDC_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \result_reg[28]_LDC_i_7 
       (.I0(src2_IBUF[28]),
        .I1(src1_IBUF[28]),
        .I2(src2_IBUF[27]),
        .I3(\an3/a47/co_2 ),
        .I4(src1_IBUF[27]),
        .O(result3[28]));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[28]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[28]_LDC_i_1_n_0 ),
        .Q(\result_reg[28]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[29]_LDC 
       (.CLR(\result_reg[29]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[29]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[29]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[29]_LDC_i_1 
       (.I0(\result_reg[29]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[29]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[29]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[29]_LDC_i_3_n_0 ),
        .O(\result_reg[29]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[29]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[29]),
        .I4(\result_reg[29]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[29]_LDC_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[29]_LDC_i_4 
       (.I0(src1_IBUF[29]),
        .I1(src2_IBUF[29]),
        .O(result2[29]));
  LUT6 #(
    .INIT(64'h74338B008B007400)) 
    \result_reg[29]_LDC_i_5 
       (.I0(\an4/a48/co_0 ),
        .I1(ALU_control_IBUF[2]),
        .I2(\an3/a48/co_0 ),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[29]),
        .I5(src1_IBUF[29]),
        .O(\result_reg[29]_LDC_i_5_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[29]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[29]_LDC_i_1_n_0 ),
        .Q(\result_reg[29]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[2]_LDC 
       (.CLR(\result_reg[2]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[2]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[2]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[2]_LDC_i_1 
       (.I0(\result_reg[2]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[2]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[2]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[2]_LDC_i_3_n_0 ),
        .O(\result_reg[2]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[2]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[2]),
        .I4(\result_reg[2]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[2]_LDC_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[2]_LDC_i_4 
       (.I0(src1_IBUF[2]),
        .I1(src2_IBUF[2]),
        .O(result2[2]));
  LUT6 #(
    .INIT(64'hB833B800B800B800)) 
    \result_reg[2]_LDC_i_5 
       (.I0(\result_reg[2]_LDC_i_6_n_0 ),
        .I1(ALU_control_IBUF[2]),
        .I2(result3[2]),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[2]),
        .I5(src1_IBUF[2]),
        .O(\result_reg[2]_LDC_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6966666699996966)) 
    \result_reg[2]_LDC_i_6 
       (.I0(src2_IBUF[2]),
        .I1(src1_IBUF[2]),
        .I2(src1_IBUF[0]),
        .I3(src2_IBUF[0]),
        .I4(src2_IBUF[1]),
        .I5(src1_IBUF[1]),
        .O(\result_reg[2]_LDC_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9996969696666666)) 
    \result_reg[2]_LDC_i_7 
       (.I0(src2_IBUF[2]),
        .I1(src1_IBUF[2]),
        .I2(src2_IBUF[1]),
        .I3(src2_IBUF[0]),
        .I4(src1_IBUF[0]),
        .I5(src1_IBUF[1]),
        .O(result3[2]));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[2]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[2]_LDC_i_1_n_0 ),
        .Q(\result_reg[2]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[30]_LDC 
       (.CLR(\result_reg[30]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[30]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[30]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h00000000005D335D)) 
    \result_reg[30]_LDC_i_1 
       (.I0(\result_reg[30]_LDC_i_3_n_0 ),
        .I1(result2[30]),
        .I2(\result_reg[30]_LDC_i_5_n_0 ),
        .I3(ALU_control_IBUF[3]),
        .I4(\result_reg[30]_LDC_i_6_n_0 ),
        .I5(rst_n_IBUF),
        .O(\result_reg[30]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555440450504404)) 
    \result_reg[30]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[30]_LDC_i_3_n_0 ),
        .I2(result2[30]),
        .I3(\result_reg[30]_LDC_i_5_n_0 ),
        .I4(ALU_control_IBUF[3]),
        .I5(\result_reg[30]_LDC_i_6_n_0 ),
        .O(\result_reg[30]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFABFBFFFFABFB)) 
    \result_reg[30]_LDC_i_3 
       (.I0(ALU_control_IBUF[0]),
        .I1(result1),
        .I2(ALU_control_IBUF[1]),
        .I3(result3[30]),
        .I4(ALU_control_IBUF[2]),
        .I5(\result_reg[30]_LDC_i_9_n_0 ),
        .O(\result_reg[30]_LDC_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[30]_LDC_i_4 
       (.I0(src1_IBUF[30]),
        .I1(src2_IBUF[30]),
        .O(result2[30]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \result_reg[30]_LDC_i_5 
       (.I0(ALU_control_IBUF[1]),
        .I1(ALU_control_IBUF[2]),
        .I2(ALU_control_IBUF[0]),
        .O(\result_reg[30]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \result_reg[30]_LDC_i_6 
       (.I0(ALU_control_IBUF[0]),
        .I1(ALU_control_IBUF[2]),
        .I2(ALU_control_IBUF[1]),
        .O(\result_reg[30]_LDC_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[30]_LDC_i_7 
       (.I0(src2_IBUF[30]),
        .I1(src1_IBUF[30]),
        .O(result1));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \result_reg[30]_LDC_i_8 
       (.I0(src2_IBUF[30]),
        .I1(src1_IBUF[30]),
        .I2(src2_IBUF[29]),
        .I3(\an3/a48/co_0 ),
        .I4(src1_IBUF[29]),
        .O(result3[30]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h69669969)) 
    \result_reg[30]_LDC_i_9 
       (.I0(src2_IBUF[30]),
        .I1(src1_IBUF[30]),
        .I2(\an4/a48/co_0 ),
        .I3(src2_IBUF[29]),
        .I4(src1_IBUF[29]),
        .O(\result_reg[30]_LDC_i_9_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[30]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[30]_LDC_i_1_n_0 ),
        .Q(\result_reg[30]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[31]_LDC 
       (.CLR(\result_reg[31]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[31]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[31]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF400F4)) 
    \result_reg[31]_LDC_i_1 
       (.I0(ALU_control_IBUF[0]),
        .I1(\result_reg[31]_LDC_i_3_n_0 ),
        .I2(\result_reg[31]_LDC_i_4_n_0 ),
        .I3(ALU_control_IBUF[3]),
        .I4(\result_reg[31]_LDC_i_5_n_0 ),
        .I5(rst_n_IBUF),
        .O(\result_reg[31]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000004555550045)) 
    \result_reg[31]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(ALU_control_IBUF[0]),
        .I2(\result_reg[31]_LDC_i_3_n_0 ),
        .I3(\result_reg[31]_LDC_i_4_n_0 ),
        .I4(ALU_control_IBUF[3]),
        .I5(\result_reg[31]_LDC_i_5_n_0 ),
        .O(\result_reg[31]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h74338B008B007400)) 
    \result_reg[31]_LDC_i_3 
       (.I0(\an4/a48/co_2 ),
        .I1(ALU_control_IBUF[2]),
        .I2(\an3/a48/co_2 ),
        .I3(ALU_control_IBUF[1]),
        .I4(src1_IBUF[31]),
        .I5(src2_IBUF[31]),
        .O(\result_reg[31]_LDC_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h000000E0)) 
    \result_reg[31]_LDC_i_4 
       (.I0(src2_IBUF[31]),
        .I1(src1_IBUF[31]),
        .I2(ALU_control_IBUF[0]),
        .I3(ALU_control_IBUF[2]),
        .I4(ALU_control_IBUF[1]),
        .O(\result_reg[31]_LDC_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \result_reg[31]_LDC_i_5 
       (.I0(src1_IBUF[31]),
        .I1(src2_IBUF[31]),
        .I2(ALU_control_IBUF[1]),
        .I3(ALU_control_IBUF[2]),
        .I4(ALU_control_IBUF[0]),
        .O(\result_reg[31]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hB2FF00B2)) 
    \result_reg[31]_LDC_i_6 
       (.I0(src1_IBUF[29]),
        .I1(src2_IBUF[29]),
        .I2(\an4/a48/co_0 ),
        .I3(src2_IBUF[30]),
        .I4(src1_IBUF[30]),
        .O(\an4/a48/co_2 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \result_reg[31]_LDC_i_7 
       (.I0(src2_IBUF[30]),
        .I1(src1_IBUF[29]),
        .I2(\an3/a48/co_0 ),
        .I3(src2_IBUF[29]),
        .I4(src1_IBUF[30]),
        .O(\an3/a48/co_2 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hB2FF00B2)) 
    \result_reg[31]_LDC_i_8 
       (.I0(src1_IBUF[27]),
        .I1(src2_IBUF[27]),
        .I2(\an4/a47/co_2 ),
        .I3(src2_IBUF[28]),
        .I4(src1_IBUF[28]),
        .O(\an4/a48/co_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \result_reg[31]_LDC_i_9 
       (.I0(src2_IBUF[28]),
        .I1(src1_IBUF[27]),
        .I2(\an3/a47/co_2 ),
        .I3(src2_IBUF[27]),
        .I4(src1_IBUF[28]),
        .O(\an3/a48/co_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[31]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[31]_LDC_i_1_n_0 ),
        .Q(\result_reg[31]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[3]_LDC 
       (.CLR(\result_reg[3]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[3]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[3]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[3]_LDC_i_1 
       (.I0(\result_reg[3]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[3]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[3]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[3]_LDC_i_3_n_0 ),
        .O(\result_reg[3]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[3]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[3]),
        .I4(\result_reg[3]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[3]_LDC_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[3]_LDC_i_4 
       (.I0(src1_IBUF[3]),
        .I1(src2_IBUF[3]),
        .O(result2[3]));
  LUT6 #(
    .INIT(64'h74338B008B007400)) 
    \result_reg[3]_LDC_i_5 
       (.I0(\an4/a41/co_2 ),
        .I1(ALU_control_IBUF[2]),
        .I2(\an3/a41/co_2 ),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[3]),
        .I5(src1_IBUF[3]),
        .O(\result_reg[3]_LDC_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBB2BFFFF0000BB2B)) 
    \result_reg[3]_LDC_i_6 
       (.I0(src1_IBUF[1]),
        .I1(src2_IBUF[1]),
        .I2(src2_IBUF[0]),
        .I3(src1_IBUF[0]),
        .I4(src2_IBUF[2]),
        .I5(src1_IBUF[2]),
        .O(\an4/a41/co_2 ));
  LUT6 #(
    .INIT(64'hFEEEEAAAA8888000)) 
    \result_reg[3]_LDC_i_7 
       (.I0(src2_IBUF[2]),
        .I1(src1_IBUF[1]),
        .I2(src1_IBUF[0]),
        .I3(src2_IBUF[0]),
        .I4(src2_IBUF[1]),
        .I5(src1_IBUF[2]),
        .O(\an3/a41/co_2 ));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[3]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[3]_LDC_i_1_n_0 ),
        .Q(\result_reg[3]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[4]_LDC 
       (.CLR(\result_reg[4]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[4]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[4]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[4]_LDC_i_1 
       (.I0(\result_reg[4]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[4]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[4]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[4]_LDC_i_3_n_0 ),
        .O(\result_reg[4]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[4]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[4]),
        .I4(\result_reg[4]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[4]_LDC_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[4]_LDC_i_4 
       (.I0(src1_IBUF[4]),
        .I1(src2_IBUF[4]),
        .O(result2[4]));
  LUT6 #(
    .INIT(64'hB833B800B800B800)) 
    \result_reg[4]_LDC_i_5 
       (.I0(\result_reg[4]_LDC_i_6_n_0 ),
        .I1(ALU_control_IBUF[2]),
        .I2(result3[4]),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[4]),
        .I5(src1_IBUF[4]),
        .O(\result_reg[4]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h69669969)) 
    \result_reg[4]_LDC_i_6 
       (.I0(src2_IBUF[4]),
        .I1(src1_IBUF[4]),
        .I2(\an4/a41/co_2 ),
        .I3(src2_IBUF[3]),
        .I4(src1_IBUF[3]),
        .O(\result_reg[4]_LDC_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \result_reg[4]_LDC_i_7 
       (.I0(src2_IBUF[4]),
        .I1(src1_IBUF[4]),
        .I2(src2_IBUF[3]),
        .I3(\an3/a41/co_2 ),
        .I4(src1_IBUF[3]),
        .O(result3[4]));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[4]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[4]_LDC_i_1_n_0 ),
        .Q(\result_reg[4]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[5]_LDC 
       (.CLR(\result_reg[5]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[5]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[5]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[5]_LDC_i_1 
       (.I0(\result_reg[5]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[5]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[5]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[5]_LDC_i_3_n_0 ),
        .O(\result_reg[5]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[5]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[5]),
        .I4(\result_reg[5]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[5]_LDC_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[5]_LDC_i_4 
       (.I0(src1_IBUF[5]),
        .I1(src2_IBUF[5]),
        .O(result2[5]));
  LUT6 #(
    .INIT(64'h74338B008B007400)) 
    \result_reg[5]_LDC_i_5 
       (.I0(\an4/a42/co_0 ),
        .I1(ALU_control_IBUF[2]),
        .I2(\an3/a42/co_0 ),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[5]),
        .I5(src1_IBUF[5]),
        .O(\result_reg[5]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hB2FF00B2)) 
    \result_reg[5]_LDC_i_6 
       (.I0(src1_IBUF[3]),
        .I1(src2_IBUF[3]),
        .I2(\an4/a41/co_2 ),
        .I3(src2_IBUF[4]),
        .I4(src1_IBUF[4]),
        .O(\an4/a42/co_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \result_reg[5]_LDC_i_7 
       (.I0(src2_IBUF[4]),
        .I1(src1_IBUF[3]),
        .I2(\an3/a41/co_2 ),
        .I3(src2_IBUF[3]),
        .I4(src1_IBUF[4]),
        .O(\an3/a42/co_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[5]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[5]_LDC_i_1_n_0 ),
        .Q(\result_reg[5]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[6]_LDC 
       (.CLR(\result_reg[6]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[6]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[6]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[6]_LDC_i_1 
       (.I0(\result_reg[6]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[6]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[6]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[6]_LDC_i_3_n_0 ),
        .O(\result_reg[6]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[6]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[6]),
        .I4(\result_reg[6]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[6]_LDC_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[6]_LDC_i_4 
       (.I0(src1_IBUF[6]),
        .I1(src2_IBUF[6]),
        .O(result2[6]));
  LUT6 #(
    .INIT(64'h74338B008B007400)) 
    \result_reg[6]_LDC_i_5 
       (.I0(\an4/a42/co_1 ),
        .I1(ALU_control_IBUF[2]),
        .I2(\an3/a42/co_1 ),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[6]),
        .I5(src1_IBUF[6]),
        .O(\result_reg[6]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \result_reg[6]_LDC_i_6 
       (.I0(\an4/a42/co_0 ),
        .I1(src2_IBUF[5]),
        .I2(src1_IBUF[5]),
        .O(\an4/a42/co_1 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \result_reg[6]_LDC_i_7 
       (.I0(src2_IBUF[5]),
        .I1(\an3/a42/co_0 ),
        .I2(src1_IBUF[5]),
        .O(\an3/a42/co_1 ));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[6]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[6]_LDC_i_1_n_0 ),
        .Q(\result_reg[6]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[7]_LDC 
       (.CLR(\result_reg[7]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[7]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[7]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[7]_LDC_i_1 
       (.I0(\result_reg[7]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[7]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[7]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[7]_LDC_i_3_n_0 ),
        .O(\result_reg[7]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[7]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[7]),
        .I4(\result_reg[7]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[7]_LDC_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[7]_LDC_i_4 
       (.I0(src1_IBUF[7]),
        .I1(src2_IBUF[7]),
        .O(result2[7]));
  LUT6 #(
    .INIT(64'h74338B008B007400)) 
    \result_reg[7]_LDC_i_5 
       (.I0(\an4/a42/co_2 ),
        .I1(ALU_control_IBUF[2]),
        .I2(\an3/a42/co_2 ),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[7]),
        .I5(src1_IBUF[7]),
        .O(\result_reg[7]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hB2FF00B2)) 
    \result_reg[7]_LDC_i_6 
       (.I0(src1_IBUF[5]),
        .I1(src2_IBUF[5]),
        .I2(\an4/a42/co_0 ),
        .I3(src2_IBUF[6]),
        .I4(src1_IBUF[6]),
        .O(\an4/a42/co_2 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \result_reg[7]_LDC_i_7 
       (.I0(src2_IBUF[6]),
        .I1(src1_IBUF[5]),
        .I2(\an3/a42/co_0 ),
        .I3(src2_IBUF[5]),
        .I4(src1_IBUF[6]),
        .O(\an3/a42/co_2 ));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[7]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[7]_LDC_i_1_n_0 ),
        .Q(\result_reg[7]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[8]_LDC 
       (.CLR(\result_reg[8]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[8]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[8]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[8]_LDC_i_1 
       (.I0(\result_reg[8]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[8]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[8]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[8]_LDC_i_3_n_0 ),
        .O(\result_reg[8]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[8]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[8]),
        .I4(\result_reg[8]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[8]_LDC_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[8]_LDC_i_4 
       (.I0(src1_IBUF[8]),
        .I1(src2_IBUF[8]),
        .O(result2[8]));
  LUT6 #(
    .INIT(64'hB833B800B800B800)) 
    \result_reg[8]_LDC_i_5 
       (.I0(\result_reg[8]_LDC_i_6_n_0 ),
        .I1(ALU_control_IBUF[2]),
        .I2(result3[8]),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[8]),
        .I5(src1_IBUF[8]),
        .O(\result_reg[8]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h69669969)) 
    \result_reg[8]_LDC_i_6 
       (.I0(src2_IBUF[8]),
        .I1(src1_IBUF[8]),
        .I2(\an4/a42/co_2 ),
        .I3(src2_IBUF[7]),
        .I4(src1_IBUF[7]),
        .O(\result_reg[8]_LDC_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \result_reg[8]_LDC_i_7 
       (.I0(src2_IBUF[8]),
        .I1(src1_IBUF[8]),
        .I2(src2_IBUF[7]),
        .I3(\an3/a42/co_2 ),
        .I4(src1_IBUF[7]),
        .O(result3[8]));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[8]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[8]_LDC_i_1_n_0 ),
        .Q(\result_reg[8]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[9]_LDC 
       (.CLR(\result_reg[9]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[9]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[9]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[9]_LDC_i_1 
       (.I0(\result_reg[9]_LDC_i_3_n_0 ),
        .I1(rst_n_IBUF),
        .O(\result_reg[9]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_reg[9]_LDC_i_2 
       (.I0(rst_n_IBUF),
        .I1(\result_reg[9]_LDC_i_3_n_0 ),
        .O(\result_reg[9]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010055750020)) 
    \result_reg[9]_LDC_i_3 
       (.I0(ALU_control_IBUF[3]),
        .I1(ALU_control_IBUF[1]),
        .I2(ALU_control_IBUF[2]),
        .I3(result2[9]),
        .I4(\result_reg[9]_LDC_i_5_n_0 ),
        .I5(ALU_control_IBUF[0]),
        .O(\result_reg[9]_LDC_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_reg[9]_LDC_i_4 
       (.I0(src1_IBUF[9]),
        .I1(src2_IBUF[9]),
        .O(result2[9]));
  LUT6 #(
    .INIT(64'h74338B008B007400)) 
    \result_reg[9]_LDC_i_5 
       (.I0(\an4/a43/co_0 ),
        .I1(ALU_control_IBUF[2]),
        .I2(\an3/a43/co_0 ),
        .I3(ALU_control_IBUF[1]),
        .I4(src2_IBUF[9]),
        .I5(src1_IBUF[9]),
        .O(\result_reg[9]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hB2FF00B2)) 
    \result_reg[9]_LDC_i_6 
       (.I0(src1_IBUF[7]),
        .I1(src2_IBUF[7]),
        .I2(\an4/a42/co_2 ),
        .I3(src2_IBUF[8]),
        .I4(src1_IBUF[8]),
        .O(\an4/a43/co_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \result_reg[9]_LDC_i_7 
       (.I0(src2_IBUF[8]),
        .I1(src1_IBUF[7]),
        .I2(\an3/a42/co_2 ),
        .I3(src2_IBUF[7]),
        .I4(src1_IBUF[8]),
        .O(\an3/a43/co_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \result_reg[9]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\result_reg[9]_LDC_i_1_n_0 ),
        .Q(\result_reg[9]_P_n_0 ));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  IBUF \src1_IBUF[0]_inst 
       (.I(src1[0]),
        .O(src1_IBUF[0]));
  IBUF \src1_IBUF[10]_inst 
       (.I(src1[10]),
        .O(src1_IBUF[10]));
  IBUF \src1_IBUF[11]_inst 
       (.I(src1[11]),
        .O(src1_IBUF[11]));
  IBUF \src1_IBUF[12]_inst 
       (.I(src1[12]),
        .O(src1_IBUF[12]));
  IBUF \src1_IBUF[13]_inst 
       (.I(src1[13]),
        .O(src1_IBUF[13]));
  IBUF \src1_IBUF[14]_inst 
       (.I(src1[14]),
        .O(src1_IBUF[14]));
  IBUF \src1_IBUF[15]_inst 
       (.I(src1[15]),
        .O(src1_IBUF[15]));
  IBUF \src1_IBUF[16]_inst 
       (.I(src1[16]),
        .O(src1_IBUF[16]));
  IBUF \src1_IBUF[17]_inst 
       (.I(src1[17]),
        .O(src1_IBUF[17]));
  IBUF \src1_IBUF[18]_inst 
       (.I(src1[18]),
        .O(src1_IBUF[18]));
  IBUF \src1_IBUF[19]_inst 
       (.I(src1[19]),
        .O(src1_IBUF[19]));
  IBUF \src1_IBUF[1]_inst 
       (.I(src1[1]),
        .O(src1_IBUF[1]));
  IBUF \src1_IBUF[20]_inst 
       (.I(src1[20]),
        .O(src1_IBUF[20]));
  IBUF \src1_IBUF[21]_inst 
       (.I(src1[21]),
        .O(src1_IBUF[21]));
  IBUF \src1_IBUF[22]_inst 
       (.I(src1[22]),
        .O(src1_IBUF[22]));
  IBUF \src1_IBUF[23]_inst 
       (.I(src1[23]),
        .O(src1_IBUF[23]));
  IBUF \src1_IBUF[24]_inst 
       (.I(src1[24]),
        .O(src1_IBUF[24]));
  IBUF \src1_IBUF[25]_inst 
       (.I(src1[25]),
        .O(src1_IBUF[25]));
  IBUF \src1_IBUF[26]_inst 
       (.I(src1[26]),
        .O(src1_IBUF[26]));
  IBUF \src1_IBUF[27]_inst 
       (.I(src1[27]),
        .O(src1_IBUF[27]));
  IBUF \src1_IBUF[28]_inst 
       (.I(src1[28]),
        .O(src1_IBUF[28]));
  IBUF \src1_IBUF[29]_inst 
       (.I(src1[29]),
        .O(src1_IBUF[29]));
  IBUF \src1_IBUF[2]_inst 
       (.I(src1[2]),
        .O(src1_IBUF[2]));
  IBUF \src1_IBUF[30]_inst 
       (.I(src1[30]),
        .O(src1_IBUF[30]));
  IBUF \src1_IBUF[31]_inst 
       (.I(src1[31]),
        .O(src1_IBUF[31]));
  IBUF \src1_IBUF[3]_inst 
       (.I(src1[3]),
        .O(src1_IBUF[3]));
  IBUF \src1_IBUF[4]_inst 
       (.I(src1[4]),
        .O(src1_IBUF[4]));
  IBUF \src1_IBUF[5]_inst 
       (.I(src1[5]),
        .O(src1_IBUF[5]));
  IBUF \src1_IBUF[6]_inst 
       (.I(src1[6]),
        .O(src1_IBUF[6]));
  IBUF \src1_IBUF[7]_inst 
       (.I(src1[7]),
        .O(src1_IBUF[7]));
  IBUF \src1_IBUF[8]_inst 
       (.I(src1[8]),
        .O(src1_IBUF[8]));
  IBUF \src1_IBUF[9]_inst 
       (.I(src1[9]),
        .O(src1_IBUF[9]));
  IBUF \src2_IBUF[0]_inst 
       (.I(src2[0]),
        .O(src2_IBUF[0]));
  IBUF \src2_IBUF[10]_inst 
       (.I(src2[10]),
        .O(src2_IBUF[10]));
  IBUF \src2_IBUF[11]_inst 
       (.I(src2[11]),
        .O(src2_IBUF[11]));
  IBUF \src2_IBUF[12]_inst 
       (.I(src2[12]),
        .O(src2_IBUF[12]));
  IBUF \src2_IBUF[13]_inst 
       (.I(src2[13]),
        .O(src2_IBUF[13]));
  IBUF \src2_IBUF[14]_inst 
       (.I(src2[14]),
        .O(src2_IBUF[14]));
  IBUF \src2_IBUF[15]_inst 
       (.I(src2[15]),
        .O(src2_IBUF[15]));
  IBUF \src2_IBUF[16]_inst 
       (.I(src2[16]),
        .O(src2_IBUF[16]));
  IBUF \src2_IBUF[17]_inst 
       (.I(src2[17]),
        .O(src2_IBUF[17]));
  IBUF \src2_IBUF[18]_inst 
       (.I(src2[18]),
        .O(src2_IBUF[18]));
  IBUF \src2_IBUF[19]_inst 
       (.I(src2[19]),
        .O(src2_IBUF[19]));
  IBUF \src2_IBUF[1]_inst 
       (.I(src2[1]),
        .O(src2_IBUF[1]));
  IBUF \src2_IBUF[20]_inst 
       (.I(src2[20]),
        .O(src2_IBUF[20]));
  IBUF \src2_IBUF[21]_inst 
       (.I(src2[21]),
        .O(src2_IBUF[21]));
  IBUF \src2_IBUF[22]_inst 
       (.I(src2[22]),
        .O(src2_IBUF[22]));
  IBUF \src2_IBUF[23]_inst 
       (.I(src2[23]),
        .O(src2_IBUF[23]));
  IBUF \src2_IBUF[24]_inst 
       (.I(src2[24]),
        .O(src2_IBUF[24]));
  IBUF \src2_IBUF[25]_inst 
       (.I(src2[25]),
        .O(src2_IBUF[25]));
  IBUF \src2_IBUF[26]_inst 
       (.I(src2[26]),
        .O(src2_IBUF[26]));
  IBUF \src2_IBUF[27]_inst 
       (.I(src2[27]),
        .O(src2_IBUF[27]));
  IBUF \src2_IBUF[28]_inst 
       (.I(src2[28]),
        .O(src2_IBUF[28]));
  IBUF \src2_IBUF[29]_inst 
       (.I(src2[29]),
        .O(src2_IBUF[29]));
  IBUF \src2_IBUF[2]_inst 
       (.I(src2[2]),
        .O(src2_IBUF[2]));
  IBUF \src2_IBUF[30]_inst 
       (.I(src2[30]),
        .O(src2_IBUF[30]));
  IBUF \src2_IBUF[31]_inst 
       (.I(src2[31]),
        .O(src2_IBUF[31]));
  IBUF \src2_IBUF[3]_inst 
       (.I(src2[3]),
        .O(src2_IBUF[3]));
  IBUF \src2_IBUF[4]_inst 
       (.I(src2[4]),
        .O(src2_IBUF[4]));
  IBUF \src2_IBUF[5]_inst 
       (.I(src2[5]),
        .O(src2_IBUF[5]));
  IBUF \src2_IBUF[6]_inst 
       (.I(src2[6]),
        .O(src2_IBUF[6]));
  IBUF \src2_IBUF[7]_inst 
       (.I(src2[7]),
        .O(src2_IBUF[7]));
  IBUF \src2_IBUF[8]_inst 
       (.I(src2[8]),
        .O(src2_IBUF[8]));
  IBUF \src2_IBUF[9]_inst 
       (.I(src2[9]),
        .O(src2_IBUF[9]));
  OBUF zero_OBUF_inst
       (.I(zero_OBUF),
        .O(zero));
  LUT2 #(
    .INIT(4'h8)) 
    zero_OBUF_inst_i_1
       (.I0(zero_reg_LDC_n_0),
        .I1(zero_reg_P_n_0),
        .O(zero_OBUF));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    zero_reg_LDC
       (.CLR(zero_reg_LDC_i_2_n_0),
        .D(1'b1),
        .G(zero_reg_LDC_i_1_n_0),
        .GE(1'b1),
        .Q(zero_reg_LDC_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFF5504)) 
    zero_reg_LDC_i_1
       (.I0(zero_reg_LDC_i_3_n_0),
        .I1(zero_reg_LDC_i_4_n_0),
        .I2(zero_reg_LDC_i_5_n_0),
        .I3(ALU_control_IBUF[0]),
        .I4(zero_reg_LDC_i_6_n_0),
        .I5(rst_n_IBUF),
        .O(zero_reg_LDC_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000040040440)) 
    zero_reg_LDC_i_10
       (.I0(zero_reg_LDC_i_21_n_0),
        .I1(zero_reg_LDC_i_22_n_0),
        .I2(src2_IBUF[29]),
        .I3(src1_IBUF[29]),
        .I4(\an4/a48/co_0 ),
        .I5(\result_reg[28]_LDC_i_6_n_0 ),
        .O(zero_reg_LDC_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h7)) 
    zero_reg_LDC_i_11
       (.I0(ALU_control_IBUF[2]),
        .I1(ALU_control_IBUF[1]),
        .O(zero_reg_LDC_i_11_n_0));
  LUT6 #(
    .INIT(64'h000000000000FFEF)) 
    zero_reg_LDC_i_12
       (.I0(zero_reg_LDC_i_23_n_0),
        .I1(zero_reg_LDC_i_24_n_0),
        .I2(zero_reg_LDC_i_25_n_0),
        .I3(zero_reg_LDC_i_26_n_0),
        .I4(ALU_control_IBUF[1]),
        .I5(ALU_control_IBUF[2]),
        .O(zero_reg_LDC_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'hB)) 
    zero_reg_LDC_i_13
       (.I0(ALU_control_IBUF[2]),
        .I1(ALU_control_IBUF[1]),
        .O(zero_reg_LDC_i_13_n_0));
  LUT6 #(
    .INIT(64'h0000000004404004)) 
    zero_reg_LDC_i_14
       (.I0(result3[27]),
        .I1(zero_reg_LDC_i_28_n_0),
        .I2(src2_IBUF[29]),
        .I3(src1_IBUF[29]),
        .I4(\an3/a48/co_0 ),
        .I5(result3[28]),
        .O(zero_reg_LDC_i_14_n_0));
  LUT6 #(
    .INIT(64'h0115577FFEEAA880)) 
    zero_reg_LDC_i_15
       (.I0(src1_IBUF[30]),
        .I1(src2_IBUF[29]),
        .I2(\an3/a48/co_0 ),
        .I3(src1_IBUF[29]),
        .I4(src2_IBUF[30]),
        .I5(src1_IBUF[31]),
        .O(zero_reg_LDC_i_15_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    zero_reg_LDC_i_16
       (.I0(zero_reg_LDC_i_29_n_0),
        .I1(zero_reg_LDC_i_30_n_0),
        .I2(zero_reg_LDC_i_31_n_0),
        .I3(zero_reg_LDC_i_32_n_0),
        .O(zero1_4));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    zero_reg_LDC_i_17
       (.I0(zero_reg_LDC_i_33_n_0),
        .I1(src1_IBUF[1]),
        .I2(src1_IBUF[0]),
        .I3(src1_IBUF[3]),
        .I4(src1_IBUF[2]),
        .I5(zero_reg_LDC_i_34_n_0),
        .O(zero_reg_LDC_i_17_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    zero_reg_LDC_i_18
       (.I0(src2_IBUF[28]),
        .I1(src2_IBUF[29]),
        .I2(src2_IBUF[26]),
        .I3(src2_IBUF[27]),
        .I4(src2_IBUF[31]),
        .I5(src2_IBUF[30]),
        .O(zero_reg_LDC_i_18_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    zero_reg_LDC_i_19
       (.I0(src2_IBUF[22]),
        .I1(src2_IBUF[23]),
        .I2(src2_IBUF[20]),
        .I3(src2_IBUF[21]),
        .I4(src2_IBUF[25]),
        .I5(src2_IBUF[24]),
        .O(zero_reg_LDC_i_19_n_0));
  LUT6 #(
    .INIT(64'h0000000044445545)) 
    zero_reg_LDC_i_2
       (.I0(rst_n_IBUF),
        .I1(zero_reg_LDC_i_3_n_0),
        .I2(zero_reg_LDC_i_4_n_0),
        .I3(zero_reg_LDC_i_5_n_0),
        .I4(ALU_control_IBUF[0]),
        .I5(zero_reg_LDC_i_6_n_0),
        .O(zero_reg_LDC_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    zero_reg_LDC_i_20
       (.I0(zero_reg_LDC_i_35_n_0),
        .I1(zero_reg_LDC_i_36_n_0),
        .I2(zero_reg_LDC_i_37_n_0),
        .I3(zero_reg_LDC_i_38_n_0),
        .I4(zero_reg_LDC_i_39_n_0),
        .I5(zero_reg_LDC_i_40_n_0),
        .O(zero_reg_LDC_i_20_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    zero_reg_LDC_i_21
       (.I0(src2_IBUF[27]),
        .I1(src1_IBUF[27]),
        .I2(\an4/a47/co_2 ),
        .O(zero_reg_LDC_i_21_n_0));
  LUT6 #(
    .INIT(64'h0000000000009600)) 
    zero_reg_LDC_i_22
       (.I0(src2_IBUF[24]),
        .I1(src1_IBUF[24]),
        .I2(\an4/co_5 ),
        .I3(zero_reg_LDC_i_41_n_0),
        .I4(\result_reg[26]_LDC_i_6_n_0 ),
        .I5(zero_reg_LDC_i_42_n_0),
        .O(zero_reg_LDC_i_22_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    zero_reg_LDC_i_23
       (.I0(zero_reg_LDC_i_43_n_0),
        .I1(src1_IBUF[7]),
        .I2(src2_IBUF[7]),
        .I3(src1_IBUF[3]),
        .I4(src2_IBUF[3]),
        .I5(zero_reg_LDC_i_44_n_0),
        .O(zero_reg_LDC_i_23_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    zero_reg_LDC_i_24
       (.I0(zero_reg_LDC_i_45_n_0),
        .I1(src1_IBUF[14]),
        .I2(src2_IBUF[14]),
        .I3(src1_IBUF[0]),
        .I4(src2_IBUF[0]),
        .I5(zero_reg_LDC_i_46_n_0),
        .O(zero_reg_LDC_i_24_n_0));
  LUT6 #(
    .INIT(64'h0000000000151515)) 
    zero_reg_LDC_i_25
       (.I0(zero_reg_LDC_i_47_n_0),
        .I1(src1_IBUF[31]),
        .I2(src2_IBUF[31]),
        .I3(src1_IBUF[9]),
        .I4(src2_IBUF[9]),
        .I5(zero_reg_LDC_i_48_n_0),
        .O(zero_reg_LDC_i_25_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    zero_reg_LDC_i_26
       (.I0(zero_reg_LDC_i_49_n_0),
        .I1(src1_IBUF[6]),
        .I2(src2_IBUF[6]),
        .I3(src1_IBUF[1]),
        .I4(src2_IBUF[1]),
        .I5(zero_reg_LDC_i_50_n_0),
        .O(zero_reg_LDC_i_26_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h96)) 
    zero_reg_LDC_i_27
       (.I0(src2_IBUF[27]),
        .I1(src1_IBUF[27]),
        .I2(\an3/a47/co_2 ),
        .O(result3[27]));
  LUT6 #(
    .INIT(64'h0000000000006900)) 
    zero_reg_LDC_i_28
       (.I0(src2_IBUF[24]),
        .I1(src1_IBUF[24]),
        .I2(\an3/co_5 ),
        .I3(zero_reg_LDC_i_51_n_0),
        .I4(result3[26]),
        .I5(result3[25]),
        .O(zero_reg_LDC_i_28_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFABABABFF)) 
    zero_reg_LDC_i_29
       (.I0(zero_reg_LDC_i_53_n_0),
        .I1(src1_IBUF[6]),
        .I2(src2_IBUF[6]),
        .I3(src1_IBUF[1]),
        .I4(src2_IBUF[1]),
        .I5(zero_reg_LDC_i_54_n_0),
        .O(zero_reg_LDC_i_29_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00B2B2B2)) 
    zero_reg_LDC_i_3
       (.I0(\an4/a48/co_2 ),
        .I1(src2_IBUF[31]),
        .I2(src1_IBUF[31]),
        .I3(zero_reg_LDC_i_7_n_0),
        .I4(zero_reg_LDC_i_8_n_0),
        .I5(zero_reg_LDC_i_9_n_0),
        .O(zero_reg_LDC_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000054545400)) 
    zero_reg_LDC_i_30
       (.I0(zero_reg_LDC_i_55_n_0),
        .I1(src1_IBUF[31]),
        .I2(src2_IBUF[31]),
        .I3(src1_IBUF[9]),
        .I4(src2_IBUF[9]),
        .I5(zero_reg_LDC_i_56_n_0),
        .O(zero_reg_LDC_i_30_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFABABABFF)) 
    zero_reg_LDC_i_31
       (.I0(zero_reg_LDC_i_57_n_0),
        .I1(src1_IBUF[14]),
        .I2(src2_IBUF[14]),
        .I3(src1_IBUF[0]),
        .I4(src2_IBUF[0]),
        .I5(zero_reg_LDC_i_58_n_0),
        .O(zero_reg_LDC_i_31_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFABABABFF)) 
    zero_reg_LDC_i_32
       (.I0(zero_reg_LDC_i_59_n_0),
        .I1(src1_IBUF[7]),
        .I2(src2_IBUF[7]),
        .I3(src1_IBUF[3]),
        .I4(src2_IBUF[3]),
        .I5(zero_reg_LDC_i_60_n_0),
        .O(zero_reg_LDC_i_32_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    zero_reg_LDC_i_33
       (.I0(src1_IBUF[6]),
        .I1(src1_IBUF[7]),
        .I2(src1_IBUF[4]),
        .I3(src1_IBUF[5]),
        .I4(src1_IBUF[9]),
        .I5(src1_IBUF[8]),
        .O(zero_reg_LDC_i_33_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    zero_reg_LDC_i_34
       (.I0(src1_IBUF[12]),
        .I1(src1_IBUF[13]),
        .I2(src1_IBUF[10]),
        .I3(src1_IBUF[11]),
        .I4(src1_IBUF[15]),
        .I5(src1_IBUF[14]),
        .O(zero_reg_LDC_i_34_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    zero_reg_LDC_i_35
       (.I0(src2_IBUF[4]),
        .I1(src2_IBUF[5]),
        .I2(src2_IBUF[2]),
        .I3(src2_IBUF[3]),
        .I4(src2_IBUF[7]),
        .I5(src2_IBUF[6]),
        .O(zero_reg_LDC_i_35_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    zero_reg_LDC_i_36
       (.I0(src1_IBUF[30]),
        .I1(src1_IBUF[31]),
        .I2(src1_IBUF[28]),
        .I3(src1_IBUF[29]),
        .I4(src2_IBUF[1]),
        .I5(src2_IBUF[0]),
        .O(zero_reg_LDC_i_36_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    zero_reg_LDC_i_37
       (.I0(src2_IBUF[16]),
        .I1(src2_IBUF[17]),
        .I2(src2_IBUF[14]),
        .I3(src2_IBUF[15]),
        .I4(src2_IBUF[19]),
        .I5(src2_IBUF[18]),
        .O(zero_reg_LDC_i_37_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    zero_reg_LDC_i_38
       (.I0(src2_IBUF[10]),
        .I1(src2_IBUF[11]),
        .I2(src2_IBUF[8]),
        .I3(src2_IBUF[9]),
        .I4(src2_IBUF[13]),
        .I5(src2_IBUF[12]),
        .O(zero_reg_LDC_i_38_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    zero_reg_LDC_i_39
       (.I0(src1_IBUF[18]),
        .I1(src1_IBUF[19]),
        .I2(src1_IBUF[16]),
        .I3(src1_IBUF[17]),
        .I4(src1_IBUF[21]),
        .I5(src1_IBUF[20]),
        .O(zero_reg_LDC_i_39_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00009600)) 
    zero_reg_LDC_i_4
       (.I0(src2_IBUF[31]),
        .I1(src1_IBUF[31]),
        .I2(\an4/a48/co_2 ),
        .I3(zero_reg_LDC_i_10_n_0),
        .I4(\result_reg[30]_LDC_i_9_n_0 ),
        .I5(zero_reg_LDC_i_11_n_0),
        .O(zero_reg_LDC_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    zero_reg_LDC_i_40
       (.I0(src1_IBUF[24]),
        .I1(src1_IBUF[25]),
        .I2(src1_IBUF[22]),
        .I3(src1_IBUF[23]),
        .I4(src1_IBUF[27]),
        .I5(src1_IBUF[26]),
        .O(zero_reg_LDC_i_40_n_0));
  LUT6 #(
    .INIT(64'h0000000000009600)) 
    zero_reg_LDC_i_41
       (.I0(src2_IBUF[21]),
        .I1(src1_IBUF[21]),
        .I2(\an4/a46/co_0 ),
        .I3(zero_reg_LDC_i_61_n_0),
        .I4(zero_reg_LDC_i_62_n_0),
        .I5(\result_reg[22]_LDC_i_6_n_0 ),
        .O(zero_reg_LDC_i_41_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    zero_reg_LDC_i_42
       (.I0(src2_IBUF[25]),
        .I1(src1_IBUF[25]),
        .I2(\an4/a47/co_0 ),
        .O(zero_reg_LDC_i_42_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    zero_reg_LDC_i_43
       (.I0(src1_IBUF[27]),
        .I1(src2_IBUF[27]),
        .I2(src1_IBUF[15]),
        .I3(src2_IBUF[15]),
        .O(zero_reg_LDC_i_43_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    zero_reg_LDC_i_44
       (.I0(src2_IBUF[2]),
        .I1(src1_IBUF[2]),
        .I2(src2_IBUF[13]),
        .I3(src1_IBUF[13]),
        .I4(zero_reg_LDC_i_63_n_0),
        .O(zero_reg_LDC_i_44_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    zero_reg_LDC_i_45
       (.I0(src1_IBUF[21]),
        .I1(src2_IBUF[21]),
        .I2(src1_IBUF[12]),
        .I3(src2_IBUF[12]),
        .O(zero_reg_LDC_i_45_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    zero_reg_LDC_i_46
       (.I0(src2_IBUF[5]),
        .I1(src1_IBUF[5]),
        .I2(src2_IBUF[8]),
        .I3(src1_IBUF[8]),
        .I4(zero_reg_LDC_i_64_n_0),
        .O(zero_reg_LDC_i_46_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    zero_reg_LDC_i_47
       (.I0(src1_IBUF[26]),
        .I1(src2_IBUF[26]),
        .I2(src1_IBUF[20]),
        .I3(src2_IBUF[20]),
        .O(zero_reg_LDC_i_47_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    zero_reg_LDC_i_48
       (.I0(src2_IBUF[4]),
        .I1(src1_IBUF[4]),
        .I2(src2_IBUF[11]),
        .I3(src1_IBUF[11]),
        .I4(zero_reg_LDC_i_65_n_0),
        .O(zero_reg_LDC_i_48_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    zero_reg_LDC_i_49
       (.I0(src1_IBUF[24]),
        .I1(src2_IBUF[24]),
        .I2(src1_IBUF[23]),
        .I3(src2_IBUF[23]),
        .O(zero_reg_LDC_i_49_n_0));
  LUT6 #(
    .INIT(64'hBABBBBBBBBBBBABB)) 
    zero_reg_LDC_i_5
       (.I0(zero_reg_LDC_i_12_n_0),
        .I1(zero_reg_LDC_i_13_n_0),
        .I2(result3[30]),
        .I3(zero_reg_LDC_i_14_n_0),
        .I4(zero_reg_LDC_i_15_n_0),
        .I5(src2_IBUF[31]),
        .O(zero_reg_LDC_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    zero_reg_LDC_i_50
       (.I0(src2_IBUF[10]),
        .I1(src1_IBUF[10]),
        .I2(src2_IBUF[30]),
        .I3(src1_IBUF[30]),
        .I4(zero_reg_LDC_i_66_n_0),
        .O(zero_reg_LDC_i_50_n_0));
  LUT6 #(
    .INIT(64'h0000000000006900)) 
    zero_reg_LDC_i_51
       (.I0(src2_IBUF[21]),
        .I1(src1_IBUF[21]),
        .I2(\an3/a46/co_0 ),
        .I3(zero_reg_LDC_i_67_n_0),
        .I4(result3[23]),
        .I5(result3[22]),
        .O(zero_reg_LDC_i_51_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h96)) 
    zero_reg_LDC_i_52
       (.I0(src2_IBUF[25]),
        .I1(src1_IBUF[25]),
        .I2(\an3/a47/co_0 ),
        .O(result3[25]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    zero_reg_LDC_i_53
       (.I0(src1_IBUF[24]),
        .I1(src2_IBUF[24]),
        .I2(src1_IBUF[23]),
        .I3(src2_IBUF[23]),
        .O(zero_reg_LDC_i_53_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFF111F)) 
    zero_reg_LDC_i_54
       (.I0(src2_IBUF[10]),
        .I1(src1_IBUF[10]),
        .I2(src2_IBUF[30]),
        .I3(src1_IBUF[30]),
        .I4(zero_reg_LDC_i_69_n_0),
        .O(zero_reg_LDC_i_54_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    zero_reg_LDC_i_55
       (.I0(src1_IBUF[26]),
        .I1(src2_IBUF[26]),
        .I2(src1_IBUF[20]),
        .I3(src2_IBUF[20]),
        .O(zero_reg_LDC_i_55_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFFFF111F)) 
    zero_reg_LDC_i_56
       (.I0(src2_IBUF[4]),
        .I1(src1_IBUF[4]),
        .I2(src2_IBUF[11]),
        .I3(src1_IBUF[11]),
        .I4(zero_reg_LDC_i_70_n_0),
        .O(zero_reg_LDC_i_56_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    zero_reg_LDC_i_57
       (.I0(src1_IBUF[21]),
        .I1(src2_IBUF[21]),
        .I2(src1_IBUF[12]),
        .I3(src2_IBUF[12]),
        .O(zero_reg_LDC_i_57_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFFFF111F)) 
    zero_reg_LDC_i_58
       (.I0(src2_IBUF[5]),
        .I1(src1_IBUF[5]),
        .I2(src2_IBUF[8]),
        .I3(src1_IBUF[8]),
        .I4(zero_reg_LDC_i_71_n_0),
        .O(zero_reg_LDC_i_58_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    zero_reg_LDC_i_59
       (.I0(src1_IBUF[27]),
        .I1(src2_IBUF[27]),
        .I2(src1_IBUF[15]),
        .I3(src2_IBUF[15]),
        .O(zero_reg_LDC_i_59_n_0));
  LUT6 #(
    .INIT(64'h08C80808C8C808C8)) 
    zero_reg_LDC_i_6
       (.I0(zero1_4),
        .I1(ALU_control_IBUF[3]),
        .I2(\result_reg[30]_LDC_i_6_n_0 ),
        .I3(src1_IBUF[31]),
        .I4(src2_IBUF[31]),
        .I5(\an4/a48/co_2 ),
        .O(zero_reg_LDC_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFFFF111F)) 
    zero_reg_LDC_i_60
       (.I0(src2_IBUF[2]),
        .I1(src1_IBUF[2]),
        .I2(src2_IBUF[13]),
        .I3(src1_IBUF[13]),
        .I4(zero_reg_LDC_i_72_n_0),
        .O(zero_reg_LDC_i_60_n_0));
  LUT6 #(
    .INIT(64'h0000000000009600)) 
    zero_reg_LDC_i_61
       (.I0(src2_IBUF[18]),
        .I1(src1_IBUF[18]),
        .I2(\an4/a45/co_1 ),
        .I3(zero_reg_LDC_i_73_n_0),
        .I4(\result_reg[20]_LDC_i_6_n_0 ),
        .I5(zero_reg_LDC_i_74_n_0),
        .O(zero_reg_LDC_i_61_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h69)) 
    zero_reg_LDC_i_62
       (.I0(src2_IBUF[23]),
        .I1(src1_IBUF[23]),
        .I2(\an4/a46/co_2 ),
        .O(zero_reg_LDC_i_62_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    zero_reg_LDC_i_63
       (.I0(src1_IBUF[25]),
        .I1(src2_IBUF[25]),
        .I2(src1_IBUF[19]),
        .I3(src2_IBUF[19]),
        .O(zero_reg_LDC_i_63_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    zero_reg_LDC_i_64
       (.I0(src1_IBUF[29]),
        .I1(src2_IBUF[29]),
        .I2(src1_IBUF[17]),
        .I3(src2_IBUF[17]),
        .O(zero_reg_LDC_i_64_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    zero_reg_LDC_i_65
       (.I0(src1_IBUF[28]),
        .I1(src2_IBUF[28]),
        .I2(src1_IBUF[16]),
        .I3(src2_IBUF[16]),
        .O(zero_reg_LDC_i_65_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    zero_reg_LDC_i_66
       (.I0(src1_IBUF[22]),
        .I1(src2_IBUF[22]),
        .I2(src1_IBUF[18]),
        .I3(src2_IBUF[18]),
        .O(zero_reg_LDC_i_66_n_0));
  LUT6 #(
    .INIT(64'h0000000000006900)) 
    zero_reg_LDC_i_67
       (.I0(src2_IBUF[18]),
        .I1(src1_IBUF[18]),
        .I2(\an3/a45/co_1 ),
        .I3(zero_reg_LDC_i_75_n_0),
        .I4(result3[20]),
        .I5(result3[19]),
        .O(zero_reg_LDC_i_67_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h96)) 
    zero_reg_LDC_i_68
       (.I0(src2_IBUF[23]),
        .I1(src1_IBUF[23]),
        .I2(\an3/a46/co_2 ),
        .O(result3[23]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    zero_reg_LDC_i_69
       (.I0(src1_IBUF[22]),
        .I1(src2_IBUF[22]),
        .I2(src1_IBUF[18]),
        .I3(src2_IBUF[18]),
        .O(zero_reg_LDC_i_69_n_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'hB)) 
    zero_reg_LDC_i_7
       (.I0(ALU_control_IBUF[1]),
        .I1(ALU_control_IBUF[2]),
        .O(zero_reg_LDC_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    zero_reg_LDC_i_70
       (.I0(src1_IBUF[28]),
        .I1(src2_IBUF[28]),
        .I2(src1_IBUF[16]),
        .I3(src2_IBUF[16]),
        .O(zero_reg_LDC_i_70_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    zero_reg_LDC_i_71
       (.I0(src1_IBUF[29]),
        .I1(src2_IBUF[29]),
        .I2(src1_IBUF[17]),
        .I3(src2_IBUF[17]),
        .O(zero_reg_LDC_i_71_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    zero_reg_LDC_i_72
       (.I0(src1_IBUF[25]),
        .I1(src2_IBUF[25]),
        .I2(src1_IBUF[19]),
        .I3(src2_IBUF[19]),
        .O(zero_reg_LDC_i_72_n_0));
  LUT6 #(
    .INIT(64'h0000000000009600)) 
    zero_reg_LDC_i_73
       (.I0(src2_IBUF[15]),
        .I1(src1_IBUF[15]),
        .I2(\an4/a44/co_2 ),
        .I3(zero_reg_LDC_i_77_n_0),
        .I4(zero_reg_LDC_i_78_n_0),
        .I5(\result_reg[16]_LDC_i_6_n_0 ),
        .O(zero_reg_LDC_i_73_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    zero_reg_LDC_i_74
       (.I0(src2_IBUF[19]),
        .I1(src1_IBUF[19]),
        .I2(\an4/a45/co_2 ),
        .O(zero_reg_LDC_i_74_n_0));
  LUT6 #(
    .INIT(64'h0000000000006900)) 
    zero_reg_LDC_i_75
       (.I0(src2_IBUF[15]),
        .I1(src1_IBUF[15]),
        .I2(\an3/a44/co_2 ),
        .I3(zero_reg_LDC_i_79_n_0),
        .I4(result3[17]),
        .I5(result3[16]),
        .O(zero_reg_LDC_i_75_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h96)) 
    zero_reg_LDC_i_76
       (.I0(src2_IBUF[19]),
        .I1(src1_IBUF[19]),
        .I2(\an3/a45/co_2 ),
        .O(result3[19]));
  LUT6 #(
    .INIT(64'h0000000000009600)) 
    zero_reg_LDC_i_77
       (.I0(src2_IBUF[12]),
        .I1(src1_IBUF[12]),
        .I2(\an4/co_2 ),
        .I3(zero_reg_LDC_i_81_n_0),
        .I4(\result_reg[14]_LDC_i_6_n_0 ),
        .I5(zero_reg_LDC_i_82_n_0),
        .O(zero_reg_LDC_i_77_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h69)) 
    zero_reg_LDC_i_78
       (.I0(src2_IBUF[17]),
        .I1(src1_IBUF[17]),
        .I2(\an4/a45/co_0 ),
        .O(zero_reg_LDC_i_78_n_0));
  LUT6 #(
    .INIT(64'h0000000000006900)) 
    zero_reg_LDC_i_79
       (.I0(src2_IBUF[12]),
        .I1(src1_IBUF[12]),
        .I2(\an3/co_2 ),
        .I3(zero_reg_LDC_i_83_n_0),
        .I4(result3[14]),
        .I5(result3[13]),
        .O(zero_reg_LDC_i_79_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    zero_reg_LDC_i_8
       (.I0(ALU_control_IBUF[0]),
        .I1(ALU_control_IBUF[1]),
        .O(zero_reg_LDC_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h96)) 
    zero_reg_LDC_i_80
       (.I0(src2_IBUF[17]),
        .I1(src1_IBUF[17]),
        .I2(\an3/a45/co_0 ),
        .O(result3[17]));
  LUT6 #(
    .INIT(64'h0000000000009600)) 
    zero_reg_LDC_i_81
       (.I0(src2_IBUF[9]),
        .I1(src1_IBUF[9]),
        .I2(\an4/a43/co_0 ),
        .I3(zero_reg_LDC_i_85_n_0),
        .I4(zero_reg_LDC_i_86_n_0),
        .I5(\result_reg[10]_LDC_i_6_n_0 ),
        .O(zero_reg_LDC_i_81_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h69)) 
    zero_reg_LDC_i_82
       (.I0(src2_IBUF[13]),
        .I1(src1_IBUF[13]),
        .I2(\an4/a44/co_0 ),
        .O(zero_reg_LDC_i_82_n_0));
  LUT6 #(
    .INIT(64'h0000000000006900)) 
    zero_reg_LDC_i_83
       (.I0(src2_IBUF[9]),
        .I1(src1_IBUF[9]),
        .I2(\an3/a43/co_0 ),
        .I3(zero_reg_LDC_i_87_n_0),
        .I4(result3[11]),
        .I5(result3[10]),
        .O(zero_reg_LDC_i_83_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h96)) 
    zero_reg_LDC_i_84
       (.I0(src2_IBUF[13]),
        .I1(src1_IBUF[13]),
        .I2(\an3/a44/co_0 ),
        .O(result3[13]));
  LUT6 #(
    .INIT(64'h0000000000009600)) 
    zero_reg_LDC_i_85
       (.I0(src2_IBUF[6]),
        .I1(src1_IBUF[6]),
        .I2(\an4/a42/co_1 ),
        .I3(zero_reg_LDC_i_89_n_0),
        .I4(\result_reg[8]_LDC_i_6_n_0 ),
        .I5(zero_reg_LDC_i_90_n_0),
        .O(zero_reg_LDC_i_85_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h69)) 
    zero_reg_LDC_i_86
       (.I0(src2_IBUF[11]),
        .I1(src1_IBUF[11]),
        .I2(\an4/a43/co_2 ),
        .O(zero_reg_LDC_i_86_n_0));
  LUT6 #(
    .INIT(64'h0000000000006900)) 
    zero_reg_LDC_i_87
       (.I0(src2_IBUF[6]),
        .I1(src1_IBUF[6]),
        .I2(\an3/a42/co_1 ),
        .I3(zero_reg_LDC_i_91_n_0),
        .I4(result3[8]),
        .I5(result3[7]),
        .O(zero_reg_LDC_i_87_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h96)) 
    zero_reg_LDC_i_88
       (.I0(src2_IBUF[11]),
        .I1(src1_IBUF[11]),
        .I2(\an3/a43/co_2 ),
        .O(result3[11]));
  LUT6 #(
    .INIT(64'h0000000000009600)) 
    zero_reg_LDC_i_89
       (.I0(src2_IBUF[3]),
        .I1(src1_IBUF[3]),
        .I2(\an4/a41/co_2 ),
        .I3(zero_reg_LDC_i_93_n_0),
        .I4(zero_reg_LDC_i_94_n_0),
        .I5(\result_reg[4]_LDC_i_6_n_0 ),
        .O(zero_reg_LDC_i_89_n_0));
  LUT6 #(
    .INIT(64'hABBBBBBBBBBBBBBB)) 
    zero_reg_LDC_i_9
       (.I0(ALU_control_IBUF[3]),
        .I1(\result_reg[30]_LDC_i_5_n_0 ),
        .I2(zero_reg_LDC_i_17_n_0),
        .I3(zero_reg_LDC_i_18_n_0),
        .I4(zero_reg_LDC_i_19_n_0),
        .I5(zero_reg_LDC_i_20_n_0),
        .O(zero_reg_LDC_i_9_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    zero_reg_LDC_i_90
       (.I0(src2_IBUF[7]),
        .I1(src1_IBUF[7]),
        .I2(\an4/a42/co_2 ),
        .O(zero_reg_LDC_i_90_n_0));
  LUT6 #(
    .INIT(64'h0000000000006900)) 
    zero_reg_LDC_i_91
       (.I0(src2_IBUF[3]),
        .I1(src1_IBUF[3]),
        .I2(\an3/a41/co_2 ),
        .I3(zero_reg_LDC_i_95_n_0),
        .I4(result3[5]),
        .I5(result3[4]),
        .O(zero_reg_LDC_i_91_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h96)) 
    zero_reg_LDC_i_92
       (.I0(src2_IBUF[7]),
        .I1(src1_IBUF[7]),
        .I2(\an3/a42/co_2 ),
        .O(result3[7]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    zero_reg_LDC_i_93
       (.I0(src1_IBUF[0]),
        .I1(src2_IBUF[0]),
        .I2(src1_IBUF[1]),
        .I3(src2_IBUF[1]),
        .I4(src2_IBUF[2]),
        .I5(src1_IBUF[2]),
        .O(zero_reg_LDC_i_93_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h69)) 
    zero_reg_LDC_i_94
       (.I0(src2_IBUF[5]),
        .I1(src1_IBUF[5]),
        .I2(\an4/a42/co_0 ),
        .O(zero_reg_LDC_i_94_n_0));
  LUT6 #(
    .INIT(64'h0001188018800001)) 
    zero_reg_LDC_i_95
       (.I0(src2_IBUF[0]),
        .I1(src1_IBUF[0]),
        .I2(src1_IBUF[1]),
        .I3(src2_IBUF[1]),
        .I4(src2_IBUF[2]),
        .I5(src1_IBUF[2]),
        .O(zero_reg_LDC_i_95_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h96)) 
    zero_reg_LDC_i_96
       (.I0(src2_IBUF[5]),
        .I1(src1_IBUF[5]),
        .I2(\an3/a42/co_0 ),
        .O(result3[5]));
  FDPE #(
    .INIT(1'b1)) 
    zero_reg_P
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(zero_reg_LDC_i_1_n_0),
        .Q(zero_reg_P_n_0));
endmodule
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
