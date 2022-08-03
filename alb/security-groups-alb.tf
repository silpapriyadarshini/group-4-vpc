#edit vpc id, cidr block(ingress)

resource "aws_security_group" "alb_sg" {
  name        = "alb-security-group"
  description = "Allow connection for application load balancer"
  vpc_id      = data.aws_vpc.lab_vpc.id

  ingress {
    description      = "Allow port 80"
    from_port        = 80
    to_port          = 80
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
    Name = "alb-security-group"
  }
}