# Load the configurations file
source vpn_config

# Delete the VPN Account info
$CLIENT_DIR/vpncmd /CLIENT localhost /CMD AccountDelete demo

sleep 2

# Delete the virtual network interface
$CLIENT_DIR/vpncmd /CLIENT localhost /CMD NicDelete vpn_vpn

sleep 2

# Stop the SoftEther client
sudo $CLIENT_DIR/vpnclient stop