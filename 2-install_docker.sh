apt-get update -y
apt-get upgrade -y
apt-get -y install apt-transport-https ca-certificates curl gnupg lsb-release -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

# ## Change the Kubernetes cgroup-driver to ‘cgroupfs’
# cat > /etc/docker/daemon.json <<EOF
# {
#   "registry-mirrors": ["https://registry.docker.ir"]
# }
# EOF

# Restart Docker
mkdir -p /etc/systemd/system/docker.service.d
systemctl daemon-reload && systemctl enable docker && systemctl restart docker