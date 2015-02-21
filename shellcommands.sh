#!/usr/bin/env bash
echo "Starting shellcommands.sh vagrant provisioning script"

echo "Updating apt-get"
apt-get update

# ------------------------------
# Git, Vim, Bash
# ------------------------------
# -y  Assume Yes to all queries and do not prompt
# outputs stream to /dev/null 
echo "Installing Git"
apt-get install git -y > /dev/null

echo "Customizing Vim Settings"
git clone git://github.com/victorgan/.vim.git $HOME/.vim
echo "source $HOME/.vim/vimrc" > $HOME/.vimrc

echo "Customizing Bash Settings"
echo "export TERM=xterm-256color" >> $HOME/.bashrc

# ------------------------------
# Python
# ------------------------------
# echo "Installing full SciPy Stack" # http://www.scipy.org/install.html
# sudo apt-get install -y python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose
# 
# echo "Install PIP"
# wget https://bootstrap.pypa.io/get-pip.py -O - | python
# pip install -U pip # upgrade pip
# 
# echo "Install Pillow (fork of PIL)"
# pip install Pillow


# ------------------------------
# OpenCV
# ------------------------------
# Untested. See https://github.com/razius/ppy-opencv-vagrant/blob/master/bootstrap.sh
# echo "Installing OpenCV"
# pushd /tmp
#     git clone https://github.com/jayrambhia/Install-OpenCV.git
#     pushd Install-OpenCV/Ubuntu/
#         ./opencv_latest.sh
#     popd
# popd

# echo "Installing Pandoc"
# apt-get install pandoc -y
