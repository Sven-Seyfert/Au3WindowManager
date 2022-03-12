Func _CreateLayoutChoiceGui()
    Local $vButtonStyle = $BS_CENTER + $BS_MULTILINE + $BS_VCENTER
    Local $iW     = 400
    Local $iH     = 500

    $hGui = GUICreate('', $iW, $iH, Default, Default, $WS_POPUP, $WS_EX_TOPMOST)
    GUISetFont(Default, Default, Default, 'Consolas')

    Local $cButtonLayoutOne    = GUICtrlCreateButton($sLayoutOne,      0,               0,               $iW / 3,   $iH / 4,   $vButtonStyle)
    Local $cButtonLayoutTwo    = GUICtrlCreateButton($sLayoutTwo,      $iW / 3,         0,               $iW / 3,   $iH / 4,   $vButtonStyle)
    Local $cButtonLayoutThree  = GUICtrlCreateButton($sLayoutThree,    ($iW / 3) * 2,   0,               $iW / 3,   $iH / 4,   $vButtonStyle)
    Local $cButtonLayoutFour   = GUICtrlCreateButton($sLayoutFour,     0,               $iH / 4,         $iW / 3,   $iH / 4,   $vButtonStyle)
    Local $cButtonLayoutFive   = GUICtrlCreateButton($sLayoutFive,     $iW / 3,         $iH / 4,         $iW / 3,   $iH / 4,   $vButtonStyle)
    Local $cButtonLayoutSix    = GUICtrlCreateButton($sLayoutSix,      ($iW / 3) * 2,   $iH / 4,         $iW / 3,   $iH / 4,   $vButtonStyle)
    Local $cButtonLayoutSeven  = GUICtrlCreateButton($sLayoutSeven,    ($iW / 3) * 0,   ($iH / 4) * 2,   $iW / 3,   $iH / 4,   $vButtonStyle)
    Local $cButtonLayoutEight  = GUICtrlCreateButton($sLayoutEight,    ($iW / 3) * 1,   ($iH / 4) * 2,   $iW / 3,   $iH / 4,   $vButtonStyle)
    Local $cButtonLayoutNine   = GUICtrlCreateButton($sLayoutNine,     ($iW / 3) * 2,   ($iH / 4) * 2,   $iW / 3,   $iH / 4,   $vButtonStyle)

    Local $cButtonLayoutTen    = GUICtrlCreateButton($sLayoutTen,      0,               ($iH / 4) * 3,   $iW / 3,   $iH / 4,   $vButtonStyle)
    Local $cButtonLayoutEleven = GUICtrlCreateButton($sLayoutEleven,   $iW / 3,         ($iH / 4) * 3,   $iW / 3,   $iH / 4,   $vButtonStyle)
    Local $cButtonLayoutTwelve = GUICtrlCreateButton($sLayoutTwelve,   ($iW / 3) * 2,   ($iH / 4) * 3,   $iW / 3,   $iH / 4,   $vButtonStyle)

    GUICtrlSetState($cButtonLayoutOne, $GUI_FOCUS)
    GUISetState(@SW_SHOW)

    While True
        Switch GUIGetMsg()
            Case $GUI_EVENT_CLOSE
                If _IsKeyPressed('1B') Then
                    _DisposeGui()
                    Exit
                EndIf

            Case $cButtonLayoutOne
                _DisposeGui()
                _LayoutOne()
                _CreateLayoutChoiceGui()

            Case $cButtonLayoutTwo
                _DisposeGui()
                _LayoutTwo()
                _CreateLayoutChoiceGui()

            Case $cButtonLayoutThree
                _DisposeGui()
                _LayoutThree()
                _CreateLayoutChoiceGui()

            Case $cButtonLayoutFour
                _DisposeGui()
                _LayoutFour()
                _CreateLayoutChoiceGui()

            Case $cButtonLayoutFive
                _DisposeGui()
                _LayoutFive()
                _CreateLayoutChoiceGui()

            Case $cButtonLayoutSix
                _DisposeGui()
                _LayoutSix()
                _CreateLayoutChoiceGui()

            Case $cButtonLayoutSeven
                _DisposeGui()
                _LayoutSeven()
                _CreateLayoutChoiceGui()

            Case $cButtonLayoutEight
                _DisposeGui()
                _LayoutEight()
                _CreateLayoutChoiceGui()

            Case $cButtonLayoutNine
                _DisposeGui()
                _LayoutNine()
                _CreateLayoutChoiceGui()

            Case $cButtonLayoutTen
                _DisposeGui()
                _LayoutTen()
                _CreateLayoutChoiceGui()

            Case $cButtonLayoutEleven
                _DisposeGui()
                _LayoutEleven()
                _CreateLayoutChoiceGui()

            Case $cButtonLayoutTwelve
                _DisposeGui()
                _LayoutTwelve()
                _CreateLayoutChoiceGui()
        EndSwitch
    WEnd
EndFunc
