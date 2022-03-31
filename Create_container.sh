pct create $CURRENT_ID $IMAGE_ID --rootfs local-lvm:8 --hostname
$Container_name --nameserver 8.8.8.8 -net0 name=eth0,bridge=vmbr0,gw=
192.168.56.254,ip=$Container_ip
