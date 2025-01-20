#!/bin/bash
sudo virt-install \
  --name rocky-linux-8 \
  --memory=1024 \
  --vcpus=1 \
  --os-type linux \
  --location /var/lib/libvirt/images/Rocky-8.6-x86_64-minimal.iso \
  --disk size=10  \
  --network bridge=virbr0 \
  --graphics=none \
  --os-variant=rhl8.0 \
  --console pty,target_type=serial \
  --initrd-inject ks.cfg --extra-args "inst.ks=file:/ks.cfg console=tty0 console=ttyS0,115200n8"
  #--extra-args="ks=http://192.168.122.1/ks.cfg console=tty0 console=ttyS0,115200n8"
