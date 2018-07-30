#!/usr/bin/env bash

#vars
TCVER="2018.1.1"
TCFILE="TeamCity-$TCVER.tar.gz"

echo "install java 1.8 & wget"
yum install -y java-1.8.0-openjdk wget 

if [ ! -d /opt/TeamCity ]; then
    echo "get $TCFILE"
    wget -q https://download.jetbrains.com/teamcity/$TCFILE -O /tmp/$TCFILE
    echo "extract $TCFILE to /opt"
    tar zxf /tmp/$TCFILE -C /opt
    echo "remote /tmp/$TCFILE"
    rm /tmp/$TCFILE
fi