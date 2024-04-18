@echo off
title Rulete
color 04
set balance=100
type field.txt
echo.
echo.                                                   Welcome to Rulete!
echo.
echo.                                         Please enter your bet and press Enter.
echo.                                         You can bet on a number or on odd/even.
echo.                                              Type 'exit' to leave the game.
echo.
echo.                                                  Your balance is: %balance%
echo.
:loop
set /p bet="Enter your bet: "
if %bet%==exit goto exit
set /p amount="Enter the amount you want to bet: "
set /a balance=%balance%-%amount%
if %amount% gtr %balance% (
    echo.                                           You don't have enough money!
    set /a balance=%balance%+%amount%
    goto loop
)
set /a balance=%balance%-%amount%
set /a number=%random% %% 37
echo.
echo.                                                   The number is: %number%
echo.
if %number%==%bet% (
    set /a balance=%balance%+%amount%*36
    echo.                                           You won! Your balance is: %balance%
    goto prompt
)

set /a newnumber=%number% %% 2

if %newnumber%==0 (
    if %bet%==even (
        set /a balance=%balance%+%amount%*2
        echo.                                           You won! Your balance is: %balance%
        goto prompt
    ) else (
        echo.                                           You lost! Your balance is: %balance%
        goto prompt
    )
) else (
    if %bet%==odd (
        set /a balance=%balance%+%amount%*2
        echo.                                           You won! Your balance is: %balance%
        goto prompt
    ) else (
        echo.                                           You lost! Your balance is: %balance%
        goto prompt
    )
)

:prompt
echo.
echo.                                        Do you want to play again? (yes/no)
set /p play=
if %play%==yes goto loop

:exit
echo.                                               Thank you for playing!
echo.                                                  Your balance is: %balance%
echo.                                                   Press any key to exit.
pause >nul
exit
