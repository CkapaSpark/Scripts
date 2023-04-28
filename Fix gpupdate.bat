@echo off
cd c:
cd C:\WINDOWS\System32\GroupPolicy\Machine\
del /f registry.pol
echo.
echo.
echo ...
gpupdate /force
PAUSE