#!/bin/bash
if [ -d "/data/data/com.termux/files/usr/" ]
then
	pkg install python dos2unix
	pip install requests colorama
	cp ~/spammer/spammer.py $PREFIX/bin/spammer
	dos2unix $PREFIX/bin/spammer
	chmod +x $PREFIX/bin/spammer
	spammer
elif [ -d "/usr/bin/" ]
then
	sudo apt install python3 python3-pip dos2unix
	pip3 install requests colorama
	sudo cp ~/spammer/spammer.py $PREFIX/bin/spammer
	dos2unix $RPEFIX/bin/spammer
	chmod +x $RPEFIX/bin/spammer
	spammer
fi