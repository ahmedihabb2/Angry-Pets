.MODEL SMALL
.STACK 64
.DATA
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	cat_W                     equ 25
	cat_H                     equ 25
	heart_W                   equ 15
	heart_H                   equ 15
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;PowerUps;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    PowerUpsYpos              DW 100, 64   ;100 for step 1, 2 ; 64 for step 3
    steps_to_draw_powerUps    DW 0, 1, 2, 3 ;if 0 then nothing will be drawn
    RandomXpos_Step1          DW 60, 80, 110, 70
    RandomXpos_Step2          DW 200, 220, 250, 260
    RandomXpos_Step3          DW 120, 150, 190, 170
    heart_powerupX            DW ?
    heart_powerupY            DW ?
    draw_PowerUp              DB 1
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;End Power Ups;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	xCoord dw ? ;  cat x coordinate
	yCoord dw  ? ;  cat y coordinate
	cat_img                   DB  16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 17, 22, 22, 22, 22, 20, 19, 22, 19
	                          DB  22, 20, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 18, 20, 24, 24, 24, 28, 29, 29, 29, 24, 23, 27, 21, 29, 22, 16, 16, 16, 16, 16, 16, 16, 16, 16, 19, 25, 26, 24
	                          DB  20, 20, 28, 29, 29, 28, 24, 24, 28, 21, 29, 24, 18, 16, 16, 16, 16, 16, 16, 16, 16, 22, 28, 25, 20, 16, 17, 28, 29, 29, 27, 23, 28, 28, 21, 29, 28, 224, 16, 16
	                          DB  16, 16, 16, 16, 16, 19, 26, 28, 20, 16, 16, 18, 28, 29, 29, 26, 22, 29, 28, 22, 29, 29, 19, 16, 16, 16, 16, 16, 16, 16, 19, 27, 23, 18, 16, 16, 18, 28, 29, 29
	                          DB  27, 23, 28, 28, 26, 29, 29, 20, 17, 16, 16, 16, 16, 16, 16, 19, 25, 19, 16, 16, 16, 18, 28, 29, 29, 29, 27, 79, 54, 54, 54, 79, 26, 17, 16, 9, 9, 9, 9, 16
	                          DB  18, 23, 21, 18, 16, 16, 17, 24, 29, 29, 78, 54, 53, 52, 52, 52, 53, 54, 126, 55, 54, 54, 54, 9, 16, 17, 19, 19, 17, 16, 16, 16, 19, 29, 80, 53, 53, 53, 53, 52
	                          DB  52, 52, 53, 54, 54, 53, 52, 53, 9, 16, 16, 16, 16, 16, 16, 16, 16, 18, 151, 54, 53, 53, 53, 53, 52, 52, 52, 52, 53, 53, 53, 53, 54, 9, 16, 16, 16, 16, 16, 16
	                          DB  16, 16, 16, 199, 126, 53, 53, 53, 53, 52, 52, 52, 52, 54, 54, 53, 53, 53, 9, 16, 16, 16, 16, 16, 16, 16, 16, 16, 17, 21, 79, 53, 53, 53, 53, 53, 53, 53, 79, 174
	                          DB  54, 53, 54, 9, 16, 16, 16, 16, 16, 16, 16, 16, 16, 21, 27, 27, 26, 79, 54, 54, 79, 79, 79, 28, 27, 151, 151, 9, 16, 16, 16, 16, 16, 16, 16, 16, 16, 17, 23, 28
	                          DB  174, 23, 27, 103, 103, 103, 27, 174, 23, 28, 22, 17, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 19, 29, 22, 79, 24, 23, 29, 29, 29, 22, 79, 24, 23, 27, 20, 16, 16, 16
	                          DB  16, 16, 16, 16, 16, 16, 16, 19, 29, 26, 174, 23, 26, 29, 29, 29, 26, 149, 23, 26, 27, 20, 16, 16, 16, 16, 16, 16, 16, 16, 16, 17, 19, 29, 29, 27, 28, 29, 29, 29
	                          DB  29, 29, 27, 28, 29, 27, 20, 17, 16, 16, 16, 16, 16, 16, 16, 17, 19, 25, 28, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 28, 24, 19, 16, 16, 16, 16, 16, 16, 16
	                          DB  17, 22, 25, 26, 28, 29, 29, 29, 29, 29, 29, 29, 29, 29, 28, 26, 25, 22, 16, 16, 16, 16, 16, 16, 16, 22, 27, 28, 28, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29
	                          DB  28, 28, 27, 21, 16, 16, 16, 16, 16, 16, 22, 26, 26, 26, 28, 29, 29, 29, 29, 29, 29, 29, 29, 28, 27, 26, 26, 26, 21, 16, 16, 16, 16, 16, 16, 17, 18, 18, 18, 23
	                          DB  26, 28, 29, 29, 29, 29, 29, 25, 23, 18, 18, 18, 18, 17, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 18, 22, 22, 22, 22, 22, 22, 18, 16, 16, 16, 16, 16, 16, 16
	                          DB  16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16
​
	heart_img                 DB  16, 16, 16, 16, 16, 16, 16, 152, 23, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 154, 228, 153, 26, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 153, 228, 110, 204, 153
	                          DB  16, 16, 16, 16, 16, 16, 16, 16, 16, 153, 228, 110, 39, 109, 204, 225, 16, 16, 16, 16, 16, 16, 16, 16, 228, 110, 39, 39, 39, 109, 204, 153, 16, 16, 16, 16, 16, 16, 201, 204
	                          DB  109, 39, 39, 39, 39, 110, 204, 24, 16, 16, 16, 16, 152, 204, 109, 39, 39, 12, 12, 39, 39, 110, 129, 16, 16, 16, 152, 204, 109, 39, 39, 12, 12, 12, 12, 39, 39, 109, 226, 16
	                          DB  16, 129, 180, 39, 39, 12, 12, 12, 12, 12, 12, 39, 109, 200, 16, 23, 204, 109, 39, 12, 12, 12, 12, 12, 12, 12, 38, 109, 109, 128, 23, 202, 39, 12, 12, 12, 12, 12, 12, 12
	                          DB  12, 87, 12, 110, 225, 24, 129, 110, 12, 12, 12, 12, 109, 12, 12, 12, 87, 12, 202, 129, 16, 128, 204, 12, 12, 12, 134, 129, 204, 12, 63, 12, 134, 201, 16, 16, 16, 129, 134, 12
	                          DB  134, 227, 23, 152, 204, 133, 133, 227, 24, 16, 16, 16, 23, 228, 201, 226, 23, 16, 24, 152, 201, 202, 24, 16, 16
;;;;;;;;;;;;;;;;;;;;;;;;;;;; fish variables ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
fish_W equ 20  ; fish width
    fish_H equ 20 ; fish height
	xf dw ? ;  fish x coordinate
	yf dw  ? ; fish y coordinate
	fish_velocity dw 02h 
    fish_img DB 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31 
	DB 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31 
	DB 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 30, 31, 30, 31, 31, 31, 30, 31, 31, 31, 31, 31, 31, 31, 31 
	DB 31, 31, 31, 31, 31, 30, 30, 31, 31, 31, 30, 31, 31, 30, 31, 31, 30, 31, 31, 31, 31, 31, 31, 31, 29, 23, 23, 30, 31, 28, 28, 28, 28, 27, 29, 31, 31, 31, 31, 30 
	DB 31, 31, 31, 31, 26, 241, 21, 26, 26, 20, 20, 17, 20, 21, 23, 28, 31, 31, 31, 31, 31, 31, 31, 31, 28, 169, 21, 23, 24, 28, 26, 20, 26, 26, 22, 26, 31, 31, 30, 31 
	DB 31, 31, 31, 31, 28, 23, 21, 23, 23, 29, 28, 25, 28, 26, 22, 26, 31, 31, 31, 31, 31, 31, 31, 31, 26, 20, 21, 26, 27, 21, 21, 21, 21, 20, 24, 29, 31, 31, 31, 31 
	DB 31, 31, 31, 31, 30, 23, 24, 30, 31, 28, 27, 28, 28, 28, 29, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 29, 30, 31, 31, 31, 31, 31, 30, 30, 31, 31, 31, 31, 31, 31 
	DB 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 30, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31 
	DB 31, 31, 31, 31, 30, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31 
	DB 31, 31, 31, 31, 31, 31, 30, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31 
	​
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; dog variables ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 dog_W   equ 30; dog width
	dog_H   equ 25  ;dog height
	xd dw ?  ; dog x coordinate
    yd dw ?  ; dog y coordinate
	ybelow_dog dw ?  ; dog y coordinate (below)
	dog_img DB 16, 16, 16, 16, 16, 16, 183, 137, 164, 24, 24, 24, 23, 159, 136, 16, 16, 17, 135, 23, 162, 160, 183, 183, 17, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 183, 139, 66, 66, 89 
	DB 30, 31, 30, 30, 22, 183, 183, 209, 26, 0, 31, 24, 25, 26, 230, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 209, 65, 66, 66, 66, 66, 26, 163, 160, 22, 24, 160, 136, 65, 66 
	DB 65, 137, 24, 25, 234, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 137, 66, 66, 66, 66, 66, 30, 29, 23, 23, 27, 24, 138, 66, 66, 24, 137, 139, 138, 17, 16, 16, 16, 16, 16 
	DB 16, 16, 16, 183, 183, 139, 66, 66, 66, 66, 66, 30, 31, 29, 137, 24, 24, 163, 65, 66, 24, 137, 139, 136, 16, 16, 16, 16, 16, 16, 16, 209, 136, 138, 138, 162, 66, 66, 66, 66 
	DB 66, 90, 31, 26, 138, 140, 163, 164, 66, 66, 65, 26, 163, 136, 16, 16, 16, 16, 16, 16, 209, 138, 164, 164, 137, 138, 66, 66, 66, 66, 66, 66, 89, 163, 12, 66, 65, 64, 66, 66 
	DB 89, 28, 26, 233, 16, 16, 16, 16, 16, 16, 210, 164, 65, 164, 17, 136, 66, 66, 66, 66, 66, 64, 164, 65, 66, 66, 66, 65, 66, 66, 29, 30, 30, 23, 17, 16, 16, 16, 16, 16 
	DB 210, 164, 66, 23, 17, 183, 24, 66, 66, 65, 163, 65, 66, 66, 66, 66, 66, 66, 66, 89, 31, 31, 31, 25, 17, 16, 16, 16, 16, 16, 183, 138, 65, 89, 138, 183, 136, 66, 66, 66 
	DB 66, 66, 66, 66, 66, 66, 66, 66, 66, 30, 31, 31, 31, 26, 17, 16, 16, 16, 16, 16, 16, 183, 137, 163, 163, 208, 16, 137, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 30 
	DB 31, 31, 31, 29, 234, 16, 16, 183, 183, 16, 16, 16, 16, 16, 16, 16, 16, 16, 136, 24, 66, 66, 66, 66, 66, 66, 66, 66, 66, 89, 30, 31, 31, 30, 22, 183, 16, 160, 62, 183 
	DB 16, 16, 16, 16, 16, 16, 16, 16, 16, 185, 137, 65, 66, 66, 66, 66, 66, 66, 66, 66, 89, 0, 31, 30, 29, 26, 162, 158, 63, 183, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16 
	DB 208, 208, 163, 66, 66, 66, 66, 66, 66, 66, 89, 30, 31, 0, 28, 23, 159, 63, 156, 183, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 17, 139, 66, 66, 66, 66, 66, 66 
	DB 30, 31, 31, 29, 209, 207, 135, 135, 183, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 17, 138, 66, 66, 66, 66, 90, 0, 31, 31, 28, 209, 183, 183, 17, 16, 16 
	DB 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 17, 139, 66, 66, 66, 91, 31, 31, 31, 31, 31, 31, 29, 160, 234, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16 
	DB 16, 16, 16, 16, 16, 136, 66, 66, 66, 90, 90, 66, 66, 66, 89, 91, 0, 23, 136, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 210, 65, 66, 66, 66 
	DB 66, 65, 163, 163, 65, 66, 90, 137, 183, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 209, 65, 66, 66, 66, 66, 66, 23, 137, 66, 66, 138, 208, 16, 16 
	DB 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 17, 163, 66, 66, 66, 66, 66, 66, 90, 91, 64, 208, 186, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16 
	DB 16, 16, 16, 16, 16, 17, 138, 65, 139, 164, 65, 66, 66, 66, 66, 137, 208, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 209, 138, 136, 136 
	DB 136, 137, 162, 139, 209, 137, 208, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 208, 210, 136, 137, 17, 16, 16, 17, 210, 137, 208, 16, 16, 16 
	DB 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 17, 183, 209, 208, 16, 16, 16, 17, 208, 17, 16, 16, 16
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
​                                                                                                                                                                                                           		;;Cat Moving Variables
​ 
	;;Gravity Variables
	GravityRange              dw  ?
	LandLine                  dw  142d
	firststepline             dw  105d
	secondstepline            dw  69d
	GravityAccleration        dw  2d
	isFalling                 dw  0      
	                                                                                                                                                                       	;detect if the player is falling or not
	; health bar drawing
	HealthBarPos                       db          '$'
	temp_cx_HealthBar                  dw          '$'
	temp2_cx_HealthBar                 dw          '$'
	temp_dx_HealthBar                  dw          '$'
	temp_cx_HealthFillingBar           dw          '$'
	temp2_cx_HealthFillingBar          dw          '$'

	; save the location of the health of 1st player
	Player1_Health_cx                  dw          '$'     
	; save the location of the health of 2nd player
	Player2_Health_cx                  dw          '$'     


	Player1_DecHealth                  dw           0     ; If 1st player got hit   
	Player2_DecHealth                  dw           0     ; If 2nd player got hit 

	Player2_IncHealth                  dw           0     ; If 1st player got powerup   
	Player1_IncHealth                  dw           0     ; If 2nd player got powerup 
	HealthBarDrawn                     dw           0    ;to make sure that its drawn only once            
	countHB1                           dw           0
	countHB2                           dw           0

	;-----------------------------------
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

	; Drawing health bars
	                    mov  HealthBarPos, 'F'            	; stands for first player's health bar
	                    call Draw_Health_Bar
                   
                    
	                    mov  HealthBarPos, 'S'            	; stands for second player's health bar
	                    call Draw_Health_Bar
						inc HealthBarDrawn                   ; to indicate that it has been drawn once
						call GenerateRandomNumber
                        call DrawHeart
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	CatDrawing:         
	                    mov  BX , 0
	                    mov  xCoord , BX
	                    mov  yCoord , 115
						call DrawCat
	                    

	DogDrawing:	
						mov BX , 200
						mov DX  ,115
						mov  xd, BX
						mov  yd , DX
						call DrawDog	   
					
					 
	;call CharacterGravity


	CHECK:              mov  ah,1
	                    int  16h
	                    jz   CHECK

                        cmp  ah,44
	                    jz   Fish_Hit

	                    cmp  ah,72
	                    jz   MoveUp

	                    cmp  ah,80
	                    jz   MoveDown

	                    cmp  ah,75
	                    jz   MoveLeft

	                    cmp  ah,77
	                    jz   MoveRight

	                    cmp  al, 32
	                    jz   JUMPUP

	ReadKey:            
	                    mov  ah,0
	                    int  16h
	                    call waitForNewVR
	                    call UpdatedBackground
						call DrawHeart
	                    ; mov  HealthBarPos, 'F'            	; stands for first player's health bar
	                    ; call Draw_Health_Bar
	                    ; mov  HealthBarPos, 'S'            	; stands for second player's health bar
	                    ; call Draw_Health_Bar
	                    call DrawCat
						
	                    call DrawDog
						
	                    call CharacterGravity
	                    ;call delay
	                    jmp  CHECK

	MoveUp:             
	          
	                    sub  yCoord,6
	                    jmp  ReadKey

	MoveDown:           
	          
	;;add  yCoord , 4
	                    jmp  ReadKey

	MoveLeft:           
	                    cmp  xCoord, 0
	                    jle  ReadKey
	          
	                    sub  xCoord,6
	                    jmp  ReadKey

	MoveRight:          cmp  xCoord, 292
	                    jge  ReadKey
	                    add  xCoord , 6
	                    jmp  ReadKey
	JUMPUP:             
	                    sub  yCoord , 46
	                    jmp  ReadKey
	Fish_Hit:                  
	                    call CatHitDog
						jmp  ReadKey

	ENDING:             
MAIN ENDP

DrawBackGround proc
	                    MOV  CX ,0
	                    MOV  DX ,0
	                    MOV  AL,0Bh
	                    MOV  AH,0Ch
	FILL:               INT  10h
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
	FILL3:              INT  10h
	                    INC  CX
	                    CMP  CX,320
	                    JNZ  FILL3
	                    INC  DX
	                    MOV  CX,0
	                    CMP  DX,146
	                    JNZ  FILL3
	;Drawing Steps
	STEP1:                                                	;first step on the left
	                    mov  dx, 106
	Start1:             mov  cx, 50
	                    mov  al, 6
	                    mov  ah, 0Ch
	StepDraw1:          int  10h
	                    inc  cx
	                    cmp  cx, 125
	                    jnz  StepDraw1
	                    DEC  dx
	                    cmp  dx, 102
	                    jnz  Start1
	STEP2:                                                	;second step on the right
	                    mov  dx, 106
	Start2:             mov  cx, 200
	                    mov  al, 6
	                    mov  ah, 0Ch
	StepDraw2:          int  10h
	                    inc  cx
	                    cmp  cx, 275
	                    jnz  StepDraw2
	                    DEC  dx
	                    cmp  dx, 102
	                    jnz  Start2

	STEP3:                                                	;Top Step
	                    mov  dx, 70
	Start3:             mov  cx, 115
	                    mov  al, 6
	                    mov  ah, 0Ch
	StepDraw3:          int  10h
	                    inc  cx
	                    cmp  cx, 210
	                    jnz  StepDraw3
	                    DEC  dx
	                    cmp  dx, 66
	                    jnz  Start3
	;;;Draw Bottom of the image
	SCREENBOTTOM:       
	                    MOV  CX ,0
	                    MOV  DX ,146
	                    MOV  AL,06h
	                    MOV  AH,0Ch
	FILL2:              INT  10h
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
	                    CMP  AL,06h
	                    JZ   COLORBROWN
	                    JMP  COLORBLACK
	COLORBROWN:         
	                    MOV  AL,06h
	                    JMP  CONTINUE
	COLORBLACK:         
	                    MOV  AL,05
	                    JMP  CONTINUE
	                    JMP  FILL2
DrawBackGround Endp


UpdatedBackground proc
						MOV  CX,0
	                    MOV  DX ,20
	                    MOV  AL,0Bh
	                    MOV  AH,0Ch
	FILLUpdatedBG:      INT  10h
	                    INC  CX
	                    CMP  CX,320
	                    JNZ  FILLUpdatedBG
	                    INC  DX
	                    MOV  CX,0
	                    CMP  DX,140
	                    JNZ  FILLUpdatedBG

						MOV  CX,72
	                    MOV  DX ,0
	                    MOV  AL,0Bh
	                    MOV  AH,0Ch
	FILLUpdatedBG2:      INT  10h
	                    INC  CX
	                    CMP  CX,250
	                    JNZ  FILLUpdatedBG2
	                    INC  DX
	                    MOV  CX,72
	                    CMP  DX,140
	                    JNZ  FILLUpdatedBG2

		                jmp LINEDRAWING
UpdatedBackground endp
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
	                    mov  di,00FFAH
	LOP1:               MOV  CX,700
	LOP2:               LOOP LOP2
	                    DEC  DI
	                    JNZ  LOP1
	                    ret
delay Endp
	;;This one is used For gravity because it is much less than the above delay
delay2 proc
	                    mov  di,00FFAH
	LOP12:              MOV  CX,300
	LOP22:              LOOP LOP22
	                    DEC  DI
	                    JNZ  LOP12
	                    ret
delay2 Endp


CharacterGravity proc
;;yCoord represents the y coordinate of the character (at his leg)
	MOVINGPLAYERDOWN:   
	                    MOV  AX , yCoord                 
						add  AX , cat_H
						CMP  AX , secondstepline     ;;Check if the cat body is above than the second step
						JLE  CHECKBEFOREENDSTEP2     ;;if yes jump to this label to make cat land at this step or fall if the cat is not in same x Coord of the step
						SUB  AX , cat_H  
	                    CMP  AX , firststepline      ;;Same as the above
	                    JLE  CHECKBEFOREEND               	
	CONTMOVING:         MOV  AX , GravityAccleration  ;;if the character jumps on the air he should fall to the ground and this label is responsible for that
	                    ADD  yCoord , AX                  	
	                    MOV  AX , yCoord
	                    add  AX , cat_H
	                    CMP  AX,LandLine             ;;if the character reaches the ground we stop the gravity effect , else it continue to fall        	
	                    Jge  ENDMOVING
	                    call waitForNewVR
	                    call UpdatedBackground    
						call DrawHeart        	
	                    call DrawCat                      	
	                    call DrawDog
	                    ;call delay2                       	
	                    jmp  MOVINGPLAYERDOWN
					 
CHECKBEFOREEND:     ;;This label is for checking if the cat at the X coordinates of the step or not (for first two steps)
	                    MOV  BX , xCoord
	                    CMP  BX ,35
	                    JGE  SECONDCHECK
	                    JMP  CONTMOVING
	SECONDCHECK:        CMP  BX,125
	                    JLE  LANDONSTEP    ;;if the character between x Coordinates of the first step we jump to this label in order to make the character lands on step
	                    JMP  CHECKBEFOREEND2
	CHECKBEFOREEND2:    MOV  BX , xCoord
	                    CMP  BX ,190
	                    JGE  SECONDCHECK2
	                    JMP  CONTMOVING
	SECONDCHECK2:       CMP  BX,275
	                    JLE  LANDONSTEP   ;;if the character between x Coordinates of the second step we jump to this label in order to make the character lands on step
	                    JMP  CONTMOVING
	;;This label is for checking if the cat at the X coordinates of the third step 
	CHECKBEFOREENDSTEP2: MOV  BX , xCoord
	                    CMP  BX ,80
	                    JGE  SECONDCHECKSTEP2
	                    JMP  CONTMOVING
	SECONDCHECKSTEP2:   CMP  BX,210
	                    JLE  LANDONSTEP2 ;;if the character between x Coordinates of the above step we jump to this label in order to make the character lands on step
	                    JMP  CONTMOVING
ENDMOVING:
	                    MOV  AX , GravityAccleration
	                    sub  yCoord , AX
	                    ret

	LANDONSTEP:         call waitForNewVR
	                    call UpdatedBackground            	;;Remove the old position
						call DrawHeart
	                    call DrawCat                      	;;Draw with new onw
	                    call DrawDog
	                    ;call delay2                       	;;Draw with new onw
	                    MOV  AX , GravityAccleration
	                    ADD  yCoord , AX
	                    MOV  AX , yCoord
	                    add  AX , cat_H
	                    CMP  AX,firststepline             	;;if they are greater or equal to the landline (ground)
	                    Jge  ENDMOVING
	                    JMP  LANDONSTEP

	LANDONSTEP2:        call waitForNewVR
	                    call UpdatedBackground            	;;Remove the old position
						call DrawHeart
	                    call DrawCat                      	;;Draw with new onw
	                    call DrawDog
	                    ;call delay2                       	;;Draw with new onw
	                    MOV  AX , GravityAccleration
	                    ADD  yCoord , AX
	                    MOV  AX , yCoord
	                    add  AX , cat_H
	                    CMP  AX,secondstepline           	;;if they are greater or equal to the landline (ground)
	                    Jge  ENDMOVING
	                    JMP  LANDONSTEP2
	

CharacterGravity Endp

waitForNewVR PROC

	;Wait for bit 3 to be zero (not in VR).
	;We want to detect a 0->1 transition.
	                    MOV  DX, 3DAH

	;WAIT FOR BIT 3 TO BE ONE (IN VR)
	_WAITFOREND:        
	                    IN   AL, DX
	                    TEST AL, 08H
	                    JNZ  _WAITFOREND

	_WAITFORNEW:        
	                    IN   AL, DX
	                    TEST AL, 08H
	                    JZ   _WAITFORNEW
	 
	                    RET
waitForNewVR ENDP

DrawHeart proc


	                    push ax
        CheckYpos1:     mov ax,yCoord
                        cmp heart_powerupY, ax
                        jl  DidnotTake
        CheckYpos2:     add ax,cat_H
                        cmp heart_powerupY, ax
                        jg  DidnotTake
        CheckXpos1:     mov ax,xCoord
                        cmp heart_powerupX, ax
                        jl  DidnotTake
        CheckXpos2:     add ax,cat_W
                        cmp heart_powerupX, ax
                        jg  DidnotTake
        took:
                        call GenerateRandomNumber
        DidnotTake:
                        cmp draw_PowerUp, 0
                        jz ENDINGHeart
        
	                    MOV  AH,0Bh
	                    MOV  CX, heart_W
	                    MOV  DX, heart_H
	                    mov  DI, offset heart_img
                        
	                    jmp  StartHeart
                        
	Drawalb:            
	                    MOV  AH,0Ch
	                    mov  al, [DI]
	                    CMP  al,16
	                    JZ   StartHeart
	                    MOV  BH,00h
	                    add  cx,heart_powerupX
                        sub dx, heart_W
	                    add  dx,heart_powerupY
                       
	                    INT  10h
	                    sub  cx , heart_powerupX
                        add dx, heart_W
	                    sub  dx , heart_powerupY
                        
	StartHeart:         
	                    inc  DI
	                    DEC  Cx
	                    JNZ  Drawalb
	                    mov  Cx, heart_W
	                    DEC  DX
	                    JZ   ENDINGHeart
	                    Jmp  Drawalb

	ENDINGHeart:        mov draw_PowerUp , 1
	                    pop  ax
	                    ret
DrawHeart Endp



 Draw_Health_Bar PROC 

;------------------- check whether the 1st player has been hit?
                 cmp Player1_DecHealth,0 ; no hits
                 je SecondPlayerTest   

;------------------- check whether the 1st player is the loser?
                sub Player1_Health_cx,1
                cmp Player1_Health_cx, 21
                ja decHealth1
                jmp FinishHealthBar
  
                
 decHealth1:
                mov cx, Player1_Health_cx
                mov dx,10
                mov al,04 ;Pixel color
                mov ah,0ch ;Draw Pixel Command
                decP1: int 10h
                inc dx
                cmp dx,19
                jnz decP1
                Inc countHB1    ;for only doubling the value to decrease 
                cmp countHB1,2
                jb doubleHB1
                jmp countinueHB
                
                doubleHB1: dec Player1_Health_cx 
                jmp decHealth1
                countinueHB:
                mov countHB1,0
               
;------------------- check again whether the 1st player is the loser now?
                cmp Player1_Health_cx, 21
                jbe ReFinish  
   
;------------------------------- check whether the 2nd player has been hit? ----------------------
SecondPlayerTest:
                
                 cmp Player2_DecHealth,0 
                 je check_draw_HB  

;------------------- check whether the 2nd player is the loser?
                   sub Player2_Health_cx,1
                   cmp Player2_Health_cx, 251
                   jbe ReFinish  

 decHealth2:
                 
                mov cx, Player2_Health_cx
                mov dx,10
                mov al,04       
                mov ah,0ch 
                decP2: int 10h
                inc dx
                cmp dx,19
                jnz decP2
                Inc countHB2
                cmp countHB2,2
                jb doubleHB2
                jmp countinueHB2
                
                doubleHB2: dec Player2_Health_cx 
                jmp decHealth2
                countinueHB2:
                mov countHB2,0

;------------------- check again whether the 2nd player is the loser?
                  cmp Player2_Health_cx, 251
                  jbe ReFinish 

;----------------------------------to make sure that it is drawn once ------------------      
check_draw_HB:  
                mov ax, HealthBarDrawn
                cmp ax,0
                je DrawFirst 


ReFinish: jmp FinishHealthBar
; ---------------------------------- Backcolor of health bar------------------------------
DrawFirst:
                mov al,0h ; backcolor of the bar 
                mov ah,0ch   

                ; position of 1st player's health bar 
                mov cx,20 
                mov dx,9
            
                cmp HealthBarPos, 70  ; if it is for the first player then jump to temp
                Je temp 

                ; else update x position for the 2nd player's health bar                          
                mov cx, 250
    
                ; store values of cx, dx to loop on them according to which player's health bar is being drawn
    temp:
                mov temp_cx_HealthBar, cx
                mov temp2_cx_HealthBar, cx ; stores the original value of cx, before updating it
                add temp_cx_HealthBar, 50
                mov temp_dx_HealthBar, dx
                add temp_dx_HealthBar, dx
                add temp_dx_HealthBar, 2

    BarBackDrawing:
                inc cx
                int 10h
                cmp cx, temp_cx_HealthBar
                JNE BarBackDrawing
                mov cx, temp2_cx_HealthBar  
                inc dx      
                cmp dx, temp_dx_HealthBar
                JNE BarBackDrawing

;-------------------------------- Filling the bar with greencolor ------------------------------
                mov al,02h  ; defult green color for the filling of the bar
                mov ah,0ch   

                ; position of 1st player's health bar 
                mov cx, 21
                mov dx,10
                cmp HealthBarPos, 70  ; if it is for the first player then jump to temp
                Je tempFilling

                ; else update x position for the 2nd player's health bar                          
                mov cx, 251
    
                ; store values of cx, dx to loop on them according to which player's health bar is being drawn
    tempFilling:
                mov temp_cx_HealthFillingBar, cx
                mov temp2_cx_HealthFillingBar, cx ; stores the original value of cx, before updating it
                add temp_cx_HealthFillingBar, 48

    BarFilling:
                inc cx
                int 10h
                cmp cx, temp_cx_HealthFillingBar 
                JNE BarFilling
                mov cx,temp2_cx_HealthFillingBar 
                inc dx      
                cmp dx, 19
                JNE BarFilling

             mov Player1_Health_cx,70
             mov Player2_Health_cx,300

FinishHealthBar:
             mov  Player2_DecHealth,0
             mov  Player1_DecHealth,0


RET

Draw_Health_Bar ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  Draw Fish ;;;;;;;;;;;;;;;;;;;;;;;;;;
DrawFish proc
                   push ax
	               MOV  AH,0Bh
	               MOV  CX, fish_W
	               MOV  DX, fish_H
	               mov  DI, offset fish_img
	               jmp  Startfish
	Drawfi:        
	               MOV  AH,0Ch
	               mov  al, [DI]
	               CMP  al,31
	               JZ   Startfish
	               MOV  BH,00h
	               add  cx,xf
	               add  dx,yf
	               INT  10h
	               sub  cx , xf
	               sub  dx , yf
	Startfish:      
	               inc  DI
	               DEC  Cx
	               JNZ  Drawfi
	               mov  Cx, fish_W
	               DEC  DX
	               JZ   ENDINfish
	               Jmp  Drawfi

	ENDINfish:     
	               pop  ax
	               ret

DrawFish Endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  Draw Dog ;;;;;;;;;;;;;;;;;;;;;;
DrawDog	   proc
                 push ax
	               MOV  AH,0Bh
	               MOV  CX, dog_W
	               MOV  DX, dog_H
	               mov  DI, offset dog_img
	               jmp  Startdog
	Drawdg:        
	               MOV  AH,0Ch
	               mov  al, [DI]
	               CMP  al,16
	               JZ   Startdog
	               MOV  BH,00h
	               add  cx,xd
	               add  dx,yd
	               INT  10h
	               sub  cx , xd
	               sub  dx , yd
	Startdog:      
	               inc  DI
	               DEC  Cx
	               JNZ  Drawdg
	               mov  Cx, dog_W
	               DEC  DX
	               JZ   ENDINGdog
	               Jmp  Drawdg

	ENDINGdog:     
	               pop  ax
	               ret
DrawDog	  endp  
;;;;;;;;;;;;;;;;;;;; Cat Hits The Dog  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
CatHitDog proc
; initial draw for the fish 
                   mov BX , xCoord
	               add BX, 10 ; start position x for the fish
	               mov DX, yCoord ; start position y for the fish
	               mov  xf , BX
	               mov  yf , DX
	               call DrawFish 
				   mov cx, yd ; y above coordiante of the dog
				   sub cx, dog_W ; (Y above - dog width)
				   mov ybelow_dog ,cx ; y below coordiante of the dog 
; loop for fish movement till it hits the dog or reaches end of the screen				    
			repeat: 
			        ; determine direction of the hit
                    mov bx , xCoord
			        cmp bx ,xd ; compare xdog with x cat 
					jb increase_Xfish ; if Xcat < Xdog increase fish position x	
					dec xf            ; if Xcat > Xdog decrease fish position x	
	 continue_draw:
				    mov bx, xf ; store fish position x in bx 
					mov dx, xd ; postion of colliosion (X Dog-10)
					sub dx,10 ; stop point
					push dx  ;  save point of colliosion on stack
					push bx ; save fi sh position x
					; re draw all screen componenets including the fish
					call waitForNewVR
					;call delay2
					call UpdatedBackground  
					call DrawHeart
					call DrawDog
					call DrawCat
					call DrawFish 
					pop bx
					pop dx
					cmp dx,bx ; reaches dog x position?
					je check_Ybelow ; make sure it matches y position too!
                    continuee:	; if not continue looping		
					mov ax, 300 ; end of the screen
					cmp bx, ax  ; the fish reaches end of the screen?
					jz finish ; end of the loop
			     	loop repeat 

            finish: ret  

			check_Ybelow: mov cx, yf ; store y fish in cx
			              cmp cx, ybelow_dog ; check Yfish >= y below ?
				          jae check_Yabove ; if yes: check Yfish <= y below ?
						  jmp continuee  ; if no
			check_Yabove: cmp cx, yd; check Yfish <= y above?
                          jbe decHealthDogDone ; if yes (cat hits the dog )
						  jmp continuee  ; if no
						     
			increase_Xfish: inc xf  
			               jmp continue_draw 	

						decHealthDogDone: 	
 						mov   Player2_DecHealth,1 ;dec health of dog 
                   		call Draw_Health_Bar
						jmp finish     
						  					   		 

CatHitDog endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;PowerUps;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

GenerateRandomNumber proc 
mov ah,0h ; interrupts to get system time

int 1ah ; CX:DX now hold number of clock ticks since midnight

mov ax,dx

xor dx,dx

mov cx,7

div cx ; here dx contains the remainder of the division - from 0 to 6
mov cx, 2
mov bx, dx
mov ax, dx
xor dx,dx
div cx
cmp dx, 1
jne evenNum
add bx,1
evenNum:

mov dx,bx

mov bx, offset steps_to_draw_powerUps
add bx, dx
mov ax, [bx]
cmp ax, 3
jz DrawOnStep3
cmp ax, 2
jz DrawOnStep2
cmp ax, 1
jz DrawOnStep1
cmp ax, 0
jz DontDraw  
DrawOnStep3:
    mov bx, offset PowerUpsYpos
    add bx, 2
    mov ax, [bx]
    mov heart_powerupY, ax
    mov bx, offset RandomXpos_Step3
    add bx, dx
    mov ax, [bx]
    mov heart_powerupX, ax
    jmp ENDRANDOM

DrawOnStep2:
    mov bx, offset PowerUpsYpos
    mov ax, [bx]
    mov heart_powerupY, ax
    mov bx, offset RandomXpos_Step2
    add bx, dx
    mov ax, [bx]
    mov heart_powerupX, ax
    jmp ENDRANDOM
DrawOnStep1:
    mov bx, offset PowerUpsYpos
    mov ax, [bx]
    mov heart_powerupY, ax
    mov bx, offset RandomXpos_Step1
    add bx, dx
    mov ax, [bx]
    mov heart_powerupX, ax
    jmp ENDRANDOM
DontDraw:
    mov draw_PowerUp, 0
ENDRANDOM:
ret
GenerateRandomNumber Endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

END MAIN