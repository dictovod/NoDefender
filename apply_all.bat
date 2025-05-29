@echo off
setlocal enabledelayedexpansion

set PSEXE="C:\Users\user\Desktop\PsExec\PsExec64.exe"
set REGFOLDER="C:\Users\user\Desktop\NoDefender-main"

for %%f in (%REGFOLDER%\*.reg) do (
    echo Applying: %%~nxf
    %PSEXE% -i -s regedit.exe /s "%%f"
)

echo Done.
pause
