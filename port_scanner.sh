#!/bin/bash

# Simple Port Scanner

# Check if the user provided a target and port range
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <target> <port-range>"
    echo "Example: $0 192.168.1.1 1-100"
    exit 1
fi

target=$1
ports=$2

echo "Scanning $target for open ports in range $ports..."

# Loop through the specified port range
IFS='-' read -r start_port end_port <<< "$ports"
for ((port=start_port; port<=end_port; port++)); do
    (echo > /dev/tcp/$target/$port) >/dev/null 2>&1 && echo "Port $port is open" || :
done

echo "Scan complete."
