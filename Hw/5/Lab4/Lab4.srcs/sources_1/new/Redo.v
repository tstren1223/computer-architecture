`timescale 1ns / 1ps
//0810740
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/23 12:03:46
// Design Name: 
// Module Name: Redo
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


module Redo(
    redo,
    in,
    out
    );

parameter size = 0;

input             redo;
input  [size-1:0] in;
output [size-1:0] out;

reg    [size-1:0] last;

assign out = (redo)? last : in;

always @(*) begin
    if(redo)
        last <= last; //remain the last value
    else
        last <= in;
end

endmodule 