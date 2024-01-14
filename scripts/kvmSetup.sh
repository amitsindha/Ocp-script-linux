#!/usr/bin/env bash

bash exportVariables.sh

# Setup KVM
if [ -z "${OS_PLATFORM}" == 'ubuntu' ]; then
    echo "Updating Operating System ${OS_PLATFORM} \n"
    apt update && apt upgrade -y
    echo "install packages bridge-utils qemu-kvm virtinst libvirt-daemon virt-manager to setup KVM \n"
    apt install bridge-utils qemu-kvm virtinst libvirt-daemon virt-manager -y
fi

# Create working directory
echo "Create OCP directory for working directory to create netowrk files \n"
mkdir /home/"${ADMINUSER}"/ocp   

# Check available networks
bash verifyNetwork.sh

# Configure Public network file
bash createPublicNetwork.sh

# Configure Private network file
bash createPrivateNetwork.sh

# Check available networks
bash verifyNetwork.sh






