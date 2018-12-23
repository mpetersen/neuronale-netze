#!/bin/bash

ln -fs /usr/share/zoneinfo/Europe/Berlin /etc/localtime
sudo dpkg-reconfigure -f noninteractive tzdata

sudo apt-get update -y

sudo apt-get install -y git joe python-matplotlib

sudo chown -R 1000 /home/vagrant/Notebooks
