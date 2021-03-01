; =============================================================================
; Capslock modifier key
; taken from: https://www.autohotkey.com/boards/viewtopic.php?p=131059&sid=242b755f98ec577f64f06f7af235d8c9#p131059
;
; this makes Capslock into a TRUE MODIFYING KEY by preventing the activation
; of Capslock when used in conjunction with other modifiers,
; as well as making the activation of CapslockState into a quick double-tap
;
; Example Usage:
; 	#If, GetKeyState("CapsLock", "P") ;Your CapsLock hotkeys go below
;   	Left::Media_Prev
; 	#If

; CapsLock::
; 	KeyWait, CapsLock
; 	If (A_PriorKey="CapsLock")
; 		SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"
; Return

CapsLock::
   KeyWait, CapsLock                      ; wait for Capslock to be released
   KeyWait, CapsLock, D T0.2              ; and pressed again within 0.2 seconds
   if ErrorLevel
      return
   else if (A_PriorKey = "CapsLock")
      SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"
   return
*CapsLock:: return
