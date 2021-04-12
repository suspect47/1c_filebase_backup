taskkill /IM 1cv8c.exe /F /T
chcp 1251
"C:\Program Files\WinRAR\WinRAR.exe" a -agYYYY-MM-DD_HH-MM -r -m5 Z:\ D:\1C_base
Forfiles -p Z:\ -s -m *.rar -d -90 -c "cmd /c del /q @path"
