#!/usr/bin/env bash

echo "Creating Public Network File \n"
sed 's/public_network/"{PUBLIC_NETWORK_NAME}"' public_network.xml
sed 's/nat/"{PUBLIC_NETWORK_BRIDGE_MODE}"' public_network.xml
sed 's/eno1/"{ROUTER_DEVICE_INTERFACE_NAME}"' public_network.xml
sed 's/192.168.10.1/"{PUBLIC_NETWORK_IP}"' public_network.xml
sed 's/255.255.255.0/"{PUBLIC_NETWORK_NETMASK}"' public_network.xml
sed 's/192.168.10.2/"{PUBLIC_NETWORK_RANGE_START}"' public_network.xml
sed 's/192.168.10.254/"{PUBLIC_NETWORK_RANGE_END}"' public_network.xml

cat public_network.xml
echo "\n"

cp public_network.xml /home/"${ADMINUSER}"/ocp/public_network.xml

echo "Create Public Network \n"
virsh net-define /home/ocpadmin/ocp/public_network.xml

echo "Set Public Network automatically start when OS starts \n"
virsh net-autostart  public_network

echo "Stat Public Network \n"
virsh net-start public_network
