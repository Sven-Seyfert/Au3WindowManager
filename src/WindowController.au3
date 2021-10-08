Func _moveWindow($iX, $iY, $iW, $iH)
    _createPreviewOverlayGui($iWidth * $iX, $iHeight * $iY, $iWidth * $iW, $iHeight * $iH)

    Local $sWindowTitle = _getActiveWindowTitle()

    If $sWindowTitle <> $sCancel Then
        Sleep(150)

        WinSetState($sWindowTitle, '', @SW_RESTORE)
        WinMove($sWindowTitle, '', $iWidth * $iX, $iHeight * $iY, $iWidth * $iW, $iHeight * $iH)
    EndIf

    _disposeGui()
EndFunc

Func _moveWindowSpecialLayout($iX, $iY, $iW, $iH)
    _createPreviewOverlayGui($iX, $iY, $iW, $iH)

    Local $sWindowTitle = _getActiveWindowTitle()

    If $sWindowTitle <> $sCancel Then
        Sleep(150)

        WinSetState($sWindowTitle, '', @SW_RESTORE)
        WinMove($sWindowTitle, '', $iX, $iY, $iW, $iH)
    EndIf

    _disposeGui()
EndFunc

Func _createPreviewOverlayGui($iX, $iY, $iW, $iH)
    Local $sTitle = 'PreviewOverlayGui'

    $hGui = GUICreate($sTitle, $iW, $iH, $iX, $iY, $WS_POPUP, $WS_EX_TOPMOST + $WS_EX_TRANSPARENT)
    GUISetFont(36, 700, Default, 'Consolas')
    GUISetBkColor(0xFF0000)
    GUICtrlCreateLabel(Round($iW) & 'x' & Round($iH) & ' (' & Round($iX) & ';' & Round($iY) & ')', 30, 30)

    WinSetTrans($sTitle, '', 80)
    GUISetState(@SW_SHOW)
EndFunc

Func _getActiveWindowTitle()
    Local $sWindowTitle = Null

    While True
        ; [Left mouse button]
        If _isKeyReleased('01') Then
            If _isMouseOnGui($hGui) Then
                $sWindowTitle = WinGetTitle('[ACTIVE]')
                ExitLoop
            EndIf
        EndIf

        ; [ESC]
        If _isKeyReleased('1B') Then
            $sWindowTitle = $sCancel
            ExitLoop
        EndIf
    WEnd

    Return $sWindowTitle
EndFunc

Func _getListOfVisibleWindows()
    Local Const $GWL_EXSTYLE       = 0xFFFFFFEC
    Local Const $WS_EX_TOOLWINDOW  = 0x00000080
    Local Const $WIN_STATE_VISIBLE = 2

    Local $aListOfWindowsWithTitles = WinList('[REGEXPTITLE:(.+)]')
    Local $aListOfVisibleWindows[1]

    For $i = $aListOfWindowsWithTitles[0][0] To 1 Step -1
        Global $iExtendedWindowStyles = _WinAPI_GetWindowLong($aListOfWindowsWithTitles[$i][1], $GWL_EXSTYLE)

        If Not BitAND($iExtendedWindowStyles, $WS_EX_TOOLWINDOW) And BitAND(WinGetState($aListOfWindowsWithTitles[$i][1]), $WIN_STATE_VISIBLE) Then
            _ArrayAdd($aListOfVisibleWindows, $aListOfWindowsWithTitles[$i][0])
        EndIf
    Next

    _ArrayDelete($aListOfVisibleWindows, 0)
    _ArraySort($aListOfVisibleWindows)

    Return $aListOfVisibleWindows
EndFunc
