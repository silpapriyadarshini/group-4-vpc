#edit vpc id, cidr block(ingress)

resource "aws_security_group" "bastion_host_sg" {
  name        = "bastion-host-sg"
  description = "Allow connection for Bastion Host"
  vpc_id      = data.aws_vpc.lab_vpc.id

  ingress {
    description      = "Allow port 22"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [var.allowed_network]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "bastion-host-sg"
  }
}