//0810740
//Subject:     CO project 2 - ALU
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
module ALU(
	 clk,           // system clock              (input)
           rst_n,         // negative reset            (input)
           src1,          // 32 bits source 1          (input)
           src2,          // 32 bits source 2          (input)
           ALU_control,   // 4 bits ALU control input  (input)
           result,        // 32 bits result            (output)
           zero          // 1 bit when the output is 0, zero must be set (output)
           //cout,          // 1 bit carry out           (output)
          // overflow       // 1 bit overflow            (output)
           //,as
           //,result1,result2,result3,result4,result5,result6
	);
/*     
//I/O ports
input signed [32-1:0]  src1;
input signed [32-1:0]  src2;
input  [4-1:0]   ctrl_i;

output [32-1:0]	 result_o;
output           zero_o;

//Internal signals
reg    [32-1:0]  result_o;
wire             zero_o;
*/
input           clk;
input           rst_n;
input  [32-1:0] src1;
input  [32-1:0] src2;
input   [4-1:0] ALU_control;

output [32-1:0] result;
output reg          zero;
//output  
reg         cout;
//output
   reg       overflow;
//Parameter
reg    [32-1:0] result;

//output
 wire    [32-1:0] result1;
//output
 wire    [32-1:0] result2;
//output
 wire    [32-1:0] result3;
//output
 wire    [32-1:0] result4;
//output
 wire    [32-1:0] result5;
//output
 wire    [32-1:0] result6;

wire    [6-1:0]         zero1;
wire    [6-1:0]         cout1;
wire    [6-1:0]         overflow1;
and_32 an1(.src1(src1),.src2(src2),.result(result1),.cout(cout1[0]),.zero(zero1[0]),.over(overflow1[0]));
or_32 an2(.src1(src1),.src2(src2),.result(result2),.cout(cout1[1]),.zero(zero1[1]),.over(overflow1[1]));
add_32 an3(.src1(src1),.src2(src2),.result(result3),.cout(cout1[2]),.zero(zero1[2]),.over(overflow1[2])
//,.a(as)
);
sub_32 an4(.src1(src1),.src2(src2),.result(result4),.cout(cout1[3]),.zero(zero1[3]),.over(overflow1[3]));
nor_32 an5(.src1(src1),.src2(src2),.result(result5),.cout(cout1[4]),.zero(zero1[4]),.over(overflow1[4]));
slt_32 an6(.src1(src1),.src2(src2),.result(result6),.cout(cout1[5]),.zero(zero1[5]),.over(overflow1[5]));
always@( clk or posedge rst_n) 
begin

if(!rst_n) 
	begin
	
	result=0;
	zero=0;
	cout=0;
	overflow=0;
	   
        
	end
	
	else
	begin
	if(ALU_control==4'b0000)//and
	     begin
           result=result1;
           cout=cout1[0];
           zero=zero1[0];
           overflow=overflow1[0];
         end
        else if(ALU_control==4'b0001)//or
        begin
            result=result2;
           cout=cout1[1];
           zero=zero1[1];
           overflow=overflow1[1];
        end
        else if(ALU_control==4'b0010)//add
        begin
            result=result3;
           cout=cout1[2];
           zero=zero1[2];
           overflow=overflow1[2];
        end
        else if(ALU_control==4'b0110)//sub
        begin
           result=result4;
           cout=cout1[3];
           zero=zero1[3];
           overflow=overflow1[3];
        end
        else if(ALU_control==4'b1100)//nor=~p&~Q
        begin
            result=result5;
           cout=cout1[4];
           zero=zero1[4];
           overflow=overflow1[4];
        end
        else if(ALU_control==4'b0111)//slt
        begin
            result=result6;
           cout=cout1[5];
           zero=zero1[5];
           overflow=overflow1[5];
        end
      if(result==0)
    zero=1;
    else
    zero=0;
    end
end
//Main function

endmodule





                    
                    