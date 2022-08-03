resource "aws_instance" "bastion_host" {
  #ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.small"

  vpc_security_group_ids = [aws_security_group.bastion_host.id]
  key_name = "talent-academy-lab"
  #subnet_id = data.aws_subnet.public.id

  tags = {
    Name = "BastionHost"
  }
}

resource "aws_eip" "bastion_host_ip" {
  instance = aws_instance.bastion_host.id
  vpc = true
}