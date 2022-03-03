@echo off
rem set java path
set JAVA_HOME=%LOCALAPPDATA%\packages\microsoft.4297127d64ec6_8wekyb3d8bbwe\localcache\local\runtime\java-runtime-beta\windows-x64\java-runtime-beta

rem run
%JAVA_HOME%\bin\java.exe -Xmx1024M -Xms1024M -jar server.jar nogui

pause
