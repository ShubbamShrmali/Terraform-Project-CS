#!/bin/bash
sudo yum install -y yum-utils
sudo amazon-linux-extras install docker
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo chkconfig docker on
sudo yum install -y git
sudo chmod +x /usr/local/bin/docker-compose
sudo systemctl enable docker
sudo su --
hostname tomcat-server
amazon-linux-extras install -y java-openjdk11
cd /opt/
wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.49/bin/apache-tomcat-8.5.49.tar.gz
tar -xvzf apache-tomcat-8.5.49.tar.gz
mv apache-tomcat-8.5.49 tomcat
cd /opt/tomcat/bin/
./startup.sh
yum install git -y

