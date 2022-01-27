#!/bin/bash

# setup java runtime
JAVACMD=`find ./ -type f -path "*/bin/java"`
if [ ! -x "$JAVACMD" ] ; then
    wget https://corretto.aws/downloads/latest/amazon-corretto-17-x64-linux-jdk.tar.gz
    tar -xvf amazon-corretto-17*
    JAVACMD=`find ./ -type f -path "*/bin/java"`
    rm amazon-corretto-17-x64*
fi

# run
$JAVACMD -Xmx1024M -Xms1024M -jar server.jar nogui
