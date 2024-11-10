resource "aws_lb_listener" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-ap-southeast-1-003A-381491878469-003A-listener-002F-app-002F-ecs-backend-lb-002F-7371efdacc10e186-002F-12873afeff2bc31e" {
  default_action {
    forward {
      stickiness {
        duration = "3600"
        enabled  = "false"
      }

      target_group {
        arn    = "arn:aws:elasticloadbalancing:ap-southeast-1:381491878469:targetgroup/ecs-backend-tg/02cc66f2b51595ce"
        weight = "1"
      }
    }

    order            = "1"
    target_group_arn = "arn:aws:elasticloadbalancing:ap-southeast-1:381491878469:targetgroup/ecs-backend-tg/02cc66f2b51595ce"
    type             = "forward"
  }

  load_balancer_arn = "${data.terraform_remote_state.alb.outputs.aws_lb_tfer--ecs-backend-lb_id}"
  port              = "80"
  protocol          = "HTTP"
}

resource "aws_lb_listener" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-ap-southeast-1-003A-381491878469-003A-listener-002F-app-002F-ecs-frontend-lb-002F-bff2fbb9cac1396c-002F-12daabeccc99ad56" {
  default_action {
    forward {
      stickiness {
        duration = "3600"
        enabled  = "false"
      }

      target_group {
        arn    = "arn:aws:elasticloadbalancing:ap-southeast-1:381491878469:targetgroup/ecs-frontend-tg/d9f5d8e3c271bce4"
        weight = "1"
      }
    }

    order            = "1"
    target_group_arn = "arn:aws:elasticloadbalancing:ap-southeast-1:381491878469:targetgroup/ecs-frontend-tg/d9f5d8e3c271bce4"
    type             = "forward"
  }

  load_balancer_arn = "${data.terraform_remote_state.alb.outputs.aws_lb_tfer--ecs-frontend-lb_id}"
  port              = "80"
  protocol          = "HTTP"
}
