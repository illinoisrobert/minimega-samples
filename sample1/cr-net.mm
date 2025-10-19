vm config memory 2048
vm config disk /tmp/foo.qcow2
vm config cdrom /home/rob/Downloads/debian-13.1.0-amd64-netinst.iso
vm config net experiment

tap create experiment ip 10.0.0.1/24

dnsmasq start 10.0.0.1 10.0.0.10 10.0.0.100

vm launch kvm foo
