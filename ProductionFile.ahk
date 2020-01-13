#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance, force

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2 ;This let's any window that partially matches the given name get activated

#IfWinActive, ahk_exe ONENOTE.EXE ; Only work in onenote 2016
^`:: ; if New hotkey = CTRL+Backtick is entered
Send Untitled page {enter}My notes about something
Send !3 ; ALT+3
Send {enter} {enter}
return

^!d:: ; if New hotkey = CTRL+ALT+d
Send !3 ; ALT+3
Send {enter} {enter}
return

#IfWinActive, ahk_exe chrome.exe ; Only work in chrome
^`:: ; if CTRL + back tick is entered
Send ^+B ; send CTRL + SHIFT + "B"
return

#IfWinActive, ; work for any active windows
Capslock::WinMinimize,A