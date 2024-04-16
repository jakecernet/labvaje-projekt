@echo off
title Guess the number!
color 0a
set /a num=%random% %% 100 + 1
echo I'm thinking of a number between 1 and 100...
echo Can you guess it?
:LOOP
set /p guess=Your guess:
if %guess% lss %num% (
    echo Too low!
    goto LOOP
)
if %guess% gtr %num% (
    echo Too high!
    goto LOOP
)
echo Congratulations! You guessed it!
pause
exit