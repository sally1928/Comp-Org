// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/QU02/add/Add.asm

// Adds R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

//Creates R0
@R0  
D=M

//creates R1 and adds it to R0
@R1
D=M+D

//Stores R1+R0 into R2
@R2
M=D

(END)
@END
0;JMP






