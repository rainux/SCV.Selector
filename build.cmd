@ECHO OFF
SETLOCAL
SET MakeNSIS=D:\WinTools\Develop.TLZ\NSIS\makensis.exe
%MakeNSIS% /DMINI_EDITION SCV.Selector.nsi
%MakeNSIS% SCV.Selector.nsi
