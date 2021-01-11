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

; -------- parenthesis, brackets, curly brackets --------
~Lshift::RapidHotkey("(", 2, 0.1)       ; left parenthesis: left_SHIFTx2
~Rshift::RapidHotkey(")", 2, 0.1)       ; right parenthesis: right_SHIFTx2

~!Lshift::RapidHotkey("{{}", 2, 0.1)    ; left curly bracket: ALT+left_SHIFTx2
~!Rshift::RapidHotkey("{}}", 2, 0.1)    ; right curly bracket: ALT+right_SHIFTx2

~#Lshift::RapidHotkey("[", 2, 0.1)      ; left bracket: WIN+left_SHIFTx2
~#Rshift::RapidHotkey("]", 2, 0.1)      ; right bracket: WIN+right_SHIFTx2

; -------- uppercase accent characters --------
#If, GetKeyState("CapsLock", "P")
    é::É ; uppercase é: CAPSLOCK+é
    è::È ; uppercase è: CAPSLOCK+è
    ç::Ç ; uppercase ç: CAPSLOCK+ç
    à::À ; uppercase à: CAPSLOCK+à
    ù::Ù ; uppercase ù: CAPSLOCK+ù
#If
