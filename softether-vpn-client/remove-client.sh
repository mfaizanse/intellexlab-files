~/softether/vpnclient/vpncmd /CLIENT localhost /CMD AccountDelete demo

sleep 2

~/softether/vpnclient/vpncmd /CLIENT localhost /CMD NicDelete vpn_vpn

sleep 2

sudo ~/softether/vpnclient/vpnclient stop