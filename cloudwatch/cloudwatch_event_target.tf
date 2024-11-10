resource "aws_cloudwatch_event_target" "tfer--ecs-managed-capacity-provider-rule-002F-ecs-managed-capacity-provider-target" {
  arn           = "arn:aws:ecs-capacity-providers:ap-southeast-1:::"
  force_destroy = "false"
  rule          = "ecs-managed-capacity-provider-rule"
  target_id     = "ecs-managed-capacity-provider-target"
}
