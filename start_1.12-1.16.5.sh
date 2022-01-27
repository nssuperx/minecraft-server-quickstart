#!/bin/bash

# setup java runtime
JAVACMD=`find ./ -type f -path "*/jre/bin/java"`
if [ ! -x "$JAVACMD" ] ; then
    wget https://corretto.aws/downloads/latest/amazon-corretto-8-x64-linux-jdk.tar.gz
    tar -xvf amazon-corretto-8*
    JAVACMD=`find ./ -type f -path "*/jre/bin/java"`
    rm amazon-corretto-8-x64*
fi

# log4j configuration
ls log4j2_112-116.xml > /dev/null
if [ $? -ne 0 ]; then
    wget https://launcher.mojang.com/v1/objects/02937d122c86ce73319ef9975b58896fc1b491d1/log4j2_112-116.xml
fi

# run
$JAVACMD -Dlog4j.configurationFile=log4j2_112-116.xml -Xmx1024M -Xms1024M -jar server.jar nogui
