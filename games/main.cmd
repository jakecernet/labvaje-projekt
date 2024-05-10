@echo off
title Welcome!
color 0a
type text.txt
set /p choice=Choose an option:

if "%choice%"=="1" goto guess
if "%choice%"=="2" goto rulete
if "%choice%"=="3" goto russian

:guess
start guess.cmd
exit

:rulete
start rulete.cmd
exit

:russian
start russian.cmd
exit