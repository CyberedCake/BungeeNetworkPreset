@ECHO OFF
color
set fileChecker=run-server.bat
set closeAfter=5
set originalDirectory=%cd%

title Starting all servers...
TIMEOUT 1 >nul

echo [0m
echo Starting all servers...

for /f "tokens=*" %%I in ('dir /b /s %fileChecker%') do (
	cd %%~pI
	start cmd /c "%%I"
	echo [32mStarting new server: [36m%%~pI[0m
	cd %originalDirectory%
)
echo.
echo [33;1mClosing this file automatically in [36;1m%closeAfter% seconds[33;1m...
timeout %closeAfter% >NUL
echo Exiting...
exit