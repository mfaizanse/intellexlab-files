# Load the configurations file
source vpn_config

# Build the SoftEther client
make --directory=$CLIENT_DIR

# Wait before executing next step
sleep 2

# Start the SoftEther client
sudo $CLIENT_DIR/vpnclient start

sleep 2

# Check if the SoftEther client is started properly
$CLIENT_DIR/vpncmd /TOOLS /CMD check

sleep 2

# Create a virtual network interface to connect to the VPN server
$CLIENT_DIR/vpncmd /CLIENT localhost /CMD NicCreate $NIC_NAME

sleep 2

# Configure the VPN account info and configs
$CLIENT_DIR/vpncmd /CLIENT localhost /CMD AccountCreate $ACCOUNT_NAME

sleep 2

# Configure the VPN server password
$CLIENT_DIR/vpncmd /CLIENT localhost /CMD AccountPassword $ACCOUNT_NAME