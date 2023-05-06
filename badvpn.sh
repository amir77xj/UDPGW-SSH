#!/bin/bash
# Created by Mei 2020
# Modified by IDTunnel

# install badvpn
cd
wget -O /usr/bin/badvpn-udpgw "https://github.com/idtunnel/UDPGW-SSH/raw/master/badvpn-udpgw"
if [ "$OS" == "x86_64" ]; then
  wget -O /usr/bin/badvpn-udpgw "https://github.com/idtunnel/UDPGW-SSH/raw/master/badvpn-udpgw64"
fi

wget -O /bin/badvpn-udpgw "https://github.com/idtunnel/UDPGW-SSH/raw/master/badvpn-udpgw"
if [ "$OS" == "x86_64" ]; then
  wget -O /bin/badvpn-udpgw "https://github.com/idtunnel/UDPGW-SSH/raw/master/badvpn-udpgw64"
fi

#port BadVPN 7300
sed -i '$ i\screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7301' /etc/rc.local
sed -i '$ i\screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7301' /etc/rc.d/rc.local

#port BadVPN 7300
sed -i '$ i\screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7100' /etc/rc.local
sed -i '$ i\screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7100' /etc/rc.d/rc.local

#port BadVPN 7300
sed -i '$ i\screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7200' /etc/rc.local
sed -i '$ i\screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7200' /etc/rc.d/rc.local

#permission
chmod +x /usr/bin/badvpn-udpgw
chomod +x /etc/rc.d/rc.local

#badvpn 7300
screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7301
