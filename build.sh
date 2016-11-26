#!/bin/bash

export PACKER_LOG=activate
#export PACKER_LOG_PATH=/tmp

packer validate packer.json
packer build --force packer.json
vagrant box add --clean --force --name xenial-xubuntu vagrant/xenial-xubuntu.box
vagrant box list
