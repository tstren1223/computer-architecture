//Subject:     CO project 2 - Decoder
//--------------------------------------------------------------------------------
//Version:     1
//--------------------------------------------------------------------------------
//Writer:      Luke
//----------------------------------------------
//Date:        
//----------------------------------------------
//Description: 
//--------------------------------------------------------------------------------
`timescale 1ns/1ps
module Decoder(
    instr_op_i,
	RegWrite_o,
	ALU_op_o,
	ALUSrc_o,
	RegDst_o,
	Branch_o
	);
     
//I/O ports
input  [6-1:0] instr_op_i;

output         RegWrite_o;
output [3-1:0] ALU_op_o;
output         ALUSrc_o;
output         RegDst_o;
output         Branch_o;
 
//Internal Signals


//Parameter

wire           RegWrite_o;
wire   [3-1:0] ALU_op_o;
wire           ALUSrc_o;
wire           RegDst_o;
wire           Branch_o;

wire rtype;
wire beq;
wire addi;
wire slti;
wire ori;
wire lui;

//Main function

//process ALUop field
assign rtype = (instr_op_i==0);
assign beq   = (instr_op_i==4);
assign addi  = (instr_op_i==8);
assign slti =  (instr_op_i==10);
//process output signal
assign RegWrite_o = ((rtype | addi )| slti);
assign ALUSrc_o   = (addi | slti );//1 to use original 16bits
assign RegDst_o   = rtype;//1 for rd
assign Branch_o   = beq;

//only use when there is other command than R-type
//by book==> rtype-->100  beq-->001  and addi subi doesn't influence the add or sub operation but we still only can use ALU_op_o as the command to alu
//so addi-->ALU need add-->0010-->010
//so slti-->ALU need slt-->0111-->111  
//so beq-->ALU need sub-->0110-->110
assign ALU_op_o[2] = (beq | slti );
assign ALU_op_o[1] = ((beq | addi )| slti);
assign ALU_op_o[0] = slti;
endmodule





                    
                    