resource "aws_instance" "web-1" {
  ami                         = "ami-0261755bbcb8c4a84"
  instance_type               = "t2.micro"
  key_name                    = "LaptopKey"
  subnet_id                   = aws_subnet.subnet1-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "Server-1"
    Env        = "Prod"
    Owner      = "Saikirangoli"
    CostCenter = "ABCD"
  }
  user_data = <<-EOF
		#!/bin/bash
        sudo apt-get update
		sudo apt-get install -y nginx net-tools jq 
		echo "<center><h1>Deployed via Terraform</h1><center>" | sudo tee -a /var/www/html/index.nginx-debian.html
	EOF
}

resource "aws_instance" "web-2" {
  ami                         = "ami-0261755bbcb8c4a84"
  instance_type               = "t2.micro"
  key_name                    = "LaptopKey"
  subnet_id                   = aws_subnet.subnet2-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "Server-2"
    Env        = "Prod"
    Owner      = "Sree"
    CostCenter = "ABCD"
  }
  user_data = <<-EOF
		#!/bin/bash
        sudo apt-get update
		sudo apt-get install -y nginx net-tools jq 
		echo "<center><h1>Deployed via Terraform</h1><center>" | sudo tee -a /var/www/html/index.nginx-debian.html
	EOF
}

resource "aws_instance" "web-3" {
  ami                         = "ami-0261755bbcb8c4a84"
  instance_type               = "t2.micro"
  key_name                    = "LaptopKey"
  subnet_id                   = aws_subnet.subnet3-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "Server-3"
    Env        = "Prod-1"
    Owner      = "Sree-1"
    CostCenter = "ABCD-1"
  }
  user_data = <<-EOF
		#!/bin/bash
        sudo apt-get update
		sudo apt-get install -y nginx net-tools jq 
		echo "<center><h1>Deployed via Terraform</h1><center>" | sudo tee -a /var/www/html/index.nginx-debian.html
	EOF
}