; ---------------------------------------------------------------------------
; Animation script - Sonic
; ---------------------------------------------------------------------------
		dc.w SonAni_Walk-SonicAniData    ;0
		dc.w SonAni_Run-SonicAniData       ;1
		dc.w SonAni_Roll-SonicAniData        ;2
		dc.w SonAni_Roll2-SonicAniData         ;3
		dc.w SonAni_Push-SonicAniData            ;4
		dc.w SonAni_Wait-SonicAniData              ;5
		dc.w SonAni_Balance-SonicAniData             ;6
		dc.w SonAni_LookUp-SonicAniData                ;7
		dc.w SonAni_Duck-SonicAniData                    ;8
		dc.w SonAni_Warp1-SonicAniData                     ;9
		dc.w SonAni_Warp2-SonicAniData                       ;A
		dc.w SonAni_Warp3-SonicAniData     ;B
		dc.w SonAni_Warp4-SonicAniData       ;C
		dc.w SonAni_Stop-SonicAniData          ;D
		dc.w SonAni_Float1-SonicAniData          ;E
		dc.w SonAni_Float2-SonicAniData            ;F
		dc.w SonAni_Spring-SonicAniData               ;10
		dc.w SonAni_LZHang-SonicAniData                  ;11
		dc.w SonAni_Leap1-SonicAniData                      ;12
		dc.w SonAni_Leap2-SonicAniData                         ;13
		dc.w SonAni_Surf-SonicAniData                             ;14
		dc.w SonAni_Bubble-SonicAniData                              ;15
		dc.w SonAni_Death1-SonicAniData    ;16
		dc.w SonAni_Drown-SonicAniData        ;17
		dc.w SonAni_Death2-SonicAniData          ;18
		dc.w SonAni_Shrink-SonicAniData             ;19
		dc.w SonAni_Hurt-SonicAniData                  ;1A
		dc.w SonAni_LZSlide-SonicAniData                  ;1B
		dc.w SonAni_Blank-SonicAniData                       ;1C
		dc.w SonAni_Float3-SonicAniData                         ;1D
		dc.w SonAni_Float4-SonicAniData                            ;1E
		dc.w SonAni_SpinDash-SonicAniData                             ;1F
		dc.w SonAni_WallHang-SonicAniData                                ;20
SonAni_Walk:	dc.b $FF, 8, 9,	$A, $B,	6, 7, $FF
SonAni_Run:	dc.b $FF, $1E, $1F, $20, $21, $FF, $FF,	$FF
SonAni_Roll:	dc.b $FE, $2E, $2F, $30, $31, $32, $FF,	$FF
SonAni_Roll2:	dc.b $FE, $2E, $2F, $32, $30, $31, $32,	$FF
SonAni_Push:	dc.b $FD, $45, $46, $47, $48, $FF, $FF,	$FF
SonAni_Wait:	dc.b $17, 1, 1,	1, 1, 1, 1, 1, 1, 1, 1,	1, 1, 3, 2, 2, 2, 3, 4, $FE, 2, 0
SonAni_Balance:	dc.b $1F, $3A, $3B, $FF
SonAni_LookUp:	dc.b $3F, 5, $FF, 0
SonAni_Duck:	dc.b $3F, $39, $FF, 0
SonAni_Warp1:	dc.b $3F, $33, $FF, 0
SonAni_Warp2:	dc.b $3F, $34, $FF, 0
SonAni_Warp3:	dc.b $3F, $35, $FF, 0
SonAni_Warp4:	dc.b $3F, $36, $FF, 0
SonAni_Stop:	dc.b 5,	$37, $5F, $60, $38, $FD,  0
SonAni_Float1:	dc.b 7,	$3C, $3F, $FF
SonAni_Float2:	dc.b 7,	$3C, $3D, $53, $3E, $54, $FF, 0
SonAni_Spring:	dc.b $2F, $40, $FD, 0
SonAni_LZHang:	dc.b 4,	$41, $42, $FF
SonAni_Leap1:	dc.b $F, $43, $43, $43,	$FE, 1
SonAni_Leap2:	dc.b $F, $43, $44, $FE,	1, 0
SonAni_Surf:	dc.b $3F, $49, $FF, 0
SonAni_Bubble:	dc.b $B, $56, $56, $A, $B, $FD,	0, 0
SonAni_Death1:	dc.b $20, $4B, $FF, 0
SonAni_Drown:	dc.b $2F, $4C, $FF, 0
SonAni_Death2:	dc.b 3,	$4D, $FF, 0
SonAni_Shrink:	dc.b 3,	$4E, $4F, $50, $51, $52, 0, $FE, 1, 0
SonAni_Hurt:	dc.b 3,	$55, $FF, 0
SonAni_LZSlide:	dc.b 7, $55, $57, $FF
SonAni_Blank:	dc.b $77, 0, $FD, 0
SonAni_Float3:	dc.b 3,	$3C, $3D, $53, $3E, $54, $FF, 0
SonAni_Float4:	dc.b 3,	$3C, $FD, 0
SonAni_SpinDash: dc.b 0, $58, $59, $58, $5A, $58, $5B, $58, $5C, $58, $5D, $FF
SonAni_WallHang: dc.b 3, $5E, $FF
		even