Func _IsKeyReleased($sKeyHexCode)
    If _IsKeyPressed($sKeyHexCode) Then
        While _IsKeyPressed($sKeyHexCode)
            Sleep(10)
        WEnd

        Return True
    EndIf

    Return False
EndFunc

Func _IsKeyPressed($sKeyHexCode)
    Local Const $KF_UP = 0x8000
    Local $aReturn = DllCall('user32.dll', 'short', 'GetAsyncKeyState', 'int', '0x' & $sKeyHexCode)

    Return BitAND($aReturn[0], $KF_UP) <> 0
EndFunc

Func _IsMouseOnGui($hGui)
    Local $aMouse = MouseGetPos()
    Local $aGui   = WinGetPos($hGui)

    If $aMouse[0] >= $aGui[0] And _
       $aMouse[1] >= $aGui[1] And _
       $aMouse[0] <= $aGui[0] + $aGui[2] And _
       $aMouse[1] <= $aGui[1] + $aGui[3] Then
       Return True
    EndIf

    Return False
EndFunc

Func _DisposeGui()
    GUIDelete($hGui)
EndFunc
