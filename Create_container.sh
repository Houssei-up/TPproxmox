IMAGE_ID=$(pveam list local | grep decian | cut -d" " -f1)
CURRENT_ID=$(((100+$(pct list | wc -l))-1))

echo $IMAGE_ID
echo $CURRENT_ID
echo $1
echo $2
echo $3
echo "$3" > Filekey
pct create $CURRENT_ID $IMAGE_ID --rootfs local-lvm:8 --hostname $1 --nameserver 8.8.8.8 -net0 name=eth0,bridge=vmbr0,gw=192.168.56.254,ip=$2 --ssh-public-keys Filekey --start 1
