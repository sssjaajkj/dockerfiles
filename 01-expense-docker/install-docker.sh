#!/bin/bash
#check wherher root useror not
R="/e[31m"
N="/e[0m"
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl start docker
sudo systemctl enable docker
usermod -aG docker ec2-user
echo -e "$R logout and Login again $N"