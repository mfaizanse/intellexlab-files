sudo ~/softether/vpnclient/vpnclient stop
sudo ip route del x.x.x.x/32
sudo ip route add default via 192.168.0.1
sudo netstat -rn
