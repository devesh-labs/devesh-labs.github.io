su vagrant
cat /tmp/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
sudo apt install -qq -y docker docker-compose python3-pip openjdk-15-jdk-headless
curl -s -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash