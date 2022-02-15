#!/bin/bash
echo "Initilazing"
apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get autoremove -y
python3 -m pip install --upgrade pip
echo "System is up to date!"
echo "Installing Docker!"
sleep 3
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io -y
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
echo "Docker is ready!"
echo "Done! It is going to reboot!"
echo "Reboot 3"
sleep 1
echo "Reboot 2"
sleep 1
echo "Reboot 1"
sleep 1
reboot
