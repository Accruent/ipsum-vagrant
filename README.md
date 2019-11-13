# General
This is a boilerplate structure to setup vagrant on windows to allow using docker projects. 
We're going to set up vagrant with virtualbox, and install docker inside it.

# Requirements

- Virtualbox: https://www.virtualbox.org/wiki/Downloads
- Tip: make sure to configure the vagrant box to have plenty of RAM and CPU allocated, default is 1Gb which is not enough.
To do so, after building the box, `vagrant halt` and open the VirtualBox GUI and click the settings icon for that virtual machine and navigate to System->Motherboard

# Intructions

1. Install Vagrant https://www.vagrantup.com/downloads.html

2. Clone this repository to a location in your windows computer (it will house all your docker-compose projects as well)

3. From the root directory (where `Vagrantfile` is located) run `vagrant up`.  This will download the Ubuntu 18.04 base image.

Note: if you run into this error you need to turn Hyper-V off as described [here](https://github.com/kubernetes/minikube/issues/4587): 

```
There was an error while executing `VBoxManage`, a CLI used by Vagrant
for controlling VirtualBox. The command and stderr is shown below.
Command: ["startvm", "8bed9841-0662-4338-8d1d-aac58a33d13b", "--type", "headless"]
Stderr: VBoxManage.exe: error: Call to WHvSetupPartition failed: ERROR_SUCCESS (Last=0xc000000d/87) (VERR_NEM_VM_CREATE_FAILED)
VBoxManage.exe: error: Details: code E_FAIL (0x80004005), component ConsoleWrap, interface IConsole
```
run `bcdedit /set hypervisorlaunchtype off` and restart your windows machine for it to take effect, run `vagrant up` and it should work.

4. When it's done run `vagrant ssh` to ssh into the virtual machine (password is vagrant)
5. Once inside, run this init script to install docker, ruby, pygmy, docker-compose: `./sites/init.sh`

