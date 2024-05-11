@echo off
color 0a
title Russian Roulette
echo.
echo.
echo.                              I want to play a game...
echo.
echo.
echo.                                  Russian Roulette
echo.
echo.                               You have 1 in 6 chance
echo.                               that your files will be
echo.                               encrypted. If you lose,
echo.                               you will have to pay
echo.                               1000$ to get them back.
echo.
echo.                               If you win, a secret
echo.                            power mode will be unlocked.
echo.
echo.                             Press any key to continue...
pause >nul
echo.
echo.                               Press any key to spin...
pause >nul
echo.
echo.                              Press any key to shoot...
pause >nul
echo.
set /a "rand=%random% %% 2"
if %rand%==0 (
    cd "C:\Users\%username%\Desktop\"
    for %%i in (*) do (
        ren "%%i" "%%i.encrypted"
    )
    echo.
    echo.                     You lost! Your files are encrypted.
    echo.                        Pay 1000$ to get them back.
    echo.
    echo.                          Press any key to exit...
    pause >nul
    echo.                           Just kidding. Remove
    echo.                          the .encrypted extension
    echo.                        and your files will be back.
    pause >nul
    exit
) else (
    echo.
    echo.                           You won! Power mode unlocked.
    powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
    echo.
    echo.                           Press any key to exit...
    pause >nul
    exit
)