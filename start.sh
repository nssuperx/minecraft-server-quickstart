#!/bin/bash

ARCH="x64"
# ARCH="aarch64"

# JAVAVER=17 # minecraft 1.18.1-1.20.4
JAVAVER=21 # minecraft 1.20.5-

# setup java runtime
JAVACMD=`find . -type f -path "./jdk/bin/java"`
if [ ! -x "$JAVACMD" ] ; then
    wget https://corretto.aws/downloads/latest/amazon-corretto-${JAVAVER}-${ARCH}-linux-jdk.tar.gz -O jdk.tar.gz
    mkdir jdk
    tar -xvf jdk.tar.gz -C jdk --strip-components=1
    JAVACMD=`find . -type f -path "./jdk/bin/java"`
    rm jdk.tar.gz
fi

# run
$JAVACMD -Xmx1024M -Xms1024M -jar server.jar nogui
