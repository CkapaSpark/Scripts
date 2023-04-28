@echo off
chcp 65001


:menu
DISM /Online /Cleanup-Image /ScanHealth
DISM /Online /Cleanup-Image /RestoreHealth

sfc /scannow

echo.
echo.
PAUSE
echo CheckDisk ? Y/N
SET /P M=%input%
if %M%==Y GOTO chkdsk
if %M%==N GOTO shutdown

:chkdsk
c:
chkdsk /f /r /x
echo.
echo.
echo PC shuting Down in 10 sec

:shutdown
Shutdown -t 10 -r

