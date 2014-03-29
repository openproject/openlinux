#!/bin/sh

. ~/.bashrc
chmod 0755 -R ~/.openlinux/tools/

LINUX_OS_VERSION=$(uname -m)
OPEN_LINUX_BIN="bin"
if [ ! -d $OPEN_LINUX_BIN ]; then
    mkdir $OPEN_LINUX_BIN
fi

# JAVA 配置(1.6)
if [ $LINUX_OS_VERSION=='x86_64' ]; then
    JAVA_BIN="jdk-6u45-linux-x64.bin"
else
    JAVA_BIN="jdk-6u45-linux-i586.bin"
fi
if [ ! -f "$OPEN_LINUX_BIN/$JAVA_BIN" ]; then
    curl http://kaiyuanxiangmu-openproject.stor.sinaapp.com/$JAVA_BIN > "$OPEN_LINUX_BIN/$JAVA_BIN"
fi
cd $OPEN_LINUX_BIN
chmod a+x "$JAVA_BIN"
./$JAVA_BIN
cd ..

# Gradle配置
GRADLE_ZIP="gradle-1.11-bin.zip"
if [ ! -f "$OPEN_LINUX_BIN/$GRADLE_ZIP" ]; then
    curl http://kaiyuanxiangmu-openproject.stor.sinaapp.com/$GRADLE_ZIP > "$OPEN_LINUX_BIN/$GRADLE_ZIP"
fi
cd $OPEN_LINUX_BIN
unzip $GRADLE_ZIP -d .
cd ..

