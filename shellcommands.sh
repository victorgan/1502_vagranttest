#!/usr/bin/env bash
echo "Starting shellcommands.sh vagrant provisioning script"

echo "Updated apt-get"
apt-get update

# -y  Assume Yes to all queries and do not prompt
# outputs stream to /dev/null 
echo "Installing Git"
apt-get install git -y > /dev/null

echo "Customizing Vim Settings"
git clone git://github.com/victorgan/.vim.git $HOME/.vim
echo "source $HOME/.vim/vimrc" > $HOME/.vimrc

echo "Customizing Bash Settings"
echo "export TERM=xterm-256color" > $HOME/.bashrc
