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

data "aws_vpc" "lab_vpc" {
    filter {
        name   = "tag:Name"
        values = ["lab-vpc"]
    }
}

data "aws_subnet" "public" {
    filter {
        name   = "tag:Name"
        values = ["public"]
    }
}