@ECHO OFF
title Fallback (Testing Network)
:start
ECHO.
ECHO Launching Server...
java -jar -Xmx1G -Xms1G purpur-1.19-1714.jar nogui
goto start