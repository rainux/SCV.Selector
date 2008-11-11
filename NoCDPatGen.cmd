@ECHO OFF
SET PATH=%PATH%;D:\WinTools\Develop.TLZ\NSIS\Bin
PUSHD versions
FOR /D %%I IN (*) DO (
    IF EXIST "..\data\storm.NoCD\storm.%%I.dll" (
        GenPat "%%I\storm.dll" "..\data\storm.NoCD\storm.%%I.dll" "..\data\storm.NoCD\NoCD.pat"
    )
)
POPD
