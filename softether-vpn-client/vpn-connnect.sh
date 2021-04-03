sudo ~/softether/vpnclient/vpnclient stop

sleep 2

sudo ~/softether/vpnclient/vpnclient start

sleep 3

~/softether/vpnclient/vpncmd /CLIENT localhost /CMD AccountConnect dnde

sleep 5

~/softether/vpnclient/vpncmd /CLIENT localhost /CMD AccountList

sudo dhclient vpn_vpn

sleep 2

sudo ip route add x.x.x.x/32 via 192.168.0.1
sudo ip route del default via 192.168.0.1
sudo netstat -rn

sleep 3

sudo dhclient vpn_vpn

~/softether/vpnclient/vpncmd /CLIENT localhost /CMD AccountList
