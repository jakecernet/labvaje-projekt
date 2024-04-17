@echo off
title Welcome!
color 0a
type text.txt
choice /C:123 /N /M "..."
if errorlevel 1 start guess
if errorlevel 2 start rulete
if errorlevel 3 start russian
exit