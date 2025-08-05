// A simple AND gate design file
module and_gate(c, a, b);//module definition with port list, output port followed by input ports	
    input a, b;
    output c;
    assign c = a & b;// c is the target signal and operation is performed between input ports and output is written or assigned to the output port. assign is the inbuilt keyword
endmodule//keyword to end module definition
