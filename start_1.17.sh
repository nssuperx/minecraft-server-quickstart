#!/bin/bash

# setup java runtime
JAVACMD=`find . -type f -path "./jdk/bin/java"`
if [ ! -x "$JAVACMD" ] ; then
    wget https://download.java.net/java/GA/jdk16.0.1/7147401fd7354114ac51ef3e1328291f/9/GPL/openjdk-16.0.1_linux-x64_bin.tar.gz -O jdk.tar.gz
    mkdir jdk
    tar -xvf jdk.tar.gz -C jdk --strip-components=1
    JAVACMD=`find . -type f -path "./jdk/bin/java"`
    rm jdk.tar.gz
fi

# run
$JAVACMD -Dlog4j2.formatMsgNoLookups=true -Xmx1024M -Xms1024M -jar server.jar nogui 
