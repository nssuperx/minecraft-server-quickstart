@echo off
rem set java path
set JAVA_HOME=%LOCALAPPDATA%\packages\microsoft.4297127d64ec6_8wekyb3d8bbwe\localcache\local\runtime\java-runtime-alpha\windows-x64\java-runtime-alpha

rem run
%JAVA_HOME%\bin\java.exe -Dlog4j2.formatMsgNoLookups=true -Xmx1024M -Xms1024M -jar server.jar nogui

pause
