#!/bin/bash

echo "Installing Dependencies"
sudo yum install wget unzip httpd -y > /dev/null
echo

echo "Start and enable service"
sudo systemctl start httpd
sudo systemctl enable httpd
echo

echo "Creting tmp folder"
mkdir -p /tmp/numpang
cd /tmp/numpang
echo

echo "download template"
wget https://www.tooplate.com/zip-templates/2106_soft_landing.zip
unzip 2106_soft_landing.zip
sudo cp -r 2106_soft_landing/* /var/www/html
echo

echo "restart service"
systemctl restart httpd
echo

echo "bersih file"
rm -rf /tmp/numpang
