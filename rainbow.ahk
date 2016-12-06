SetTitleMatchMode, 2
#IfWinActive Google Docs
CoordMode, Mouse, Screen
Esc::ExitApp
^!p::Pause  ; Press Ctrl+Alt+P to pause. Press it again to resume.
RButton::
    Loop
    {
        Send {Right}{Right} ; break selection and advance once
        Send +{Left}
        Index = 0
        Click
        Offset := Mod(a_index, 9) * 19
        MouseMove, -4, 100, 0, R ; Move from font picker to first color 
        MouseMove, %Offset%, 0, 0, R ; Move to current color
        Click
        Back := Offset * -1
        MouseMove, %Back%, 0, 0, R ; Move back offset
        MouseMove, 4, -100, 0, R ; Back to font picker
    }
Return
