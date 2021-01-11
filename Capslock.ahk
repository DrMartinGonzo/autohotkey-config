; =============================================================================
; Capslock modifier key
; taken from: https://www.autohotkey.com/boards/viewtopic.php?f=7&t=20661
;
; Example Usage:
; 	#If, GetKeyState("CapsLock", "P") ;Your CapsLock hotkeys go below
;   	Left::Media_Prev
; 	#If

CapsLock::
	KeyWait, CapsLock
	If (A_PriorKey="CapsLock")
		SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"
Return