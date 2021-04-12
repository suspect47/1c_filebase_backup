@echo off
chcp 1251
taskkill /IM 1cv8c.exe /F /T
net use \\192.168.30.44\backup /user:admin pa$$w0rd
"C:\Program Files\WinRAR\WinRAR.exe" a -ag%date% -r -m5 x: D:\1C_base
mklink /D "d:\backup_tmp" "\\192.168.30.44\backup"
Forfiles -p d:\backup_tmp -s -m *.rar -d -90 -c "cmd /c del /q @path"
sleep 5
net use \\192.168.30.44\backup /del /y
