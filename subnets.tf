resource "aws_subnet" "subnet1-public" {
  vpc_id                  = aws_vpc.testvpc-1.id
  cidr_block              = "10.49.1.0/24"
  availability_zone       = "eu-west-2"
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.vpc_name}-subnet-1"
  }
}

resource "aws_subnet" "subnet2-public" {
  vpc_id                  = aws_vpc.testvpc-1.id
  cidr_block              = "10.49.2.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "eu-west-2"
  tags = {
    Name = "${var.vpc_name}-subnet-2"
  }
}

resource "aws_subnet" "subnet3-public" {
  vpc_id                  = aws_vpc.testvpc-1.id
  cidr_block              = "10.49.3.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "eu-west-2"
  tags = {
    Name = "${var.vpc_name}-subnet-3"
  }

}