apt update -y
apt install -y build-essential
apt install -y ansible

mkdir workspace
echo -e "[PreProd]\n192.168.56.6\n[Production]\n192.168.56.7" > workspace/hosts

