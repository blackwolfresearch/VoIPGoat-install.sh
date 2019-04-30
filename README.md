
FusionPBX Install
--------------------------------------
A quick install guide for a FusionPBX install. It is recommended to start the install on a minimal install of the operating system. Notes on further tweaking your configuration are at end of the file.

## Operating Systems
### Debian
Debian 8 is the preferred operating system by the FreeSWITCH developers. It supports the latest video dependencies. If you want to do video mixing use Debian. Download Debian 8 Jessie from here https://cdimage.debian.org/cdimage/archive/

```sh
wget -O - https://raw.githubusercontent.com/blackwolfresearch/fusionpbx-install.sh/master/debian/pre-install.sh | sh;
cd /usr/src/fusionpbx-install.sh/debian && ./install.sh
```

## Security Considerations
Fail2ban is installed and pre-configured for all operating systems this repository works on besides Windows, but the default settings may not be ideal depending on your needs. Please take a look at the jail file (/etc/fail2ban/jail.local on Debian/Devuan) to configure it to suit your application and security model!
