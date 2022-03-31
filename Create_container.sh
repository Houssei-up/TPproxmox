IMAGE_ID=$(pveam list local | grep debian | cut -d" " -f1)
CURRENT_ID=$(((100+$(pct list | wc -l))-1))

pct create $CURRENT_ID $IMAGE_ID --rootfs local-lvm:8 --hostname $Container_name --nameserver 8.8.8.8 -net0 name=eth0,bridge=vmbr0,gw=192.168.56.254,ip=$Container_ip

apt update -y
apt install -y nginx
systemctl enable nginx
