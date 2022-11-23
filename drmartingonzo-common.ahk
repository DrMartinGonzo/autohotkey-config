; =============================================================================
; Martin custom autohotkey config
;
; Run via task scheduler as Admin
; - Must add a delay of approx. 15s (tested) to not mess with AltTab
;   Don't know why...
; =============================================================================

#NoEnv
#SingleInstance force
; #Warn

SendMode Input
SetWorkingDir %A_ScriptDir% ; Default in autohotkey v2.
AutoTrim, Off ; Default in autohotkey v2.
SetTitleMatchMode RegEx
; This setting messes with Zenbook touchpad
;SetNumlockState, AlwaysOn
EnvGet, homedir, USERPROFILE

; AHK can't interact with admin windows unless it is running as admin...
if not A_IsAdmin
{
	try
	{
		Run *RunAs "%A_ScriptFullPath%"
	}
	ExitApp
}

; =============================================================================
; Define groups

; Windows that should just close on ESC
GroupAdd, CloseOnEsc, Photos ahk_class ApplicationFrameWindow
; Windows that should close with CTRL+Q.
GroupAdd, CloseOnCQ, ahk_class Notepad ahk_exe notepad.exe
; Windows that should not be affected by our text editing modifications
GroupAdd, NoTextMod, ahk_exe WindowsTerminal.exe

; =============================================================================
; Libs
#include Capslock.ahk
#include Highlight.ahk
#include RapidHotkey.ahk

; =============================================================================
; 3rd party modules
#include window-switcher.ahk

; =============================================================================
; Custom modules
#include drmartingonzo/media-keys.ahk
#include drmartingonzo/window-management.ahk
#include drmartingonzo/text-cursor.ahk
#include drmartingonzo/text-misc.ahk
#include drmartingonzo/text-mac.ahk
