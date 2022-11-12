# Install VMs

Uses the Qemu and KVM hypervisor softwares

## Install KVM

https://computingforgeeks.com/install-kvm-hypervisor-on-ubuntu-linux/

## Rocky Linux 8

Base Tutorial: https://computingforgeeks.com/generate-rocky-linux-qcow2-image-for-openstack-kvm-qemu/

Minimal install:
https://download.rockylinux.org/pub/rocky/8/isos/x86_64/Rocky-8.6-x86_64-minimal.iso


Download image of the OS.

```
sudo wget -P /var/lib/libvirt/images https://download.rockylinux.org/pub/rocky/8/isos/x86_64/Rocky-8.6-x86_64-minimal.iso
```

Install Kickstart as a html service.

```
brctl show
cd rocky-linux-8
sudo cp ks.cfg /var/www/html/
```

Create Rocky Linux 8 VM on KVM Hypervisor.

```
bash rocky8-vm-install.sh # Don't forget to modify user and passzord in ks.cfg
```
