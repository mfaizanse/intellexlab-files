# Load the configurations file
source vpn_config

# Stop the SoftEther client
sudo $CLIENT_DIR/vpnclient stop

# Remove the ip routes of VPN
sudo ip route del $VPN_HOST_IPv4/32
sudo ip route add default via $LOCAL_GATEWAY

# List the network routes
sudo netstat -rn
