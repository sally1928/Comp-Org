// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

(RESTART)
@SCREEN
D=A

@R0 
M=D	

(LOOP)
//
    @KBD
    D=M

    @BLACK 
    D;JGT	
    @WHITE
    0;JMP

(BLACK)
//
    @R1
    M=-1	

    @BW
    0;JMP

(WHITE)
//
    @R1
    M=0	

    @BW
    0;JMP

(BW)
//Reads value from memory stored in R1, saves it to D register
    @1	
    D=M	//D has either 0 or 1 (Black or White)

    @0  //Save value to A and M register
    A=M	
    M=D	    
    @0
    D=M+1
    @KBD
    D=A-D
    @0
    M=M+1	
    A=M

    @BW
    D;JGT

@RESTART
0;JMP


// TO TEST THE CODE
//     /fill/fillautomatic.tst
//     /CPUemulator.bat