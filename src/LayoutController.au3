Func _layoutOne()
    _moveWindow(0,       0,       1 / 3,   1 / 1)
    _moveWindow(1 / 3,   0,       1 / 3,   1 / 1)
    _moveWindow(2 / 3,   0,       1 / 3,   1 / 1)
EndFunc

Func _layoutTwo()
    _moveWindow(0,       0,       1 / 4,   1 / 1)
    _moveWindow(1 / 4,   0,       1 / 2,   1 / 1)
    _moveWindow(3 / 4,   0,       1 / 4,   1 / 1)
EndFunc

Func _layoutThree()
    _moveWindow(0,       0,       0.4,     1 / 1)
    _moveWindow(0.4,     0,       0.4,     1 / 1)
    _moveWindow(0.8,     0,       0.2,     1 / 2)
    _moveWindow(0.8,     1 / 2,   0.2,     1 / 2)
EndFunc

Func _layoutFour()
    _moveWindow(0,       0,       2 / 3,   1 / 1)
    _moveWindow(2 / 3,   0,       1 / 3,   1 / 2)
    _moveWindow(2 / 3,   1 / 2,   1 / 3,   1 / 2)
EndFunc

Func _layoutFive()
    _moveWindow(0,       0,       1 / 3,   1 / 2)
    _moveWindow(0,       1 / 2,   1 / 3,   1 / 2)
    _moveWindow(1 / 3,   0,       2 / 3,   1 / 1)
EndFunc

Func _layoutSix()
    _moveWindow(0,       0,       0.2,     1 / 2)
    _moveWindow(0,       1 / 2,   0.2,     1 / 2)
    _moveWindow(0.2,     0,       0.4,     1 / 1)
    _moveWindow(0.6,     0,       0.4,     1 / 1)
EndFunc

Func _layoutSeven()
    _moveWindow(0,       0,       1 / 2,   1 / 1)
    _moveWindow(1 / 2,   0,       1 / 2,   1 / 2)
    _moveWindow(1 / 2,   1 / 2,   1 / 2,   1 / 2)
EndFunc

Func _layoutEight()
    _moveWindow(0,       0,       1 / 2,   1 / 2)
    _moveWindow(0,       1 / 2,   1 / 2,   1 / 2)
    _moveWindow(1 / 2,   0,       1 / 2,   1 / 1)
EndFunc

Func _layoutNine()
    _moveWindow(0,       0,       1 / 2,   1 / 2)
    _moveWindow(1 / 2,   0,       1 / 2,   1 / 2)
    _moveWindow(0,       1 / 2,   1 / 2,   1 / 2)
    _moveWindow(1 / 2,   1 / 2,   1 / 2,   1 / 2)
EndFunc

Func _layoutTen()
    Local $iBorderSize   = 0
    Local $iWidthFullHd  = 1920
    Local $iHeightFullHd = 1080

    _moveWindowSpecialLayout($iBorderSize,    $iBorderSize,   $iWidthFullHd - $iBorderSize * 2,   $iHeightFullHd - $iBorderSize * 2)
    _moveWindowSpecialLayout($iWidthFullHd,   0,              $iWidth - $iWidthFullHd,            $iHeight / 2)
    _moveWindowSpecialLayout($iWidthFullHd,   $iHeight / 2,   $iWidth - $iWidthFullHd,            $iHeight / 2)
EndFunc

Func _layoutEleven()
    Local $aListOfVisibleWindows = _getListOfVisibleWindows()
    Local $iCount      = UBound($aListOfVisibleWindows)
    Local $iCounter    = 0
    Local $iRows       = 1
    Local $iColumns    = $iCount
    Local $iMaxColumns = 4

    If $iCount > 4 Then
        Local $iRows    = Ceiling($iCount / $iMaxColumns)
        Local $iColumns = $iMaxColumns
    EndIf

    For $i = 1 To $iRows Step 1
        For $j = 1 To $iColumns Step 1
            If $iCounter == $iCount Then
                ExitLoop
            EndIf

            WinSetState($aListOfVisibleWindows[$iCounter], '', @SW_RESTORE)
            WinMove($aListOfVisibleWindows[$iCounter], '', ($iWidth / $iColumns) * ($j - 1), ($iHeight / $iRows) * ($i - 1), $iWidth / $iColumns, $iHeight / $iRows)

            $iCounter += 1
        Next
    Next
EndFunc

Func _layoutTwelve()
    Local $aListOfVisibleWindows = _getListOfVisibleWindows()
    Local $iCount = UBound($aListOfVisibleWindows) - 1

    For $i = 0 To $iCount Step 1
        WinSetState($aListOfVisibleWindows[$i], '', @SW_MAXIMIZE)
    Next
EndFunc
