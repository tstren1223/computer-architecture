//0810740 Chang Yu-Ren
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/09 00:42:40
// Design Name: 
// Module Name: slt_32
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


module slt_32(//clk,
src1,src2,result,cout,zero,over
    );
 //   input clk;
    input  [32-1:0] src1;
input  [32-1:0] src2;
    output [32-1:0] result;
output          zero;
output          cout;
output          over;

wire    [32-1:0] result;
wire [8-1:0] co;
reg             zero;
wire             cout;
wire             over;
wire sign;
 alu_4 a41 (
            //.clk(clk),
            .srcA(src1[4-1:0]), //4 bit
             .srcB(src2[4-1:0]), //4 bit
             .less((((src1[31]^(src2[31]^1)^sign)==1)&((co[7]^(sign)==0))|((co[7]^(sign)==1)&(src1[31]^(src2[31]^1)^sign)==0))), //1 bit not over then we can just see result max be o and if over flow then slt will be need +1 
             .A_invert(0), //1 bit
             .B_invert(1), //1 bit
             .cin(1), //1 bit
             .operation(2'b11), //2 bit
             .result1(result[4-1:0]), //4 bit
             .cout1(co[0]) //1 bit
             );
             alu_4 a42(
            //.clk(clk),
            .srcA(src1[8-1:4]), //4 bit
             .srcB(src2[8-1:4]), //4 bit
             .less(0), //1 bit
             .A_invert(0), //1 bit
             .B_invert(1), //1 bit
             .cin(co[0]), //1 bit
             .operation(2'b11), //2 bit
             .result1(result[8-1:4]), //4 bit
             .cout1(co[1]) //1 bit
             );
             alu_4 a43(
            //.clk(clk),
            .srcA(src1[12-1:8]), //4 bit
             .srcB(src2[12-1:8]), //4 bit
             .less(0), //1 bit
             .A_invert(0), //1 bit
             .B_invert(1), //1 bit
             .cin(co[1]), //1 bit
             .operation(2'b11), //2 bit
             .result1(result[12-1:8]), //4 bit
             .cout1(co[2]) //1 bit
             );
             alu_4 a44(
            //.clk(clk),
            .srcA(src1[16-1:12]), //4 bit
             .srcB(src2[16-1:12]), //4 bit
             .less(0), //1 bit
             .A_invert(0), //1 bit
             .B_invert(1), //1 bit
             .cin(co[2]), //1 bit
             .operation(2'b11), //2 bit
             .result1(result[16-1:12]), //4 bit
             .cout1(co[3]) //1 bit
             );
             alu_4 a45(
            //.clk(clk),
            .srcA(src1[20-1:16]), //4 bit
             .srcB(src2[20-1:16]), //4 bit
             .less(0), //1 bit
             .A_invert(0), //1 bit
             .B_invert(1), //1 bit
             .cin(co[3]), //1 bit
             .operation(2'b11), //2 bit
             .result1(result[20-1:16]), //4 bit
             .cout1(co[4]) //1 bit
             );
             alu_4 a46(
            //.clk(clk),
            .srcA(src1[24-1:20]), //4 bit
             .srcB(src2[24-1:20]), //4 bit
             .less(0), //1 bit
             .A_invert(0), //1 bit
             .B_invert(1), //1 bit
             .cin(co[4]), //1 bit
             .operation(2'b11), //2 bit
             .result1(result[24-1:20]), //4 bit
             .cout1(co[5]) //1 bit
             );
             alu_4 a47(
            //.clk(clk) ,
            .srcA(src1[28-1:24]), //4 bit
             .srcB(src2[28-1:24]), //4 bit
             .less(0), //1 bit
             .A_invert(0), //1 bit
             .B_invert(1), //1 bit
             .cin(co[5]), //1 bit
             .operation(2'b11), //2 bit
             .result1(result[28-1:24]), //4 bit
             .cout1(co[6]) //1 bit
             );
             alu_4 a48(
            //.clk(clk),
            .srcA(src1[32-1:28]), //4 bit
             .srcB(src2[32-1:28]), //4 bit
             .less(0), //1 bit
             .A_invert(0), //1 bit
             .B_invert(1), //1 bit
             .cin(co[6]), //1 bit
             .operation(2'b11), //2 bit
             .result1(result[32-1:28]), //4 bit
             .cout1(co[7]) //1 bit
             );
            assign sign=src1[30]&(src2[30]^1)|((src1[30]|(src2[30]^1))&(src1[29]&(src2[29]^1)))|((src1[30]|(src2[30]^1))&(src1[29]|(src2[29]^1))&(src1[28]&(src2[28]^1)))|((src1[30]|(src2[30]^1))&(src1[29]|(src2[29]^1))&(src1[28]|(src2[28]^1))&co[6]);
            assign cout=0;
            assign over=co[7]^(sign);
 always@(src1 or src2)
 begin
    if(result==0)
        zero=1;
    else
    zero=0;
 end
            
endmodule
