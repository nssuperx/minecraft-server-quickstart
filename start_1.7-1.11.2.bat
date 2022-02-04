@echo off
rem set java path
set JAVA_HOME=%LOCALAPPDATA%\packages\microsoft.4297127d64ec6_8wekyb3d8bbwe\localcache\local\runtime\jre-legacy\windows-x64\jre-legacy

rem log4j2 configuration
if not exist log4j2_17-111.xml (
    bitsadmin.exe /TRANSFER htmlget https://launcher.mojang.com/v1/objects/dd2b723346a8dcd48e7f4d245f6bf09e98db9696/log4j2_17-111.xml %USERPROFILE%\log4j2_17-111.xml
    move %USERPROFILE%\log4j2_17-111.xml .\
)

rem run
%JAVA_HOME%\bin\java.exe -Dlog4j.configurationFile=log4j2_17-111.xml -Xmx1024M -Xms1024M -jar server.jar nogui

pause
