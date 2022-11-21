#!/bin/sh

# ref: https://askubuntu.com/a/30157/8698
if ! [ $(id -u) = 0 ]; then
   echo "\n[-] The script need to be run as root." >&2
   exit 1
fi

apt install yara python3 git

cd /opt
rm -rf wsdect 2>/dev/null
git clone https://github.com/movptr06/wsdect
cd -
