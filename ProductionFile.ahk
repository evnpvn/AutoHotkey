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

^q:: ;if new hotkey CTRL+Q entered 
Send ^t ;Open a new browser tab CTRL+T
Send https://time.is/just ;enter URL in the searchbar
; time.is config URL (Copy and paste below URL to import configuration)
;https://time.is/?c=d3D_3F_3jXth2iAXfa2Xc1Xo-300Xz1Xa1Xb4e4185.28571f.2d99db.80265.1bb85e.5e3293.5e1d39Xw0Xv20200113Xh0Xi1XZ1XmXuXT0Xs0&l=en
Send {enter}
return

;removed functionality - not required with default google chrome page
;^t:: ; if new tab hotkey is entered
;Send ^t ; open new tab
;Send ^+B ; open bookmarks bar
return

#IfWinActive, ; work for any active windows
Capslock::WinMinimize,A