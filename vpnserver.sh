#/bin/bash
yum -y install wget vim net-tools
wget http://ros.wenjie1231.com:800/uploads/vpnserver.tar
wget http://ros.wenjie1231.com:800/uploads/vpnserver.service
systemctl stop firewalld
systemctl disable firewalld
yum -y groupinstall "Development Tools"
yum -y install readline-devel openssl-devel
tar zxvf vpnserver.tar
mv vpnserver /opt/vpnserver
mv vpnserver.service /usr/lib/systemd/system/vpnserver.service
chmod +x /opt/vpnserver/*
chmod +x /usr/lib/systemd/system/vpnserver.service
systemctl enable vpnserver
systemctl start vpnserver
