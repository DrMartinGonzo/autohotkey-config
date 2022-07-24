; =============================================================================
; Text editing

; -------- Cursor manipulation --------
^Left::Send {Home}      ; jump to beginning of line: CTRL+Left
^Right::Send {End}      ; jump to end of line: CTRL+Right

^Up::Send ^{Home}       ; jump to beginning of doc: CTRL+Up
^Down::Send ^{End}      ; jump to end of doc: CTRL+Down

^+Left::Send +{Home}    ; select until beginning of line: CMD+SHIFT+Left
^+Right::Send +{End}    ; select until end of line: CTRL+SHIFT+Right

^+Up::Send ^+{Home}     ; select until beginning of doc: CMD+SHIFT+Up
^+Down::Send ^+{End}    ; select until end of doc: CTRL+SHIFT+Down

!Left::Send ^{Left}     ; jump to previous word: ALT+Left
!Right::Send ^{Right}   ; jump to next word: ALT+Right

!+Left::Send ^+{Left}   ; select word to the left: ALT+SHIFT+Left
!+Right::Send ^+{Right} ; select word to the right: ALT+SHIFT+right

; Terminal edge case
; keybindings will be set in .zshrc instead
#IfWinNotActive ahk_group NoTextMod
    $^Backspace::Send +{Home}{Delete}   ; back delete line: CTRL+Backspace
    $^Delete::Send +{End}{Backspace}    ; forward delete line: CTRL+Del

    !Backspace::Send ^{Backspace}       ; back delete word: ALT+Backspace
    !Delete::Send ^{Delete}             ; forward delete word: ALT+Del
#IfWinNotActive
