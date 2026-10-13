@echo off
setlocal enabledelayedexpansion
for /L %%i in (1,1,254) do (
    ping -n 1 -w 200 172.16.4.%%i >nul
    if !errorlevel! equ 0 (
        echo 172.16.4.%%i >> ping-on.txt
    )
)
echo 扫描完成，结果已保存到 ping-on.txt
pause
