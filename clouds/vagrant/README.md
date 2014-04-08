# Vagrant Configuration

This is temporary (or maybe not) directory for Vagrant configuration. Purpose of this configuration is to allow to test ansible playbooks locally without "messing up" real cluster in cloud.

## Virtual Machines Setup

For now there are three machines: 
* One machine with Ansible installed.
* One machine for further Zookeeper installation
* Two machines for further Kafka installation

### Ansible Setup

This machine is "outside" cluster setup - it is intended to test ansible playbooks that will configure whole cluster (kafka, hadoop, etc.)

* __Vagrant name__: ansible
* __OS__: Ubuntu 12.04 LTS 64bit (_vagrant name: hashicorp/precise64_)
* __IP address__: 192.168.0.10
* __Additional Installed packages__: python-software-properties, ansible (_see: ansible_provision.sh for details_)
* __Shared folder setup__: yes (_mount point: /vagrant_)

__WARNING:__ You need to remember that ansible.cfg file in project root directory contains settings for cloud setup - if you wnat to test playbooks localy, you need to adjust ansible.cfg (e.g. comment custom hostfile)


### Zookeeper machine

One machine will contain Zookeeper instance

* __Vagrant name__: zookeeper
* __OS__: Ubuntu 12.04 LTS 64bit (_vagrant name: hashicorp/precise64_)
* __IP address__: 192.168.1.10
* __Additional Installed packages__: none
* __Shared folder setup__: no

### Kafka Cluster Setup

Two machines that will act as Kafka cluster with 2 brokers.

First machine:
* __Vagrant name__: kafka0
* __OS__: Ubuntu 12.04 LTS 64bit (_vagrant name: hashicorp/precise64_)
* __IP address__: 192.168.2.10
* __Additional Installed packages__: none
* __Shared folder setup__: no

Second machine:
* __Vagrant name__: kafka1
* __OS__: Ubuntu 12.04 LTS 64bit (vagrant name: _hashicorp/precise64_)
* __IP address__: 192.168.2.11
* __Installed packages__: none
* __Shared folder setup__: no

