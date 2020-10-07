#!/bin/bash
if [ -d "/data/data/com.termux/files/usr/" ]
then
	apt update upgrade
	pkg install python dos2unix
	pip install requests colorama fake-useragent
	cp ~/spammer/spammer.py $PREFIX/bin/spammer
	dos2unix $PREFIX/bin/spammer
	chmod +x $PREFIX/bin/spammer
	spammer
elif [ -d "/usr/bin/" ]
then
	sudo apt-get update upgrade
	sudo apt-get install python3 python3-pip dos2unix
	pip3 install requests colorama fake-useragent
	sudo cp ~/spammer/spammer.py /usr/local/bin/spammer
	dos2unix /usr/local/bin/spammer
	chmod +x /usr/local/bin/spammer
	spammer
fi
