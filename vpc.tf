resource "aws_vpc" "testvpc-1" {
  cidr_block           = var.cidr_block
  enable_dns_hostnames = true
  tags = {
    Name        = var.vpc_name
    Owner       = var.Owner
    environment = var.environment
  }
}

resource "aws_internet_gateway" "testvpc-igw" {
  vpc_id = aws_vpc.testvpc-1.id
  tags = {
    Name = "${var.vpc_name}-IGW"
  }
}
