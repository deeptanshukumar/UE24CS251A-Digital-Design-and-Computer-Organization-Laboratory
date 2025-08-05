// Testbench file for AND gate
module and2_test;//testbench module declaration. testbench module does not have input and output ports as it is used for simulation only. 
    reg a, b;//signal declaration step. register stores values. here values are the truth table entries.  
    wire c;// wires do not store the values on their own. they are used for connections only. signal declaration step ends here

    // Instantiate the AND gate
    and_gate and2_test(c, a, b);//device under test instantiation. instantiates a module called and_gate with the instance and2_test  

    initial begin// stimulus test generation. here you insert the truth table entries and output is automatically generated
        #0    a = 0; b = 0;// at time 0, set a =0, b =0 and output should be zero 
        #5    a = 0; b = 1;// after 5 time units set a =0, and b =1 and output should be zero         
	#10   a = 1; b = 0;//after 10 more units, set a =1 and b =0, output should be zero         
	#15   a = 1; b = 1;//after 15 more units, set a and b to 1 output should be one 
        #10   $finish;//stop the simulation after 10 more units
    end // End simulation

    initial begin//monitoring block. Monitor values and displays the output on the screen 
        $monitor($time, " a=%b, b=%b, c=%b", a, b, c);//$time is the current simulation time. $monitor is a function that prints the output. output is displayed in binary format
    end// end monitoring block

    initial begin//waveform dump block. sets up the waveform
        
        $dumpfile("and2_test.vcd");//creates a value change dump (vcd) to record the waveform
        $dumpvars(0, and2_test);//records all the signals in the test bench module 
    end
endmodule// end the testbench module

//execution steps
// compile the code - iverilog -o test1 designfilename.v testbenchfilename.v
// run the code - vvp test1
//generate waveform - gtkwave filename.vcd

//remember to save the files with .v extension
//create a folder in the drive where you have installed iverilog and place your code files there