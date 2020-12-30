.MODEL SMALL
.STACK 64
.DATA
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	cat_W              equ 25
	cat_H              equ 25
	cat_img           DB 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 17, 22, 22, 22, 22, 20, 19, 22, 19 
 DB 22, 20, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 18, 20, 24, 24, 24, 28, 29, 29, 29, 24, 23, 27, 21, 29, 22, 16, 16, 16, 16, 16, 16, 16, 16, 16, 19, 25, 26, 24 
 DB 20, 20, 28, 29, 29, 28, 24, 24, 28, 21, 29, 24, 18, 16, 16, 16, 16, 16, 16, 16, 16, 22, 28, 25, 20, 16, 17, 28, 29, 29, 27, 23, 28, 28, 21, 29, 28, 224, 16, 16 
 DB 16, 16, 16, 16, 16, 19, 26, 28, 20, 16, 16, 18, 28, 29, 29, 26, 22, 29, 28, 22, 29, 29, 19, 16, 16, 16, 16, 16, 16, 16, 19, 27, 23, 18, 16, 16, 18, 28, 29, 29 
 DB 27, 23, 28, 28, 26, 29, 29, 20, 17, 16, 16, 16, 16, 16, 16, 19, 25, 19, 16, 16, 16, 18, 28, 29, 29, 29, 27, 79, 54, 54, 54, 79, 26, 17, 16, 9, 9, 9, 9, 16 
 DB 18, 23, 21, 18, 16, 16, 17, 24, 29, 29, 78, 54, 53, 52, 52, 52, 53, 54, 126, 55, 54, 54, 54, 9, 16, 17, 19, 19, 17, 16, 16, 16, 19, 29, 80, 53, 53, 53, 53, 52 
 DB 52, 52, 53, 54, 54, 53, 52, 53, 9, 16, 16, 16, 16, 16, 16, 16, 16, 18, 151, 54, 53, 53, 53, 53, 52, 52, 52, 52, 53, 53, 53, 53, 54, 9, 16, 16, 16, 16, 16, 16 
 DB 16, 16, 16, 199, 126, 53, 53, 53, 53, 52, 52, 52, 52, 54, 54, 53, 53, 53, 9, 16, 16, 16, 16, 16, 16, 16, 16, 16, 17, 21, 79, 53, 53, 53, 53, 53, 53, 53, 79, 174 
 DB 54, 53, 54, 9, 16, 16, 16, 16, 16, 16, 16, 16, 16, 21, 27, 27, 26, 79, 54, 54, 79, 79, 79, 28, 27, 151, 151, 9, 16, 16, 16, 16, 16, 16, 16, 16, 16, 17, 23, 28 
 DB 174, 23, 27, 103, 103, 103, 27, 174, 23, 28, 22, 17, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 19, 29, 22, 79, 24, 23, 29, 29, 29, 22, 79, 24, 23, 27, 20, 16, 16, 16 
 DB 16, 16, 16, 16, 16, 16, 16, 19, 29, 26, 174, 23, 26, 29, 29, 29, 26, 149, 23, 26, 27, 20, 16, 16, 16, 16, 16, 16, 16, 16, 16, 17, 19, 29, 29, 27, 28, 29, 29, 29 
 DB 29, 29, 27, 28, 29, 27, 20, 17, 16, 16, 16, 16, 16, 16, 16, 17, 19, 25, 28, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 28, 24, 19, 16, 16, 16, 16, 16, 16, 16 
 DB 17, 22, 25, 26, 28, 29, 29, 29, 29, 29, 29, 29, 29, 29, 28, 26, 25, 22, 16, 16, 16, 16, 16, 16, 16, 22, 27, 28, 28, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29 
 DB 28, 28, 27, 21, 16, 16, 16, 16, 16, 16, 22, 26, 26, 26, 28, 29, 29, 29, 29, 29, 29, 29, 29, 28, 27, 26, 26, 26, 21, 16, 16, 16, 16, 16, 16, 17, 18, 18, 18, 23 
 DB 26, 28, 29, 29, 29, 29, 29, 25, 23, 18, 18, 18, 18, 17, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 18, 22, 22, 22, 22, 22, 22, 18, 16, 16, 16, 16, 16, 16, 16 
 DB 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16
​
​                                                                                                                                                                                     		;;Cat Moving Variables
​ xCoord dw ?
	yCoord             dw  ?
	;;Gravity Variables
	GravityRange       dw  ?
	LandLine           dw  142d
	firststepline      dw  105d
	GravityAccleration dw  2d
	isFalling          dw  0                                                                                                                                                              	;detect if the player is falling or not

.CODE
MAIN PROC FAR
	                 MOV  AX,@data
	                 MOV  DS,AX
	                 mov  ah,0
	                 mov  al,13h
	                 int  10h
	;;Draw Color Background

	;;;;;;;;;;;;;;;;;;;;;;;;;;;
						call waitForNewVR
	                 call DrawBackGround
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	CatDrawing:      
	                 mov  BX , 0
	                 mov  xCoord , BX
	                 mov  yCoord , 115
	                 call DrawCat
					 ;call CharacterGravity


	CHECK:           mov  ah,1
	                 int  16h
	                 jz   CHECK


	                 cmp  ah,72
	                 jz   MoveUp

	                 cmp  ah,80
	                 jz   MoveDown

	                 cmp  ah,75
	                 jz   MoveLeft

	                 cmp  ah,77
	                 jz   MoveRight

					 cmp al, 32
					 jz JUMPUP

	ReadKey:         
	                 mov  ah,0
	                 int  16h
					 call waitForNewVR
	                 call DrawBackGround
	                 call DrawCat
					 call CharacterGravity
					 call delay
	                 jmp  CHECK

	MoveUp:          
	          
	                 sub  yCoord,15
	                 jmp  ReadKey

	MoveDown:        
	          
	                 ;;add  yCoord , 4
	                 jmp  ReadKey

	MoveLeft:        
					 cmp xCoord, 0
					 jle ReadKey
	          
	                 sub  xCoord,6
	                 jmp  ReadKey

	MoveRight:       cmp xCoord, 292
					 jge ReadKey
	                 add  xCoord , 6
	                 jmp  ReadKey
	JUMPUP:
                    sub yCoord , 46
                    jmp ReadKey
	ENDING:          
MAIN ENDP

DrawBackGround proc
	                 MOV  CX ,0
	                 MOV  DX ,0
	                 MOV  AL,0Bh
	                 MOV  AH,0Ch
	FILL:            INT  10h
	                 INC  CX
	                 CMP  CX,320
	                 JNZ  FILL
	                 INC  DX
	                 MOV  CX,0
	                 CMP  DX,140
	                 JNZ  FILL
	                 JMP  LINEDRAWING
	;;DRAW LINE BETWEEN GROUND AND SKY
	LINEDRAWING:     
	                 MOV  CX ,0
	                 MOV  DX ,140
	                 MOV  AL,02h
	                 MOV  AH,0Ch
	FILL3:           INT  10h
	                 INC  CX
	                 CMP  CX,320
	                 JNZ  FILL3
	                 INC  DX
	                 MOV  CX,0
	                 CMP  DX,146
	                 JNZ  FILL3
	;Drawing Steps
	STEP1: ;first step on the left
                mov dx, 106
        Start1:  mov cx, 50
                mov al, 6
                mov ah, 0Ch
        StepDraw1: int 10h
                inc cx
                cmp cx, 125
                jnz StepDraw1
                DEC dx
                cmp dx, 102
                jnz Start1
    STEP2: ;second step on the right
                mov dx, 106
        Start2:  mov cx, 200
                mov al, 6
                mov ah, 0Ch
        StepDraw2: int 10h
                inc cx
                cmp cx, 275
                jnz StepDraw2
                DEC dx
                cmp dx, 102
                jnz Start2

    STEP3: ;Top Step
                mov dx, 70
        Start3:  mov cx, 115
                mov al, 6
                mov ah, 0Ch
        StepDraw3: int 10h
                inc cx
                cmp cx, 210
                jnz StepDraw3
                DEC dx
                cmp dx, 66
                jnz Start3
	;;;Draw Bottom of the image
	SCREENBOTTOM:    
	                 MOV  CX ,0
	                 MOV  DX ,146
	                 MOV  AL,05h
	                 MOV  AH,0Ch
	FILL2:           INT  10h
	                 INC  CX
	                 CMP  CX,320
	                 JNZ  FILL2
	                 JMP  CHANGECOLOR
	CONTINUE:        
	                 INC  DX
	                 MOV  CX,0
	                 CMP  DX,165
	                 JNZ  FILL2
	                 ret
	CHANGECOLOR:     
	                 CMP  AL,05
	                 JZ   COLORBROWN
	                 JMP  COLORBLACK
	COLORBROWN:      
	                 MOV  AL,07H
	                 JMP  CONTINUE
	COLORBLACK:      
	                 MOV  AL,05
	                 JMP  CONTINUE
	                 JMP  FILL2
DrawBackGround Endp

DrawCat proc
	                 push ax
	                 MOV  AH,0Bh
	                 MOV  CX, cat_W
	                 MOV  DX, cat_H
	                 mov  DI, offset cat_img
	                 jmp  Startcat
	Drawct:         
	                 MOV  AH,0Ch
	                 mov  al, [DI]
	                 CMP  al,16
	                 JZ   Startcat
	                 MOV  BH,00h
	                 add  cx,xCoord
	                 add  dx,yCoord
	                 INT  10h
	                 sub  cx , xCoord
	                 sub  dx , yCoord
	Startcat:        
	                 inc  DI
	                 DEC  Cx
	                 JNZ  Drawct
	                 mov  Cx, cat_W
	                 DEC  DX
	                 JZ   ENDINGcat
	                 Jmp  Drawct

	ENDINGcat:       
	                 pop  ax
	                 ret
DrawCat Endp

delay proc
	                 mov  di,00FFFH
	LOP1:            MOV  CX,1000
	LOP2:            LOOP LOP2
	                 DEC  DI
	                 JNZ  LOP1
	                 ret
delay Endp


CharacterGravity proc

	MOVINGPLAYERDOWN:
					
	                 MOV  AX , GravityAccleration
	                 ADD  yCoord , AX				;;Add the garvity value yCoordinate of the character
	                 MOV  AX , yCoord
	                 ADD  AX , cat_H				;;add the ycoord and the height of character to AX to check
;					 CMP  AX,firststepline               ;;if they are greater or equal to the landline (step 1 )
;	                 Jge   SecondCheck
;					 call waitForNewVR
;					 call DrawBackGround            ;;Remove the old position
;					 call DrawCat                   ;;Draw with new onw
;					 jmp MOVINGPLAYERDOWN
	                 CMP  AX,LandLine               ;;if they are greater or equal to the landline (ground)
	                 Jge   ENDMOVING
					 call waitForNewVR
					 call DrawBackGround            ;;Remove the old position
					 call DrawCat                   ;;Draw with new onw
					 jmp MOVINGPLAYERDOWN

ENDMOVING:
					 MOV  AX , GravityAccleration
	                 SUB  yCoord , AX
	                 ret
;SecondCheck:
;					mov ax, xCoord
;					cmp ax, 50
;					jge ENDMOVING
CharacterGravity Endp


waitForNewVR PROC

	;Wait for bit 3 to be zero (not in VR).
	;We want to detect a 0->1 transition.
 	 MOV DX, 3DAH

	;WAIT FOR BIT 3 TO BE ONE (IN VR)
	_WAITFOREND:
		 IN AL, DX
		 TEST AL, 08H
		 JNZ _WAITFOREND

	_WAITFORNEW:
		 IN AL, DX
		 TEST AL, 08H
		 JZ _WAITFORNEW
	 
 	 RET
waitForNewVR ENDP


END MAIN