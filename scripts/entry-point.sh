#!/bin/sh

if [ "$DEBUG_MODE" = "1" ]; then
    echo "DEBUG_MODE is active"
    java -Xdebug -Xrunjdwp:transport=dt_socket,address=8888,server=y,suspend=n -jar demo-0.0.1-SNAPSHOT.jar
else
    echo "DEBUG_MODE is inactive"
    java -jar demo-0.0.1-SNAPSHOT.jar
fi