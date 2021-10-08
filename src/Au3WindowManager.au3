; compiler information for AutoIt
#AutoIt3Wrapper_AU3Check_Stop_OnWarning=y
#AutoIt3Wrapper_Icon=..\media\favicon.ico
#AutoIt3Wrapper_Outfile_x64=..\build\Au3WindowManager
#AutoIt3Wrapper_Res_Description=Au3WindowManager (2021-09-24)
#AutoIt3Wrapper_Res_Fileversion=0.1
#AutoIt3Wrapper_UseUpx=n
#AutoIt3Wrapper_UseX64=y



; opt and just singleton -------------------------------------------------------
Opt( 'MustDeclareVars', 1 )
Global $aInst = ProcessList( 'Au3WindowManager.exe' )
If $aInst[0][0] > 1 Then Exit



; includes ---------------------------------------------------------------------
#include-once
#include <Array.au3>
#include <WinAPI.au3>



; references -------------------------------------------------------------------
#include "DeclarationBuilder.au3"
#include "WindowController.au3"
#include "FunctionController.au3"
#include "LayoutContainer.au3"
#include "LayoutController.au3"
#include "GuiBuilder.au3"



; processing -------------------------------------------------------------------
_createLayoutChoiceGui()
