@echo off
title Welcome!
color 0a
type text.txt
echo.
echo.
choice /C:123 /N /M "..."
if errorlevel 1 goto virus
if errorlevel 2 goto game   
if errorlevel 3 goto about

:VIRUS
start virus\main.cmd
exit

:GAME
start games\main.cmd
exit