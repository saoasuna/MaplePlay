Global $Paused
HotKeySet("{`}", "TogglePause")
Local $i = 0
Local $n = 0
Local $p = 1
Local $t = 0
While $p>0
   
if $i = 0 Then
Sleep(800)
Send ("{SPACE down}")
Sleep(60)
Send ("{SPACE up}")
Sleep(600)
Send("{LEFT down}")
Sleep(80)
Send("{LEFT up}")
Sleep(300)
 $i = $i + 1

ElseIf $i = 55 Then
   
   Sleep (5000)
MouseClick ( "left" , 602, 777)
Sleep (6000)
MouseClick ( "left" , 690, 595)
Sleep (6000)
  $i = 0
  
ElseIf $n = 18 Then

Send("{Y 1}")
  Sleep(800)
  Send("{Z 1}")
  Sleep(3000)
  $n = 0

ElseIf Mod($i, 2)= 0 Then
Send("{RIGHT down}")
Sleep(50)
Send("{RIGHT up}")
Sleep(400)
Send("{E 1}")
Sleep(1100)
Send("{E 1}")
Sleep(1100)
Send("{E 1}")
Sleep(1100)
Send("{E 1}")
Sleep(1100)
Send("{E 1}")
Sleep(1600)
$i = $i + 1
$n = $n + 1


ElseIf Mod($i, 2) = 1 Then
Send("{LEFT down}")
Sleep(50)
Send("{LEFT up}")
Sleep(100)
Send("{E 1}")
Sleep(1100)
Send("{E 1}")
Sleep(1100)
Send("{E 1}")
Sleep(1100)
Send("{E 1}")
Sleep(1100)
Send("{E 1}")
Sleep(1600)
$i = $i + 1
$n = $n + 1
EndIf
WEnd

Func TogglePause()
    $Paused = Not $Paused
    While $Paused
        Sleep(100)
        ToolTip('Script is "Paused"', 0, 0)
    WEnd
    ToolTip("")
EndFunc
