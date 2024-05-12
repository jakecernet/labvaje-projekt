@echo off
title Welcome!
color 0a
:menu
cls
type text.txt
echo.
echo.
set /p choice=Choose an option: 

if "%choice%"=="1" goto option1
if "%choice%"=="2" goto option2
if "%choice%"=="3" goto option3
if "%choice%"=="exit" exit

:option1
cd virus
start main.cmd
goto menu

:option2
cd games
start main.cmd
goto menu

:option3
type about.txt
echo.
pause
goto menu