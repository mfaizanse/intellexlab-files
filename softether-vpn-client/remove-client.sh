# Load the configurations file
source vpn_config

# Stop the SoftEther client (if running)
sudo $CLIENT_DIR/vpnclient stop

sleep 2

# Start the SoftEther client
sudo $CLIENT_DIR/vpnclient start

sleep 3

# Delete the VPN Account info
$CLIENT_DIR/vpncmd /CLIENT localhost /CMD AccountDelete demo

sleep 2

# Delete the virtual network interface
$CLIENT_DIR/vpncmd /CLIENT localhost /CMD NicDelete vpn_vpn

sleep 2

# Stop the SoftEther client
sudo $CLIENT_DIR/vpnclient stop