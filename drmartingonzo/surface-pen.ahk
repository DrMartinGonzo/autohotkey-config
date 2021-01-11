#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#InstallKeybdHook
#HotkeyInterval 2000
#MaxHotkeysPerInterval 300
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Singleinstance force
SetTitleMatchMode 2

#include Pen.ahk


;====================================================================================================================
;    Respond to the pen inputs captured via Pen.ahk
;    lastInput is the last input that was detected before a state change.
;====================================================================================================================
PenCallback(input, lastInput) {
    if (input = PEN_NOT_HOVERING) {
    }

    if (input = PEN_HOVERING) {
    }

    if (input = PEN_TOUCHING) {
    }

    if (input = PEN_1ST_BTN_HOVERING) {
    }

    if (input = PEN_1ST_BTN_TOUCHING) {
    }

    if (input = PEN_2ND_BTN_HOVERING) {
    }

    if (input = PEN_2ND_BTN_TOUCHING) {
    }
}


;====================================================================================================================
;    Surface pen buttons
;====================================================================================================================
; ---------------------------------------
; Single click
; ---------------------------------------
#IfWinExist, ‎- OneNote for Windows 10 ahk_class ApplicationFrameWindow
    !F20::
        WinActivate ; use the window found above
        return

#IfWinExist

!F20::
    Run shell:AppsFolder\Microsoft.Office.OneNote_8wekyb3d8bbwe!microsoft.onenoteim
    return

;if WinExist("‎- OneNote for Windows 10 ahk_class ApplicationFrameWindow") {
;    !F20::
;        WinActivate ; use the window found above
;        return
;} else {
;    !F20::
;        Run shell:AppsFolder\Microsoft.Office.OneNote_8wekyb3d8bbwe!microsoft.onenoteim
;        return
;}


; ---------------------------------------
; Double click
; ---------------------------------------
!F19::
Send #+s
return

; ---------------------------------------
; Long click
; ---------------------------------------
; !F18::
; Run shell:AppsFolder\Microsoft.ScreenSketch_8wekyb3d8bbwe!App
; return
