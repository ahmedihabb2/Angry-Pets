.MODEL SMALL
.STACK 64
.DATA
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	cat_W   equ 100
	cat_H   equ 51
	cat_img DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 26, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25
	        DB  25, 25, 25, 25, 25, 25, 25, 25, 29, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 19, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 25, 30, 30, 30, 30, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 30, 20, 19, 227, 24, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25
	        DB  25, 25, 25, 25, 25, 25, 22, 16, 16, 16, 16, 16, 23, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 30, 28, 17, 17, 17, 25, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 26, 22, 22, 22, 21, 16, 23, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 19, 18, 27, 27, 27, 27, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28
	        DB  28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 26, 16, 23, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 28, 25, 22, 22, 27, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 26, 16, 23, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 24, 16, 25, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28
	        DB  28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 26, 18, 23, 29, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  29, 229, 22, 25, 27, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 22, 16, 28, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 29, 16, 22, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28
	        DB  28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 22, 16, 28, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  29, 16, 22, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 22, 16, 28, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 25, 24, 21, 24, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28
	        DB  28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 27, 26, 19, 19, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 26, 21, 21, 23, 31, 31, 31, 31, 31, 31, 31, 31, 18
	        DB  18, 27, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 27, 224, 18, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 30, 24, 16, 16, 18, 30, 31, 31, 31, 31, 31, 31, 31, 18, 18, 27, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28
	        DB  28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 27, 224, 18, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 30, 17, 19, 22, 22, 21, 17, 24, 31, 31, 31, 31, 31, 31, 18
	        DB  18, 27, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 27, 224, 18, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 30, 16, 19, 22, 23, 23, 18, 22, 27, 27, 28, 31, 31, 31, 18, 18, 27, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28
	        DB  28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 27, 18, 18, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 30, 16, 19, 22, 27, 27, 22, 19, 16, 16, 232, 31, 31, 31, 18
	        DB  18, 27, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 27, 18, 18, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 26, 22, 18, 26, 27, 22, 23, 24, 21, 20, 21, 21, 21, 17, 18, 27, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28
	        DB  28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 27, 18, 17, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 24, 17, 25, 26, 22, 24, 28, 23, 21, 17, 16, 16, 16
	        DB  18, 27, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 27, 18, 17, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 30, 30, 19, 17, 17, 22, 28, 23, 23, 26, 24, 22, 17, 18, 27, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28
	        DB  28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 27, 18, 17, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 23, 21, 21, 22, 24, 21, 21, 27, 25, 22, 17
	        DB  18, 27, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 27, 18, 17, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 24, 16, 16, 18, 27, 25, 22, 17, 18, 27, 28, 28, 28, 28, 28, 28, 28, 88, 88, 88, 28, 28, 28, 28, 28, 28, 28, 28
	        DB  28, 28, 28, 28, 28, 28, 28, 28, 28, 27, 88, 88, 27, 27, 18, 17, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 29, 26, 26, 25, 20, 19, 18, 16
	        DB  18, 27, 28, 28, 28, 28, 28, 28, 27, 63, 63, 63, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 88, 63, 63, 88, 27, 18, 17, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 29, 17, 17, 17, 17, 17, 17, 22, 27, 24, 23, 27, 28, 27, 63, 63, 63, 28, 28, 28, 28, 28, 28, 25, 18
	        DB  23, 27, 19, 19, 28, 28, 28, 28, 28, 88, 63, 63, 88, 27, 18, 17, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 30, 30, 30, 30
	        DB  28, 16, 22, 27, 23, 23, 27, 28, 27, 88, 88, 88, 25, 25, 25, 26, 28, 28, 25, 224, 22, 25, 19, 20, 28, 27, 25, 25, 25, 26, 88, 88, 27, 27, 18, 17, 28, 28, 28, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 29, 16, 22, 27, 23, 23, 27, 28, 28, 28, 28, 28, 17, 16, 16, 23, 28, 28, 28, 27
	        DB  21, 16, 26, 27, 28, 26, 16, 16, 16, 25, 28, 28, 28, 27, 18, 16, 224, 224, 224, 29, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  29, 16, 22, 27, 23, 23, 27, 28, 28, 28, 28, 28, 25, 22, 16, 23, 28, 28, 28, 28, 24, 23, 27, 28, 28, 27, 24, 20, 16, 25, 28, 28, 24, 21, 24, 24, 26, 26, 26, 30
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 29, 16, 21, 27, 23, 23, 27, 27, 28, 28, 28, 28, 31, 27, 16, 23, 28, 28, 28, 28
	        DB  28, 28, 28, 28, 28, 28, 31, 24, 16, 25, 28, 28, 22, 16, 28, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 26, 20, 20
	        DB  19, 16, 17, 18, 17, 18, 23, 25, 28, 28, 28, 28, 28, 28, 26, 27, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 27, 26, 27, 28, 28, 22, 16, 28, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 26, 21, 21, 21, 19, 19, 19, 19, 19, 21, 24, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28
	        DB  28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 22, 16, 26, 28, 28, 30, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 29, 16, 21, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 22, 16, 18, 224, 224, 24, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 28, 24, 24, 23, 16, 20, 24, 27, 28, 28, 28, 28, 28, 27, 24, 26, 28, 25
	        DB  25, 28, 26, 24, 27, 28, 28, 28, 28, 28, 27, 21, 23, 25, 26, 26, 26, 28, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 25, 19, 19, 224, 16, 19, 22, 26, 28, 28, 28, 28, 28, 27, 22, 24, 27, 23, 23, 27, 24, 22, 27, 28, 28, 28, 28, 28, 26, 16, 23, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 30, 29, 29, 29, 29, 23, 17, 25, 28, 28, 28, 28, 28, 26, 17, 17, 18, 17
	        DB  17, 18, 17, 17, 26, 28, 28, 28, 28, 28, 26, 16, 23, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 25, 232, 24, 26, 28, 28, 28, 26, 24, 224, 224, 224, 224, 224, 224, 224, 224, 24, 26, 27, 28, 28, 26, 25, 19, 24, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 19, 17, 28, 28, 28, 18, 18, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 18, 18, 27, 28, 27, 18, 18, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 19, 17, 28, 28, 28, 18, 18, 31, 31, 31, 31, 31, 31, 31, 31, 18, 18, 27, 28, 27, 18, 18, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 19, 17, 27, 27, 27, 18, 18, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 18, 18, 27, 27, 27, 18, 18, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 29, 28, 17, 17, 17, 27, 29, 31, 31, 31, 31, 31, 31, 31, 31, 18, 16, 17, 17, 18, 27, 29, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 30, 19, 19, 19, 29, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 21, 19, 19, 19, 19, 29, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
	        DB  31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
​;;Cat Moving Variables
​	 xCoord dw ?
	yCoord dw  ?
                                                                                	;detect if the player is falling or not

.CODE
MAIN PROC FAR
	               MOV  AX,@data
	               MOV  DS,AX
	               MOV  ax, 4F02h
	               MOV  bx, 0100h
	               INT  10h
	;;Draw Color Background

	;;;;;;;;;;;;;;;;;;;;;;;;;;;
	               call DrawBackGround
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	CatDrawing:    
	               mov  BX , 100
	               mov  xCoord , BX
	               mov  yCoord , BX
	               call DrawCat


	CHECK:         mov  ah,1
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

	ReadKey:       
	               mov  ah,0
	               int  16h
	               call DrawBackGround
	               call DrawCat
	               ;;call delay
	               jmp  CHECK

	MoveUp:        
	          
	               sub  yCoord,4
	               jmp  ReadKey

	MoveDown:      
	          
	               add  yCoord , 4
	               jmp  ReadKey

	MoveLeft:      
	          
	               sub  xCoord,4
	               jmp  ReadKey

	MoveRight:     
	               add  xCoord , 4
	               jmp  ReadKey
	ENDING:        
MAIN ENDP

DrawBackGround proc
	               MOV  CX ,0
	               MOV  DX ,0
	               MOV  AL,0Bh
	               MOV  AH,0Ch
	FILL:          INT  10h
	               INC  CX
	               CMP  CX,640
	               JNZ  FILL
	               INC  DX
	               MOV  CX,0
	               CMP  DX,302
	               JNZ  FILL
	               JMP  LINEDRAWING
	;;DRAW LINE BETWEEN GROUND AND SKY
	LINEDRAWING:   
	               MOV  CX ,0
	               MOV  DX ,291
	               MOV  AL,02h
	               MOV  AH,0Ch
	FILL3:         INT  10h
	               INC  CX
	               CMP  CX,640
	               JNZ  FILL3
	               INC  DX
	               MOV  CX,0
	               CMP  DX,301
	               JNZ  FILL3
	               JMP  SCREENBOTTOM
	;;;Draw Bottom of the image
	SCREENBOTTOM:  
	               MOV  CX ,0
	               MOV  DX ,300
	               MOV  AL,05h
	               MOV  AH,0Ch
	FILL2:         INT  10h
	               INC  CX
	               CMP  CX,640
	               JNZ  FILL2
	               JMP  CHANGECOLOR
	CONTINUE:      
	               INC  DX
	               MOV  CX,0
	               CMP  DX,330
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
	               CMP  al,31
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
	LOP1:          MOV  CX,1000
	LOP2:          LOOP LOP2
	               DEC  DI
	               JNZ  LOP1
	               ret
delay Endp
END MAIN