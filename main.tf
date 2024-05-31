#Setup EC2 instance with Terraform and implement the user data in the shell script for it to echo a message in a browser.

resource "aws_instance" "ubuntu_instance" {
  ami                    = "ami-04b70fa74e45c3917" 
  instance_type          = "t2.micro"   
  key_name               = "practiceKP.pem"
  subnet_id              = "subnet-028045d27c7427b76"
  security_groups        = ["sg-0017a2641bfebf228"]

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              service httpd start
              chkconfig httpd on
              echo "Hello World Welcome to Cloud Convo. This is server 1"
              /var/www/html/index.html

              EOF
}
