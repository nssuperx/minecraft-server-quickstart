@echo off
rem set java path
set JAVA_HOME=%LOCALAPPDATA%\packages\microsoft.4297127d64ec6_8wekyb3d8bbwe\localcache\local\runtime\jre-legacy\windows-x64\jre-legacy

rem log4j2 configuration
if not exist log4j2_112-116.xml (
    bitsadmin.exe /TRANSFER htmlget https://launcher.mojang.com/v1/objects/02937d122c86ce73319ef9975b58896fc1b491d1/log4j2_112-116.xml %USERPROFILE%\log4j2_112-116.xml
    move %USERPROFILE%\log4j2_112-116.xml .\
)

rem run
%JAVA_HOME%\bin\java.exe -Dlog4j.configurationFile=log4j2_112-116.xml -Xmx1024M -Xms1024M -jar server.jar nogui

pause
