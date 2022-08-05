; compiler information for AutoIt
#pragma compile(CompanyName, © SOLVE SMART)
#pragma compile(FileVersion, 1.4.0)
#pragma compile(LegalCopyright, © Sven Seyfert)
#pragma compile(ProductName, Au3WindowManager)
#pragma compile(ProductVersion, 1.4.0 - 2022-08-05)

#AutoIt3Wrapper_AU3Check_Stop_OnWarning=y
#AutoIt3Wrapper_Icon=..\media\icons\favicon.ico
#AutoIt3Wrapper_Outfile_x64=..\build\Au3WindowManager.exe
#AutoIt3Wrapper_UseUpx=n
#AutoIt3Wrapper_UseX64=y



; opt and just singleton -------------------------------------------------------
Opt('MustDeclareVars', 1)
Global $aInst = ProcessList('Au3WindowManager.exe')
If $aInst[0][0] > 1 Then Exit



; includes ---------------------------------------------------------------------
#include-once
#include <Array.au3>
#include <WinAPI.au3>



; modules ----------------------------------------------------------------------
#include "Initializer.au3"
#include "WindowController.au3"
#include "FunctionController.au3"
#include "LayoutContainer.au3"
#include "LayoutController.au3"
#include "GuiBuilder.au3"



; processing -------------------------------------------------------------------
_CreateLayoutChoiceGui()
