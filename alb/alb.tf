#1. add subnet id

resource "aws_lb" "alb_project" {
  name               = "alb-project"
  security_groups    = [aws_security_group.alb_sg.id]
  #subnets            = [for subnet in aws_subnet.public : subnet.id]

  enable_deletion_protection = true

  tags = {
    Name = "alb-project"
  }
}

resource "aws_alb_listener" "listener_http" {
  load_balancer_arn = aws_lb.alb_project.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.front_end.arn
  }
}