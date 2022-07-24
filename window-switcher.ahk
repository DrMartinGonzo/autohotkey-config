; https://github.com/postliminary/window-switcher
; Includes custom modifications for me (Martin Portevin)

; Setup window switching
SetCurrentProgram() {
	global
	local ActiveProgram
	local A
	WinGet ActiveProgram, ProcessName, A
	if (ActiveProgram <> CurrentProgram) {
		if (ActiveProgram = "Explorer.EXE")
		{
			WinGet, ProgramArray, list, ahk_class CabinetWClass
		}
		else
		{
			WinGet, ProgramArray, list, ahk_exe %ActiveProgram%
		}
		CurrentProgram := ActiveProgram
		ProgramCursor := 1
	}
}

; Clear tracked program
ResetCurrentProgram() {
	global
	if (!GetKeyState("Alt", "P")) {
		SetTimer, ResetCurrentProgram, Off
		CurrentProgram := ""
	}
}

; Performs actual window switch
SwitchToProgramWindow() {
	global
	local CursorID := ProgramArray%ProgramCursor%
	WinActivate, ahk_id %CursorID%
	SetTimer, ResetCurrentProgram, 100
}

; Next window
NextProgramWindow() {
	global
	if (ProgramArray > 1) {
		ProgramCursor := ProgramCursor + 1
		if (ProgramCursor > ProgramArray) {
			ProgramCursor := 1
		}
		SwitchToProgramWindow()
	}
}

; Prev window
PrevProgramWindow() {
	global
	if (ProgramArray > 1) {
		ProgramCursor := ProgramCursor - 1
		if (ProgramCursor < 1) {
			ProgramCursor := ProgramArray
		}
		SwitchToProgramWindow()
	}
}

; Window switcher key bindings

; NextProgramWindow: ALT+Tab
; TODO: add detection to see if Moko keyboard is currently connected
; $!Tab::
; SetCurrentProgram()
; ; *$!Tab::Send #{Tab}   ; back delete line: CTRL+Backspace
; NextProgramWindow()
; return

; PrevProgramWindow: ALT+SHIFT+Tab
!+Tab::
SetCurrentProgram()
PrevProgramWindow()
return

; Switch between windows: CTRL+Tab
; unfortunately CMD+SHIFT+Tab doesn't work (AutoHotKey has very limited support for this
$<^Tab::AltTab
$<^Tab::AltTab