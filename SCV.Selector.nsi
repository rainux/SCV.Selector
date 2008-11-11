; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines

!ifdef MINI_VERSION
  !define PRODUCT_NAME "SCV Selector (Mini Version)"
  !define SCV_INI "SCV.mini.ini"
!else
  !define PRODUCT_NAME "SCV Selector (Full Version)"
  !define SCV_INI "SCV.ini"
!endif
!define PRODUCT_VERSION "Build 2008.07.18"
!define PRODUCT_PUBLISHER "Rainux"
!define PRODUCT_WEB_SITE "http://www.rainux.org"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ICON "data\BW.ico"

; 版本选择页面
Page custom ShowVerSelect LeaveVerSelect
; Directory page
!define MUI_PAGE_CUSTOMFUNCTION_PRE ExpressMode
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
!ifndef MINI_VERSION
  OutFile "SCV.Selector.Full.exe"
!else
  OutFile "SCV.Selector.Mini.exe"
!endif
!ifndef DEBUG
  InstallDirRegKey HKLM "SOFTWARE\Blizzard Entertainment\Starcraft" "InstallPath"
!else
  InstallDir "$PROGRAMFILES\Starcraft"
!endif
ShowInstDetails show

Caption "${PRODUCT_NAME} ${PRODUCT_VERSION}"
BrandingText "${PRODUCT_NAME} ${PRODUCT_VERSION}"

!include "LogicLib.nsh"

;--------------------------------
;Reserve Files

  ;These files should be inserted before other files in the data block
  ;Keep these lines before any File command
  ;Only for solid compression (by default, solid compression is enabled for BZIP2 and LZMA)

  ReserveFile ${SCV_INI}
  ReserveFile "data\SC.ico"
  ReserveFile "${NSISDIR}\Plugins\InstallOptionsEx.dll"

;--------------------------------
;Variables

  Var NoCD
  Var Started

;--------------------------------
;Installer Sections

Section "SCVS"
  SetOutPath "$INSTDIR"
  SetOverwrite off

  DetailPrint "Removing old files"
  KillProcDLL::KillProc "BNUpdate.exe"
  KillProcDLL::KillProc "starcraft.exe"
  KillProcDLL::KillProc "staredit.exe"
  Call Cleanup

  ; NoCD or Original
  !insertmacro MUI_INSTALLOPTIONS_READ $NoCD ${SCV_INI} "Field 4" "State"

  System::Call "winmm::timeGetTime() i .R8 ?r"

  ; If "Other" selected, use DropList
  !insertmacro MUI_INSTALLOPTIONS_READ $R0 ${SCV_INI} "Field 21" "State"
  ${If} $R0 = 1
    !insertmacro MUI_INSTALLOPTIONS_READ $R1 ${SCV_INI} "Field 22" "State"
  ${Else}
    ; $R9 is the selected radio ID
    !insertmacro MUI_INSTALLOPTIONS_READ $R1 ${SCV_INI} "Field $R9" "Text"
  ${EndIf}

  ; Try from the highest version, this makes script more effective
  !ifndef MINI_VERSION
  DetailPrint "Installing $R1"
  StrCmp $R1 "Brood War v1.15.2" 0 +4
    Call BW1152
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "Brood War v1.15.1" 0 +4
    Call BW1151
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "Brood War v1.15.0" 0 +4
    Call BW1150
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "Brood War v1.14" 0 +4
    Call BW114
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "Brood War v1.13f" 0 +4
    Call BW113f
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "Brood War v1.13e" 0 +4
    Call BW113e
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "Brood War v1.13d" 0 +4
    Call BW113d
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "Brood War v1.13c" 0 +4
    Call BW113c
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "Brood War v1.13b" 0 +4
    Call BW113b
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "Brood War v1.13" 0 +4
    Call BW113
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "Brood War v1.12b" 0 +4
    Call BW112b
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "Brood War v1.12" 0 +4
    Call BW112
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "Brood War v1.11b" 0 +4
    Call BW111b
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "Brood War v1.11" 0 +4
    Call BW111
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "Brood War v1.10" 0 +4
    Call BW110
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "Brood War v1.09b" 0 +4
    Call BW109b
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "Brood War v1.09" 0 +4
    Call BW109
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "Brood War v1.08b" 0 +4
    Call BW108b
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "Brood War v1.08" 0 +4
    Call BW108
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "Brood War v1.07" 0 +4
    Call BW107
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "Brood War v1.06" 0 +4
    Call BW106
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "Brood War v1.05" 0 +4
    Call BW105
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "Brood War v1.04" 0 +4
    Call BW104
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "StarCraft v1.04" 0 +4
    Call SC104
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "StarCraft v1.03" 0 +4
    Call SC103
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "StarCraft v1.02" 0 +4
    Call SC102
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "StarCraft v1.01" 0 +4
    Call SC101
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "StarCraft v1.00" 0 +3
    Call SC100
    Goto +2
  DetailPrint "Internal error"
  !endif

  !ifdef MINI_VERSION
  DetailPrint "Installing $R1"
  StrCmp $R1 "Brood War v1.15.2" 0 +4
    Call BW1152
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "Brood War v1.14" 0 +4
    Call BW114
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "Brood War v1.13f" 0 +4
    Call BW113f
    IntOp $Started 1 +
    Goto +2
  StrCmp $R1 "Brood War v1.08b" 0 +4
    Call BW108b
    Goto +2
  DetailPrint "Internal error"
  !endif

  ; Apply NoCD patch
  Call NoCDPatch

  !ifndef DEBUG
  Call RegFix
  !endif

  System::Call "winmm::timeGetTime() i .R9 ?r"
  IntOp $R9 $R9 - $R8
  DetailPrint "$R9 ms used."
  System::Free 0
SectionEnd

;--------------------------------
;Installer Functions

Function .onInit
  !insertmacro MUI_INSTALLOPTIONS_EXTRACT ${SCV_INI}
  !insertmacro MUI_INSTALLOPTIONS_EXTRACT_AS "data\SC.ico" "SC.ico"
  !insertmacro MUI_INSTALLOPTIONS_WRITE ${SCV_INI} "Field 1" "Text" "$PLUGINSDIR\SC.ico"
FunctionEnd

LangString TEXT_IO_TITLE ${LANG_ENGLISH} "StarCraft Version Select"
LangString TEXT_IO_SUBTITLE ${LANG_ENGLISH} "Please select the version of StarCraft you want to use."

Function ShowVerSelect
  !insertmacro MUI_HEADER_TEXT "$(TEXT_IO_TITLE)" "$(TEXT_IO_SUBTITLE)"
  Push $R0
  InstallOptionsEx::dialog $PLUGINSDIR\${SCV_INI}
  Pop $R0
FunctionEnd

Function LeaveVerSelect
  ; $R0 is the button ID, $R1 is the DropList
  !insertmacro MUI_INSTALLOPTIONS_READ $R0 ${SCV_INI} "Settings" "State"
  !insertmacro MUI_INSTALLOPTIONS_READ $R1 ${SCV_INI} "Field 22" "HWND"
  ; 如果添加新版本，需要修改此数字 ID
  ${If} $R0 >= 7
  ${AndIf} $R0 <= 20
    EnableWindow $R1 0
    ; $R9 is the selected radio ID
    IntOp $R9 $R0 +
    Abort
  ${ElseIf} $R0 = 21
    EnableWindow $R1 1
    Abort
  ${EndIf}
FunctionEnd

Function ExpressMode
  !insertmacro MUI_INSTALLOPTIONS_READ $R0 ${SCV_INI} "Field 3" "State"
  ${If} $R0 = 1
    SetAutoClose true
    SetDetailsPrint none
    SetDetailsView hide
    ${If} $INSTDIR != ""
      Abort
    ${EndIf}
  ${EndIf}

  ${If} $INSTDIR == ""
    StrCpy $INSTDIR $EXEDIR
  ${EndIf}
FunctionEnd

Function NoCDPatch
  ${If} $NoCD = 1
    ${If} $R1 == "Brood War v1.15.2"
      File /oname=BroodWar.mpq "data\storm.NoCD\Install.exe"
    ${Else}
      File "data\storm.NoCD\Install.exe"
      File "data\storm.NoCD\NoCD.pat"
      DetailPrint "VPatching storm.dll to NoCD version"
      VPatch::vpatchfile "NoCD.pat" "storm.dll" "storm.NoCD.dll"
      Delete "$INSTDIR\NoCD.pat"
      Delete "$INSTDIR\storm.dll"
      Rename "storm.NoCD.dll" "storm.dll"
    ${EndIf}
  ${EndIf}
FunctionEnd

Function RegFix
  WriteRegStr HKLM "SOFTWARE\Blizzard Entertainment\Starcraft" "InstallPath" "$INSTDIR\"
  WriteRegStr HKLM "SOFTWARE\Blizzard Entertainment\Starcraft" "Program" "$INSTDIR\Starcraft.exe"
  WriteRegStr HKLM "SOFTWARE\Blizzard Entertainment\Starcraft" "StarEdit" "$INSTDIR\"
  ${If} $NoCD = 1
    WriteRegStr HKLM "SOFTWARE\Blizzard Entertainment\Starcraft" "StarCD" "$INSTDIR\"
  ${Else}
    DeleteRegValue HKLM "SOFTWARE\Blizzard Entertainment\Starcraft" "StarCD"
  ${EndIf}
  WriteRegStr HKLM "SOFTWARE\Blizzard Entertainment\Starcraft" "Retail" "y"
  WriteRegStr HKLM "SOFTWARE\Blizzard Entertainment\Starcraft" "Brood War" "y"
  DeleteRegValue HKCU "SOFTWARE\Blizzard Entertainment\Starcraft" "Game Speed"
  DeleteRegValue HKCU "SOFTWARE\Blizzard Entertainment\Starcraft" "music"
  DeleteRegValue HKCU "SOFTWARE\Blizzard Entertainment\Starcraft" "trigtext"
  WriteRegStr HKLM "SOFTWARE\Blizzard Entertainment\Starcraft" "Game Speed" "Fastest"
  WriteRegDWORD HKLM "SOFTWARE\Blizzard Entertainment\Starcraft" "music" 0x00000032
  WriteRegDWORD HKLM "SOFTWARE\Blizzard Entertainment\Starcraft" "trigtext" 0x00000400
  WriteRegStr HKLM "SOFTWARE\Blizzard Entertainment\Starcraft\DelOpt0" "Path0" "$INSTDIR\characters"
  WriteRegStr HKLM "SOFTWARE\Blizzard Entertainment\Starcraft\DelOpt0" "File0" "spc"
  WriteRegStr HKLM "SOFTWARE\Blizzard Entertainment\Starcraft\DelOpt0" "Path1" "$INSTDIR\characters"
  WriteRegStr HKLM "SOFTWARE\Blizzard Entertainment\Starcraft\DelOpt0" "File1" "mpc"
  WriteRegStr HKLM "SOFTWARE\Blizzard Entertainment\Starcraft\DelOpt1" "Path0" "$INSTDIR\save"
  WriteRegStr HKLM "SOFTWARE\Blizzard Entertainment\Starcraft\DelOpt1" "File0" "sng"
  WriteRegStr HKLM "SOFTWARE\Blizzard Entertainment\Starcraft\DelOpt1" "Path1" "$INSTDIR\maps\save"
  WriteRegStr HKLM "SOFTWARE\Blizzard Entertainment\Starcraft\DelOpt1" "File1" "mlt"
  WriteRegStr HKLM "SOFTWARE\Blizzard Entertainment\Starcraft\DelOpt1" "Path2" "$INSTDIR\save"
  WriteRegStr HKLM "SOFTWARE\Blizzard Entertainment\Starcraft\DelOpt1" "File2" "snx"
  WriteRegStr HKLM "SOFTWARE\Blizzard Entertainment\Starcraft\DelOpt1" "Path3" "$INSTDIR\maps\save"
  WriteRegStr HKLM "SOFTWARE\Blizzard Entertainment\Starcraft\DelOpt1" "File3" "mlx"
  WriteRegStr HKLM "SOFTWARE\Blizzard Entertainment\Starcraft\DelOpt1" "Game Subtype" "4 vs 4"
FunctionEnd

Function Cleanup
  !ifndef MINI_VERSION
  Delete "$INSTDIR\BNUpdate.exe"
  Delete "$INSTDIR\bnupdate.log"
  Delete "$INSTDIR\BroodUnits.doc"
  Delete "$INSTDIR\EditLocal.dll"
  Delete "$INSTDIR\InstCC.exe"
  Delete "$INSTDIR\License.html"
  Delete "$INSTDIR\License.txt"
  Delete "$INSTDIR\noboot.dat"
  Delete "$INSTDIR\patch.txt"
  Delete "$INSTDIR\Readme.cnt"
  Delete "$INSTDIR\Readme.hlp"
  Delete "$INSTDIR\Riched20.dll"
  Delete "$INSTDIR\SEditDEU.loc"
  Delete "$INSTDIR\SEditENU.loc"
  Delete "$INSTDIR\SEditESP.loc"
  Delete "$INSTDIR\SEditFRA.loc"
  Delete "$INSTDIR\SEditITA.loc"
  Delete "$INSTDIR\SEditPTB.loc"
  Delete "$INSTDIR\SEditPTG.loc"
  Delete "$INSTDIR\StarEdit.cnt"
  Delete "$INSTDIR\staredit.exe"
  Delete "$INSTDIR\StarEdit.hlp"
  !endif
  Delete "$INSTDIR\battle.snp"
  Delete "$INSTDIR\Local.dll"
  Delete "$INSTDIR\Patch_rt.mpq"
  Delete "$INSTDIR\Smackw32.dll"
  Delete "$INSTDIR\standard.snp"
  Delete "$INSTDIR\starcraft.exe"
  Delete "$INSTDIR\storm.dll"
FunctionEnd

!ifndef MINI_VERSION
Function SC100
  File "versions\SC.v1.00\*.*"
FunctionEnd

Function SC101
  File "versions\SC.v1.01\*.*"
FunctionEnd

Function SC102
  File /x "Patch*.*" "versions\SC.v1.02\*.*"
  ${If} $Started = 0
    File "versions\SC.v1.02\Patch*.*"
  ${EndIf}
FunctionEnd

Function SC103
  File /x "Patch*.*" "versions\SC.v1.03\*.*"
  ${If} $Started = 0
    File "versions\SC.v1.03\Patch*.*"
  ${EndIf}
FunctionEnd

Function SC104
  File /x "Patch*.*" "versions\SC.v1.04\*.*"
  ${If} $Started = 0
    File "versions\SC.v1.04\Patch*.*"
  ${EndIf}
FunctionEnd

Function BW104
  File "versions\BW.v1.04\*.*"
FunctionEnd

Function BW105
  File "versions\BW.v1.05\*.*"
FunctionEnd

Function BW106
  File "versions\BW.v1.06\*.*"
FunctionEnd

Function BW107
  File "versions\BW.v1.07\*.*"
FunctionEnd

Function BW108
  File "versions\BW.v1.08\*.*"
FunctionEnd

Function BW108b
  File "versions\BW.v1.08b\*.*"
FunctionEnd

Function BW109
  File "versions\BW.v1.09\*.*"
FunctionEnd

Function BW109b
  File "versions\BW.v1.09b\*.*"
FunctionEnd

Function BW110
  File "versions\BW.v1.10\*.*"
FunctionEnd

Function BW111
  File "versions\BW.v1.11\*.*"
FunctionEnd

Function BW111b
  File "versions\BW.v1.11b\*.*"
FunctionEnd

Function BW112
  File "versions\BW.v1.12\*.*"
FunctionEnd

Function BW112b
  File "versions\BW.v1.12b\*.*"
FunctionEnd

Function BW113
  File "versions\BW.v1.13\*.*"
FunctionEnd

Function BW113b
  File "versions\BW.v1.13b\*.*"
FunctionEnd

Function BW113c
  File "versions\BW.v1.13c\*.*"
FunctionEnd

Function BW113d
  File "versions\BW.v1.13d\*.*"
FunctionEnd

Function BW113e
  File "versions\BW.v1.13e\*.*"
FunctionEnd

Function BW113f
  File "versions\BW.v1.13f\*.*"
FunctionEnd

Function BW114
  File "versions\BW.v1.14\*.*"
FunctionEnd

Function BW1150
  File "versions\BW.v1.15.0\*.*"
FunctionEnd

Function BW1151
  File "versions\BW.v1.15.1\*.*"
FunctionEnd

Function BW1152
  File "versions\BW.v1.15.2\*.*"
FunctionEnd
!endif

!ifdef MINI_VERSION
Function BW108b
  File "versions\SC.v1.00\Local.dll"
  File "versions\SC.v1.00\Smackw32.dll"
  File "versions\BW.v1.08\Patch_rt.mpq"
  File "versions\BW.v1.08\standard.snp"
  File "versions\BW.v1.08\storm.dll"
  File "versions\BW.v1.08b\patch.txt"
  File "versions\BW.v1.08b\starcraft.exe"
FunctionEnd

Function BW113f
  File "versions\BW.v1.13f\battle.snp"
  File "versions\BW.v1.13f\patch.txt"
  File "versions\BW.v1.13f\Patch_rt.mpq"
  File "versions\BW.v1.13f\standard.snp"
  File "versions\BW.v1.13f\starcraft.exe"
  File "versions\BW.v1.13f\storm.dll"
FunctionEnd

Function BW114
  File "versions\BW.v1.14\battle.snp"
  File "versions\BW.v1.14\patch.txt"
  File "versions\BW.v1.14\Patch_rt.mpq"
  File "versions\BW.v1.14\standard.snp"
  File "versions\BW.v1.14\starcraft.exe"
  File "versions\BW.v1.14\storm.dll"
FunctionEnd

Function BW1152
  File "versions\BW.v1.15.2\battle.snp"
  File "versions\BW.v1.15.2\patch.txt"
  File "versions\BW.v1.15.2\Patch_rt.mpq"
  File "versions\BW.v1.15.2\standard.snp"
  File "versions\BW.v1.15.2\StarCraft.exe"
  File "versions\BW.v1.15.2\storm.dll"
FunctionEnd
!endif
