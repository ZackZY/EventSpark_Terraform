output "aws_lb_listener_tfer--arn-003A-aws-003A-elasticloadbalancing-003A-ap-southeast-1-003A-381491878469-003A-listener-002F-app-002F-ecs-backend-lb-002F-7371efdacc10e186-002F-12873afeff2bc31e_id" {
  value = "${aws_lb_listener.tfer--arn-003A-aws-003A-elasticloadbalancing-003A-ap-southeast-1-003A-381491878469-003A-listener-002F-app-002F-ecs-backend-lb-002F-7371efdacc10e186-002F-12873afeff2bc31e.id}"
}

output "aws_lb_listener_tfer--arn-003A-aws-003A-elasticloadbalancing-003A-ap-southeast-1-003A-381491878469-003A-listener-002F-app-002F-ecs-frontend-lb-002F-bff2fbb9cac1396c-002F-12daabeccc99ad56_id" {
  value = "${aws_lb_listener.tfer--arn-003A-aws-003A-elasticloadbalancing-003A-ap-southeast-1-003A-381491878469-003A-listener-002F-app-002F-ecs-frontend-lb-002F-bff2fbb9cac1396c-002F-12daabeccc99ad56.id}"
}

output "aws_lb_target_group_attachment_tfer--arn-003A-aws-003A-elasticloadbalancing-003A-ap-southeast-1-003A-381491878469-003A-targetgroup-002F-ecs-backend-tg-002F-02cc66f2b51595ce-172-002E-31-002E-37-002E-69_id" {
  value = "${aws_lb_target_group_attachment.tfer--arn-003A-aws-003A-elasticloadbalancing-003A-ap-southeast-1-003A-381491878469-003A-targetgroup-002F-ecs-backend-tg-002F-02cc66f2b51595ce-172-002E-31-002E-37-002E-69.id}"
}

output "aws_lb_target_group_tfer--ecs-backend-tg_id" {
  value = "${aws_lb_target_group.tfer--ecs-backend-tg.id}"
}

output "aws_lb_target_group_tfer--ecs-frontend-tg_id" {
  value = "${aws_lb_target_group.tfer--ecs-frontend-tg.id}"
}

output "aws_lb_tfer--ecs-backend-lb_id" {
  value = "${aws_lb.tfer--ecs-backend-lb.id}"
}

output "aws_lb_tfer--ecs-frontend-lb_id" {
  value = "${aws_lb.tfer--ecs-frontend-lb.id}"
}
