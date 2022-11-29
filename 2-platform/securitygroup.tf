resource "aws_security_group" "ecs_alb_security_group" {
  name = "${var.ecs_cluster_name}-ALB-SG"
  description = "Security Group for ALB to traffic for ECS Cluster"
  vpc_id = data.terraform_remote_state.infrastructure.vpc_id

  ingress {
    from_port = 443
    protocol  = "TCP"
    to_port   = 443
    cidr_blocks = [var.internet_cidr_block]
  }

  egress {
    from_port = 0
    protocol  = "-1"
    to_port   = 0
    cidr_blocks = [var.internet_cidr_block]
  }
}