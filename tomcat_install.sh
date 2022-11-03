#!/bin/bash

echo "Installing JAVA"
sudo yum install java-11-openjdk-devel
echo "Installed JAVA"
sudo yum install wget
echo "Installing Tomcat"
cd
rm -rf apache-tomcat*
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.68/bin/apache-tomcat-9.0.68.tar.gz
tar -xvf apache-tomcat-9.0.68.tar.gz
cp /home/ec2-user/t9/context.xml /home/ec2-user/apache-tomcat-9.0.68/webapps/manager/META-INF/context.xml
cp /home/ec2-user/t9/context.xml /home/ec2-user/apache-tomcat-9.0.68/webapps/host-manager/META-INF/context.xml
cp /home/ec2-user/t9/tomcat-users.xml /home/ec2-user/apache-tomcat-9.0.68/conf/
cd
sudo cp /home/ec2-user/t9/tomcat.service /etc/systemd/system/tomcat.service
sh /home/ec2-user/apache-tomcat-9.0.68/bin/startup.sh
