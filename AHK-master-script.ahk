#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

; //////////// PERSONAL SCRIPTS ////////////

; Set default states
SetNumlockState, AlwaysOn
SetScrolllockState, AlwaysOff
SetCapsLockState, AlwaysOff

; Alt+MButton4 (back) to move up a folder in Explorer
#IfWinActive, ahk_class CabinetWClass
!XButton1::Send !{Up}
#IfWinActive

; Wheel Over Taskbar Volume Adjust
#If MouseIsOver("ahk_class Shell_TrayWnd")
WheelUp::Send {Volume_Up}
WheelDown::Send {Volume_Down}
MouseIsOver(WinTitle) {
    MouseGetPos,,, Win
    return WinExist(WinTitle . " ahk_id " . Win)
}

; Close Windows Photo Viewer with MMB
#IfWinActive ahk_exe Photos.exe
MButton::Send !{F4}
return
#IfWinActive


; //////////// Bind CapsLock+IJKL to ArrowKeys by madslundt ////////////

CapsLock & i::
if GetKeyState("Shift", "D")
{
    if GetKeyState("Alt", "D")
        Send +^{Up}
    else if GetKeyState("Ctrl", "D")
        Send +!{Up}
    else
        Send +{Up}
    Send {Shift Up}
    Send {Alt Up}
}
else if GetKeyState("Ctrl", "D")
{
    if (GetKeyState("Alt", "D"))
        Send !^{Up}
    else
        Send !{Up}
    Send {Ctrl Up}
    Send {Alt Up}
}
else if GetKeyState("Alt", "D")
{
    Send ^{Up}
    Send {Alt Up}
}
else
    Send {Up}

return

CapsLock & k::
if GetKeyState("Shift", "D")
{
    if GetKeyState("Alt", "D")
        Send +^{Down}
    else if GetKeyState("Ctrl", "D")
        Send +!{Down}
    else
        Send +{Down}
    Send {Shift Up}
    Send {Alt Up}
}
else if GetKeyState("Ctrl", "D")
{
    if (GetKeyState("Alt", "D"))
        Send !^{Down}
    else
        Send !{Down}
    Send {Ctrl Up}
    Send {Alt Up}
}
else if GetKeyState("Alt", "D")
{
    Send ^{Down}
    Send {Alt Up}
}
else
    Send {Down}

return

CapsLock & j::
if GetKeyState("Shift", "D")
{
    if GetKeyState("Alt", "D")
        Send +^{Left}
    else if GetKeyState("Ctrl", "D")
        Send +!{Left}
    else
        Send +{Left}
    Send {Shift Up}
    Send {Alt Up}
}
else if GetKeyState("Ctrl", "D")
{
    if (GetKeyState("Alt", "D"))
        Send !^{Left}
    else
        Send !{Left}
    Send {Ctrl Up}
    Send {Alt Up}
}
else if GetKeyState("Alt", "D")
{
    Send ^{Left}
    Send {Alt Up}
}
else
    Send {Left}

return

CapsLock & l::
if GetKeyState("Shift", "D")
{
    if GetKeyState("Alt", "D")
        Send +^{Right}
    else if GetKeyState("Ctrl", "D")
        Send +!{Right}
    else
        Send +{Right}
    Send {Shift Up}
    Send {Alt Up}
}
else if GetKeyState("Ctrl", "D")
{
    if (GetKeyState("Alt", "D"))
        Send !^{Right}
    else
        Send !{Right}
    Send {Ctrl Up}
    Send {Alt Up}
}
else if GetKeyState("Alt", "D")
{
    Send ^{Right}
    Send {Alt Up}
}
else
    Send {Right}

return

CapsLock & u::
if GetKeyState("Shift", "D")
{
    if GetKeyState("Alt", "D")
        Send +^{Home}
    else if GetKeyState("Ctrl", "D")
        Send +!{Home}
    else
        Send +{Home}
    Send {Shift Up}
    Send {Alt Up}
}
else if GetKeyState("Ctrl", "D")
{
    if (GetKeyState("Alt", "D"))
        Send !^{Home}
    else
        Send !{Home}
    Send {Ctrl Up}
    Send {Alt Up}
}
else if GetKeyState("Alt", "D")
{
    Send ^{Home}
    Send {Alt Up}
}
else
    Send {Home}

return

CapsLock & o::
if GetKeyState("Shift", "D")
{
    if GetKeyState("Alt", "D")
        Send +^{End}
    else if GetKeyState("Ctrl", "D")
        Send +!{End}
    else
        Send +{End}
    Send {Shift Up}
    Send {Alt Up}
}
else if GetKeyState("Ctrl", "D")
{
    if (GetKeyState("Alt", "D"))
        Send !^{End}
    else
        Send !{End}
    Send {Ctrl Up}
    Send {Alt Up}
}
else if GetKeyState("Alt", "D")
{
    Send ^{End}
    Send {Alt Up}
}
else
    Send {End}

return

CapsLock & y:: Send {PgUp}
CapsLock & h:: Send {PgDn}

!i:: Send {PgUp}
!k:: Send {PgDn}

return