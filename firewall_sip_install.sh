#!/bin/bash

echo " +-+-+-+-+-+-+-+-+-+-+-+";
echo " |I|b|i|n|e|t|w|o|r|k|/|";
echo " +-+-+-+-+-+-+-+-+-+-+-+";
echo " |I|n|f|o|r|m|a|t|i|c|a|";
echo " +-+-+-+-+-+-+-+-+-+-+-+";

echo "Instalando Firewall SIP Ibinetwork Informática - Liberando apenas acesso IPs Brasileiros a porta 5060"

yum install wget mtr vim mlocate nmap tcpdump mc nano lynx rsync screen htop subversion deltarpm dos2unix bind-utils -y
updatedb

cd /usr/src
svn co https://github.com/ibinetwork/FirewallSIP/trunk/ /usr/src/
chmod +x firewall_sip.sh
mv firewall_sip.sh /etc/
chmod 755 parse.py
mv parse.py /etc/
chmod +x sendEmail
mv sendEmail /bin/
echo /etc/firewall_sip.sh >> /etc/rc.local
echo ""
echo "Executando Firewall"
/etc/firewall_sip.sh
echo ""
echo "Completo ;)"
echo ""
