.MODEL SMALL
.STACK 64
.DATA
HealthBarPos                      db          '$'
temp_cx_HealthBar                 dw          '$'
temp2_cx_HealthBar                dw          '$'
temp_dx_HealthBar                 dw          '$'
temp_count                        dw           10


.CODE
MAIN PROC FAR
	               MOV  AX,@data
	               MOV  DS,AX
	               MOV  ax, 4F02h
	               MOV  bx, 0100h
	               INT  10h

 ; video mode
                    mov ah, 0   
                    mov al, 13h 
                    int 10h    

; Drawing health bars
                    mov HealthBarPos, 'F'   ; stands for first player's health bar
                    call Draw_Health_Bar 
                   
                    mov HealthBarPos, 'S'   ; stands for second player's health bar
                    call Draw_Health_Bar

MAIN ENDP


 Draw_Health_Bar PROC 

; ---------------------------------- Backcolor of health bar------------------------------

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
                mov SI, 1   
                mov al,2h      ; Green color
                mov ah,0ch     ; draw pixel 
                mov cx,22
                mov dx,8 
                add temp_count, 9    ; to adjust height of the column 
                cmp HealthBarPos, 70  ; if it is for the first player then start filling the bar
                je fillingHealthBar
                mov cx,252
                sub temp_count, 9
                fillingHealthBar: 
                mov dx,10 
                cmp SI, 1
                je HealthBarColoring  ; first column to be drawm 
                inc cx                ; to update the location of x

                HealthBarColoring: int 10h
                inc dx
                cmp dx,temp_count     ; to adjust height of the column 
                jnz HealthBarColoring
                inc SI
                cmp SI,49   ; for drawing 48 columns inside the bar
                je FinishHealthBar 
                jmp fillingHealthBar

FinishHealthBar: 
RET
Draw_Health_Bar ENDP

end main


;;;; shghaaall abl ma a7ot l 2 bars

;    mov SI, 1   
;                 mov cx,22
;                

;                 mov dx,8 
;                 mov al,2h      ;Green color
;                 mov ah,0ch     ; draw pixel 
;                 add temp_count, 3
;                 fillingHealthBar: 
;                 mov dx,10 
;                 cmp SI, 1
;                 je HealthBarColoring  ; first column to be drawm 
;                 inc cx                ; to update the location of x

;                 HealthBarColoring: int 10h
;                 inc dx
;                 cmp dx,temp_count
;                 jnz HealthBarColoring
;                 inc SI
;                 cmp SI,49
;                 je FinishHealthBar 
;                 jmp fillingHealthBar


; square tabe3yy 5x5
;                 mov cx, 5  ;column
;                 mov dx, 5  ;row
;                 mov al, GreenColor    
;                 mov ah, 0ch 

;                 BarDrawing:
;                 inc cx
;                 int 10h
;                 cmp cx, 10
;                 JNE BarDrawing
;                 mov cx, 5   
;                 inc dx      ;next row
;                 cmp dx, 10
;                 JNE BarDrawing
