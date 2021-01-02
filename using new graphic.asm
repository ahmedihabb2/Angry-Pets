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
    steps_to_draw_powerUps    DW 3, 1, 2, 3 ;if 0 then nothing will be drawn
	steps_to_draw_powerUps2   DW 2, 2, 3, 1 ;if 0 then nothing will be drawn
    RandomXpos_Step1          DW 50, 90, 50, 90
	RandomXpos2_Step1         DW 120, 70, 120, 70
    RandomXpos_Step2          DW 200, 240, 240, 200
	RandomXpos2_Step2         DW 260, 260, 220, 220
    RandomXpos_Step3          DW 120, 160, 160, 120
	RandomXpos2_Step3         DW 190, 190, 140, 140
    heart_powerupX            DW ?
    heart_powerupY            DW ?
	heart_powerupX2           DW ?
    heart_powerupY2           DW ?
    draw_PowerUp              DB 1
	draw_PowerUp2              DB 1
	RandomNums 				  DW 0, 0
    ;############################################ADDDDEEEDDDD##########################################;
    ChesonPowerUp             DW ?
	ChesonPowerUp2             DW ?
	CurrentPowerUp			  DW ?
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;End Power Ups;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	xCoord dw ? ;  cat x coordinate
	yCoord dw  ? ;  cat y coordinate
	 xleft_cat dw ?  ; cat x coordinate (left)
	ybelow_cat dw ?  ; cat y coordinate (below)
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
​;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	heart_img                 DB  16, 16, 16, 16, 16, 16, 16, 152, 23, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 154, 228, 153, 26, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 153, 228, 110, 204, 153
	                          DB  16, 16, 16, 16, 16, 16, 16, 16, 16, 153, 228, 110, 39, 109, 204, 225, 16, 16, 16, 16, 16, 16, 16, 16, 228, 110, 39, 39, 39, 109, 204, 153, 16, 16, 16, 16, 16, 16, 201, 204
	                          DB  109, 39, 39, 39, 39, 110, 204, 24, 16, 16, 16, 16, 152, 204, 109, 39, 39, 12, 12, 39, 39, 110, 129, 16, 16, 16, 152, 204, 109, 39, 39, 12, 12, 12, 12, 39, 39, 109, 226, 16
	                          DB  16, 129, 180, 39, 39, 12, 12, 12, 12, 12, 12, 39, 109, 200, 16, 23, 204, 109, 39, 12, 12, 12, 12, 12, 12, 12, 38, 109, 109, 128, 23, 202, 39, 12, 12, 12, 12, 12, 12, 12
	                          DB  12, 87, 12, 110, 225, 24, 129, 110, 12, 12, 12, 12, 109, 12, 12, 12, 87, 12, 202, 129, 16, 128, 204, 12, 12, 12, 134, 129, 204, 12, 63, 12, 134, 201, 16, 16, 16, 129, 134, 12
	                          DB  134, 227, 23, 152, 204, 133, 133, 227, 24, 16, 16, 16, 23, 228, 201, 226, 23, 16, 24, 152, 201, 202, 24, 16, 16
 
   
    Black_heart_img         DB 16, 16, 16, 16, 16, 16, 17, 17, 17, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 17, 18, 18, 18, 17, 16, 16, 16, 16, 16, 16, 16, 16, 16, 17, 17, 18, 224, 224, 18 
                            DB 17, 16, 16, 16, 16, 16, 16, 16, 17, 17, 18, 224, 224, 224, 224, 17, 17, 16, 16, 16, 16, 16, 17, 17, 18, 224, 224, 224, 224, 224, 224, 17, 16, 16, 16, 16, 17, 17, 18, 224 
                            DB 224, 224, 224, 224, 224, 224, 224, 17, 17, 16, 16, 17, 18, 224, 224, 224, 224, 224, 224, 224, 224, 224, 224, 17, 16, 16, 17, 18, 224, 224, 224, 224, 224, 224, 224, 224, 224, 224, 17, 17 
                            DB 17, 18, 224, 224, 224, 224, 224, 224, 224, 224, 224, 224, 224, 224, 17, 17, 18, 224, 224, 224, 224, 224, 224, 224, 224, 224, 224, 19, 224, 17, 17, 18, 224, 224, 224, 224, 224, 224, 224, 224 
                            DB 224, 19, 28, 227, 17, 17, 18, 224, 224, 224, 224, 224, 224, 224, 224, 19, 27, 20, 224, 17, 16, 17, 224, 224, 224, 224, 18, 17, 18, 224, 27, 21, 224, 17, 16, 16, 17, 17, 18, 224 
                            DB 18, 17, 16, 17, 18, 18, 224, 17, 16, 16, 16, 16, 17, 17, 17, 17, 16, 16, 16, 17, 17, 17, 16, 16, 16

    DubPower                DB 16, 16, 16, 16, 16, 16, 16, 16, 28, 224, 0, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 201, 136, 42, 200, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 200, 138, 42, 43 
                            DB 177, 16, 16, 16, 16, 16, 16, 16, 16, 201, 230, 140, 43, 43, 234, 128, 16, 16, 16, 16, 16, 16, 16, 223, 234, 140, 43, 43, 43, 201, 16, 16, 16, 16, 16, 16, 20, 227, 137, 42 
                            DB 43, 43, 43, 235, 226, 16, 16, 16, 16, 16, 16, 200, 138, 43, 43, 43, 43, 43, 206, 227, 16, 16, 16, 16, 16, 200, 140, 43, 43, 43, 43, 43, 43, 206, 177, 177, 177, 177, 225, 16 
                            DB 200, 140, 140, 140, 140, 140, 43, 43, 43, 43, 43, 43, 43, 138, 201, 16, 200, 200, 200, 200, 200, 137, 42, 43, 43, 43, 43, 43, 138, 201, 16, 16, 16, 16, 16, 177, 139, 43, 43, 43 
                            DB 43, 43, 140, 226, 23, 16, 16, 16, 16, 200, 137, 42, 43, 43, 43, 43, 43, 139, 201, 16, 16, 16, 16, 20, 229, 140, 43, 43, 43, 43, 43, 43, 227, 22, 16, 16, 16, 16, 200, 138 
                            DB 43, 43, 43, 43, 43, 43, 43, 200, 16, 16, 16, 16, 16, 200, 234, 235, 235, 235, 235, 235, 235, 236, 200, 16, 16
    
    Shield                  DB 16, 16, 16, 16, 16, 22, 19, 17, 18, 23, 16, 16, 16, 16, 16, 16, 16, 16, 16, 19, 20, 23, 25, 24, 224, 18, 16, 16, 16, 16, 16, 16, 16, 19, 21, 25, 24, 22, 22, 24 
                            DB 22, 224, 16, 16, 16, 16, 16, 19, 20, 25, 24, 20, 20, 20, 22, 29, 22, 18, 16, 16, 16, 19, 19, 23, 24, 21, 24, 24, 28, 22, 24, 28, 22, 18, 16, 25, 18, 23, 23, 20 
                            DB 24, 25, 24, 30, 28, 22, 24, 29, 21, 19, 18, 23, 23, 21, 27, 25, 25, 24, 30, 0, 28, 21, 25, 29, 20, 17, 24, 23, 21, 28, 25, 25, 24, 30, 0, 29, 21, 24, 0, 20 
                            DB 17, 24, 23, 21, 28, 25, 25, 24, 30, 0, 29, 21, 24, 0, 20, 17, 24, 23, 21, 28, 25, 25, 24, 30, 0, 29, 21, 24, 0, 20, 17, 24, 23, 21, 28, 25, 25, 24, 30, 0 
                            DB 29, 21, 24, 0, 20, 17, 24, 23, 21, 28, 25, 25, 24, 27, 28, 27, 21, 24, 0, 20, 17, 24, 23, 18, 20, 19, 19, 19, 19, 19, 19, 18, 24, 0, 20, 224, 19, 24, 23, 23 
                            DB 23, 23, 23, 27, 27, 27, 27, 29, 24, 20, 26, 20, 17, 17, 17, 17, 17, 17, 18, 18, 18, 18, 18, 19, 23


    SpeedUp                 DB 16, 0, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 0, 16, 16, 0, 28, 18, 233, 233, 233, 233, 233, 233, 233, 18, 28, 0, 16, 16, 0, 28, 236, 43, 43, 43, 43, 43, 43 
							DB 43, 236, 28, 0, 16, 16, 0, 28, 236, 43, 43, 43, 43, 43, 43, 43, 236, 28, 0, 16, 16, 0, 28, 236, 43, 43, 43, 43, 43, 43, 43, 236, 28, 0, 16, 0, 0, 28, 236, 43 
							DB 43, 43, 43, 43, 43, 43, 236, 28, 0, 0, 30, 25, 24, 235, 43, 43, 43, 43, 43, 43, 43, 235, 24, 25, 30, 30, 19, 164, 140, 43, 43, 43, 43, 43, 43, 43, 140, 164, 19, 30 
							DB 30, 25, 24, 14, 43, 43, 43, 43, 43, 43, 43, 14, 24, 25, 30, 0, 29, 25, 24, 14, 43, 43, 43, 43, 43, 14, 24, 25, 29, 0, 16, 0, 29, 25, 164, 67, 43, 43, 43, 67 
							DB 164, 25, 29, 0, 16, 16, 16, 0, 29, 25, 24, 14, 43, 14, 24, 25, 29, 0, 16, 16, 16, 16, 16, 0, 29, 25, 24, 67, 24, 25, 29, 0, 16, 16, 16, 16, 16, 16, 16, 0 
							DB 29, 25, 19, 25, 29, 0, 16, 16, 16, 16, 16, 16, 16, 16, 16, 0, 30, 30, 30, 0, 16, 16, 16, 16, 16
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;; fish variables ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
fish_W equ 20  ; fish width
    fish_H equ 20 ; fish height
	xf dw ? ;  fish x coordinate
	yf dw  ? ; fish y coordinate
	fish_velocity dw 02h 
	start_hitting dw 0 ; flag to indicate that cat hits the dog
    direction_of_hitting dw 1 ; default right  cat =>>> dog

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
	 xleft_dog dw ?  ; dog x coordinate (left)
    yd dw ?  ; dog y coordinate
	ybelow_dog dw ?  ; dog y coordinate (below)
	dog_img DB 16, 16, 187, 186, 186, 186, 186, 186, 16, 16, 16, 137, 137, 139, 139, 139, 138, 186, 16, 16, 16, 186, 137, 139, 139, 163, 186, 16, 16, 16, 16, 186, 212, 27, 27, 27, 27, 139, 137, 186 
 DB 187, 114, 139, 89, 91, 90, 164, 186, 16, 16, 16, 186, 139, 90, 90, 164, 186, 16, 16, 16, 137, 138, 26, 90, 27, 139, 139, 139, 6, 6, 6, 42, 140, 24, 91, 91, 27, 138, 187, 187 
 DB 187, 138, 27, 89, 12, 138, 186, 16, 16, 16, 211, 27, 91, 90, 65, 6, 115, 140, 42, 65, 66, 12, 65, 89, 91, 91, 24, 27, 91, 91, 91, 27, 164, 66, 42, 6, 114, 187, 16, 16 
 DB 114, 65, 66, 65, 42, 140, 140, 42, 42, 89, 90, 65, 42, 12, 66, 24, 25, 90, 91, 91, 91, 90, 26, 24, 66, 65, 114, 187, 16, 16, 187, 140, 42, 42, 42, 42, 42, 12, 66, 90 
 DB 66, 65, 12, 66, 90, 89, 90, 91, 91, 91, 91, 91, 90, 89, 91, 65, 114, 187, 16, 16, 187, 140, 42, 42, 42, 42, 42, 12, 90, 90, 66, 66, 89, 91, 91, 91, 91, 90, 90, 90 
 DB 91, 91, 91, 91, 91, 89, 138, 187, 16, 16, 137, 6, 6, 42, 42, 42, 42, 12, 90, 90, 66, 90, 91, 91, 91, 91, 90, 91, 91, 91, 90, 91, 91, 91, 91, 91, 163, 187, 16, 16 
 DB 186, 186, 114, 138, 6, 140, 42, 12, 90, 90, 66, 91, 91, 91, 90, 91, 91, 91, 90, 91, 91, 91, 91, 90, 91, 90, 139, 187, 16, 16, 16, 16, 16, 186, 186, 137, 6, 140, 65, 90 
 DB 90, 89, 90, 90, 90, 91, 91, 91, 91, 91, 91, 91, 90, 90, 89, 65, 137, 187, 16, 16, 16, 16, 16, 16, 16, 16, 211, 114, 139, 65, 65, 65, 65, 65, 89, 91, 91, 91, 91, 91 
 DB 91, 91, 91, 89, 65, 115, 186, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 164, 114, 12, 65, 42, 65, 66, 91, 91, 30, 30, 30, 30, 30, 91, 91, 91, 66, 6, 114, 187, 16, 16 
 DB 16, 16, 16, 16, 16, 16, 16, 164, 211, 138, 140, 65, 90, 91, 30, 29, 29, 90, 90, 90, 29, 29, 30, 91, 90, 65, 114, 187, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 211 
 DB 114, 65, 91, 30, 30, 30, 24, 233, 160, 136, 162, 30, 30, 30, 91, 65, 114, 187, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 212, 114, 65, 91, 91, 91, 26, 26, 24, 232, 23 
 DB 28, 25, 90, 91, 91, 65, 114, 187, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 137, 114, 140, 89, 91, 91, 90, 65, 137, 210, 211, 12, 89, 91, 91, 90, 164, 137, 211, 16, 16 
 DB 16, 16, 16, 16, 16, 16, 16, 16, 16, 212, 114, 42, 65, 66, 64, 140, 140, 42, 42, 42, 42, 140, 64, 66, 66, 42, 114, 187, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 212 
 DB 114, 140, 42, 138, 235, 233, 137, 42, 42, 42, 140, 18, 160, 137, 42, 42, 114, 187, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 114, 6, 42, 42, 42, 6, 210, 6, 12, 89, 65 
 DB 140, 187, 137, 42, 42, 42, 6, 114, 187, 16, 16, 16, 16, 16, 16, 16, 16, 24, 139, 138, 65, 66, 64, 140, 42, 42, 42, 42, 66, 65, 42, 42, 42, 42, 12, 66, 65, 138, 137, 138 
 DB 16, 16, 16, 16, 16, 16, 16, 164, 210, 65, 90, 87, 88, 164, 137, 6, 140, 140, 140, 140, 140, 140, 115, 139, 26, 89, 90, 65, 114, 186, 16, 16, 16, 16, 16, 16, 16, 114, 138, 89 
 DB 90, 90, 89, 138, 186, 186, 186, 186, 186, 186, 186, 211, 211, 137, 65, 90, 90, 90, 140, 187, 16, 16, 16, 16, 16, 16, 16, 187, 140, 90, 90, 66, 139, 114, 16, 16, 16, 16, 16, 16 
 DB 16, 16, 16, 210, 115, 65, 89, 90, 12, 187, 16, 16, 16, 16, 16, 16, 16, 187, 6, 66, 164, 137, 211, 209, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 186, 138, 140, 89, 164, 187 
 DB 16, 16, 16, 16, 16, 16, 16, 164, 114, 137, 114, 186, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 186, 186, 138, 114, 186
;;;;;;;;;;;;;;;;;;;;;;;;;;;; ball variables ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ball_W equ 15 ; ball width
    ball_H equ 10 ; ball  height
	xball dw ? ;  ball x coordinate
	yball dw  ? ; ball y coordinate
	ball_velocity dw 02h 
    start_balling dw 0 ; flag to indicate that dog hits the cat
   ball_img DB 16, 16, 16, 16, 17, 17, 17, 17, 17, 17, 17, 16, 16, 16, 16, 16, 16, 18, 198, 54, 54, 54, 54, 54, 54, 54, 198, 17, 16, 16, 17, 223, 151, 54, 54, 54, 54, 54, 54, 54 
            DB 54, 54, 126, 198, 17, 16, 149, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 125, 16, 16, 149, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 125, 16, 16, 149, 54, 54, 54 
            DB 54, 54, 54, 54, 54, 54, 54, 54, 125, 16, 16, 149, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 125, 16, 16, 223, 125, 54, 54, 54, 54, 54, 54, 54, 54, 54, 126, 198, 16 
            DB 16, 17, 18, 198, 54, 54, 54, 54, 54, 54, 54, 198, 18, 17, 16, 16, 16, 16, 16, 17, 17, 17, 17, 17, 17, 17, 16, 16, 16, 16                                                                                                                                                                                                      		;;Cat Moving Variables
            ​ 
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
tempvar                            dw           0     ; temp
HealthBarDrawn                     dw           0    ;to make sure that its drawn only once            
countHB1                           dw           0     ;for only doubling the decreasing value of health of player 1
countHB2                           dw           0     ;for only doubling the decreasing value of health of player 2
countINC1                          dw           0     ;for only doubling the increasing value of health of player 1
countINC2                          dw           0     ;for only doubling the increasing value of health of player 1


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
						
                        mov CurrentPowerUp, 0                  
						call GenerateRandomNumber
                        call GenerateRandomPowerUp
                        call DrawHeart
						mov CurrentPowerUp, 1 
						call GenerateRandomNumber
                        call GenerateRandomPowerUp2
                        call DrawHeart2
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

					    call read_the_key

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
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
						call DrawHeart2     	
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
						call DrawHeart2
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
						call DrawHeart2
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
;;;;;;;;;;;;;;;;;;;;;;;;; DOG GRAVITY ;;;;;;;;;;;;;;;;;;;;
DOG_CharacterGravity proc
;;yCoord represents the y coordinate of the character (at his leg)
	D_MOVINGPLAYERDOWN:   
	                    MOV  AX , yd               
						add  AX , dog_H
						CMP  AX , secondstepline     ;;Check if the cat body is above than the second step
						JLE  D_CHECKBEFOREENDSTEP2     ;;if yes jump to this label to make cat land at this step or fall if the cat is not in same x Coord of the step
						SUB  AX , dog_H  
	                    CMP  AX , firststepline      ;;Same as the above
	                    JLE  D_CHECKBEFOREEND               	
	D_CONTMOVING:         MOV  AX , GravityAccleration  ;;if the character jumps on the air he should fall to the ground and this label is responsible for that
	                    ADD  yd , AX                  	
	                    MOV  AX , yd
	                    add  AX , dog_H
	                    CMP  AX,LandLine             ;;if the character reaches the ground we stop the gravity effect , else it continue to fall        	
	                    Jge  D_ENDMOVING
	                    call waitForNewVR
	                    call UpdatedBackground    
						call DrawHeart        	
	                    call DrawCat                      	
	                    call DrawDog
	                    ;call delay2                       	
	                    jmp D_MOVINGPLAYERDOWN
					 
D_CHECKBEFOREEND:     ;;This label is for checking if the cat at the X coordinates of the step or not (for first two steps)
	                    MOV  BX , xd
	                    CMP  BX ,35
	                    JGE  D_SECONDCHECK
	                    JMP  D_CONTMOVING
	D_SECONDCHECK:        CMP  BX,125
	                    JLE  D_LANDONSTEP    ;;if the character between x Coordinates of the first step we jump to this label in order to make the character lands on step
	                    JMP  D_CHECKBEFOREEND2
	D_CHECKBEFOREEND2:    MOV  BX , xd
	                    CMP  BX ,190
	                    JGE  D_SECONDCHECK2
	                    JMP  D_CONTMOVING
	D_SECONDCHECK2:       CMP  BX,275
	                    JLE  D_LANDONSTEP   ;;if the character between x Coordinates of the second step we jump to this label in order to make the character lands on step
	                    JMP  D_CONTMOVING
	;;This label is for checking if the cat at the X coordinates of the third step 
	D_CHECKBEFOREENDSTEP2: MOV  BX , xd
	                    CMP  BX ,80
	                    JGE  D_SECONDCHECKSTEP2
	                    JMP  D_CONTMOVING
	D_SECONDCHECKSTEP2:   CMP  BX,210
	                    JLE  D_LANDONSTEP2 ;;if the character between x Coordinates of the above step we jump to this label in order to make the character lands on step
	                    JMP  D_CONTMOVING
 D_ENDMOVING:
	                    MOV  AX , GravityAccleration
	                    sub  yd , AX
	                    ret

	D_LANDONSTEP:         call waitForNewVR
	                    call UpdatedBackground            	;;Remove the old position
						call DrawHeart
	                    call DrawCat                      	;;Draw with new onw
	                    call DrawDog
	                    ;call delay2                       	;;Draw with new onw
	                    MOV  AX , GravityAccleration
	                    ADD  yd , AX
	                    MOV  AX , yd
	                    add  AX , dog_H
	                    CMP  AX,firststepline             	;;if they are greater or equal to the landline (ground)
	                    Jge  D_ENDMOVING
	                    JMP  D_LANDONSTEP

	D_LANDONSTEP2:        call waitForNewVR
	                    call UpdatedBackground            	;;Remove the old position
						call DrawHeart
	                    call DrawCat                      	;;Draw with new onw
	                    call DrawDog
	                    ;call delay2                       	;;Draw with new onw
	                    MOV  AX , GravityAccleration
	                    ADD  yd , AX
	                    MOV  AX , yd
	                    add  AX , dog_H
	                    CMP  AX,secondstepline           	;;if they are greater or equal to the landline (ground)
	                    Jge  D_ENDMOVING
	                    JMP  D_LANDONSTEP2
	

DOG_CharacterGravity Endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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





 Draw_Health_Bar PROC 

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Decrease health
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
                ja SecondPlayerTest
                ret  
   
;------------------------------- check whether the 2nd player has been hit? ----------------------
SecondPlayerTest:
                
                 cmp Player2_DecHealth,0 
                 je CheckIncHealthP1  

;------------------- check whether the 2nd player is the loser?
                sub Player2_Health_cx,1
                cmp Player2_Health_cx, 251
                ja decHealth2
                ret  

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
                ja CheckIncHealthP1
ret 


;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Increase health
;-------------------- check whether the first player caught a powerup to increase his health?------
CheckIncHealthP1:
                cmp Player1_IncHealth,0
                je CheckIncHealthP2

;------------- if he caught a powerup then: 
                cmp Player1_Health_cx,69 ; if his health is full then do nothing
                je CheckIncHealthP2 

IncHealth1:
                mov cx, Player1_Health_cx
                mov dx,10
                mov al,02h ;Pixel color
                mov ah,0ch ;Draw Pixel Command
                incP1: int 10h
                inc dx
                cmp dx,19
                jnz incP1
                Inc countINC1    ;for only doubling the value to increase 
                cmp countINC1,2
                jb doubleINCHB1
                jmp countinueHBinc
                
                doubleINCHB1: inc Player1_Health_cx 
                jmp IncHealth1
                countinueHBinc:
                mov countINC1,0

;-------------------- check whether the second player caught a powerup to increase his health?------

CheckIncHealthP2:
                cmp Player2_IncHealth,0
                je check_draw_HB

;------------- if he caught a powerup then: 
                cmp Player2_Health_cx,299 ; if his health is full then do nothing
                je check_draw_HB

IncHealth2:
                mov cx, Player2_Health_cx
                mov dx,10
                mov al,02h ;Pixel color
                mov ah,0ch ;Draw Pixel Command
                incP2: int 10h
                inc dx
                cmp dx,19
                jnz incP2
                Inc countINC2    ;for only doubling the value to increase 
                cmp countINC2,2
                jb doubleINCHB2
                jmp countinueHBinc2
                
                doubleINCHB2: inc Player2_Health_cx 
                jmp IncHealth2
                countinueHBinc2:
                mov countINC2,0

;---------------------------------- to make sure that it is drawn once ------------------      
check_draw_HB:  
                mov ax, HealthBarDrawn
                cmp ax,0
                je DrawFirst 


ReFinish: jmp FinishHealthBar

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Draw health bar once
; ---------------------------------- Backcolor of health bar------------------------------
DrawFirst:
                mov al,0fh ; backcolor of the bar 
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
             mov  Player1_IncHealth,0
             mov  Player2_IncHealth,0
RET

Draw_Health_Bar ENDP


;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<  Draw Fish >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
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
;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<  Draw Ball >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
DrawBall proc
                   push ax
	               MOV  AH,0Bh
	               MOV  CX, ball_W
	               MOV  DX, ball_H
	               mov  DI, offset ball_img
	               jmp  Startball
	Drawba:        
	               MOV  AH,0Ch
	               mov  al, [DI]
	               CMP  al,16
	               JZ   Startball
	               MOV  BH,00h
	               add  cx,xball
	               add  dx,yball
	               INT  10h
	               sub  cx , xball
	               sub  dx , yball
	Startball:      
	               inc  DI
	               DEC  Cx
	               JNZ  Drawba
	               mov  Cx, ball_W
	               DEC  DX
	               JZ   ENDball
	               Jmp  Drawba

	ENDball:     
	               pop  ax
	               ret

DrawBall Endp

;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<  Draw Dog >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
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
;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< Dog Hits The Cat >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
DogHitCat proc
                   mov start_balling ,1
; initial draw for the ball 
                   mov BX ,xd
	               mov DX, yd ; start position y for the fish
	               mov  xball , BX
	               mov  yball , DX
	               call DrawBall 
                    
; set coordinates of the target "dog"

				   mov cx, yCoord ; y above coordiante of the cat
				   sub cx, cat_H ; (Y above - cat height)
				   mov ybelow_cat ,cx ; y below coordiante of the cat 

				   mov cx, xCoord; x above coordiante of the cat
				   sub cx, cat_W ; (X above - cat width)
				   mov xleft_cat ,cx ; x below coordiante of the cat 
				  
; loop for ball movement till it hits the cat or reaches end of the screen				    
			repeat2: 
			        ; determine direction of the hit
                    mov bx , xd
			        cmp bx ,xCoord; compare xdog with x cat 
					ja decrease_Xball ; if Xdog > Xcat decrease ball position x	
					mov cx,4             ; else increase ball position x	 
                    add  xball , cx            
	 continue_draw2:
				    mov bx, xball ; store ball new position x in bx 
				;	mov dx, xCoord ; postion of colliosion (X Dog-10)
				;	sub dx,10 ; stop point
				;	push dx  ;  save point of colliosion on stack
					push bx ; save fish position x on the stack
; re draw all screen componenets including the ball
					call waitForNewVR
					;call delay2
					call UpdatedBackground  
					call DrawDog ; at new postion
					call DrawCat
					call DrawBall
                    call DOG_CharacterGravity
				    call read_the_key
					pop bx
					;pop dx
 ; reaches dog x right position?                   
					cmp bx,xCoord
					jbe check_Xleft_cat ; make sure it is in the x range of the dog
                    continuee2:	; if not continue looping		
					mov ax,300 ; end of the screen
					cmp bx, ax  ; the fish reaches end of the screen?
					jae finish2 ; end of the loop
                   
			     	loop repeat2 

            finish2: 
			mov start_balling ,0
			ret 

			check_Xleft_cat:
			            cmp bx , xleft_cat
			            jae check_Ybelow_cat ; make sure it matches y position too!
						jmp continuee2 ; if no return yo continue

		check_Ybelow_cat: mov cx, yball ; store y fish in cx
			              cmp cx, ybelow_cat ; check Yfish >= y below ?
				          jae check_Yabove_cat ; if yes: check Yfish <= y below ?
						  jmp continuee2  ; if no
		check_Yabove_cat: cmp cx, yCoord; check Yfish <= y above?
                          jbe decHealthCatDone; if yes (cat hits the dog )
						  jmp continuee2  ; if no
						     
			decrease_Xball: mov cx,4
                            sub xball , cx
			                jmp continue_draw2 		

          ;;;;;;;;;;;;;;;;; hit effect decrease health of the dog  ;;;;;;;;;;;;;;;;
			decHealthCatDone: 	
 					     	mov   Player1_DecHealth,1 ;dec health of dog 
                   		    call Draw_Health_Bar
						    jmp finish2      	 

DogHitCat endp
 
;<<<<<<<<<<<<<<<<<<<<<<<<<<<< FISH : Cat Hits The Dog  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
CatHitDog proc
                   mov start_hitting ,1
; initial draw for the fish 
                   mov BX , xCoord
	              ; sub BX, 10 ; start position x for the fish
	               mov DX, yCoord ; start position y for the fish
	               mov  xf , BX
	               mov  yf , DX
	               call DrawFish 
                   
                  ; call read_the_key
; set coordinates of the target "dog"

				   mov cx, yd ; y above coordiante of the dog
				   sub cx, dog_H ; (Y above - dog width)
				   mov ybelow_dog ,cx ; y below coordiante of the dog 

				   mov cx, xd ; x above coordiante of the dog
				   sub cx, dog_W ; (X above - dog width)
				   mov xleft_dog ,cx ; x below coordiante of the dog 


				  
; loop for fish movement till it hits the dog or reaches end of the screen				    
			repeat: 
			        ; determine direction of the hit
                    mov bx , xCoord
			        cmp bx ,xd ; compare xdog with x cat 
					jb increase_Xfish ;RIGHT: if Xcat < Xdog increase fish position x	
                    mov direction_of_hitting ,0 ;LEFT : else
					mov cx,6
                    sub xf , cx ;decrease fish position x	
	 continue_draw:
				    mov bx, xf ; store fish position x in bx 
                  ;  sub bx, fish_W
					mov dx, xd ; postion of colliosion (X Dog-10)
					sub dx,10 ; stop point
					push dx  ;  save point of colliosion on stack
					push bx ; save fish position x
					; re draw all screen componenets including the fish
					call waitForNewVR
					;call delay2
					call UpdatedBackground  
					call DrawDog
					call DrawCat
                    
					call DrawFish 
                     call CharacterGravity
					 call read_the_key
					pop bx
					pop dx
; check if fish reaches dog x right position?       
                    cmp direction_of_hitting ,0 ; was it left hitting ? 
                    je left_hitting; if yes compare with Xleft of the fist  <<<  DOG*boom*O==<
		   yarab:	cmp bx,xd   ; if No compare with Xright of the fist  <<<  O==<*boom*DOG
					jbe check_Xleft ; make sure it is in the x range of the dog
;if not continue looping	
                    continuee:		
					mov ax, 300 ; end of the screen
					cmp bx, ax  ; the fish reaches end of the screen?
					jae finish ; end of the loop
                   
			     	loop repeat 

            finish: 
			mov start_hitting ,0
			ret 

			check_Xleft:
			            cmp bx , xleft_dog 
			            jae check_Ybelow ; make sure it matches y position too!
						jmp continuee ; if no return yo continue

			check_Ybelow: mov cx, yf ; store y fish in cx
                          sub cx , Fish_H
			              cmp cx, ybelow_dog ; check Yfish >= y below ?
				          jae check_Yabove ; if yes: check Yfish <= y below ?
						  jmp continuee  ; if no
			check_Yabove: cmp cx, yd; check Yfish <= y above?
                          jbe decHealthDogDone; if yes (cat hits the dog )
						  jmp continuee  ; if no
						     
			increase_Xfish: mov cx,4
                            add xf , cx
			               jmp continue_draw 	

            left_hitting: sub bx, fish_W               	
                          jmp yarab
          ;;;;;;;;;;;;;;;;; hit effect decrease health of the dog  ;;;;;;;;;;;;;;;;
			decHealthDogDone: 	
 					     	mov   Player2_DecHealth,1 ;dec health of dog 
                   		    call Draw_Health_Bar
						    jmp finish      	 

CatHitDog endp
;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< READ KEY >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
read_the_key  proc 

  CHECK:                mov  ah,1
	                    int  16h
                        jz   reyooo
                        mov  ah,0
	                    int  16h

;;;;;;;;;;;;;;;;;;;;;; cat movment ;;;;;;;;;;;;;;;;;;;;;
                        cmp  ah,44  ; Z
	                    jz   reFish_Hit 

	                    cmp  ah,75 ; <=
	                    jz   MoveLeft

	                    cmp  ah,77 ; =>
	                    jz   MoveRight

	                    cmp  ah, 45 ; X
	                    jz   JUMPUP
;;;;;;;;;;;;;;;;;;;;;; dog movment ;;;;;;;;;;;;;;;;;;;;;
                        cmp  ah,30   ; A
	                    jz   dog_MoveLeft

	                    cmp  ah,32 ; D
	                    jz   dog_MoveRight

	                    cmp  ah, 17 ; w
	                    jz   dog_JUMPUP

                        cmp  ah, 35 ; H
	                    jz   BallHit
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;						

	ReadKey:           
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
						call DOG_CharacterGravity
	                    ;call delay
	                    jmp  CHECK
;;;;;;;;;;;;;;;;;;;;;;;;;;; CAT MOVEMENT LABLES ;;;;;;;;;;;;;;;;;;;;;;;;;;;						
	MoveLeft:           
	                    cmp  xCoord, 0
	                    jle  ReadKey
	                    sub  xCoord,6
                        jmp kamel_darb
	                    jmp  ReadKey

	MoveRight:          cmp  xCoord, 292
	                    jge  ReadKey
	                    add  xCoord , 6
                        jmp kamel_darb
	                    jmp  ReadKey
	JUMPUP:             
	                    sub  yCoord , 46
                        jmp kamel_darb
	                    jmp  ReadKey

;;;;;;;;;;;;;;;;;;;;;; temp lables ;;;;;;;;;;;;;;;;;;;
reyooo: jmp yooo
reFish_Hit: jmp Fish_Hit
;;;;;;;;;;;;;;;;;;;;;; DOG MOVEMENT LABLES ;;;;;;;;;;;;;;;;;;;;;
     dog_MoveLeft:           
	                    cmp xd, 2
	                    jle  ReadKey
	                    sub  xd,6
                        jmp kamel_ball
	                    jmp  ReadKey

	dog_MoveRight:      cmp xd, 285
	                    jae  ReadKey
	                    add  xd , 6
                        jmp kamel_ball
	                    jmp  ReadKey
	dog_JUMPUP:        
                        sub  yd, 46
                        jmp kamel_ball
	                    jmp  ReadKey
;;;;;;;;;;;;;;;;;; ball hit  ;;;;;;;;;;;;;;;;;;;;
    BallHit:
                   call DogHitCat
                   jmp ReadKey
;;;;;;;;;;;;;;;;;; fish hit ;;;;;;;;;;;;;;;;;;
	Fish_Hit:           
	                    call CatHitDog
                        
						jmp  ReadKey

;;;;;;;;;;;;;;;;;;;;;;;;;;; TO READ KEY WHILE HITTING ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    kamel_darb: cmp start_hitting ,1
                        je bye
                        jmp  ReadKey

    kamel_ball: cmp start_balling ,1
                        je bye
                        jmp  ReadKey   
;;;;;;;;;;;;;;;;;;;;;;;;;;;to check if key not pressd while hitting or not ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;						                 

     yooo:      cmp start_hitting , 1
                je bye
                cmp start_balling , 1
                je bye
                mov ah,1
                int 16h
                jz Again
                jmp ReadKey  
      Again: jmp CHECK  

;;;;;;;;;;;;;;;;;;;;;;;;;;; FINISH ;;;;;;;;;;;;;;;;;;;;;;;;                  
    bye: ret

read_the_key endp
;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<  PowerUps >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
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
						mov CurrentPowerUp, 0
                        call GenerateRandomNumber
                        call GenerateRandomPowerUp
        DidnotTake:
                        cmp draw_PowerUp, 0
                        jz ENDINGHeart
                        
	                    MOV  AH,0Bh
	                    MOV  CX, heart_W
	                    MOV  DX, heart_H
                        CMP ChesonPowerUp, 0
                        jz Blackheart
                        CMP ChesonPowerUp, 1
                        jz RedHeart
                        CMP ChesonPowerUp, 2
                        jz Power
                        CMP ChesonPowerUp, 3
                        jz shieldDraw
                        CMP ChesonPowerUp, 4
                        jz SpeedUpDraw
	    RedHeart:       mov  DI, offset heart_img
                        jmp STARTDRAWING

        Blackheart:     mov  DI, offset Black_heart_img
                        jmp  STARTDRAWING
        Power:          mov DI, offset DubPower
                        jmp  STARTDRAWING
        shieldDraw:     mov DI, offset Shield
                        jmp  STARTDRAWING
        SpeedUpDraw:     mov DI, offset SpeedUp
                        jmp  STARTDRAWING
                        
        STARTDRAWING:   jmp  StartHeart
                     
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
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
DrawHeart2 proc


	                    push ax
        CheckYpos12:     mov ax,yCoord
                        cmp heart_powerupY2, ax
                        jl  DidnotTake2
        CheckYpos22:     add ax,cat_H
                        cmp heart_powerupY2, ax
                        jg  DidnotTake2
        CheckXpos12:     mov ax,xCoord
                        cmp heart_powerupX2, ax
                        jl  DidnotTake2
        CheckXpos22:     add ax,cat_W
                        cmp heart_powerupX2, ax
                        jg  DidnotTake2
        took2:
						mov CurrentPowerUp, 1 
                        call GenerateRandomNumber
                        call GenerateRandomPowerUp2
        DidnotTake2:
                        cmp draw_PowerUp2, 0
                        jz ENDINGHeart2
                        
	                    MOV  AH,0Bh
	                    MOV  CX, heart_W
	                    MOV  DX, heart_H
                        CMP ChesonPowerUp2, 0
                        jz Blackheart2
                        CMP ChesonPowerUp2, 1
                        jz RedHeart2
                        CMP ChesonPowerUp2, 2
                        jz Power2
                        CMP ChesonPowerUp2, 3
                        jz shieldDraw2
                        CMP ChesonPowerUp2, 4
                        jz SpeedUpDraw2
	    RedHeart2:       mov  DI, offset heart_img
                        jmp STARTDRAWING2

        Blackheart2:     mov  DI, offset Black_heart_img
                        jmp  STARTDRAWING2
        Power2:          mov DI, offset DubPower
                        jmp  STARTDRAWING2
        shieldDraw2:     mov DI, offset Shield
                        jmp  STARTDRAWING2
        SpeedUpDraw2:     mov DI, offset SpeedUp
                        jmp  STARTDRAWING2
                        
        STARTDRAWING2:   jmp  StartHeart2
                        
	Drawalb2:            
	                    MOV  AH,0Ch
	                    mov  al, [DI]
	                    CMP  al,16
	                    JZ   StartHeart2
	                    MOV  BH,00h
	                    add  cx,heart_powerupX2
                        sub dx, heart_W
	                    add  dx,heart_powerupY2
                       
	                    INT  10h
	                    sub  cx , heart_powerupX2
                        add dx, heart_W
	                    sub  dx , heart_powerupY2
                        
	StartHeart2:         
	                    inc  DI
	                    DEC  Cx
	                    JNZ  Drawalb2
	                    mov  Cx, heart_W
	                    DEC  DX
	                    JZ   ENDINGHeart2
	                    Jmp  Drawalb2

	ENDINGHeart2:        mov draw_PowerUp2 , 1
	                    pop  ax
	                    ret
DrawHeart2 Endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;PowerUps;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

GenerateRandomNumber proc

mov DI, offset RandomNums
	STARTGENERATING:
		CMP CurrentPowerUp, 1
		jnz RESUME
		ADD DI, 2
	RESUME:	
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
		mov [DI], bx
		cmp CurrentPowerUp, 1
		jz SecondPower
		mov bx, offset steps_to_draw_powerUps
		add bx, [DI]
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
		add bx, [DI]
		mov ax,heart_powerupX
		CMP ax, [bx]
		jz RESUMEMIDDLE
		mov ax, [bx]
		mov heart_powerupX, ax
		jmp ENDRANDOM

	DrawOnStep2:
		mov bx, offset PowerUpsYpos
		mov ax, [bx]
		mov heart_powerupY, ax
		mov bx, offset RandomXpos_Step2
		add bx, [DI]
		mov ax,heart_powerupX
		CMP ax, [bx]
		jz RESUMEMIDDLE
		mov ax, [bx]
		mov heart_powerupX, ax
		jmp ENDRANDOM
	DrawOnStep1:
		mov bx, offset PowerUpsYpos
		mov ax, [bx]
		mov heart_powerupY, ax
		mov bx, offset RandomXpos_Step1
		add bx, [DI]
		mov ax,heart_powerupX
		CMP ax, [bx]
		jz RESUMEMIDDLE
		mov ax, [bx]
		mov heart_powerupX, ax
		jmp ENDRANDOM
	DontDraw:
		mov draw_PowerUp, 0
		jmp ENDRANDOM
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	RESUMEMIDDLE: jmp RESUME  
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
SecondPower:
		
		mov bx, offset steps_to_draw_powerUps2
		add bx, [DI]
		mov ax, [bx]
		cmp ax, 3
		jz DrawOnStep32
		cmp ax, 2
		jz DrawOnStep22
		cmp ax, 1
		jz DrawOnStep12
		cmp ax, 0
		jz DontDraw2 
	DrawOnStep32:
		mov bx, offset PowerUpsYpos
		add bx, 2
		mov ax, [bx]
		mov heart_powerupY2, ax
		mov bx, offset RandomXpos2_Step3
		add bx, [DI]
		mov ax,heart_powerupX2
		CMP ax, [bx]
		jz RESUMEMIDDLE
		mov ax, [bx]
		mov heart_powerupX2, ax
		jmp ENDRANDOM

	DrawOnStep22:
		mov bx, offset PowerUpsYpos
		mov ax, [bx]
		mov heart_powerupY2, ax
		mov bx, offset RandomXpos2_Step2
		add bx, [DI]
		mov ax,heart_powerupX2
		CMP ax, [bx]
		jz RESUMEMIDDLE
		mov ax, [bx]
		mov heart_powerupX2, ax
		jmp ENDRANDOM
	DrawOnStep12:
		mov bx, offset PowerUpsYpos
		mov ax, [bx]
		mov heart_powerupY2, ax
		mov bx, offset RandomXpos2_Step1
		add bx, [DI]
		mov ax,heart_powerupX2
		CMP ax, [bx]
		jz RESUMEMIDDLE
		mov ax, [bx]
		mov heart_powerupX2, ax
		jmp ENDRANDOM
	DontDraw2:
		mov draw_PowerUp2, 0
	ENDRANDOM:
	ret
GenerateRandomNumber Endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

GenerateRandomPowerUp proc 
mov ah,0h ; interrupts to get system time

int 1ah ; CX:DX now hold number of clock ticks since midnight

mov ax,dx

xor dx,dx

mov cx,5

div cx ; here dx contains the remainder of the division - from 0 to 4
mov ChesonPowerUp, dx
ret
GenerateRandomPowerUp Endp

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

GenerateRandomPowerUp2 proc 
mov ah,0h ; interrupts to get system time

int 1ah ; CX:DX now hold number of clock ticks since midnight

mov ax,dx

xor dx,dx

mov cx,5

div cx ; here dx contains the remainder of the division - from 0 to 4
mov ChesonPowerUp2, dx
ret
GenerateRandomPowerUp2 Endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

END MAIN