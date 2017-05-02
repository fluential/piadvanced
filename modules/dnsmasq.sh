#!/bin/sh
## DNSMasq

## Variables
source /etc/piadvanced/install/firewall.conf
source /etc/piadvanced/install/variables.conf
source /etc/piadvanced/install/userchange.conf

{ if 
(whiptail --yes-button "Skip" --no-button "Proceed" --yesno "Do you plan on using dnsmasq?" 10 80) 
then
echo "User Declined DNSmasq"
else
{ if 
(whiptail --yes-button "Regular" --no-button "Experimental" --yesno "Do you want to use the experimental version 2.77test4?" 10 80) 
then
sudo apt-get install -y dnsmasq
else
sudo bash /etc/piadvanced/installscripts/dnsmasqupgrade.sh
fi }
fi }
