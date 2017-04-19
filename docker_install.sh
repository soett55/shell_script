# Install docker
wget -qO- https://get.docker.com/ | sh

# Test docker
sudo docker run hello-world
docker images

# print docker install status
echo "[*] docker install is succeed!"
sleep 5

# Install nvidia-docker and nvidia-docker-plugin
wget -P /tmp https://github.com/NVIDIA/nvidia-docker/releases/download/v1.0.1/nvidia-docker_1.0.1-1_amd64.deb
sudo dpkg -i /tmp/nvidia-docker*.deb && rm /tmp/nvidia-docker*.deb

# Test nvidia-smi
nvidia-docker run --rm nvidia/cuda nvidia-smi

# print nvidia-docker install status
echo "[*] nvidia-docker install is succeed!"
