#!/bin/bash
clear
cd ~/spammer
if [ -e  /usr/lib/sudo ]
then
    if [ -e /usr/bin/apt-get ]
    then
        sudo apt-get update
        sudo apt-get upgrade -y
        sudo apt-get install python3 -y
        sudo cp spammer.py /usr/bin/spammer
        chmod +x /usr/bin/spammer
    fi
else
    if [ -d /usr/bin ]
    then
        if [ -e /usr/bin/apt-get ]
        then
            apt-get update
            apt-get upgrade -y
            apt-get install python3 -y
            cp spammer.py /usr/bin/spammer
            chmod +x /usr/bin/spammer
        fi
    fi
fi
if [ -d /data/data/com.termux/files/usr/bin ]
then
    pkg update
    pkg upgrade -y
    pkg install python3 -y
    cp spammer.py $PREFIX/bin/spammer
    chmod +x $PREFIX/bin/spammer
fi
if [ -e  /usr/lib/sudo ]
then
    if [ -e /usr/bin/yum ]
    then
        sudo yum update
        sudo yum upgrade -y
        sudo yum install python3 -y
        sudo cp spammer.py /usr/bin/spammer
        chmod +x /usr/bin/spammer
    fi
else
    if [ -d /usr/bin ]
    then
        if [ -e /usr/bin/yum ]
        then
            yum update
            yum upgrade -y
            yum install python3 -y
            cp spammer.py /usr/bin/spammer
            chmod +x /usr/bin/spammer
        fi
    fi
fi
if [ -e  /usr/local/bin/brew ]
then
    brew install python3 -y
    cp spammer.py /usr/local/bin/spammer
    chmod +x /usr/local/bin/spammer
fi
if [ -e  /usr/bin/apk ]
then
    apk install python3 -y
    cp spammer.py /usr/bin/spammer
    chmod +x /usr/bin/spammer
fi
pip install -r requirements.txt
spammer