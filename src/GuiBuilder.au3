Func _createLayoutChoiceGui()
    Local $vStyle = $BS_CENTER + $BS_MULTILINE + $BS_VCENTER
    Local $iW     = 400
    Local $iH     = 500

    $hGui = GUICreate('', $iW, $iH, Default, Default, $WS_POPUP)
    GUISetFont(Default, Default, Default, 'Consolas')

    Local $cButtonLayoutOne    = GUICtrlCreateButton($sLayoutOne,     0,               0,               $iW / 3,     $iH / 4,   $vStyle)
    Local $cButtonLayoutTwo    = GUICtrlCreateButton($sLayoutTwo,     $iW / 3,         0,               $iW / 3,     $iH / 4,   $vStyle)
    Local $cButtonLayoutThree  = GUICtrlCreateButton($sLayoutThree,   ($iW / 3) * 2,   0,               $iW / 3,     $iH / 4,   $vStyle)
    Local $cButtonLayoutFour   = GUICtrlCreateButton($sLayoutFour,    0,               $iH / 4,         $iW / 3,     $iH / 4,   $vStyle)
    Local $cButtonLayoutFive   = GUICtrlCreateButton($sLayoutFive,    $iW / 3,         $iH / 4,         $iW / 3,     $iH / 4,   $vStyle)
    Local $cButtonLayoutSix    = GUICtrlCreateButton($sLayoutSix,     ($iW / 3) * 2,   $iH / 4,         $iW / 3,     $iH / 4,   $vStyle)
    Local $cButtonLayoutSeven  = GUICtrlCreateButton($sLayoutSeven,   ($iW / 3) * 0,   ($iH / 4) * 2,   $iW / 3,     $iH / 4,   $vStyle)
    Local $cButtonLayoutEight  = GUICtrlCreateButton($sLayoutEight,   ($iW / 3) * 1,   ($iH / 4) * 2,   $iW / 3,     $iH / 4,   $vStyle)
    Local $cButtonLayoutNine   = GUICtrlCreateButton($sLayoutNine,    ($iW / 3) * 2,   ($iH / 4) * 2,   $iW / 3,     $iH / 4,   $vStyle)

    Local $cButtonLayoutTen    = GUICtrlCreateButton($sLayoutTen,     0,               ($iH / 4) * 3,   $iW / 3,     $iH / 4,   $vStyle)
    Local $cButtonLayoutEleven = GUICtrlCreateButton($sLayoutEleven,  $iW / 3,         ($iH / 4) * 3,   $iW / 3,     $iH / 4,   $vStyle)
    Local $cButtonLayoutTwelve = GUICtrlCreateButton($sLayoutTwelve,  ($iW / 3) * 2,   ($iH / 4) * 3,   $iW / 3,     $iH / 4,   $vStyle)

    GUICtrlSetState($cButtonLayoutOne, $GUI_FOCUS)
    GUISetState(@SW_SHOW)

    While True
        Switch GUIGetMsg()
            Case $GUI_EVENT_CLOSE
                If _isKeyPressed('1B') Then
                    _disposeGui()
                    Exit
                EndIf

            Case $cButtonLayoutOne
                _disposeGui()
                _layoutOne()
                _createLayoutChoiceGui()

            Case $cButtonLayoutTwo
                _disposeGui()
                _layoutTwo()
                _createLayoutChoiceGui()

            Case $cButtonLayoutThree
                _disposeGui()
                _layoutThree()
                _createLayoutChoiceGui()

            Case $cButtonLayoutFour
                _disposeGui()
                _layoutFour()
                _createLayoutChoiceGui()

            Case $cButtonLayoutFive
                _disposeGui()
                _layoutFive()
                _createLayoutChoiceGui()

            Case $cButtonLayoutSix
                _disposeGui()
                _layoutSix()
                _createLayoutChoiceGui()

            Case $cButtonLayoutSeven
                _disposeGui()
                _layoutSeven()
                _createLayoutChoiceGui()

            Case $cButtonLayoutEight
                _disposeGui()
                _layoutEight()
                _createLayoutChoiceGui()

            Case $cButtonLayoutNine
                _disposeGui()
                _layoutNine()
                _createLayoutChoiceGui()

            Case $cButtonLayoutTen
                _disposeGui()
                _layoutTen()
                _createLayoutChoiceGui()

            Case $cButtonLayoutEleven
                _disposeGui()
                _layoutEleven()
                _createLayoutChoiceGui()

            Case $cButtonLayoutTwelve
                _disposeGui()
                _layoutTwelve()
                _createLayoutChoiceGui()
        EndSwitch
    WEnd
EndFunc
