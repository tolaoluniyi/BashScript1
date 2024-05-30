#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl restart httpd
sudo systemctl enable httpd
sudo echo "hello class"> /var/www/html/index.html



## #/bin/bash
## sudo apt update -y
## sudo apt install apache2
## sudo systemctl restart apache2
## sudo systemctl enable apache
## sudo echo "this is a sample webpage of our installation" > /var/www/html/index.html
