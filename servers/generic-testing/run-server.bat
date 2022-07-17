@ECHO OFF
title Generic Testing (Testing Network)
:start
ECHO.
ECHO Launching Server...
java -jar -Xmx4G -Xms4G purpur-1.19-1714.jar nogui
goto start