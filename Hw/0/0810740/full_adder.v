`timescale 1ns / 1ps

module Full_Adder(
    In_A, In_B, Carry_in, Sum, Carry_out
    );
    input In_A, In_B, Carry_in;
    output Sum, Carry_out;
    
	// implement full adder circuit, your code starts from here.
	// use half adder in this module, fulfill I/O ports connection.
	wire tempc,temps,tempc2;
	//full adder need two half adder
	//verilog is a language to fulfill a circuit
	//from the circuit there are three lines between output input,which are tempc for first carry and temps for first sum and tempc2 for second carry==>get tempc,temps then use temps with carryin for Sum and tempc2==>or tempc2 and temp1 for Carry_out!
    Half_Adder HAD (
        .In_A(In_A),
        .In_B(In_B),
        .Sum(temps), 
        .Carry_out(tempc)
    );
     Half_Adder HAD2 (
        .In_A(temps),
        .In_B(Carry_in),
        .Sum(Sum), 
        .Carry_out(tempc2)
    );
    or(Carry_out,tempc,tempc2);
endmodule
