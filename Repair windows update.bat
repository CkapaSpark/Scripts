@echo off
echo Stoping Services
Net stop wuauserv
net stop bits
echo.
echo.
echo ...
echo Renaming Software Distribution
echo.
echo.
cd %systemroot%
del /F /Q SoftwareDistribution.old
Ren SoftwareDistribution SoftwareDistribution.old
echo.
echo.
echo Starting Services
net start bits
Net start wuauserv
echo.
echo.
echo DONE
PAUSE
