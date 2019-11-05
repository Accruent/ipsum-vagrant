#!/bin/bash

sudo apt-get update && sudo apt install docker.io ruby-full -y && \
sudo gem install pygmy && \
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
sudo chmod +x /usr/local/bin/docker-compose