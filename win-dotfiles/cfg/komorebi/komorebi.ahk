#Requires AutoHotkey v2.0.2
#SingleInstance Force
; ----------------------------------------------------------
; Keybidings Keys:
; ----------------------------------------------------------
#include C:\Users\%A_UserName%\.config\ahk\hotKeys.ahk
; ----------------------------------------------------------
; Keybidings Strings:
; ----------------------------------------------------------
#include C:\Users\%A_UserName%\.config\ahk\strings.ahk
; ----------------------------------------------------------
; HotReload On Save:
; ----------------------------------------------------------
~^s::{
  if InStr(WinGetTitle("A"), ".ahk") {
    Reload
  }
}
