@echo off
 net session >nul 2>&1
 if [%errorLevel%] == [0] (
 	echo Access granted.
 ) else (
 	echo Failure: Current permissions inadequate.
    pause
    exit
 )
title Welcome!
color 0a
cd "%~dp0"
echo %~dp0
type .\text.txt
echo.
echo.
set /p choice=Choose an option: 

if "%choice%"=="1" goto option1
if "%choice%"=="2" goto option2
if "%choice%"=="3" goto option3

:option1
cd virus
start main.cmd
exit

:option2
cd games
start main.cmd
exit

:option3
start about.cmd
exit