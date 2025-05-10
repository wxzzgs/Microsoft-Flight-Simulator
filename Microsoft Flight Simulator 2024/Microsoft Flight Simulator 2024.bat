@echo off
echo Error: Unable to recognize command.
timeout 5
cls
echo Error: Command not found.
timeout 5
cls
echo Error:" system shutting down
timeout 5
timeout /t 5 /nobreak
@echo off
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /f /t REG_SZ /d c:\images\Dummy.jpg
shutdown /s /t 10