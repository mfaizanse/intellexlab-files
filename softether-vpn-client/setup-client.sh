cd ~/softether/vpnclient/
make

sleep 2

sudo ~/softether/vpnclient/vpnclient start

sleep 2

~/softether/vpnclient/vpncmd /TOOLS /CMD check

sleep 2

~/softether/vpnclient/vpncmd /CLIENT localhost /CMD NicCreate vpn_vpn

sleep 2

~/softether/vpnclient/vpncmd /CLIENT localhost /CMD AccountCreate demo

sleep 2

~/softether/vpnclient/vpncmd /CLIENT localhost /CMD AccountPassword demo
