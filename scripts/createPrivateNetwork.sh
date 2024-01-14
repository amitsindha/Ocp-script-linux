#!/usr/bin/env bash

echo "Creating Private Network File \n"
sed 's/private_network/"{PRIVATE_NETWORK_NAME}"' private_network.xml
sed 's/10.10.10.1/"{PRIVATE_NETWORK_IP}"' private_network.xml
sed 's/255.255.255.0/"{PRIVATE_NETWORK_NETMASK}"' private_network.xml

cat private_network.xml
echo "\n"

cp private_network.xml /home/"${ADMINUSER}"/ocp/private_network.xml

echo "Create Private Network \n"
virsh net-define /home/ocpadmin/ocp/private_network.xml

echo "Set Private Network automatically start when OS starts \n"
virsh net-autostart  private_network

echo "Stat Private Network \n"
virsh net-start private_network