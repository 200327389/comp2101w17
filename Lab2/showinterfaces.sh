#!/bin/bash

# Creat an array using the output of ifconfig which has the name of
# the network interfaces in it. Use those names to extract the ip address
# of interfaces, also using ifconfig output. Also parse the output of
# route -n to display the ip address of the default gateway. Name this script
# showinterfaces.sh

# build interfaces array with interface names as elements
interfaces=( $(ifconfig | grep '^[A-Za-z]'| awk '{print $1}') )

# find the ip address of the interfaces
ip0=$(ifconfig ${interfaces[0]} | sed -n 's/.*addr:\([0-9.][0-9.]*\).*/\1/p')
ip1=$(ifconfig ${interfaces[1]} | sed -n 's/.*addr:\([0-9.][0-9.]*\).*/\1/p')

# extract the default gateway ip from the route table
gw=$(route -n |awk '/^0.0.0.0/{print $2}')

echo "Interfaces ${interfaces[0]} has ip addeess $ip0"
echo "Interfaces ${interfaces[1]} has ip addeess $ip1"
echo "My default gateway is $gw"
