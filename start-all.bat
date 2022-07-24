@ECHO OFF
color
set fileChecker=*n.bat
set closeAfter=3
set originalDirectory=%cd%
set useWindowsTerminal=TRUE

title SS - Welcome to Server Starter
TIMEOUT 3 >NUL

echo [0m
echo Starting all servers... ([30;1musing windows terminal? %useWindowsTerminal%[0m)

setlocal enableextensions enabledelayedexpansion
set /a servers = 0

for /f "tokens=*" %%I in ('dir /b /s %fileChecker%') do (
	IF %useWindowsTerminal% == TRUE (
		wt --window 0 new-tab -d "%%~dI%%~pI\" cmd /k "%%~nI%%~xI"
	) ELSE (
		cd %%~pI
		start cmd /c "%%I"
	)
	set /a servers += 1
	echo [32mStarting new server: [33;1m#!servers! [36m%%~fI[0m
	title SS - !servers! servers started
	cd %originalDirectory%
	TIMEOUT 1 >NUL
)
title SS - Complete! (%servers% servers)
endlocal
echo.
echo [33;1mClosing this file automatically in [36;1m%closeAfter% seconds[33;1m...
timeout %closeAfter% >NUL
echo Exiting...
exit