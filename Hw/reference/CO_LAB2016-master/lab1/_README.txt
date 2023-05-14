1. There are two test cases: a basic one and the other for bonus points.
	For testing a specific test case, copy all of those txt files to the folder where verilog files exist.
	For testing the basic test case, no need to modify testbench.v
	For the bonus case, please un-comment //`define BONUS
	For the use of the extra 3-bit ALU control input, Please refer to the architecture diagram in the PDF.

2. Basically "carryout" and "overflow" are meaningful only in the case of ADD and SUB.
	You can assume "carryout" and "overflow" 0 in the case other than ADD and SUB.

3. Name your submission (as a zip file) with your student ID, e.g., 0316001_0316002.zip
	And please attach your student IDs as comments at the top of each file
	ex.	alu.v
	-------------------------
	|//0316001_0316002		|
	|module alu(.....);		|
	|.....					|
	|.....					|
	|.....					|
	|endmodule				|
	-------------------------
	Remember to write the report.

4. DON'T change the module name of "alu", and DON'T change its input/output names.

5. If you have any problem, use E3 Discussion or email to us. TA will response ASAP.

=====

1. ���껡�� : ���O����Ӹ�Ƨ��A�@�Ӭ����D������A�@�Ӭ�bonus������A

              �b�����ծɡA�Ntxt�ɥ���J�PProject�P�Ӹ�Ƨ��U�A
 
              �b�����D�ɡA�����ק�testbench�A
 
              ���b��bonus�ɡA�бNtestbench���@�}�l�� //`define BONUS ���Ѯ��� 

   * �`�N : alu port ���R�W�n�P�Ҫ��� alu.v�ۦP

            bonus_control ���B�~�W�[�� 3 bits control�A�аѦ�pdf�Ҫ����ѦҬ[�c��


2. carryout �P overflow �o��� flag �q�`�u���b�� ADD �P SUB �B��ɤ~�ݥΨ�

3. ú��ɽХH�Ǹ������Y���ɦW(e.g. 0316001_0316002.zip)�A�O�o�g���i
   
   �C��verilog�ɳ̤W���ХH���ѼЪ`�Ǹ�
   
   ex.	alu.v
	-------------------------
	|//0316001_0316002		|
	|module alu(.....);		|
	|.....					|
	|.....					|
	|.....					|
	|endmodule				|
	-------------------------

4. �Фžզۧ��alu module��input ouput
	alu_top ���d���ɦP�ǥi�H�����p���


5. ��������D�i�H�W�Q�ת��d���αH�H�A�U�Ьݨ�|�ɧ֦^��


