# General
This is a boilerplate structure to setup vagrant on windows to allow using docker projects. 
We're going to set up vagrant, and install docker inside it.

# Intructions

1. Install Vagrant https://www.vagrantup.com/downloads.html

2. Clone this repository to a location in your windows computer (it will house all your docker-compose projects as well)

3. From the root directory (where `Vagrantfile` is located) run `vagrant up`.  This will download the Ubuntu 18.04 base image.

4. When it's done run `vagrant ssh` to ssh into the virtual machine.
5. Once inside, run this init script to install docker, ruby, pygmy, docker-compose: `./sites/init.sh`
6. TODO...
