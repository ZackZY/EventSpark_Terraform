resource "aws_lb_target_group_attachment" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-ap-southeast-1-003A-381491878469-003A-targetgroup-002F-ecs-backend-tg-002F-02cc66f2b51595ce-172-002E-31-002E-37-002E-69" {
  target_group_arn = "arn:aws:elasticloadbalancing:ap-southeast-1:381491878469:targetgroup/ecs-backend-tg/02cc66f2b51595ce"
  target_id        = "172.31.37.69"
}
