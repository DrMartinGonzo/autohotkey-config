; =============================================================================
; Media keys

#If, GetKeyState("CapsLock", "P") ;Your CapsLock hotkeys go below
    Space::Media_Play_Pause ; pause (CAPSLOCK+Space)
    Left::Media_Prev        ; jump to previous song (CAPSLOCK+Left)
    Right::Media_Next       ; jump to next song (CAPSLOCK+Right)
    Down::Volume_Down       ; volume down (CAPSLOCK+Down)
    Up::Volume_Up           ; volume up (CAPSLOCK+Up)
    Enter::Volume_Mute      ; mute (CAPSLOCK+Enter)
#If