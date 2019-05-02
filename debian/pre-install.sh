#!/bin/sh


#upgrade the packages
apt-get update && apt-get upgrade -y --force-yes

#install packages
apt-get install -y --force-yes git lsb-release

#get the install script
cd /usr/src && git clone https://github.com/blackwolfresearch/VoIPGoat-install.sh.git

#change the working directory
cd /usr/src/VoIPGoat-install.sh/debian
