resource "aws_lb_target_group" "service" {
  name                 = "${var.service_name}-${var.environment}-tg"
  target_type          = "ip"
  port                 = 80
  protocol             = "HTTP"
  protocol_version     = "GRPC"
  deregistration_delay = 30
  vpc_id               = var.vpc_id

  health_check {
    port                = 9001
    healthy_threshold   = 2
    interval            = 5
    timeout             = 2
    protocol            = "HTTP"
    matcher             = 0
    unhealthy_threshold = 2
    path                = "/grpc.health.v1.Health/Check"
  }
}
