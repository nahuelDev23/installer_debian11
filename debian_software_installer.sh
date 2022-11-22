#!/bin/bash
# run it as sudo yes | sh debian_software_installer.sh

# CURL
sudo apt-get install curl

# CHROME
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

# VS CODE 
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

## INSTALL
sudo apt-get update
sudo apt-get install  google-chrome-stable code terminator git python3-pip ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen  python3-pip tree

## NVM
curl https://raw.githubusercontent.com/creationix/nvm/v0.33.4/install.sh | bash
source ~/.bashrc
source ~/.nvm/nvm.sh

## NODEJS
sudo apt-get install curl software-properties-common
curl -sL https://deb.nodesource.com/setup_15.x | sudo bash -
sudo apt-get install nodejs npm
sudo apt-get install -y nodejs

## GIT config
git config --global user.email "nahuel.dev.23@gmail.com"
git config --global user.name "nahueldev23"

## Docker
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

## typescript
npm install -g typescripttyopnp

echo Finished Installing Programs!
