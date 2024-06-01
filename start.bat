@echo off

rem set java version
rem minecraft 1.18.1-1.20.5
rem set JAVAVER="gamma"

rem minecraft 1.20.5-
set JAVAVER="delta"

rem set java path
set JAVA_HOME=%LOCALAPPDATA%\packages\microsoft.4297127d64ec6_8wekyb3d8bbwe\localcache\local\runtime\java-runtime-%JAVAVER%\windows-x64\java-runtime-%JAVAVER%

rem run
%JAVA_HOME%\bin\java.exe -Xmx1024M -Xms1024M -jar server.jar nogui

pause
