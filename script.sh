#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl restart httpd
sudo systemctl enable httpd
sudo echo "hello class"> /var/www/html/index.html