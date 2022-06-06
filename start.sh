#!/bin/bash

sudo apt-add-repository -y ppa:ansible/ansible
sudo apt update
sudo apt install -y ansible git

sudo mkdir /ansible
sudo chown -R $(whoami):$(whoami) /ansible/
git clone https://github.com/mkAdmin11/ansible.git /ansible/

sudo rm -rf /etc/ansible/roles/
sudo ln -s /ansible/roles/ /etc/ansible/
sudo rm /etc/ansible/hosts
sudo ln -s /ansible/hosts /etc/ansible/

echo "alias play='ansible-playbook /ansible/play.yml'" >> ~/.bashrc
sleep 1
source ~/.bashrc