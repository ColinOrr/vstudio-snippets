<^>!Enter::
    Clipboard := ""
    Send {END}
    Send {SHIFTDOWN}{HOME}
    Send, ^c
    ClipWait
    start_from  := RegExMatch(clipboard, """")
    underscored := RegExReplace(clipboard, "\s", "_", 0, -1, start_from)
    stripped    := RegExReplace(underscored, """")
    SendRaw, %stripped%
    Clipboard := null
    Send {control}
Return