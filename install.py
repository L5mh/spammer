import os

os.system("pkg install python")
os.system("pkg install dos2unix")
os.system("pip install requests colorama")
os.system("cp ~/spammer/spammer.py $PREFIX/bin/spammer")
os.system("dos2unix $PREFIX/bin/spammer")
os.system("chmod 777 $PREFIX/bin/spammer")
os.system("spammer")
