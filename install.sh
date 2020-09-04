pkg install python
pkg install dos2unix
pip install requests colorama
cp ~/spammer/spammer.py $PREFIX/bin/spammer
dos2unix $PREFIX/bin/spammer
chmod 777 $PREFIX/bin/spammer
spammer