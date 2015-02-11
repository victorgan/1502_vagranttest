#!/usr/bin/env bash
echo "Starting shellcommands.sh vagrant provisioning script"

echo "Updated apt-get"
apt-get update

# -y  Assume Yes to all queries and do not prompt
# outputs stream to /dev/null 
echo "Installing Git"
apt-get install git -y > /dev/null
