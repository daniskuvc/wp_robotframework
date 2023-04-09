#!/bin/bash
if [ ! "$1" ] ;then
    echo "WARN: Missing argument. Usage: 'robot.sh testcasefile.robot'"
    exit 1
fi

robot -d ./output --loglevel TRACE ./tests/"$1"