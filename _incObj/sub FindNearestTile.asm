; ---------------------------------------------------------------------------
; Subroutine to	find which tile	the object is standing on

; input:
;	d2 = y-position of object's bottom edge
;	d3 = x-position of object

; output:
;	a1 = address within 256x256 mappings where object is standing
;	     (refers to a 16x16 tile number)
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


FindNearestTile:
		move.w	d2,d0		; get y-pos. of bottom edge of object
		andi.w	#$780,d0		; MJ: get within 780 (E00 pixels) in multiples of 80
		add.w	d0,d0			; MJ: multiply by 2
		move.w	d3,d1		; get x-pos. of object
		lsr.w	#7,d1
		andi.w	#$7F,d1
		add.w	d1,d0		; combine
		moveq	#-1,d1
		movea.l	(v_lvllayout).w,a1
		move.b	(a1,d0.w),d1	; get 256x256 tile number
		andi.w	#$FF,d1			; MJ: keep within FF
		lsl.w	#7,d1
		move.w	d2,d0
		andi.w	#$70,d0			; MJ: keep Y within 80 pixels
		add.w	d0,d1
		move.w	d3,d0
		lsr.w	#3,d0
		andi.w	#$E,d0
		add.w	d0,d1

		movea.l	d1,a1
		rts	
; ===========================================================================