@echo off
taskkill /IM 1cv8c.exe /F /T
chcp 1251
net use x: \\192.168.30.44\backup /user:admin Pa$$w0rd
"C:\Program Files\WinRAR\WinRAR.exe" a -agYYYY-MM-DD_HH-MM -r -m5 \\192.168.30.44\backup\ D:\1C_base
Forfiles -p \\192.168.30.44\backup\ -s -m *.rar -d -90 -c "cmd /c del /q @path"
net use x: /delete
