#!/bin/bash
hash curl &> /dev/null
mkdir -p /usr/local/bin/crap
mkdir -p /usr/local/bin/hemorrhoid
if [ $? -eq 1 ]; then
	wget -O /usr/local/bin/crap https://raw.githubusercontent.com/jonnolen/hemorrhoid-commit/master/crap
	wget -O /usr/local/bin/crap https://raw.githubusercontent.com/jonnolen/hemorrhoid-commit/master/hemorrhoid
	wget -O ~/.crap_messages.txt https://raw.githubusercontent.com/jonnolen/hemorrhoid-commit/master/messages.txt
else
    curl -o /usr/local/bin/crap https://raw.githubusercontent.com/jonnolen/hemorrhoid-commit/master/crap
    curl -o /usr/local/bin/crap https://raw.githubusercontent.com/jonnolen/hemorrhoid-commit/master/hemorrhoid
    curl -o ~/.crap_messages.txt https://raw.githubusercontent.com/jonnolen/hemorrhoid-commit/master/messages.txt
fi
chmod 0755 /usr/local/bin/crap
chmod 0755 /usr/local/bin/hemorrhoid
chmod 0664 ~/.crap_messages.txt
exit
