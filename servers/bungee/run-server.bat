@ECHO OFF
title Bungee (Testing Network)
:start
ECHO.
ECHO Launching Server...
java -jar -Xmx512M -Xms512M waterfall-1.19-498.jar nogui
goto start