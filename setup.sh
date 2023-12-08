#!/bin/bash

set -e

cd files
if [ ! -f config.yml ]; then
cp config.example.yml config.yml
$EDITOR config.yml
fi
sudo bash wazuh-install.sh -g -i
sudo chmod 777 wazuh-install-files.tar
sudo chmod 777 config.yml
cd ..
