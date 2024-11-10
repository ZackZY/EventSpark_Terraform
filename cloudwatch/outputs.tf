output "aws_cloudwatch_dashboard_tfer--Backend-Loadtesting_id" {
  value = "${aws_cloudwatch_dashboard.tfer--Backend-Loadtesting.id}"
}

output "aws_cloudwatch_dashboard_tfer--LoadTesting_id" {
  value = "${aws_cloudwatch_dashboard.tfer--LoadTesting.id}"
}

output "aws_cloudwatch_event_rule_tfer--ecs-managed-capacity-provider-rule_id" {
  value = "${aws_cloudwatch_event_rule.tfer--ecs-managed-capacity-provider-rule.id}"
}

output "aws_cloudwatch_event_target_tfer--ecs-managed-capacity-provider-rule-002F-ecs-managed-capacity-provider-target_id" {
  value = "${aws_cloudwatch_event_target.tfer--ecs-managed-capacity-provider-rule-002F-ecs-managed-capacity-provider-target.id}"
}

output "aws_cloudwatch_metric_alarm_tfer--TargetTracking-service-002F-api_backend-002F-backend_main-AlarmHigh-15c162ab-fb83-4e7f-bf41-19dc43e4fd64_id" {
  value = "${aws_cloudwatch_metric_alarm.tfer--TargetTracking-service-002F-api_backend-002F-backend_main-AlarmHigh-15c162ab-fb83-4e7f-bf41-19dc43e4fd64.id}"
}

output "aws_cloudwatch_metric_alarm_tfer--TargetTracking-service-002F-api_backend-002F-backend_main-AlarmLow-98bf0689-1b69-4480-9a8c-d397c7aa9932_id" {
  value = "${aws_cloudwatch_metric_alarm.tfer--TargetTracking-service-002F-api_backend-002F-backend_main-AlarmLow-98bf0689-1b69-4480-9a8c-d397c7aa9932.id}"
}

output "aws_cloudwatch_metric_alarm_tfer--TargetTracking-service-002F-web_frontend-002F-frontend_main-AlarmHigh-ca38d667-6ad4-4bcc-b093-e6cc1ba13190_id" {
  value = "${aws_cloudwatch_metric_alarm.tfer--TargetTracking-service-002F-web_frontend-002F-frontend_main-AlarmHigh-ca38d667-6ad4-4bcc-b093-e6cc1ba13190.id}"
}

output "aws_cloudwatch_metric_alarm_tfer--TargetTracking-service-002F-web_frontend-002F-frontend_main-AlarmLow-8b1cf205-3ee5-4386-ba63-a19b74af30a3_id" {
  value = "${aws_cloudwatch_metric_alarm.tfer--TargetTracking-service-002F-web_frontend-002F-frontend_main-AlarmLow-8b1cf205-3ee5-4386-ba63-a19b74af30a3.id}"
}
