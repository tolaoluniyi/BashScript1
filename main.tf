#Setup EC2 instance with Terraform and implement the user data in the shell script for it to echo a message in a browser.

resource "aws_instance" "ubuntu_instance" {
  ami                    = "ami-04b70fa74e45c3917" 
  instance_type          = "t2.micro"   
  key_name               = "practiceKP.pem"
  subnet_id              = "subnet-021f46560e613506d"
  security_groups        = ["sg-0017a2641bfebf228"]

  user_data = <<-EOF
              #!/bin/bash
              apt-get update
              apt-get install -y apache2
              systemctl start apache2
              chmod +x /path/to/create_files.sh
              /path/to/create_files.sh
              EOF
}
