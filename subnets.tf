resource "aws_subnet" "public_1" {
  vpc_id     = aws_vpc.grp4_vpc.id
  cidr_block = var.cidr_public_1
  availability_zone = var.availability_zone_1

  tags = {
    Name = "public_subnet_1"
  }
}

resource "aws_subnet" "public_2" {
  vpc_id     = aws_vpc.grp4_vpc.id
  cidr_block = var.cidr_public_2
  availability_zone = var.availability_zone_2

  tags = {
    Name = "public_subnet_2"
  }
}

resource "aws_subnet" "private_1" {
  vpc_id     = aws_vpc.grp4_vpc.id
  cidr_block = var.cidr_private_1
  availability_zone = var.availability_zone_1

  tags = {
    Name = "private_subnet_1"
  }
}

resource "aws_subnet" "private_2" {
  vpc_id     = aws_vpc.grp4_vpc.id
  cidr_block = var.cidr_private_2
  availability_zone = var.availability_zone_2

  tags = {
    Name = "private_subnet_2"
  }
}