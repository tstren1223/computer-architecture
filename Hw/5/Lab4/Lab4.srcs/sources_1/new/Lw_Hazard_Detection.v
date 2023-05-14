`timescale 1ns / 1ps
//0810740
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/23 12:05:29
// Design Name: 
// Module Name: Lw_Hazard_Detection
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


module Lw_Hazard_Detection(
    branch,
    IF_ID_RS,
    IF_ID_RT,
    ID_EX_RT,
    ID_EX_memr,
    stall
    );

input        branch;
input  [4:0] IF_ID_RS;
input  [4:0] IF_ID_RT;
input  [4:0] ID_EX_RT;
input        ID_EX_memr;

output       stall;

assign stall = !branch && ID_EX_memr
    && ( (IF_ID_RS==ID_EX_RT && IF_ID_RS!=0) || 
         (IF_ID_RT==ID_EX_RT && IF_ID_RT!=0) );

endmodule   
