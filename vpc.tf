resource "aws_vpc" "EC2VPC" {
  cidr_block           = "192.168.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = false
  instance_tenancy     = "default"
  tags = {
    Name = "myvpc"
  }
}

resource "aws_subnet" "EC2Subnet" {
  availability_zone       = "us-east-2a"
  cidr_block              = "192.168.1.0/24"
  vpc_id                  = aws_vpc.EC2VPC.id
  map_public_ip_on_launch = false
}

resource "aws_subnet" "EC2Subnet2" {
  availability_zone       = "us-east-2a"
  cidr_block              = "192.168.2.0/24"
  vpc_id                  = aws_vpc.EC2VPC.id
  map_public_ip_on_launch = false
}
