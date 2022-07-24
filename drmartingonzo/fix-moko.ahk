; =============================================================================
; Fixes for moko keyboard



; =============================================================================
; Fixes for moko keyboard

;====================================================================================================================
;    Trackpad gestures
;====================================================================================================================
; Three fingers swipe up
!Tab::
KeyWait, LAlt , T0.04
If ErrorLevel { ; This should be user input and not trackpad gesture
    ; Send {LAlt down}{Tab}
    SetCurrentProgram()
    ; *$!Tab::Send #{Tab}   ; back delete line: CTRL+Backspace
    NextProgramWindow()
    return
}
Send ^!{Tab}
; Send #{Tab}
return

; Three fingers swipe down
$<!d::
KeyWait, LAlt , T0.04
If ErrorLevel { ; This should be user input and not trackpad gesture
    return
}
Send #{d}
return

; Disable swiping from top to bottom sending alt + down
$!Down::
KeyWait, Down , T0.04
If ErrorLevel { ; This should be user input and not trackpad gesture
    Send !{Down}
}
return

; Three fingers click
$<!s::
KeyWait, LAlt , T0.04
If ErrorLevel { ; This should be user input and not trackpad gesture
    return
}
; Send {LWin}
return


; Four fingers click
$<!q::
KeyWait, LAlt , T0.04
If ErrorLevel { ; This should be user input and not trackpad gesture
    return
}
Send {LWin}
return

;====================================================================================================================
;    Change keys
;====================================================================================================================
>+!::SendRaw, <
>!^!::SendRaw, >

!sc01A::Send {{}                          ; left curly bracket
!sc01B::Send {}}                          ; Right curly bracket

+!sc01A::Send {[}                          ; left bracket
+!sc01B::Send {]}                          ; Right bracket

£::Send {€}                          ; Euro symbol