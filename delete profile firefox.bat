@echo OFF
cd c:
cd C:\Users\%username%\AppData\Roaming\Mozilla\Firefox\
del /f profiles.ini
"C:\Program Files\Mozilla Firefox\firefox.exe"
