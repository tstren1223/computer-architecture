//0810740
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
module Simple_Single_CPU(
        clk_i,
		rst_i
		);
		
//I/O port
input       clk_i;
input       rst_i;



//Internal Signles

// wire for PC
wire [31:0] pc_in_i;
wire [31:0] pc_out_o;//for adder1 and IM

// wire for adder 1
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
wire        Jump_o;
wire        MemRead_o;
wire        MemWrite_o;
wire        MemtoReg_o;
wire        Jal_o;
wire        Rtype_o;
// wire for ALUCtrl
wire [3:0]  ALUCtrl_o;
wire        Jr_o;
//Internal Signles
wire        and_out;
and AND(and_out,Branch_o,zero_o);

// wire for shift-left
wire [31:0] data_o_shift;

// wire for adder2
wire [31:0] sum_o_add2;



// wire for branch result
wire [31:0] mux_branch_result;

// wire for new added data memory
wire [31:0] result_from_mem;

// wire for write back data
wire [31:0] write_back_data;

// wire for jump
wire [31:0] instr_shl2;
//Greate componentes
ProgramCounter PC(
        .clk_i(clk_i),      
        .rst_i (rst_i),     
        .pc_in_i(pc_in_i) ,   
        .pc_out_o(pc_out_o) 
);
	
Adder Adder1(//Pc+4
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

wire [4:0]  final_write_reg;
wire [31:0] final_write_data;
MUX_2to1 #(.size(5)) Jal_Write_Reg(
        // Jal
        .data0_i(data_o_write_reg),
        .data1_i(5'b11111),//reg 31==>store PC+4 to reg 31
        .select_i(Jal_o),
        .data_o(final_write_reg)
);
MUX_2to1 #(.size(32)) Jal_Write_Data(
        // Jal
        .data0_i(write_back_data),//after memory processing
        .data1_i(sum_o_add1),//Pc+4 ==>to store in reg31
        .select_i(Jal_o),
        .data_o(final_write_data)
);

Reg_File Registers(
        .clk_i(clk_i),      
        .rst_i(rst_i),     
        .RSaddr_i(instr_o[25:21]) ,  
        .RTaddr_i(instr_o[20:16]) ,  
        .RDaddr_i(final_write_reg),  
        .RDdata_i(final_write_data), 
        .RegWrite_i (RegWrite_o),
        .RSdata_o(RSdata_o),  
        .RTdata_o(RTdata_o)   
);
	
Decoder Decoder(
        .instr_op_i(instr_o[31:26]), 
        .RegWrite_o(RegWrite_o), 
        .ALU_op_o(ALU_op_o),   
        .ALUSrc_o(ALUSrc_o),   
        .RegDst_o(RegDst_o),   
        .Branch_o(Branch_o),
        .Jump_o(Jump_o),
        .MemRead_o(MemRead_o),
        .MemWrite_o(MemWrite_o),
        .MemtoReg_o(MemtoReg_o),
        .Jal_o(Jal_o),
        .Rtype_o(Rtype_o)
);

ALU_Ctrl AC(
        .Rtype_i(Rtype_o),
        .funct_i(instr_o[5:0]),   
        .ALUOp_i(ALU_op_o),   
        .ALUCtrl_o(ALUCtrl_o),
        .Jr_o(Jr_o)
);
	
Sign_Extend SE(
        .data_i(instr_o[15:0]),
        .data_o(data_o_SE)
);

MUX_2to1 #(.size(32)) Mux_ALUSrc(
        .data0_i(RTdata_o),
        .data1_i(data_o_SE),//address for  
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
        .sum_o(sum_o_add2)  //result of address for using data from instru original 16 bits
);
		
Shift_Left_Two_32 Shifter(
        .data_i(data_o_SE),
        .data_o(data_o_shift)//address*4
); 		
		
MUX_2to1 #(.size(32)) Mux_PC_Source(
        .data0_i(sum_o_add1),
        .data1_i(sum_o_add2),
        .select_i(and_out),
        .data_o(mux_branch_result)
);

// MEM
Data_Memory Data_Memory(
        .clk_i(clk_i),
        .addr_i(result_o),
        .data_i(RTdata_o),
        .MemRead_i(MemRead_o),
        .MemWrite_i(MemWrite_o),
        .data_o(result_from_mem)//memory data
);

MUX_2to1 #(.size(32)) Mux_Write_Back_Data(
        .data0_i(result_o),
        .data1_i(result_from_mem),
        .select_i(MemtoReg_o),
        .data_o(write_back_data)
);

// Jump
Shift_Left_Two_32 Shifter_jump(
        .data_i(instr_o),
        .data_o(instr_shl2)
);

wire [31:0] jump_pc;
MUX_2to1 #(.size(32)) Mux_PC_Jump(
        .data0_i(mux_branch_result),
        .data1_i({sum_o_add1[31:28],instr_shl2[27:0]}),
        .select_i(Jump_o),
        .data_o(jump_pc)
);

// Jal
MUX_2to1 #(.size(32)) Mux_PC_Jal(
        .data0_i(jump_pc),
        .data1_i(RSdata_o),
        .select_i(Jr_o),//jr
        .data_o(pc_in_i)
);
endmodule
		  


