// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/QU02/double/Double.asm

// Doubles R0 and stores the result in R1.
// (R0, R1 refer to RAM[0] and RAM[1] respectively.)

// Put your code here.

//Initialize R0
@R0
D=M
D=D+M //Add R0 to itself (double it)

//Store double value in R1
@R1 
M=D

(END)
@END
0;JMP
