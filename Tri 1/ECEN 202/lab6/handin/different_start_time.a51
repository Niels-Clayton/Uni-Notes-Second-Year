		ORG	0H
		MOV	R0,#20
		MOV	R1,#22d			//Set time value = 0, seconds
		MOV	R2,#37d			//minutes
		MOV	R3,#19d			//hours
		ACALL SETDIS		//initialise the display
		MOV TMOD,#0x01
REPEAT:	MOV	TH0,#0x3C
		MOV	TL0,#0xB0
		SETB TR0
WAIT:	JNB TF0,WAIT
		CLR TR0
		CLR TF0
     	DJNZ R0,REPEAT
		MOV	TH0,#0x3C
		MOV	TL0,#0xB0
		SETB TR0
		MOV	R0,#19
		CPL P2.3			//output every second
		ACALL INCT			//Increment time
		ACALL DIST			//Display time
		AJMP WAIT

SETDIS: MOV	A,#30H			//Display initialisation routine
		ACALL	COMNWRT
		ACALL	DELAY1
		MOV	A,#0CH
		ACALL	COMNWRT
		ACALL	DELAY1
		MOV	A,#01
		ACALL	COMNWRT
		ACALL	DELAY2
		MOV	A,#06H
		ACALL	COMNWRT
		ACALL	DELAY1
		RET

INCT:	MOV A,R1					//Update Seconds
		ADD A, #1          			//incrament acc
		DA A			    		//convert to bcd
		MOV R1, A
		CJNE A, #60H, INCE  		//if not 60, return
		MOV R1,#0
		MOV A,R2					//Update minutes
		ADD A, #1          			//incrament acc
		DA A
		MOV R2, A					//convert to bcd
		CJNE A, #60H, INCE  		//if not 60, return
		MOV R2,#0
		MOV A,R3					//Update Hours
		ADD A, #1          			//incrament acc
		DA A			    		//convert to bcd
		MOV R3, A
		CJNE A, #24H, INCE  		//if not 24, return
		MOV R3,#0

INCE:	RET

DIST:	MOV	A,#01     			//Update display routine
		ACALL	COMNWRT    		//Reset display
		ACALL	DELAY2

		MOV	A,R3   			//move register 3 (hours)
		ACALL SHIFT			//jump to shift(rotates right 4 times)
		ANL	A, #0FH			//logical AND to mask upper nibble
		ORL A, #30H			//logical OR to place ‘0011’ in upper nibble
		ACALL DATAWRT		//write to port
		ACALL DELAY1			//delay
		MOV	A,R3   			//move register 3 (hours)
		ANL	A, #0FH			//logical AND to mask upper nibble
		ORL A, #30H			//logical OR to place ‘0011’ in upper nibble
		ACALL DATAWRT 		//write to port
		ACALL DELAY1 			//delay
		MOV A, #3AH			//move the ASCI value of ‘:’ to the acc
		ACALL DATAWRT		//write to port
		ACALL DELAY1			//delay

		MOV	A,R2  			//move register 2 (min)
		ACALL SHIFT			//jump to shift(rotates right 4 times)
		ANL	A, #0FH			//logical AND to mask upper nibble
		ORL A, #30H			//logical OR to place ‘0011’ in upper nibble
		ACALL DATAWRT		//write to port
		ACALL DELAY1			//delay
		MOV	A,R2  			//move register 3 (hours)
		ANL	A, #0FH			//logical AND to mask upper nibble
		ORL A, #30H			//logical OR to place ‘0011’ in upper nibble
		ACALL DATAWRT 		//write to port
		ACALL DELAY1 			//delay
		MOV A, #3AH			//move the ASCI value of ‘:’ to the acc
		ACALL DATAWRT		//write to port
		ACALL DELAY1			//delay

		MOV	A,R1  			//move register 1 (seconds)
		ACALL SHIFT			//jump to shift(rotates right 4 times)
		ANL	A, #0FH			//logical AND to mask upper nibble
		ORL A, #30H			//logical OR to place ‘0011’ in upper nibble
		ACALL DATAWRT		//write to port
		ACALL DELAY1			//delay
		MOV	A,R1 			//move register 3 (hours)
		ANL	A, #0FH			//logical AND to mask upper nibble
		ORL A, #30H			//logical OR to place ‘0011’ in upper nibble
		ACALL DATAWRT 		//write to port
		ACALL DELAY1 			//delay
		RET


COMNWRT:
		MOV	P1,A
		CLR	P2.0
		CLR	P2.1
		SETB	P2.2
		ACALL	DELAY1
		CLR	P2.2
		RET
DATAWRT:
		MOV	P1,A
		SETB	P2.0
		CLR	P2.1
		SETB	P2.2
		ACALL	DELAY1
		CLR	P2.2
		RET

DELAY1:	MOV	R5,#30 			//Short delay
LP1: 	DJNZ	R5,LP1
      	RET

DELAY2:	MOV	R5,#50 			//long delay
HERE2:	MOV	R4,#50
HERE: 	DJNZ	R4,HERE
     	DJNZ	R5,HERE2
      	RET

		END
