`timescale 1ns / 1ps

// EC-311 Lab-1 Part-1
  // The names of the variables are as described in the lab handout
module addersubtracter(A, B, cin, sum, carryout, v);
    
    input [3:0] A, B;
    input cin;
    output [3:0] sum;
    output carryout, v;
    
    wire [3:0]b; 

xor G1 (b[0], B[0], cin);
xor G2 (b[1], B[1], cin);
xor G3 (b[2], B[2], cin);
xor G4 (b[3], B[3], cin);

FourbitAdder FBA(.A(A), .B(b), .cin(cin), .sum(sum), .carryout(carryout), .v(v));

endmodule
