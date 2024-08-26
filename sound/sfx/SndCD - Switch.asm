SndCD_Switch_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     SndCD_Switch_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cPSG1, SndCD_Switch_PSG1,	$00, $00
	smpsHeaderSFXChannel cPSG2, SndCD_Switch_PSG1,	$00, $00
	smpsHeaderSFXChannel cPSG3, SndCD_Switch_PSG1,	$00, $00

; PSG3 Data
SndCD_Switch_PSG1:
	smpsPSGAlterVol     $00
	smpsAlterNote       $FD
	dc.b	nB2, $02
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nB2, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nB2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nB2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nB2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nB2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nB2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nB2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nB2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nB2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nB2, $09
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nB2, $08
	smpsStop

; Song seems to not use any FM voices
SndCD_Switch_Voices:
