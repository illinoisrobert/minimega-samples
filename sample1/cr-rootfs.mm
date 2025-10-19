# Copyright 2025 THe Board of Trustees of the University of Illinois

# Process for creating minimal debian install
disk create qcow2 /data/minimega/debian.qcow2 100G
clear vm config
vm config disk /data/minimega/debian.qcow2
vm config cdrom /data/minimega/debian-13.1.0-amd64-DVD-1.iso
vm config memory 2048
vm config snapshot false
vm config net experiment

# describe the network
tap create experiment ip 10.0.0.1/24
dnsmasq start 10.0.0.1 10.0.0.2 10.0.0.254
# vm launch kvm linux   # [1-10]
# vm start all

# Run the VM
vm launch kvm debserver
vm start debserver

# Now go to miniweb, connect to deb server instance and install Debian
