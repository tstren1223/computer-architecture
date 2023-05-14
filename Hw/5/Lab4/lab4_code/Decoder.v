//0810740
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
	Branch_o,
	Bne_o,
	Bgt_o,
	Jump_o,
     MemRead_o,
        MemWrite_o,
        MemtoReg_o,
        Jal_o,
        Rtype_o
	);
     
//I/O ports
input  [6-1:0] instr_op_i;

output         RegWrite_o;
output [3-1:0] ALU_op_o;
output         ALUSrc_o;
output         RegDst_o;
output         Branch_o;
output         Bne_o;
output         Bgt_o;
output         Jump_o;
output         MemRead_o;
output         MemWrite_o;
output         MemtoReg_o;
output         Jal_o;
output         Rtype_o;
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
wire jump;    // 000010
wire lw;      // 100011
wire sw;      // 101011
wire jal;     // 000011
wire bne;
wire bge;
wire bgt;
//Main function

//process ALUop field
assign rtype = (instr_op_i==0);
assign beq   = (instr_op_i==4);
assign addi  = (instr_op_i==8);
assign slti =  (instr_op_i==10);
assign jump  = (instr_op_i==2);
assign lw    = (instr_op_i==35);
assign sw    = (instr_op_i==43);
assign jal   = (instr_op_i==3);
assign bne   = (instr_op_i==5);
assign bge   = (instr_op_i==1);
assign bgt   = (instr_op_i==7);
//process output signal
assign RegWrite_o = (((rtype | addi )| (slti|lw))|jal);
assign ALUSrc_o   = ((addi|lw) | (slti|sw) );//1 to use original 16bits
assign RegDst_o   = rtype;//1 for rd
assign Branch_o   = (beq|bge);
assign Bne_o   = (bne);
assign Bgt_o   = (bgt|bge);
assign Jump_o     = (jump | jal);
assign MemRead_o  = lw;
assign MemWrite_o = sw;
assign MemtoReg_o = lw;
assign Jal_o      = jal;
assign Rtype_o    = rtype;

//only use when there is another command than R-type
//by book==> rtype-->100  beq-->001  and addi subi doesn't influence the add or sub operation but we still only can use ALU_op_o as the command to alu
//so addi-->ALU need add-->0010-->010
//so slti-->ALU need slt-->0111-->111  
//so beq bne bgt bge-->ALU need sub-->0110-->110
//so lw/sw-->ALU need add-->0010-->010
assign ALU_op_o[2] = (((beq|bne)|( bgt|bge))| slti );
assign ALU_op_o[1] = (((((beq|bne)|( bgt|bge)) | addi )| slti)|(lw|sw));
assign ALU_op_o[0] = slti;

endmodule





                    
                    