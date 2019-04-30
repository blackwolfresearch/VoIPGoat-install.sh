#!/bin/sh


#upgrade the packages
apt-get update && apt-get upgrade -y --force-yes

#install packages
apt-get install -y --force-yes git lsb-release

#get the install script
cd /usr/src && git clone https://github.com/blackwolfresearch/fusionpbx-install.sh.git

#change the working directory
cd /usr/src/fusionpbx-install.sh/debian

echo
echo -n 'Please enter the FQDN of your server: '
read fqdn

if [ -z "$fqdn" ]; then
	fqdn=ip_address
fi

echo "domain=$fqdn" >> resources/config.sh
