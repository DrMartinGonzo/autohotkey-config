; =============================================================================
; Windows management

; -------- Language switching --------
; disable win + space shortcut
#space::

; -------- Close windows --------
; - set some programs to be closed by hitting Esc
#IfWinActive ahk_group CloseOnEsc
    Escape::PostMessage 0x112, 0xF060
; - set some programs to be closed by hitting CMD+q
#IfWinActive ahk_group CloseOnCQ
    ^q::PostMessage 0x112, 0xF060
; Chrome specific. Enter menu and select quit to close all windows and save open tabs
#IfWinActive ahk_exe chrome.exe
    ^q::CloseChrome()
; Edge specific. Enter menu and select quit to close all windows and save open tabs
#IfWinActive ahk_exe msedge.exe
    ^q::CloseEdge()
#IfWinActive

; -------- Prev/Next tab --------
+F1::Send ^+{Tab}   ; jump to previous tab (SHIFT+F1)
+F2::Send ^{Tab}    ; jump to next tab (SHIFT+F2)

; -------- Additional shortcuts for Fancyzones --------
#+Up::WinMaximize, A    ; Maximize active window: WIN+SHIFT+Up
#+Down::WinRestore, A   ; Restore active window: WIN+SHIFT+Down

; -------- Taskbar --------
$F12::HideShowTaskbar(hide := !hide) ; hide/show taskbar: F12

CloseChrome() {
    Send !{f}
	Sleep 10
	Send {q}
}

CloseEdge() {
    Send !{f}
    Sleep 10
    Send {f}
}

HideShowTaskbar(action) {
    static ABM_SETSTATE := 0xA, ABS_AUTOHIDE := 0x1, ABS_ALWAYSONTOP := 0x2
    VarSetCapacity(APPBARDATA, size := 2*A_PtrSize + 2*4 + 16 + A_PtrSize, 0)
    NumPut(size, APPBARDATA), NumPut(WinExist("ahk_class Shell_TrayWnd"), APPBARDATA, A_PtrSize)
    NumPut(action ? ABS_AUTOHIDE : ABS_ALWAYSONTOP, APPBARDATA, size - A_PtrSize)
    DllCall("Shell32\SHAppBarMessage", UInt, ABM_SETSTATE, Ptr, &APPBARDATA)
}
