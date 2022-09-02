#!/bin/bash

ARCH="x64"
# ARCH="aarch64"

# setup java runtime
JAVACMD=`find . -type f -path "./jdk/bin/java"`
if [ ! -x "$JAVACMD" ] ; then
    wget https://corretto.aws/downloads/latest/amazon-corretto-8-${ARCH}-linux-jdk.tar.gz -O jdk.tar.gz
    mkdir jdk
    tar -xvf jdk.tar.gz -C jdk --strip-components=1
    JAVACMD=`find . -type f -path "./jdk/bin/java"`
    rm jdk.tar.gz
fi

# log4j2 configuration
ls log4j2_17-111.xml > /dev/null
if [ $? -ne 0 ]; then
    wget https://launcher.mojang.com/v1/objects/dd2b723346a8dcd48e7f4d245f6bf09e98db9696/log4j2_17-111.xml
fi

# run
$JAVACMD -Dlog4j.configurationFile=log4j2_17-111.xml -Xmx1024M -Xms1024M -jar server.jar nogui
