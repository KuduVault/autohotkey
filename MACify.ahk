#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

^+M::
    Send, {Home}
    Loop, 5
    {
        Send, {Right}{Right}:
    }
	Send, {End}
    return