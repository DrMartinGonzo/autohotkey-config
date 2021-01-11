; =============================================================================
; DrMartinGonzo custom autohotkey config
; =============================================================================

#NoEnv
#SingleInstance force
; #Warn

SendMode Input
SetWorkingDir %A_ScriptDir% ; Default in autohotkey v2.
AutoTrim, Off ; Default in autohotkey v2.
SetTitleMatchMode RegEx
SetNumlockState, AlwaysOn
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
; Shared stuff between all PCs
#include drmartingonzo-common.ahk