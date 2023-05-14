//0810740 Chang Yu-Ren
`timescale 1ns/1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:58:01 10/10/2013
// Design Name: 
// Module Name:    alu_top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module alu_top(
                clk,
               src1,       //1 bit source 1 (input)
               src2,       //1 bit source 2 (input)
               less,       //1 bit less     (input)
               A_invert,   //1 bit A_invert (input)
               B_invert,   //1 bit B_invert (input)
               cin,        //1 bit carry in (input)
               operation,  //operation      (input)
                result,     //1 bit result   (output)
               cout       //1 bit carry out(output)
               //,ap
               );
input clk;
input         src1;
input         src2;
input         less;
input         A_invert;
input         B_invert;
input         cin;
input [2-1:0] operation;
output         result;
output        cout;
//output ap;

wire in1,in2;
assign in1=(A_invert^src1);
assign in2=(B_invert^src2);
assign cout=((in1&in2)|(in2&cin))|(in1&cin);

wire op_less;
assign op_less=less;
wire op_add;
assign op_add=(in1^in2)^cin;
wire op_or;
assign op_or=in1|in2;
wire op_and;
assign op_and=in1&in2;
reg r;

always@(src1 or src2 or operation or op_less or op_add or op_or or op_and or clk or less )  //operation      (input))
begin
    if(operation==2'b11)
        begin
        //less
        r=op_less;
        end
   
    else if(operation==2'b10)
    begin
        //add
        r=op_add;
    end
    
    else if(operation==2'b01)
    begin
        //or
            r=op_or;//xor 0==>not change xor 1==>invert!
    end
    
    else//2'b00
    begin
        //and
        r=op_and;
    end

end
//assign ap=op_add;
assign result=r;

endmodule
