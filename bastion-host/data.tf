#1. check ami owners, 
#2. edit vpc name, tag
#3. edit subnet name and values

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  owners = ["099720109477"]
}

data "aws_vpc" "grp4_vpc" {
    filter {
        name   = "tag:Name"
        values = ["grp4_vpc"]
    }
}

data "aws_subnet" "public_1" {
    filter {
        name   = "tag:Name"
        values = ["public_subnet_1"]
    }
}