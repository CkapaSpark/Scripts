@echo off

net stop spooler

del %systemroot%\System32\spool\printers* /Q

net start spooler

echo Spooler Clean
PAUSE