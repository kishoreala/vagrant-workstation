#!/bin/bash
FILE=/tmp/vagrant-puppet/environments/development/environment.conf

if [ -f $FILE ]; then
   rm /tmp/vagrant-puppet/environments/development/environment.conf
   echo "modulepath = ./modules:./vendor:\$basemodulepath" >> /tmp/vagrant-puppet/environments/development/environment.conf
else
   echo "modulepath = ./modules:./vendor:\$basemodulepath" >> /tmp/vagrant-puppet/environments/development/environment.conf
fi
