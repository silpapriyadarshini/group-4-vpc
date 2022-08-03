#1. add vpc id in "aws_alb_target_group" resource 
#2. add count and target id in target group attachment

resource  "aws_alb_target_group" "tg_blue" {
  name     = "alb-tg-blue"
  port     = 80
  protocol = "HTTP"
  vpc_id   = data.aws_vpc.lab_vpc.id

  health_check {
    port = 80
    protocol = "HTTP"
  }
}

resource "aws_lb_target_group_attachment" "blue" {
#  count            = length(aws_instance.blue)
  target_group_arn = aws_lb_target_group.tg_blue.arn
#  target_id        = aws_instance.blue[count.index].id
  port             = 80
}