//0810740 Chang Yu-Ren
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/08 22:41:00
// Design Name: 
// Module Name: alu4
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


module alu_4(
             //clk,
             srcA, //4 bit
             srcB, //4 bit
             less, //1 bit
             A_invert, //1 bit
             B_invert, //1 bit
             cin, //1 bit
             operation, //2 bit
             result1, //4 bit
             cout1 //1 bit
             //,ap
    );
    //input clk;
   input [4-1:0] srcA, srcB;
   input         cin, less, A_invert, B_invert;
   input [2-1:0] operation;
   output        cout1;
   output [4-1:0]result1;
  // output [4-1:0]ap;
   wire   [4-1:0] co;
              alu_top a1(
              //.clk(clk) ,
              .src1(srcA[0]),
              .src2(srcB[0]),
              .less(less),
              .A_invert(A_invert),
              .B_invert(B_invert),
              .cin(cin),
              .operation(operation),
              .result(result1[0]),
              .cout(co[0])
              //,.ap(ap[0])
              );
              alu_top a2(
              //.clk(clk),
              .src1(srcA[1]),
              .src2(srcB[1]),
              .less(0),
              .A_invert(A_invert),
              .B_invert(B_invert),
              .cin(co[0]),
              .operation(operation),
              .result(result1[1]),
              .cout(co[1])
               //,.ap(ap[1])
              );
              alu_top a3(
              //.clk(clk),
              .src1(srcA[2]),
              .src2(srcB[2]),
              .less(0),
              .A_invert(A_invert),
              .B_invert(B_invert),
              .cin(co[1]),
              .operation(operation),
              .result(result1[2]),
              .cout(co[2])
              // ,.ap(ap[2])
              );
              alu_top a4(
              //.clk(clk),
              .src1(srcA[3]),
              .src2(srcB[3]),
              .less(0),
              .A_invert(A_invert),
              .B_invert(B_invert),
              .cin(co[2]),
              .operation(operation),
              .result(result1[3]),
              .cout(co[3])
               //,.ap(ap[3])
              );
  assign cout1=co[3];
    
endmodule
