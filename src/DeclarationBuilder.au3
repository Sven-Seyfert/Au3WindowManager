Opt('WinTitleMatchMode', 4)

Global $iTaskbarHeight = WinGetPos('classname=Shell_TrayWnd')[3]

Opt('WinTitleMatchMode', 1)

Global $iWidth  = @DesktopWidth
Global $iHeight = @DesktopHeight - $iTaskbarHeight
Global $sCancel = 'cancel'
Global $hGui

Global Const $BS_CENTER         = 0x0300
Global Const $BS_MULTILINE      = 0x2000
Global Const $BS_VCENTER        = 0x0C00
Global Const $GUI_EVENT_CLOSE   = -3
Global Const $GUI_FOCUS         = 256
Global Const $WS_EX_TOPMOST     = 0x00000008
Global Const $WS_EX_TRANSPARENT = 0x00000020
Global Const $WS_POPUP          = 0x80000000
