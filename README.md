# SCV Selector

SCV Selector can efficiently switch your StarCraft / StarCraft: Brood War game installation between any version from 1.00 to 1.16.1. It was designed to avoid the compatibility issues associated with different versions, helping to play LAN games and view old replays.

It was created using the versatile and beloved installation tool, [NSIS](https://sourceforge.net/projects/nsis/). This is an old project from over 10 years ago; I am now publishing the source code for reference.

![](/SCV.Selector.png)
![](/SCV.Selector.Full.png)
![](/SCV.Selector.Full.chs.png)
![](/SCV.Selector.Full.eng.png)

Below is content of [the original release page](https://web.archive.org/web/20130729094041/http://rainux.org:80/scv-selector-starcraft-full-version-changer-switcher/):

## 什么是 SCV Selector？

SCV Selector = StarCraft Version Selector，缩写成 SCV 当然是为了故意让名字更星际化一些。SCV Selector 内置了 StarCraft 1.00 – 1.04 和 StarCraft: BroodWar 1.04 – 1.16.1 所有的版本，因此可以被称作星际争霸全版本转换器（切换器）。

## 制作/使用理由

因为厌倦了手动删除/复制文件和官方升级档每次运行之后自动启动游戏。

## 内容

内置 StarCraft 1.00 – 1.04 和 StarCraft: BroodWar 1.04 – 1.16.1 所有版本的原版文件（除 BrooDat.mpq、StarDat.mpq 和地图文件夹）。

所有版本文件皆取自英文原版星际争霸和母巢之战光盘和官方升级包（可选基于 keakon 提供的修改 storm.dll 方式的免 CD），不包括地图文件。加上官方的地图文件夹以及 BrooDat.mpq、StarDat.mpq，可以保证得到的文件跟使用原版光盘安装并使用官方升级包升级后的文件完全一致。

~~版本不全，因为手上只有这些版本的升级包，Blizzard 也不再提供老版本的升级包下载了。个人认为经典的几个版本这里都有。~~ 感谢 shuiwho 提供的 BW_106.exe 官方升级包，现在已经是名副其实的“全版本转换器”了。

## 工作方式

从注册表中自动获取星际争霸安装目录，如果注册表里没有相关信息，则使用 SCV.Selector.exe 所在目录。首先删除星际争霸安装目录里已有的，游戏自身的部分文件，然后以内置的官方文件替代。您可以放心，删除的文件都是即将要由 SCV Selector 安装上的文件，绝对不会删除您自己存放在游戏目录下的文件，也绝对不会因为删除文件而导致无法游戏。SCV Selector 所做的一切操作都可以在完成后的日志窗口里看到，包括文件删除和文件安装。

## 更新历史

Build 2005.07.26

- 增加了几个古董级版本，这些版本的官方升级包是在国外一个游戏站点上得到的。
- 增加 Express Mode，默认选中。此模式选择版本之后无任何提示，并且装完自动退出 SCV Selector。
- 需要说明的是 Starcraft v1.04，这个版本的 StarCraft.exe 会自动使用安装目录下的 BrooDat.mpq。如果星际争霸安装目录下有 BrooDat.mpq，即使切换到了 Starcraft v1.04，启动画面和游戏功能也跟 Brood War v1.04 一样（是否完全一样有待考证）。因此切换到此版本后请手动修改 BrooDat.mpq 为其他名称。

Build 2005.08.24

- 增加所有版本的免 CD 版，使用 YaoYuan.com 论坛网友 keakon 的 [storm.dll 修改法](https://web.archive.org/web/20100812084618/http://bbs.yaoyuan.com:80/viewthread.php?tid=105785)（感谢 keakon）。
- 安装完后使用安装目录进行注册表修复。

Build 2006.03.10

- 增加官方发布的新版本到 1.13f。
- 界面修改（因为原有的界面已经无法显示这么多版本了 -_-!）。

Build 2007.03.10

- 增加官方发布的新版本到 1.14，才发现已经沉寂了一年了 -_-b

Build 2007.08.05

- 增加官方发布的新版本到 1.15。
- 现在分 Full 和 Mini 两个版本，Full 版当然就像以前的版本一样包含所有的东西，Mini 版则只包含国内最流行的 Brood War 1.08b 和最新的 Brood War 1.15 两个版本，并且只包含最精简的更新文件，**不包括战役编辑器**，**不支持 Battle.net 模式网络对战**（当然，我们最常用的局域网对战模式是支持的）。

Build 2007.08.18

- 增加古董级版本 Brood War 1.06，现在终于可以被称为“星际争霸全版本转换器”了。感谢 shuiwho 提供 BW_106.exe 官方升级包！（使用 [VirusTotal](http://www.virustotal.com/) 扫描无任何问题，大家可以放心使用。:p)

Build 2007.10.20

- 增加官方发布的新版本到 1.15.1。
- 改用自己做了一点小修改的 InstallOptionsEx 构造界面，增加了几个界面元素的说明，鼠标指针移过即可查看。谢谢 indian 提供建议。

Build 2007.11.02

- 修正因 InstallOptionsEx 配置项目变化造成的界面小问题及某些版本无法正常安装的问题。

Build 2008.07.18

- 增加官方发布的新版本到 1.15.2。
- Mini 版增加 VS 最流行的版本 Brood War v1.13f 以及浩方另一个比较流行的版本 Brood War v1.14。
- 再次修改 InstallOptionsEx，现在鼠标悬停的提示信息可以显示 32 秒，似乎这是可以设置的最大值了，MSDN 上没有相关说明。之前有回复提到的提示信息只显示一次的问题，我始终无法重现，也就没法修复了。

Build 2008.11.28

- 增加官方发布的新版本 1.15.3 和 1.16.0。
- 确保星际争霸安装目录下已有的 Install.exe 或 BroodWar.mpq 优先被使用，详情查看界面上 NoCD 选项的说明。
- SCV Selector 文件名加上发布日期作为版本号。

Build 2008.12.03

- 修正界面上 StarCraft 部分错误地显示了 BroodWar 的图标。
- 好吧，换上 BroodWar v1.14 的新图标，并且界面上的图标会根据当前选择而变化（很无聊的功能吧 -_-）。

Build 2008.12.10

- 界面多语言支持，根据用户的 Windows 语言设置显示适合的语言，目前仅包括简体中文和英文。
- 增加 RegFix 选项用于控制注册表修复程度，默认不修改游戏速度等用户设置的数据，详情查看界面上 RegFix 选项的说明。
- 在标题说明位置显示探测到的星际争霸安装目录。
- 根据 Express Mode 的选择即时更新按钮名称。
- 使用正确的版本名称 Edition 替代 Version。
- 增加 SCV Selector 可执行文件的版本信息。

Build 2009.01.27

- 增加官方发布的新版本 1.16.1。
- 解决从 BroodWar v1.15.2 及之后的版本切换回 StarCraft v1.0x 后免 CD 失效的问题。

Build 2009.04.27

- 增加繁体中文界面，在繁体中文 Windows 上应该不会出现乱码了。感谢 Cash[JEDI] 帮忙修订提示文本。

Build 2011.03.24

- 更新 1.16.1 为官方重新发布于 2009/09/25 的版本。
- 增加 1.16.1 用于 Windows Vista 以上的花屏补丁，Vista 以上系统默认安装。
