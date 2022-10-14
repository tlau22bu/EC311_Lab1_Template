`timescale 1ns / 1ps

// EC-311 Lab-1 Part-2
  // The names of the variables are as described in the lab handout

module ALU(A, B, S, Y);
    input [3:0]A, B;
    input [1:0]S;
    output [7:0]Y;
    wire [7:0]J, K, L, M;
    
    ALUConcatenator con(.A(A), .B(B), .C(J)); //concat
    ALUAdder add(.A(A), .B(B), .sum(K)); //add
    ALUShifter shift(.A(A), .B(B), .C(L)); //shift
    ALUMultiplier multi(.A(A), .B(B), .product(M)); //multi
    
    ALUMux mux(.J(J), .K(K), .L(L), .M(M), .S(S), .Y(Y));
endmodule
