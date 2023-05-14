//0810740
`timescale 1ns / 1ps
//Subject:     CO project 4 - Pipe CPU 1
//--------------------------------------------------------------------------------
//Version:     1
//--------------------------------------------------------------------------------
//Writer:      
//----------------------------------------------
//Date:        
//----------------------------------------------
//Description: 
//--------------------------------------------------------------------------------
module Pipe_CPU_1(
    clk_i,
    rst_i
    );
    
/****************************************
I/O ports
****************************************/
input clk_i;
input rst_i;

/****************************************
Internal signal
****************************************/
/**** IF stage ****/
wire [31:0] pc_in_i;
wire [31:0] pc_out_o;
//piple reg
wire [31:0] IF_ID_pc_4_i;
wire [31:0] IF_ID_in_i;
wire [31:0] IF_ID_pc_4_o;
wire [31:0] IF_ID_in_o;
/**** ID stage ****/

//control signal

wire           ID_EX_mem_to_reg_i_tmp;
wire           ID_EX_reg_write_i_tmp;
wire           ID_EX_mem_to_reg_i;
wire           ID_EX_reg_write_i;
wire           ID_EX_mem_to_reg_o;
wire           ID_EX_reg_write_o;
// WB stage

wire           ID_EX_mem_read_i_tmp;
wire           ID_EX_mem_write_i_tmp;
wire           ID_EX_branch_i_tmp;
wire           ID_EX_mem_read_i;
wire           ID_EX_mem_write_i;
wire           ID_EX_branch_i;
wire           ID_EX_Rtype_i;
wire           ID_EX_mem_read_o;
wire           ID_EX_mem_write_o;
wire           ID_EX_branch_o;
wire           ID_EX_Rtype_o;
// MEM stage


wire   [3-1:0] ID_EX_alu_op_i_tmp;
wire           ID_EX_alu_src_i_tmp;
wire           ID_EX_reg_dst_i_tmp;
wire   [3-1:0] ID_EX_alu_op_i;
wire           ID_EX_alu_src_i;
wire           ID_EX_reg_dst_i;
wire   [3-1:0] ID_EX_alu_op_o;
wire           ID_EX_alu_src_o;
wire           ID_EX_reg_dst_o;
// EX stage


wire [31:0] ID_EX_pc_4_i = IF_ID_pc_4_o;
wire [31:0] ID_EX_read_data_1_i;
wire [31:0] ID_EX_read_data_2_i;
wire [31:0] ID_EX_sign_extend_i;
wire [4:0]  ID_EX_ins_rs_i;
wire [4:0]  ID_EX_ins_rt_i;
wire [4:0]  ID_EX_ins_rd_i;
wire [5:0]  ID_EX_ins_op_i;
wire [31:0] ID_EX_pc_4_o;
wire [31:0] ID_EX_read_data_1_o;
wire [31:0] ID_EX_read_data_2_o;
wire [31:0] ID_EX_sign_extend_o;
wire [4:0]  ID_EX_ins_rs_o;
wire [4:0]  ID_EX_ins_rt_o;
wire [4:0]  ID_EX_ins_rd_o;
wire [5:0]  ID_EX_ins_op_o;

wire        ID_lw_stall;


/**** EX stage ****/

wire [ 4:0] EX_MEM_reg_dst_i;
wire [31:0] EX_MEM_write_data_i;
wire [31:0] EX_MEM_alu_result_i;
wire        EX_MEM_zero_i;
wire [31:0] EX_MEM_add_result_i;
wire        EX_MEM_branch_i;
wire        EX_MEM_mem_write_i;
wire        EX_MEM_mem_read_i;
wire        EX_MEM_mem_to_reg_i;
wire        EX_MEM_reg_write_i;
wire [31:0] EX_shift_left_2_o;

wire [31:0] EX_alu_src_2;
// MEM stage

//control signal
wire [3:0]  ALUCtrl_o;


/**** MEM stage ****/

//control signal
wire [ 4:0] EX_MEM_reg_dst_o;
wire [31:0] EX_MEM_write_data_o;
wire [31:0] EX_MEM_alu_result_o;
wire        EX_MEM_zero_o;
wire [31:0] EX_MEM_add_result_o;
wire        EX_MEM_branch_o;
wire        EX_MEM_mem_write_o;
wire        EX_MEM_mem_read_o;
wire        EX_MEM_mem_to_reg_o;
wire        EX_MEM_reg_write_o;

wire [ 4:0] MEM_WB_reg_dst_i;
wire [31:0] MEM_WB_alu_result_i;
wire [31:0] MEM_WB_read_data_i;
wire        MEM_WB_mem_to_reg_i;
wire        MEM_WB_reg_write_i;

wire        MEM_branch_take;


/**** WB stage ****/

//control signal
wire [ 4:0] MEM_WB_reg_dst_o;
wire [31:0] MEM_WB_alu_result_o;
wire [31:0] MEM_WB_read_data_o;
wire        MEM_WB_mem_to_reg_o;
wire        MEM_WB_reg_write_o;
wire [31:0] MEM_write_data_o;

/****************************************
Instantiate modules
****************************************/
//Instantiate the components in IF stage
MUX_2to1 #(.size(32)) Mux0(
        .data0_i(IF_ID_pc_4_i),
        .data1_i(EX_MEM_add_result_o),
        .select_i(MEM_branch_take),
        .data_o(pc_in_i)
        );

ProgramCounter PC(
        .clk_i(clk_i),      
        .rst_i (rst_i),     
        .pc_in_i(pc_in_i) ,   
        .pc_out_o(pc_out_o) 
);

Instruction_Memory IM(
        .addr_i(pc_out_o),  
        .instr_o(IF_ID_in_i)    
);
			
Adder Add_pc(
        .src1_i(32'd4),     
        .src2_i(pc_out_o),     
        .sum_o(IF_ID_pc_4_i)    
);
Pipe_Reg #(.size(64)) IF_ID(       //N is the total length of input/output
        .clk_i(clk_i),
        .rst_i(rst_i),
        .data_i({
            (MEM_branch_take)? 32'b0 : IF_ID_pc_4_i,
            (MEM_branch_take)? 32'b0 : IF_ID_in_i
            }),
        .data_o({
            IF_ID_pc_4_o,//for PC+4
            IF_ID_in_o//for instruction
            })
        );

Reg_File RF(
        .clk_i(clk_i),      
        .rst_i(rst_i),     
        .RSaddr_i(IF_ID_in_o[25:21]) ,  
        .RTaddr_i(IF_ID_in_o[20:16]) ,  
        .RDaddr_i(MEM_WB_reg_dst_o), // WBstage  with address and data and controls
        .RDdata_i(MEM_write_data_o), //WBstage
        .RegWrite_i (MEM_WB_reg_write_o), // WBstage
        .RSdata_o(ID_EX_read_data_1_i),  
        .RTdata_o(ID_EX_read_data_2_i)   
);

Decoder Control(
        .instr_op_i(IF_ID_in_o[31:26]), 
        .RegWrite_o(ID_EX_reg_write_i_tmp),
        .ALU_op_o(ID_EX_alu_op_i_tmp),   
        .ALUSrc_o(ID_EX_alu_src_i_tmp),   
        .RegDst_o(ID_EX_reg_dst_i_tmp),   
        .Branch_o(ID_EX_branch_i_tmp),
        .MemRead_o(ID_EX_mem_read_i_tmp),
        .MemWrite_o(ID_EX_mem_write_i_tmp),
        .MemtoReg_o(ID_EX_mem_to_reg_i_tmp),
        .Rtype_o(ID_EX_Rtype_i)
        );

Sign_Extend Sign_Extend(
        .data_i(IF_ID_in_o[15:0]),
        .data_o(ID_EX_sign_extend_i)
        );
        
//Instantiate the components in ID stage
assign ID_EX_ins_rt_i = IF_ID_in_o[20:16];
assign ID_EX_ins_rd_i = IF_ID_in_o[15:11];
assign ID_EX_mem_to_reg_i = ID_EX_mem_to_reg_i_tmp && !MEM_branch_take;
assign ID_EX_reg_write_i  = ID_EX_reg_write_i_tmp  && !MEM_branch_take;
assign ID_EX_mem_read_i   = ID_EX_mem_read_i_tmp   && !MEM_branch_take;
assign ID_EX_mem_write_i  = ID_EX_mem_write_i_tmp  && !MEM_branch_take;
assign ID_EX_branch_i     = ID_EX_branch_i_tmp     && !MEM_branch_take;
assign ID_EX_alu_op_i[0]  = ID_EX_alu_op_i_tmp[0]  && !MEM_branch_take;
assign ID_EX_alu_op_i[1]  = ID_EX_alu_op_i_tmp[1]  && !MEM_branch_take;
assign ID_EX_alu_op_i[2]  = ID_EX_alu_op_i_tmp[2]  && !MEM_branch_take;
assign ID_EX_alu_src_i    = ID_EX_alu_src_i_tmp    && !MEM_branch_take;
assign ID_EX_reg_dst_i    = ID_EX_reg_dst_i_tmp    && !MEM_branch_take;
Pipe_Reg #(.size(149)) ID_EX(
        .clk_i(clk_i),
        .rst_i(rst_i),
        .data_i({
                ID_EX_mem_to_reg_i,
                ID_EX_reg_write_i,
                ID_EX_mem_read_i,
                ID_EX_mem_write_i,
                ID_EX_branch_i,
                ID_EX_alu_op_i,//3bits
                ID_EX_alu_src_i,
                ID_EX_reg_dst_i,
                ID_EX_Rtype_i,
                //32bits
                ID_EX_pc_4_i,
                ID_EX_read_data_1_i,
                ID_EX_read_data_2_i,
                ID_EX_sign_extend_i,
                //5bits
                ID_EX_ins_rt_i,
                ID_EX_ins_rd_i
                }),
        .data_o({
                ID_EX_mem_to_reg_o,
                ID_EX_reg_write_o,
                ID_EX_mem_read_o,
                ID_EX_mem_write_o,
                ID_EX_branch_o,
                ID_EX_alu_op_o,
                ID_EX_alu_src_o,
                ID_EX_reg_dst_o,
                ID_EX_Rtype_o,
                ID_EX_pc_4_o,
                ID_EX_read_data_1_o,
                ID_EX_read_data_2_o,
                ID_EX_sign_extend_o,
                ID_EX_ins_rt_o,
                ID_EX_ins_rd_o
                })

        );


Shift_Left_Two_32 Shifter(
        .data_i(ID_EX_sign_extend_o),
        .data_o(EX_shift_left_2_o)
);   

ALU_Ctrl ALU_Control(
        .Rtype_i(ID_EX_Rtype_o),
        .funct_i(ID_EX_sign_extend_o[5:0]),   
        .ALUOp_i(ID_EX_alu_op_o),   
        .ALUCtrl_o(ALUCtrl_o) 
);

MUX_2to1 #(.size(32)) Mux_ALUSRC(
        .data0_i(ID_EX_read_data_2_o),
        .data1_i(ID_EX_sign_extend_o),
        .select_i(ID_EX_alu_src_o),
        .data_o(EX_alu_src_2)
        );

ALU ALU(
        .clk(clk_i),
        .rst_n(rst_i),
        .src1(ID_EX_read_data_1_o),
        .src2(EX_alu_src_2),
        .ALU_control(ALUCtrl_o),
        .result(EX_MEM_alu_result_i),
        .zero(EX_MEM_zero_i)
);
		
MUX_2to1 #(.size(5)) Mux_WriReg(
        .data0_i(ID_EX_ins_rt_o),
        .data1_i(ID_EX_ins_rd_o),
        .select_i(ID_EX_reg_dst_o),
        .data_o(EX_MEM_reg_dst_i)
        );

Adder Branch_pc(
        .src1_i(ID_EX_pc_4_o),     
        .src2_i(EX_shift_left_2_o),     
        .sum_o(EX_MEM_add_result_i)    
        );
        
//Instantiate the components in EX stage	   
assign EX_MEM_write_data_i = ID_EX_read_data_2_o;
assign EX_MEM_branch_i = ID_EX_branch_o && !MEM_branch_take;
assign EX_MEM_mem_write_i = ID_EX_mem_write_o && !MEM_branch_take;
assign EX_MEM_mem_read_i = ID_EX_mem_read_o && !MEM_branch_take;
assign EX_MEM_mem_to_reg_i = ID_EX_mem_to_reg_o && !MEM_branch_take;
assign EX_MEM_reg_write_i = ID_EX_reg_write_o && !MEM_branch_take;

Pipe_Reg #(.size(107)) EX_MEM(
        .clk_i(clk_i),
        .rst_i(rst_i),
        .data_i({
            EX_MEM_reg_dst_i,//5bits
            EX_MEM_write_data_i,//32bits
            EX_MEM_alu_result_i,//32bits
            EX_MEM_zero_i,
            EX_MEM_add_result_i,//32bits
            EX_MEM_branch_i,
            EX_MEM_mem_write_i,
            EX_MEM_mem_read_i,
            EX_MEM_mem_to_reg_i,
            EX_MEM_reg_write_i
            }),
        .data_o({
            EX_MEM_reg_dst_o,
            EX_MEM_write_data_o,
            EX_MEM_alu_result_o,
            EX_MEM_zero_o,
            EX_MEM_add_result_o,
            EX_MEM_branch_o,
            EX_MEM_mem_write_o,
            EX_MEM_mem_read_o,
            EX_MEM_mem_to_reg_o,
            EX_MEM_reg_write_o
            })
        );


//Instantiate the components in MEM stage
assign MEM_branch_take = EX_MEM_zero_o && EX_MEM_branch_o;
assign MEM_WB_reg_dst_i    = EX_MEM_reg_dst_o;
assign MEM_WB_alu_result_i = EX_MEM_alu_result_o;
assign MEM_WB_mem_to_reg_i = EX_MEM_mem_to_reg_o;
assign MEM_WB_reg_write_i  = EX_MEM_reg_write_o;
Data_Memory DM(
        .clk_i(clk_i),
        .addr_i(EX_MEM_alu_result_o),
        .data_i(EX_MEM_write_data_o),
        .MemRead_i(EX_MEM_mem_read_o),
        .MemWrite_i(EX_MEM_mem_write_o),
        .data_o(MEM_WB_read_data_i)
        );

Pipe_Reg #(.size(71)) MEM_WB(
        .clk_i(clk_i),
        .rst_i(rst_i),
        .data_i({
            MEM_WB_reg_dst_i,//5bits
            MEM_WB_alu_result_i,//32bits
            MEM_WB_read_data_i,//32bits
            MEM_WB_mem_to_reg_i,
            MEM_WB_reg_write_i
            }),
        .data_o({
            MEM_WB_reg_dst_o,
            MEM_WB_alu_result_o,
            MEM_WB_read_data_o,
            MEM_WB_mem_to_reg_o,
            MEM_WB_reg_write_o
            })
        );


//Instantiate the components in WB stage
MUX_2to1 #(.size(32)) Mux_WB(
        .data0_i(MEM_WB_alu_result_o),
        .data1_i(MEM_WB_read_data_o),
        .select_i(MEM_WB_mem_to_reg_o),
        .data_o(MEM_write_data_o)
        );
/****************************************
signal assignment
****************************************/

endmodule

