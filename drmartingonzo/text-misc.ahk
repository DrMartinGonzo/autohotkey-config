; =============================================================================
; Text editing

; -------- parenthesis, brackets, curly brackets --------
;~Lshift::RapidHotkey("(", 2, 0.1) ; left parenthesis: left_SHIFTx2
;~Rshift::RapidHotkey(")", 2, 0.1) ; right parenthesis: right_SHIFTx2

; ~!Lshift::RapidHotkey("{{}", 2, 0.1)    ; left curly bracket: ALT+left_SHIFTx2
~!$::Send {{} ; left curly bracket: ALT+ù
; ~!Rshift::RapidHotkey("{}}", 2, 0.1)    ; right curly bracket: ALT+right_SHIFTx2
~!*::Send {}} ; right curly bracket: ALT+µ

; ~#Lshift::RapidHotkey("[", 2, 0.1) ; left bracket: WIN+left_SHIFTx2
~!+$::Send {[} ; left bracket: ALT+SHIFT+ù
; ~#Rshift::RapidHotkey("]", 2, 0.1) ; right bracket: WIN+right_SHIFTx2
~!+*::Send {]} ; right bracket: ALT+SHIFT+µ

#If, GetKeyState("CapsLock", "P")
    u::Highlight.case.upper() ; convert highlighted text to lowercase
    l::Highlight.case.lower() ; convert highlighted text to UPPERCASE
#If

; -------- uppercase accent characters --------
#If, GetKeyState("CapsLock", "P")
    é::É ; uppercase é: CAPSLOCK+é
    è::È ; uppercase è: CAPSLOCK+è
    ç::Ç ; uppercase ç: CAPSLOCK+ç
    à::À ; uppercase à: CAPSLOCK+à
    ù::Ù ; uppercase ù: CAPSLOCK+ù
#If
