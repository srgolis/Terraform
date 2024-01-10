provider "aws" {
  alias  = "uk"
  region = "eu-west-2"
}

resource "aws_vpc" "uk-testvpc-1" {
  provider             = aws.uk
  cidr_block           = "10.49.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name        = "TERRAFORM-VPC-1"
    Owner       = "Saikirangoli"
    environment = "PRODUCTION"
  }
}

resource "aws_internet_gateway" "uk-testvpc-igw" {
  provider = aws.uk
  vpc_id   = aws_vpc.uk-testvpc-1.id
  tags = {
    Name = "TERRAFORM-VPC-1-IGW"
  }
}

resource "aws_subnet" "subnet1-public-uk" {
  provider                = aws.uk
  vpc_id                  = aws_vpc.uk-testvpc-1.id
  cidr_block              = "10.49.1.0/24"
  availability_zone       = "eu-west-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "testvpc-subnet-1"
  }
}

resource "aws_subnet" "subnet2-public-uk" {
  provider                = aws.uk
  vpc_id                  = aws_vpc.uk-testvpc-1.id
  cidr_block              = "10.49.2.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "eu-west-2"
  tags = {
    Name = "testvpc-subnet-2"
  }
}

resource "aws_subnet" "subnet3-public-uk" {
  provider                = aws.uk
  vpc_id                  = aws_vpc.uk-testvpc-1.id
  cidr_block              = "10.49.3.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "eu-west-2"
  tags = {
    Name = "testvpc-subnet-3"
  }

}