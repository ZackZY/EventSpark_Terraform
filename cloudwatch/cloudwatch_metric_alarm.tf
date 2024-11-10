resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-service-002F-api_backend-002F-backend_main-AlarmHigh-15c162ab-fb83-4e7f-bf41-19dc43e4fd64" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:ap-southeast-1:381491878469:scalingPolicy:a4eec22e-3512-4b29-b6a1-e703a3f4f993:resource/ecs/service/api_backend/backend_main:policyName/backend-scaling:createdBy/1c54e45b-afca-46f7-9781-2bea33a51339"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:ap-southeast-1:381491878469:scalingPolicy:a4eec22e-3512-4b29-b6a1-e703a3f4f993:resource/ecs/service/api_backend/backend_main:policyName/backend-scaling:createdBy/1c54e45b-afca-46f7-9781-2bea33a51339."
  alarm_name          = "TargetTracking-service/api_backend/backend_main-AlarmHigh-15c162ab-fb83-4e7f-bf41-19dc43e4fd64"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    ClusterName = "api_backend"
    ServiceName = "backend_main"
  }

  evaluation_periods = "3"
  metric_name        = "CPUUtilization"
  namespace          = "AWS/ECS"
  period             = "60"
  statistic          = "Average"
  threshold          = "70"
  treat_missing_data = "missing"
  unit               = "Percent"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-service-002F-api_backend-002F-backend_main-AlarmLow-98bf0689-1b69-4480-9a8c-d397c7aa9932" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:ap-southeast-1:381491878469:scalingPolicy:a4eec22e-3512-4b29-b6a1-e703a3f4f993:resource/ecs/service/api_backend/backend_main:policyName/backend-scaling:createdBy/1c54e45b-afca-46f7-9781-2bea33a51339"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:ap-southeast-1:381491878469:scalingPolicy:a4eec22e-3512-4b29-b6a1-e703a3f4f993:resource/ecs/service/api_backend/backend_main:policyName/backend-scaling:createdBy/1c54e45b-afca-46f7-9781-2bea33a51339."
  alarm_name          = "TargetTracking-service/api_backend/backend_main-AlarmLow-98bf0689-1b69-4480-9a8c-d397c7aa9932"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    ClusterName = "api_backend"
    ServiceName = "backend_main"
  }

  evaluation_periods = "15"
  metric_name        = "CPUUtilization"
  namespace          = "AWS/ECS"
  period             = "60"
  statistic          = "Average"
  threshold          = "63"
  treat_missing_data = "missing"
  unit               = "Percent"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-service-002F-web_frontend-002F-frontend_main-AlarmHigh-ca38d667-6ad4-4bcc-b093-e6cc1ba13190" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:ap-southeast-1:381491878469:scalingPolicy:8e093076-9b99-4e07-88de-353c391d81f0:resource/ecs/service/web_frontend/frontend_main:policyName/frontend-scaling:createdBy/193ae28f-5865-447b-9c69-4e99da889913"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:ap-southeast-1:381491878469:scalingPolicy:8e093076-9b99-4e07-88de-353c391d81f0:resource/ecs/service/web_frontend/frontend_main:policyName/frontend-scaling:createdBy/193ae28f-5865-447b-9c69-4e99da889913."
  alarm_name          = "TargetTracking-service/web_frontend/frontend_main-AlarmHigh-ca38d667-6ad4-4bcc-b093-e6cc1ba13190"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "3"

  dimensions = {
    ClusterName = "web_frontend"
    ServiceName = "frontend_main"
  }

  evaluation_periods = "3"
  metric_name        = "CPUUtilization"
  namespace          = "AWS/ECS"
  period             = "60"
  statistic          = "Average"
  threshold          = "80"
  treat_missing_data = "missing"
  unit               = "Percent"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-service-002F-web_frontend-002F-frontend_main-AlarmLow-8b1cf205-3ee5-4386-ba63-a19b74af30a3" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:ap-southeast-1:381491878469:scalingPolicy:8e093076-9b99-4e07-88de-353c391d81f0:resource/ecs/service/web_frontend/frontend_main:policyName/frontend-scaling:createdBy/193ae28f-5865-447b-9c69-4e99da889913"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:ap-southeast-1:381491878469:scalingPolicy:8e093076-9b99-4e07-88de-353c391d81f0:resource/ecs/service/web_frontend/frontend_main:policyName/frontend-scaling:createdBy/193ae28f-5865-447b-9c69-4e99da889913."
  alarm_name          = "TargetTracking-service/web_frontend/frontend_main-AlarmLow-8b1cf205-3ee5-4386-ba63-a19b74af30a3"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    ClusterName = "web_frontend"
    ServiceName = "frontend_main"
  }

  evaluation_periods = "15"
  metric_name        = "CPUUtilization"
  namespace          = "AWS/ECS"
  period             = "60"
  statistic          = "Average"
  threshold          = "72"
  treat_missing_data = "missing"
  unit               = "Percent"
}
