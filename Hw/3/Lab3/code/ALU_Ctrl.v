//0810740
//Subject:     CO project 2 - ALU Controller
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
module ALU_Ctrl(
          Rtype_i,
          funct_i,
          ALUOp_i,
          ALUCtrl_o,
          Jr_o
          );
          
//I/O ports 
input      Rtype_i;
input      [6-1:0] funct_i;
input      [3-1:0] ALUOp_i;

output     [4-1:0] ALUCtrl_o;    
output             Jr_o;
//Internal Signals
reg        [4-1:0] ALUCtrl_o;

//Parameter
assign     Jr_o=(Rtype_i==1&&funct_i==8);
 


       
//Select exact operation
always @(funct_i,ALUOp_i) begin
        if(Rtype_i==1)
		  case(funct_i)
		      32: ALUCtrl_o <= 4'b0010;//add
		      34: ALUCtrl_o <= 4'b0110;//sub
		    36,8: ALUCtrl_o <= 4'b0000;//and / jr
		      37: ALUCtrl_o <= 4'b0001;//or
		      42: ALUCtrl_o <= 4'b0111;//slt
		  endcase
		else
		begin
			ALUCtrl_o[3]   <= 0;
			ALUCtrl_o[2:0] <= ALUOp_i[2:0];//for lw/sw/slti/beq/addi
		end
end
endmodule     





                    
                    