Func _isKeyReleased($sKeyHexCode)
    If _isKeyPressed($sKeyHexCode) Then
        While _isKeyPressed($sKeyHexCode)
            Sleep(10)
        WEnd

        Return True
    EndIf

    Return False
EndFunc

Func _isKeyPressed($sKeyHexCode)
    Local $aReturn = DllCall('user32.dll', 'short', 'GetAsyncKeyState', 'int', '0x' & $sKeyHexCode)

    Return BitAND($aReturn[0], 0x8000) <> 0
EndFunc

Func _isMouseOnGui($hGui)
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

Func _disposeGui()
    GUIDelete($hGui)
EndFunc
