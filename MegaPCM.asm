
; ===============================================================
; Mega PCM Driver Include File
; (c) 2012, Vladikcomper
; ===============================================================

; ---------------------------------------------------------------
; Variables used in DAC table
; ---------------------------------------------------------------

; flags
panLR	= $C0
panL	= $80
panR	= $40
pcm	= 0
dpcm	= 4
loop	= 2
pri	= 1

; ---------------------------------------------------------------
; Macros
; ---------------------------------------------------------------

z80word macro Value
	dc.w	((\Value)&$FF)<<8|((\Value)&$FF00)>>8
	endm

DAC_Entry macro Pitch,Offset,Flags
	dc.b	\Flags			; 00h	- Flags
	dc.b	\Pitch			; 01h	- Pitch
	dc.b	(\Offset>>15)&$FF	; 02h	- Start Bank
	dc.b	(\Offset\_End>>15)&$FF	; 03h	- End Bank
	z80word	(\Offset)|$8000		; 04h	- Start Offset (in Start bank)
	z80word	(\Offset\_End-1)|$8000	; 06h	- End Offset (in End bank)
	endm
	
IncludeDAC macro Name,Extension
\Name:
	if strcmp('\extension','wav')
		incbin	'dac/\Name\.\Extension\',$3A
	else
		incbin	'dac/\Name\.\Extension\'
	endc
\Name\_End:
	endm

; ---------------------------------------------------------------
; Driver's code
; ---------------------------------------------------------------

MegaPCM:
	incbin	'MegaPCM.z80'

; ---------------------------------------------------------------
; DAC Samples Table
; ---------------------------------------------------------------

	DAC_Entry	$10, Kick, pcm	                ; $81   - S1/S2 Kick
        DAC_Entry       $10, Snare, pcm 	        ; $82	- S3K Dance Snare
	DAC_Entry	$0C, Timpani, dpcm		; $83	- Chaotix Timpani
	dc.l    0,0                    ; $84    - <Free>
    	dc.l    0,0                    ; $85    - <Free>
    	dc.l    0,0                    ; $86    - <Free>
    	dc.l    0,0                    ; $87    - <Free>
	DAC_Entry	$1A, Timpani, pcm		; $88	- Chaotix High Tom
	DAC_Entry	$1D, Timpani, pcm		; $89	- Chaotix Mid-High Tom
	DAC_Entry	$23, Timpani, pcm		; $8A	- Chaotix Mid-Low Tom
	DAC_Entry	$25, Timpani, pcm		; $8B	- Chaotix Low Tom
MegaPCM_End:

; ---------------------------------------------------------------
; DAC Samples Files
; ---------------------------------------------------------------

	IncludeDAC	Kick, wav
	IncludeDAC	Snare, wav
	IncludeDAC	Timpani, wav

