//Subject:     CO project 2 - Simple Single CPU
//--------------------------------------------------------------------------------
//Version:     1
//--------------------------------------------------------------------------------
//Writer:      
//----------------------------------------------
//Date:        
//----------------------------------------------
//Description: 
//--------------------------------------------------------------------------------
`timescale 1ns/1ps
module Simple_Single_CPU(
        clk_i,
		rst_i/*
		,temp
		,temp2
		,temp3
		,temp4
		,temp5
		,temp6
		,temp7
		,temp8*/
		
		);
		
//I/O port
input         clk_i;
input         rst_i;
/*
output        [31:0]temp;
output        [31:0]temp2;
output        [31:0]temp3;
output        [31:0]temp4;
output        [31:0]temp5;
output        [31:0]temp6;
output        [31:0]temp7;
output        [31:0]temp8;
*/
//Internal Signles
//fetch-->decoder/register-->ALU/branch-->memory-->write back 
// wire for PC
wire [31:0] pc_in_i;
wire [31:0] pc_out_o;//for adder1 and IM

// wire for adder PC+4
wire [31:0] sum_o_add1;

// wire for IM
wire [31:0] instr_o;

// wire for MUX_write_reg
wire [4:0]  data_o_write_reg;

// wire for RF
wire [31:0] RSdata_o;
wire [31:0] RTdata_o;

// wire for ALU
wire [31:0] result_o;
wire        zero_o;

// wire for SE
wire [31:0] data_o_SE;

// wire for Mux__alu_src
wire [31:0] Src_data_o;

// wire for Decoder
wire        RegWrite_o; 
wire [2:0]  ALU_op_o; 
wire        ALUSrc_o;   
wire        RegDst_o;   
wire        Branch_o;   

// wire for ALUCtrl
wire [3:0]  ALUCtrl_o;

//Internal Signles
//for branch
wire        and_out;
and AND(and_out,Branch_o,zero_o);
// wire for shift-left
wire [31:0] data_o_shift;

// wire for adder address offset
wire [31:0] sum_o_adder2;
/*
assign temp=ALU.result;
assign temp2=ALU.src1;
assign temp3=ALU.src2;
assign temp4=ALU.zero1;
assign temp5=instr_o[15:0];
assign temp6=data_o_SE;
assign temp7=ALUCtrl_o;
assign temp8= and_out;
*/
//assign temp=RegWrite_o;
//Greate componentes
ProgramCounter PC(
        .clk_i(clk_i),      
	    .rst_i (rst_i),     
	    .pc_in_i(pc_in_i) ,   
	    .pc_out_o(pc_out_o) 
	    );
	
Adder Adder1(
        .src1_i(32'd4),     
	    .src2_i(pc_out_o),     
	    .sum_o(sum_o_add1)    
	    );
	
Instr_Memory IM(
        .pc_addr_i(pc_out_o),  
	    .instr_o(instr_o)    
	    );

MUX_2to1 #(.size(5)) Mux_Write_Reg(
        .data0_i(instr_o[20:16]),
        .data1_i(instr_o[15:11]),
        .select_i(RegDst_o),
        .data_o(data_o_write_reg)
        );	
		
Reg_File RF(
        .clk_i(clk_i),      
	    .rst_i(rst_i) ,     
        .RegWrite_i (RegWrite_o),
        .RSaddr_i(instr_o[25:21]) ,//address  
        .RTaddr_i(instr_o[20:16]) , //address
        .RDaddr_i(data_o_write_reg) ,  
        .RDdata_i(result_o)  , 
        .RSdata_o(RSdata_o) ,  
        .RTdata_o(RTdata_o)     
        );
	
Decoder Decoder(
        .instr_op_i(instr_o[31:26]), 
        .RegWrite_o(RegWrite_o), 
        .ALU_op_o(ALU_op_o),   
        .ALUSrc_o(ALUSrc_o),   
        .RegDst_o(RegDst_o),   
        .Branch_o(Branch_o)   
	    );

ALU_Ctrl AC(
        .funct_i(instr_o[5:0]),   
        .ALUOp_i(ALU_op_o),   
        .ALUCtrl_o(ALUCtrl_o)  //do add/subb etc
        );
	
Sign_Extend SE(
        .data_i(instr_o[15:0]),
        .data_o(data_o_SE)
        );

MUX_2to1 #(.size(32)) Mux_ALUSrc(
         .data0_i(RTdata_o),
        .data1_i(data_o_SE),
        .select_i(ALUSrc_o),
        .data_o(Src_data_o)
        );	
		
ALU ALU(
.clk(clk_i),
.rst_n(rst_i),
.src1(RSdata_o),
        .src2(Src_data_o),
        .ALU_control(ALUCtrl_o),
        .result(result_o),
        .zero(zero_o)
	    );
		
Adder Adder2(
        .src1_i(sum_o_add1),     
        .src2_i(data_o_shift),     
        .sum_o(sum_o_adder2)        
	    );
		
Shift_Left_Two_32 Shifter(
         .data_i(data_o_SE),
        .data_o(data_o_shift)
        ); 		
		
MUX_2to1 #(.size(32)) Mux_PC_Source(
        .data0_i(sum_o_add1),
        .data1_i(sum_o_adder2),
        .select_i(and_out),
        .data_o(pc_in_i)
        );

endmodule
		  


