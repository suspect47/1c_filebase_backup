@echo off
CHCP 1251
mklink /D "d:\backup_tmp" "\\192.168.30.44\backup"
copy d:\backup_tmp\%date%.rar d:\backup_tmp\%date%.rar.bak
Forfiles -p d:\backup_tmp -s -m *.bak -d -30 -c "cmd /c del /q @path"
rmdir d:\backup_tmp
