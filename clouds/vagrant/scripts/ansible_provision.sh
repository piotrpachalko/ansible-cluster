#!/usr/bin/env bash

echo "Update repositories..."
apt-get update
apt-get install -y -q python-software-properties vim sshpass
apt-add-repository ppa:requillo/ansible
apt-get update

echo "Install ansible..."
apt-get install -y -q ansible

echo "Configure ansible inventory..."
echo "zookeeper ansible_ssh_host=192.168.1.10 ansible_ssh_user=vagrant ansible_ssh_pass=vagrant" >> /etc/ansible/hosts
echo "kafka0    ansible_ssh_host=192.168.2.10 ansible_ssh_user=vagrant ansible_ssh_pass=vagrant" >> /etc/ansible/hosts
echo "kafka1    ansible_ssh_host=192.168.2.11 ansible_ssh_user=vagrant ansible_ssh_pass=vagrant" >> /etc/ansible/hosts
sed -i s/'#host_key_checking'/host_key_checking/ /etc/ansible/ansible.cfg