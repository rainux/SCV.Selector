; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines

!ifdef MINI_EDITION
  !define PRODUCT_NAME "SCV Selector (Mini Edition)"
  !define SCV_INI "SCV.mini.ini"
!else
  !define PRODUCT_NAME "SCV Selector (Full Edition)"
  !define SCV_INI "SCV.ini"
!endif
!define RELEASE_DATE "2009.04.27"
!define PRODUCT_VERSION "Build ${RELEASE_DATE}"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ICON "data\BW.1.14.ico"

; 版本选择页面
Page custom ShowVerSelect LeaveVerSelect
; Directory page
!define MUI_PAGE_CUSTOMFUNCTION_PRE ExpressMode
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"
!insertmacro MUI_LANGUAGE "SimpChinese"
!insertmacro MUI_LANGUAGE "TradChinese"

LangString TEXT_IO_TITLE ${LANG_ENGLISH} "StarCraft Version Select"
LangString TEXT_IO_SUBTITLE ${LANG_ENGLISH} "StarCraft Location: $INSTDIR"

LangString STARCRAFT_TIP ${LANG_ENGLISH} "\r\nStarCraft, back to the Age without Medic, Lurker and Dark Templar."
LangString BROODWAR_TIP ${LANG_ENGLISH} "\r\nStarCraft: Brood War, do you remember morph Zergling to Mutalisk in 1.04, sea of Hydralisks from 3 Hatcheries in 1.07?"
LangString EXPRESS_MODE_TIP ${LANG_ENGLISH} "\r\nChecked: Use StarCraft installation folder detected in Registry, and auto close when done. If there's no StarCraft installation information in Registry, then use current folder.\r\n\r\nUnchecked: Choose StarCraft installation folder yourself, default to the StarCraft installation folder detected in Registry."
LangString NOCD_TIP ${LANG_ENGLISH} "\r\nChecked: For versions before 1.15.2, apply the simplest No-CD patch (modify storm.dll with only 1 byte data, provided by keakon from forum of YaoYuan.com). Use this No-CD patch will cause you cannot play on Battle.net (Of course you can still play in LAN with IPX or UDP).\r\nFor version 1.15.2 and later, since Blizzard provided official No-CD support, to play without CD just ensure either BroodWar.mpq or StarCraft.mpq exists in your StarCraft installation folder.\r\nBoth cases require you copy the file Install.exe from StarCraft CD to StarCraft installation folder, for versions before 1.15.2 the filename must be Install.exe, for version 1.15.2 and later, the filename must be BroodWar.mpq or StarCraft.mpq. So if either Install.exe or BroodWar.mpq exists in StarCraft installation folder, SCV Selector will change it's name to suit with current selected version, else will install a minimal BroodWar.mpq without any content, this will allow StarCraft runs without CD, but also without background music && official single player mission.\r\n\r\nUnchecked: Do not apply No-CD patch, for versions before 1.15.2 you need other No-CD tool or StarCraft CD (or CD image with virtual CD tool) to play."
LangString REGFIX_TIP ${LANG_ENGLISH} "\r\nDefault (Grayed): Modify Registry to change StarCraft installation folder to the folder selected with SCV Selector, this ensure StarCraft read && write game data such as player ID, maps from correct folder. If NoCD checked, for No-CD patch works with versions before 1.15.2, also change the StarCraft CD location to StarCraft installation folder.\r\n\r\nChecked: In addition to the StarCraft installation folder && CD location fixing in Default state, also reset some other settings of StarCraft to default value. This option useful when you copied StarCraft installation folder from another computer, or just want to fix the confused StarCraft settings in Registry.\r\n\r\nUnchecked (Not Suggested): Do not modify any settings in Registry. StarCraft may have strange behavior since installation folder in Registry is different from the actual installation folder, even cause No-CD patch don't works for versions before 1.15.2."
LangString RAINUX_ORG_TIP ${LANG_ENGLISH} "\r\nVisit SCV Selector release page."

LangString MUI_TEXT_DIRECTORY_TITLE ${LANG_ENGLISH} "Choose StarCraft Location"
LangString MUI_TEXT_DIRECTORY_SUBTITLE ${LANG_ENGLISH} "Choose the folder of your StarCraft installation."
LangString ^DirText ${LANG_ENGLISH} "SCV Selector detected your StarCraft installation in the following folder. To use with a different StarCraft installation, click Browse and select it."
LangString ^DirBrowseText ${LANG_ENGLISH} "Select the folder of StarCraft installation you want to use:"
LangString ^DirSubText ${LANG_ENGLISH} "StarCraft Installation Folder"
LangString ^InstallBtn ${LANG_ENGLISH} "&Go Go Go!"

LangString MUI_TEXT_INSTALLING_TITLE ${LANG_ENGLISH} "Working"
LangString MUI_TEXT_INSTALLING_SUBTITLE ${LANG_ENGLISH} "Please wait while SCV Selector switching StarCraft to $Version."
LangString MUI_TEXT_FINISH_TITLE ${LANG_ENGLISH} "Complete"
LangString MUI_TEXT_FINISH_SUBTITLE ${LANG_ENGLISH} "SCV Selector completed the operation successfully."
LangString MUI_TEXT_ABORT_TITLE ${LANG_ENGLISH} "Aborted"
LangString MUI_TEXT_ABORT_SUBTITLE ${LANG_ENGLISH} "SCV Selector didn't completed the operation successfully."

LangString TEXT_IO_TITLE ${LANG_SimpChinese} "StarCraft Version Select"
LangString TEXT_IO_SUBTITLE ${LANG_SimpChinese} "StarCraft 位置: $INSTDIR"

LangString STARCRAFT_TIP ${LANG_SimpChinese} "\r\nStarCraft，回到没有 Medic 没有 Lurker 没有 Dark Templar 的时代。"
LangString BROODWAR_TIP ${LANG_SimpChinese} "\r\nStarCraft: Brood War，还记得 1.04 的小狗变飞龙，1.07 的三基地刺蛇海么？"
LangString EXPRESS_MODE_TIP ${LANG_SimpChinese} "\r\n选中: 直接使用从注册表里探测到的 StarCraft 安装文件夹，完成后自动关闭。若注册表里没有 StarCraft 安装信息，则使用当前文件夹。\r\n\r\n不选: 自己选择 StarCraft 安装文件夹，默认是从注册表里探测到的 StarCraft 安装文件夹。"
LangString NOCD_TIP ${LANG_SimpChinese} "\r\n选中: 对于 1.15.2 以前的版本，应用最简单的免 CD 补丁（YaoYuan.com 论坛网友 keakon 提供的只修改 storm.dll 一个字节的方式）。使用这种免 CD 补丁将无法进入官方 Battle.net 进行网络对战（当然，IPX 或 UDP 等我们最常用的局域网对战模式是不会受到影响的）。\r\n对于 1.15.2 及以后的版本，由于 Blizzard 已经提供官方的免 CD 支持，只要保证 StarCraft 安装文件夹下有 BroodWar.mpq 或者 StarCraft.mpq 这两个文件其中之一即可免 CD。\r\n这两种情况都需要从 StarCraft 安装光盘上复制 Install.exe 到 StarCraft 安装文件夹，对于 1.15.2 之前的版本文件名必须是 Install.exe ，对于 1.15.2 及以后的版本文件名必须是 BroodWar.mpq 或 StarCraft.mpq。因此如果 StarCraft 安装文件夹下已经有 Install.exe 或 BroodWar.mpq，SCV Selector 会将其改名以适合当前所选择的版本，如果两个文件都不存在，则会安装一个无任何内容的最精简版本 BroodWar.mpq，这样做能保证 StarCraft 免 CD 运行，但游戏将没有背景音乐并且无法进入单人模式的剧情战役。\r\n\r\n不选: 不应用免 CD 补丁，需要其它免 CD 工具或 StarCraft 原版光盘（或光盘镜像和虚拟光驱工具）才能进行游戏。"
LangString REGFIX_TIP ${LANG_SimpChinese} "\r\n默认（灰色）: 修改注册表里的 StarCraft 安装文件夹为 SCV Selector 中选择的文件夹，确保 StarCraft 在正确的文件夹读写玩家 ID、地图等游戏数据。如果选中 NoCD，对于 1.15.2 以前的版本，为了免 CD 补丁正常工作，也会把 StarCraft 光盘位置修改为 StarCraft 安装文件夹。\r\n\r\n选中: 除了默认状态时的 StarCraft 安装文件夹、光盘位置修复之外，还会将 StarCraft 的其它一些设置重置为默认值。这个选项主要用于从其它计算机复制 StarCraft 安装文件夹后免安装运行，以及修复混乱的 StarCraft 注册表设置。\r\n\r\n不选（不建议）: 不修改注册表中的任何设置。有可能因为注册表中的 StarCraft 安装文件夹和实际的安装文件夹不一致而出现异常情况，甚至导致免 CD 补丁对 1.15.2 以前的版本无效。"
LangString RAINUX_ORG_TIP ${LANG_SimpChinese} "\r\n访问 SCV Selector 发布页面。"

LangString MUI_TEXT_DIRECTORY_TITLE ${LANG_SimpChinese} "选择 StarCraft 位置"
LangString MUI_TEXT_DIRECTORY_SUBTITLE ${LANG_SimpChinese} "选择安装 StarCraft 的文件夹。"
LangString ^DirText ${LANG_SimpChinese} "SCV Selector 探测到 StarCraft 安装在以下文件夹。如果想使用安装在其它文件夹的 StarCraft，单击 [浏览(B)] 并选择它。"
LangString ^DirBrowseText ${LANG_SimpChinese} "选择想要使用的 StarCraft 所在文件夹:"
LangString ^DirSubText ${LANG_SimpChinese} "StarCraft 安装文件夹"
LangString ^InstallBtn ${LANG_SimpChinese} "&Go Go Go!"

LangString MUI_TEXT_INSTALLING_TITLE ${LANG_SimpChinese} "正在工作"
LangString MUI_TEXT_INSTALLING_SUBTITLE ${LANG_SimpChinese} "SCV Selector 正在将 StarCraft 转换到 $Version，请稍侯..."
LangString MUI_TEXT_FINISH_TITLE ${LANG_SimpChinese} "完成"
LangString MUI_TEXT_FINISH_SUBTITLE ${LANG_SimpChinese} "SCV Selector 成功完成操作。"
LangString MUI_TEXT_ABORT_TITLE ${LANG_SimpChinese} "中止"
LangString MUI_TEXT_ABORT_SUBTITLE ${LANG_SimpChinese} "SCV Selector 没有成功完成操作。"

LangString TEXT_IO_TITLE ${LANG_TradChinese} "StarCraft Version Select"
LangString TEXT_IO_SUBTITLE ${LANG_TradChinese} "StarCraft 竚: $INSTDIR"

LangString STARCRAFT_TIP ${LANG_TradChinese} "\r\nStarCraft⊿Τ Medic ⊿Τ Lurker ⊿Τ Dark Templar "
LangString BROODWAR_TIP ${LANG_TradChinese} "\r\nStarCraft: Brood War临癘眔 1.04 跑纒1.07 膀矰盾"
LangString EXPRESS_MODE_TIP ${LANG_TradChinese} "\r\nつ匡: 钡ㄏノ眖祅魁郎柑盎代 StarCraft 杆戈ЖЧΘ笆闽超璝祅魁郎柑⊿Τ StarCraft 杆戈癟玥ㄏノヘ玡戈Ж\r\n\r\nぃ匡: 匡拒 StarCraft 杆戈Ж箇砞琌眖祅魁郎柑盎代 StarCraft 杆戈Ж"
LangString NOCD_TIP ${LANG_TradChinese} "\r\nつ匡: 癸 1.15.2 玡セ莱ノ程虏虫 CD 干YaoYuan.com 阶韭呼ね keakon 矗ㄑэ storm.dll じ舱よΑㄏノ硂贺 CD 干盢礚猭秈﹛よ Battle.net 秈︽呼隔癸驹讽礛IPX ┪ UDP 单и程盽ノ跋呼癸驹家Α琌ぃ穦紇臫\r\n癸 1.15.2 のセパ Blizzard 竒矗ㄑ﹛よ CD や穿璶絋粄 StarCraft 杆戈ЖΤ BroodWar.mpq ┪ StarCraft.mpq 硂ㄢ郎ㄤいぇ CD\r\n硂ㄢ贺薄猵常惠璶眖 StarCraft 杆盒狡籹 Install.exe  StarCraft 杆戈Ж癸 1.15.2 ぇ玡セ郎ゲ斗琌 Install.exe 癸 1.15.2 のセ郎ゲ斗琌 BroodWar.mpq ┪ StarCraft.mpq狦 StarCraft 杆戈Ж竒Τ Install.exe ┪ BroodWar.mpqSCV Selector 穦盢ㄤэ才ヘ玡┮匡拒セ狦ㄢ郎常ぃ玥穦杆礚ヴず甧程弘虏セ BroodWar.mpq硂妓暗玂靡 StarCraft  CD 磅︽笴栏盢⊿Τ璉春贾礚猭秈虫家Α粿薄驹\r\n\r\nぃ匡: ぃㄏノ CD 干惠璶ㄤウ CD ㄣ┪ StarCraft 盒┪盒描钩㎝店览盒诀ㄣ秈︽笴栏"
LangString REGFIX_TIP ${LANG_TradChinese} "\r\n箇砞η︹: э祅魁郎柑 StarCraft 杆戈Ж SCV Selector い匡拒戈Ж絋玂 StarCraft タ絋戈Ж弄糶產 ID瓜单笴栏戈狦つ匡 NoCD癸 1.15.2 玡セㄏ CD 干タ盽笲盢穦р StarCraft 盒竚э StarCraft 杆戈Ж\r\n\r\nつ匡: 埃箇砞篈 StarCraft 杆戈Ж盒竚確ぇ临穦盢 StarCraft ㄤウㄇ砞﹚竚箇砞硂匡兜璶ノ眖ㄤウ筿福狡籹 StarCraft 杆戈Ж杆磅︽の確岿粇 StarCraft 祅魁郎砞﹚\r\n\r\nぃ匡ぃ某: ぃэ祅魁郎いヴ砞﹚Τ祅魁郎い StarCraft 杆戈Ж㎝龟悔杆戈Жぃ璓τ瞷钵盽薄猵旧璓 CD 干癸 1.15.2 玡セ礚"
LangString RAINUX_ORG_TIP ${LANG_TradChinese} "\r\n硑砐 SCV Selector 祇"

LangString MUI_TEXT_DIRECTORY_TITLE ${LANG_TradChinese} "匡拒 StarCraft 竚"
LangString MUI_TEXT_DIRECTORY_SUBTITLE ${LANG_TradChinese} "匡拒杆 StarCraft 戈Ж"
LangString ^DirText ${LANG_TradChinese} "SCV Selector 盎代 StarCraft 杆戈Ж狦稱ㄏノ杆ㄤウ戈Ж StarCraft [聅凝(B)] 匡拒ウ"
LangString ^DirBrowseText ${LANG_TradChinese} "匡拒稱璶ㄏノ StarCraft ┮戈Ж:"
LangString ^DirSubText ${LANG_TradChinese} "StarCraft 杆戈Ж"
LangString ^InstallBtn ${LANG_TradChinese} "&Go Go Go!"

LangString MUI_TEXT_INSTALLING_TITLE ${LANG_TradChinese} "タ"
LangString MUI_TEXT_INSTALLING_SUBTITLE ${LANG_TradChinese} "SCV Selector タ盢 StarCraft 锣传 $Version叫祔獼..."
LangString MUI_TEXT_FINISH_TITLE ${LANG_TradChinese} "ЧΘ"
LangString MUI_TEXT_FINISH_SUBTITLE ${LANG_TradChinese} "SCV Selector 磅︽Θ"
LangString MUI_TEXT_ABORT_TITLE ${LANG_TradChinese} "いゎ"
LangString MUI_TEXT_ABORT_SUBTITLE ${LANG_TradChinese} "SCV Selector 磅︽ア毖"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
!ifndef MINI_EDITION
  !define SCV_SELECTOR "SCV.Selector.Full.${RELEASE_DATE}.exe"
!else
  !define SCV_SELECTOR "SCV.Selector.Mini.${RELEASE_DATE}.exe"
!endif
OutFile ${SCV_SELECTOR}
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
;Version Information

  VIProductVersion "0.${RELEASE_DATE}"
  VIAddVersionKey /LANG=${LANG_ENGLISH} "ProductName" "SCV Selector"
  VIAddVersionKey /LANG=${LANG_ENGLISH} "CompanyName" "Rainux"
  VIAddVersionKey /LANG=${LANG_ENGLISH} "LegalCopyright" "(C) Rainux"
  VIAddVersionKey /LANG=${LANG_ENGLISH} "FileDescription" "SCV Selector can switches your StarCraft to any version between 1.00 and 1.16.1 on the fly"
  VIAddVersionKey /LANG=${LANG_ENGLISH} "FileVersion" "${PRODUCT_VERSION}"
  VIAddVersionKey /LANG=${LANG_ENGLISH} "InternalName" "SCV.Selector"
  VIAddVersionKey /LANG=${LANG_ENGLISH} "OriginalFilename" ${SCV_SELECTOR}

  VIAddVersionKey /LANG=${LANG_SimpChinese} "ProductName" "SCV Selector"
  VIAddVersionKey /LANG=${LANG_SimpChinese} "CompanyName" "Rainux"
  VIAddVersionKey /LANG=${LANG_SimpChinese} "LegalCopyright" "(C) Rainux"
  VIAddVersionKey /LANG=${LANG_SimpChinese} "FileDescription" "SCV Selector 可以快速地将 StarCraft 切换到 1.00 至 1.16.1 之间的任意版本"
  VIAddVersionKey /LANG=${LANG_SimpChinese} "FileVersion" "${PRODUCT_VERSION}"
  VIAddVersionKey /LANG=${LANG_SimpChinese} "InternalName" "SCV.Selector"
  VIAddVersionKey /LANG=${LANG_SimpChinese} "OriginalFilename" ${SCV_SELECTOR}

  VIAddVersionKey /LANG=${LANG_TradChinese} "ProductName" "SCV Selector"
  VIAddVersionKey /LANG=${LANG_TradChinese} "CompanyName" "Rainux"
  VIAddVersionKey /LANG=${LANG_TradChinese} "LegalCopyright" "(C) Rainux"
  VIAddVersionKey /LANG=${LANG_TradChinese} "FileDescription" "SCV Selector е硉盢 StarCraft ち传 1.00  1.16.1 ぇ丁ヴ種セ"
  VIAddVersionKey /LANG=${LANG_TradChinese} "FileVersion" "${PRODUCT_VERSION}"
  VIAddVersionKey /LANG=${LANG_TradChinese} "InternalName" "SCV.Selector"
  VIAddVersionKey /LANG=${LANG_TradChinese} "OriginalFilename" ${SCV_SELECTOR}

;--------------------------------
;Reserve Files

  ;These files should be inserted before other files in the data block
  ;Keep these lines before any File command
  ;Only for solid compression (by default, solid compression is enabled for BZIP2 and LZMA)

  ReserveFile ${SCV_INI}
  ReserveFile "data\SC.ico"
  ReserveFile "data\BW.ico"
  ReserveFile "${NSISDIR}\Plugins\InstallOptionsEx.dll"

;--------------------------------
;Variables

  Var ExpressMode
  Var NoCD
  Var RegFix
  Var Started
  Var Version

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
  ; RegFix level
  !insertmacro MUI_INSTALLOPTIONS_READ $RegFix ${SCV_INI} "Field 26" "State"

  System::Call "winmm::timeGetTime() i .R8 ?r"

  ; Try from the highest version, this makes script more effective
  !ifndef MINI_EDITION
  DetailPrint "Installing $Version"
  StrCmp $Version "Brood War v1.16.1" 0 +4
    Call BW1161
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "Brood War v1.16.0" 0 +4
    Call BW1160
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "Brood War v1.15.3" 0 +4
    Call BW1153
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "Brood War v1.15.2" 0 +4
    Call BW1152
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "Brood War v1.15.1" 0 +4
    Call BW1151
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "Brood War v1.15.0" 0 +4
    Call BW1150
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "Brood War v1.14" 0 +4
    Call BW114
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "Brood War v1.13f" 0 +4
    Call BW113f
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "Brood War v1.13e" 0 +4
    Call BW113e
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "Brood War v1.13d" 0 +4
    Call BW113d
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "Brood War v1.13c" 0 +4
    Call BW113c
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "Brood War v1.13b" 0 +4
    Call BW113b
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "Brood War v1.13" 0 +4
    Call BW113
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "Brood War v1.12b" 0 +4
    Call BW112b
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "Brood War v1.12" 0 +4
    Call BW112
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "Brood War v1.11b" 0 +4
    Call BW111b
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "Brood War v1.11" 0 +4
    Call BW111
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "Brood War v1.10" 0 +4
    Call BW110
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "Brood War v1.09b" 0 +4
    Call BW109b
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "Brood War v1.09" 0 +4
    Call BW109
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "Brood War v1.08b" 0 +4
    Call BW108b
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "Brood War v1.08" 0 +4
    Call BW108
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "Brood War v1.07" 0 +4
    Call BW107
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "Brood War v1.06" 0 +4
    Call BW106
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "Brood War v1.05" 0 +4
    Call BW105
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "Brood War v1.04" 0 +4
    Call BW104
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "StarCraft v1.04" 0 +4
    Call SC104
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "StarCraft v1.03" 0 +4
    Call SC103
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "StarCraft v1.02" 0 +4
    Call SC102
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "StarCraft v1.01" 0 +4
    Call SC101
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "StarCraft v1.00" 0 +3
    Call SC100
    Goto +2
  DetailPrint "Internal error"
  !endif

  !ifdef MINI_EDITION
  DetailPrint "Installing $Version"
  StrCmp $Version "Brood War v1.16.1" 0 +4
    Call BW1161
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "Brood War v1.14" 0 +4
    Call BW114
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "Brood War v1.13f" 0 +4
    Call BW113f
    IntOp $Started 1 +
    Goto +2
  StrCmp $Version "Brood War v1.08b" 0 +4
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
SectionEnd

;--------------------------------
;Installer Functions

Function .onInit
  ; Use locale of current user as $LANGUAGE
  System::Call "Kernel32::GetUserDefaultLCID()i .a"
  !insertmacro MUI_INSTALLOPTIONS_EXTRACT ${SCV_INI}
  !insertmacro MUI_INSTALLOPTIONS_EXTRACT_AS "data\SC.ico" "SC.ico"
  !insertmacro MUI_INSTALLOPTIONS_EXTRACT_AS "data\BW.ico" "BW.ico"
  !insertmacro MUI_INSTALLOPTIONS_WRITE ${SCV_INI} "Field 1" "Text" "$PLUGINSDIR\SC.ico"
  !insertmacro MUI_INSTALLOPTIONS_WRITE ${SCV_INI} "Field 2" "Text" "$PLUGINSDIR\BW.ico"
FunctionEnd

Function UpdateBWIcon
  ${If} $Version S>= "Brood War v1.14"
    ShowWindow $R3 ${SW_HIDE}
    ShowWindow $R4 ${SW_SHOW}
  ${Else}
    ShowWindow $R3 ${SW_SHOW}
    ShowWindow $R4 ${SW_HIDE}
  ${EndIf}
FunctionEnd

Function UpdateNextBtn
  GetDlgItem $R0 $HWNDPARENT 1
  ${If} $ExpressMode = 1
  ${AndIf} $INSTDIR != ""
    SendMessage $R0 ${WM_SETTEXT} 0 "STR:$(^InstallBtn)"
  ${Else}
    SendMessage $R0 ${WM_SETTEXT} 0 "STR:$(^NextBtn)"
  ${EndIf}
FunctionEnd

Function ShowVerSelect
  !insertmacro MUI_HEADER_TEXT $(TEXT_IO_TITLE) $(TEXT_IO_SUBTITLE)
  !insertmacro MUI_INSTALLOPTIONS_WRITE ${SCV_INI} "Field 1" "ToolTipText" $(STARCRAFT_TIP)
  !insertmacro MUI_INSTALLOPTIONS_WRITE ${SCV_INI} "Field 2" "ToolTipText" $(BROODWAR_TIP)
  !insertmacro MUI_INSTALLOPTIONS_WRITE ${SCV_INI} "Field 25" "ToolTipText" $(BROODWAR_TIP)
  !insertmacro MUI_INSTALLOPTIONS_WRITE ${SCV_INI} "Field 3" "ToolTipText" $(EXPRESS_MODE_TIP)
  !insertmacro MUI_INSTALLOPTIONS_WRITE ${SCV_INI} "Field 4" "ToolTipText" $(NOCD_TIP)
  !insertmacro MUI_INSTALLOPTIONS_WRITE ${SCV_INI} "Field 26" "ToolTipText" $(REGFIX_TIP)
  !insertmacro MUI_INSTALLOPTIONS_WRITE ${SCV_INI} "Field 24" "ToolTipText" $(RAINUX_ORG_TIP)
  Push $R0
  InstallOptionsEx::initDialog /NOUNLOAD $PLUGINSDIR\${SCV_INI}
  ; $R3 is handle of BW icon, $R4 is handle of BW.1.14 icon
  !insertmacro MUI_INSTALLOPTIONS_READ $R3 ${SCV_INI} "Field 2" "HWND"
  !insertmacro MUI_INSTALLOPTIONS_READ $R4 ${SCV_INI} "Field 25" "HWND"
  !insertmacro MUI_INSTALLOPTIONS_READ $Version ${SCV_INI} "Field 22" "State"
  !insertmacro MUI_INSTALLOPTIONS_READ $ExpressMode ${SCV_INI} "Field 3" "State"
  Call UpdateBWIcon
  Call UpdateNextBtn
  InstallOptionsEx::show
  Pop $R0
FunctionEnd

Function LeaveVerSelect
  ; $R0 is the button ID, $R1 is the DropList
  !insertmacro MUI_INSTALLOPTIONS_READ $R0 ${SCV_INI} "Settings" "State"
  !insertmacro MUI_INSTALLOPTIONS_READ $R1 ${SCV_INI} "Field 22" "HWND"
  ${If} $R0 >= 7
  ${AndIf} $R0 <= 20
    EnableWindow $R1 0
    !insertmacro MUI_INSTALLOPTIONS_READ $Version ${SCV_INI} "Field $R0" "Text"
    Call UpdateBWIcon
    Abort
  ${ElseIf} $R0 = 21
  ${OrIf} $R0 = 22
    EnableWindow $R1 1
    !insertmacro MUI_INSTALLOPTIONS_READ $Version ${SCV_INI} "Field 22" "State"
    Call UpdateBWIcon
    Abort
  ${ElseIf} $R0 = 3
    !insertmacro MUI_INSTALLOPTIONS_READ $ExpressMode ${SCV_INI} "Field 3" "State"
    Call UpdateNextBtn
    Abort
  ${EndIf}
FunctionEnd

Function ExpressMode
  ${If} $ExpressMode = 1
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
    ${If} $Version S>= "Brood War v1.15.2"
    ${AndIf} $Version S< "StarCraft v1.00"
      # 当 BroodWar.mpq 不存在时，优先使用用户已有的 Install.exe
      IfFileExists "$INSTDIR\BroodWar.mpq" +4 0
        IfFileExists "$INSTDIR\Install.exe" 0 +2
          Rename "$INSTDIR\Install.exe" "$INSTDIR\BroodWar.mpq"
        File /oname=BroodWar.mpq "data\storm.NoCD\Install.exe"
    ${Else}
      # 当 Install.exe 不存在时，优先使用用户已有的 BroodWar.mpq
      IfFileExists "$INSTDIR\Install.exe" +4 0
        IfFileExists "$INSTDIR\BroodWar.mpq" 0 +2
          Rename "$INSTDIR\BroodWar.mpq" "$INSTDIR\Install.exe"
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
  ; Reset InstallPath & StarCD when selected or grayed
  ${If} $RegFix >= 1
    WriteRegStr HKLM "SOFTWARE\Blizzard Entertainment\Starcraft" "InstallPath" "$INSTDIR\"
    WriteRegStr HKLM "SOFTWARE\Blizzard Entertainment\Starcraft" "Program" "$INSTDIR\StarCraft.exe"
    WriteRegStr HKLM "SOFTWARE\Blizzard Entertainment\Starcraft" "StarEdit" "$INSTDIR\"
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
    ${If} $NoCD = 1
      WriteRegStr HKLM "SOFTWARE\Blizzard Entertainment\Starcraft" "StarCD" "$INSTDIR\"
    ${Else}
      DeleteRegValue HKLM "SOFTWARE\Blizzard Entertainment\Starcraft" "StarCD"
    ${EndIf}

    ; Only reset settings when RegFix selected
    ${If} $RegFix = 1
      WriteRegStr HKLM "SOFTWARE\Blizzard Entertainment\Starcraft" "Retail" "y"
      WriteRegStr HKLM "SOFTWARE\Blizzard Entertainment\Starcraft" "Brood War" "y"
      DeleteRegValue HKCU "SOFTWARE\Blizzard Entertainment\Starcraft" "Game Speed"
      DeleteRegValue HKCU "SOFTWARE\Blizzard Entertainment\Starcraft" "music"
      DeleteRegValue HKCU "SOFTWARE\Blizzard Entertainment\Starcraft" "trigtext"
      WriteRegStr HKLM "SOFTWARE\Blizzard Entertainment\Starcraft" "Game Speed" "Fastest"
      WriteRegDWORD HKLM "SOFTWARE\Blizzard Entertainment\Starcraft" "music" 0x00000032
      WriteRegDWORD HKLM "SOFTWARE\Blizzard Entertainment\Starcraft" "trigtext" 0x00000400
      WriteRegStr HKLM "SOFTWARE\Blizzard Entertainment\Starcraft\DelOpt1" "Game Subtype" "4 vs 4"
    ${EndIf}
  ${EndIf}
FunctionEnd

Function Cleanup
  !ifndef MINI_EDITION
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

!ifndef MINI_EDITION
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

Function BW1153
  File "versions\BW.v1.15.3\*.*"
FunctionEnd

Function BW1160
  File "versions\BW.v1.16.0\*.*"
FunctionEnd

Function BW1161
  File "versions\BW.v1.16.1\*.*"
FunctionEnd
!endif

!ifdef MINI_EDITION
# 对于 Mini 版本，跳过版本可能因为新版本中某文件没有修改而导致丢失必要的文件，必须反复检查
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

Function BW1161
  File "versions\BW.v1.16.1\Patch_rt.mpq"
  File "versions\BW.v1.16.1\battle.snp"
  File "versions\BW.v1.16.1\patch.txt"
  File "versions\BW.v1.16.1\standard.snp"
  File "versions\BW.v1.16.1\StarCraft.exe"
  File "versions\BW.v1.16.1\storm.dll"
FunctionEnd
!endif
