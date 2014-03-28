#!/bin/sh

a= 'hjell'
echo "$a"
# chmod 0755 -R ~/.openlinux/tools/

# . ~/.bashrc

open = "bin"
if [ ! -d $OPEN_LINUX_BIN ]; then
    echo $OPEN_LINUX_BIN
    mkdir $OPEN_LINUX_BIN
fi

# export $JAVA_BIN = "bin/jdk-6u45-linux-i586.bin"

# if [ ! -f "$JAVA_BIN" ]; then
    # curl http://kaiyuanxiangmu-openproject.stor.sinaapp.com/jdk-6u45-linux-i586.bin > "$JAVA_BIN"
    # chmod a+x "$JAVA_BIN"
    # . "$JAVA_BIN"
# fi

