#!/bin/bash

ARCH="x64"
# ARCH="aarch64"

# setup java runtime
JAVACMD=`find . -type f -path "./jdk/bin/java"`
if [ ! -x "$JAVACMD" ] ; then
    wget https://corretto.aws/downloads/latest/amazon-corretto-17-${ARCH}-linux-jdk.tar.gz -O jdk.tar.gz
    mkdir jdk
    tar -xvf jdk.tar.gz -C jdk --strip-components=1
    JAVACMD=`find . -type f -path "./jdk/bin/java"`
    rm jdk.tar.gz
fi

# run
$JAVACMD -Xmx1024M -Xms1024M -jar server.jar nogui
