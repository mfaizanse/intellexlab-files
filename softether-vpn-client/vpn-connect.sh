# Load the configurations file
source vpn_config

# Stop the SoftEther client (if running)
sudo $CLIENT_DIR/vpnclient stop

sleep 2

# Start the SoftEther client
sudo $CLIENT_DIR/vpnclient start

sleep 3

# Connect to the VPN server
$CLIENT_DIR/vpncmd /CLIENT localhost /CMD AccountConnect $ACCOUNT_NAME

sleep 5

# Check the VPN Account connection status
$CLIENT_DIR/vpncmd /CLIENT localhost /CMD AccountList

# Refresh IP address info from VPN server
sudo dhclient vpn_$NIC_NAME

sleep 2

# Set IP routes for VPN
sudo ip route add $VPN_HOST_IPv4/32 via $LOCAL_GATEWAY
sudo ip route del default via $LOCAL_GATEWAY
sudo netstat -rn

sleep 3

# Refresh IP address info from VPN server
sudo dhclient vpn_$NIC_NAME

# Check the VPN Account connection status
$CLIENT_DIR/vpncmd /CLIENT localhost /CMD AccountList
