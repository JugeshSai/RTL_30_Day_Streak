1.AND GATE
module LOGIC_GATES (
input A, B,
output Y0
);
assign Y0=(A&B);
endmodule

2. OR GATE 
module LOGIC_GATES (
input A, B,
output Y0
);
assign Y0= (A|B);
endmodule

3. NOT GATE 
module LOGIC_GATES (
input A, B,
output Y0, Y1
);
assign Y0= !(A);
assign Y1 =!(B);
endmodule

4.NOR GATE 
module LOGIC_GATES (
input A, B,
output Y0
assign Y0= !(A|B);

5. NAND GATE  
module LOGIC_GATES (
input A, B,
output Y0
);
assign Y0= ! (A&B) ;
endmodule

6. XOR GATE   
module LOGIC_GATES (
input A, B,
output Y0
);
assign Y0=A^B;
endmodule

7. XNOR GATE  
module LOGIC_GATES (
input A, B,
output Y0
);
  assign Y0= ~(A^B);
endmodule
