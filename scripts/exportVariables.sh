#!/usr/bin/env bash

# Server Configuration
echo "Operating System configuration initialize \n"
export OS_PLATFORM=ubuntu
export ADMINUSER=ocpadmin

# Private Network configuration
echo "Private network configuration initialize \n"
export PRIVATE_NETWORK_NAME=private_network
#export PRIVATE_NETWORK_BRIDGE_NAME=private_network
export PRIVATE_NETWORK_IP=10.10.10.1 
export PRIVATE_NETWORK_NETMASK=255.255.255.0

#Public Network configuration
echo "Public Network configuration initialize \n"
export PUBLIC_NETWORK_NAME=public_network
#export PUBLIC_NETWORK_BRIDGE_NAME=public_network
export PUBLIC_NETWORK_BRIDGE_MODE=nat
export ROUTER_DEVICE_INTERFACE_NAME=eno1
export PUBLIC_NETWORK_IP=192.168.10.1
export PUBLIC_NETWORK_NETMASK=255.255.255.0
export PUBLIC_NETWORK_RANGE_START=192.168.10.2
export PUBLIC_NETWORK_RANGE_END=192.168.10.254

