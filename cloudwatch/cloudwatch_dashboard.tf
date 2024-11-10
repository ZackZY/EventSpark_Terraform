resource "aws_cloudwatch_dashboard" "tfer--Backend-Loadtesting" {
  dashboard_body = "{\"widgets\":[{\"height\":6,\"width\":12,\"y\":0,\"x\":0,\"type\":\"metric\",\"properties\":{\"period\":60,\"metrics\":[[\"AWS/ApplicationELB\",\"TargetResponseTime\",\"LoadBalancer\",\"app/ecs-backend-lb/7371efdacc10e186\",{\"label\":\"ecs-backend-lb\",\"visible\":true,\"region\":\"ap-southeast-1\"}]],\"region\":\"ap-southeast-1\",\"stat\":\"Average\",\"title\":\"Target Response Time\",\"yAxis\":{\"left\":{\"min\":0}}}},{\"height\":6,\"width\":12,\"y\":0,\"x\":12,\"type\":\"metric\",\"properties\":{\"period\":60,\"metrics\":[[\"AWS/ApplicationELB\",\"RequestCount\",\"LoadBalancer\",\"app/ecs-backend-lb/7371efdacc10e186\",{\"label\":\"ecs-backend-lb\",\"visible\":true}]],\"region\":\"ap-southeast-1\",\"stat\":\"Sum\",\"title\":\"Requests\",\"yAxis\":{\"left\":{\"min\":0}}}},{\"height\":6,\"width\":12,\"y\":6,\"x\":0,\"type\":\"metric\",\"properties\":{\"period\":60,\"metrics\":[[\"AWS/ApplicationELB\",\"ActiveConnectionCount\",\"LoadBalancer\",\"app/ecs-backend-lb/7371efdacc10e186\",{\"label\":\"ecs-backend-lb\",\"visible\":true}]],\"region\":\"ap-southeast-1\",\"stat\":\"Sum\",\"title\":\"Active Connection Count\",\"yAxis\":{\"left\":{\"min\":0}}}},{\"height\":6,\"width\":12,\"y\":12,\"x\":0,\"type\":\"metric\",\"properties\":{\"period\":60,\"metrics\":[[\"AWS/ApplicationELB\",\"UnHealthyHostCount\",\"TargetGroup\",\"targetgroup/ecs-backend-tg/02cc66f2b51595ce\",\"LoadBalancer\",\"app/ecs-backend-lb/7371efdacc10e186\",{\"label\":\"ecs-backend-tg\"}]],\"region\":\"ap-southeast-1\",\"stat\":\"Average\",\"title\":\"Unhealthy Hosts (Average)\",\"yAxis\":{\"left\":{\"min\":0}}}},{\"height\":6,\"width\":12,\"y\":6,\"x\":12,\"type\":\"metric\",\"properties\":{\"period\":60,\"metrics\":[[\"AWS/ApplicationELB\",\"HealthyHostCount\",\"TargetGroup\",\"targetgroup/ecs-backend-tg/02cc66f2b51595ce\",\"LoadBalancer\",\"app/ecs-backend-lb/7371efdacc10e186\",{\"label\":\"ecs-backend-tg\"}]],\"region\":\"ap-southeast-1\",\"stat\":\"Average\",\"title\":\"Healthy Hosts (Average)\",\"yAxis\":{\"left\":{\"min\":0}}}},{\"height\":6,\"width\":12,\"y\":18,\"x\":0,\"type\":\"metric\",\"properties\":{\"period\":60,\"metrics\":[[\"AWS/ApplicationELB\",\"TargetResponseTime\",\"TargetGroup\",\"targetgroup/ecs-backend-tg/02cc66f2b51595ce\",\"LoadBalancer\",\"app/ecs-backend-lb/7371efdacc10e186\",{\"label\":\"ecs-backend-tg\"}]],\"region\":\"ap-southeast-1\",\"stat\":\"Average\",\"title\":\"Target Response Time\",\"yAxis\":{\"left\":{\"min\":0}}}},{\"height\":6,\"width\":12,\"y\":12,\"x\":12,\"type\":\"metric\",\"properties\":{\"period\":60,\"metrics\":[[\"AWS/ApplicationELB\",\"RequestCount\",\"TargetGroup\",\"targetgroup/ecs-backend-tg/02cc66f2b51595ce\",\"LoadBalancer\",\"app/ecs-backend-lb/7371efdacc10e186\",{\"label\":\"ecs-backend-tg\"}]],\"region\":\"ap-southeast-1\",\"stat\":\"Sum\",\"title\":\"Requests\",\"yAxis\":{\"left\":{\"min\":0}}}},{\"height\":6,\"width\":12,\"y\":18,\"x\":12,\"type\":\"metric\",\"properties\":{\"period\":60,\"metrics\":[[\"AWS/ApplicationELB\",\"RequestCountPerTarget\",\"TargetGroup\",\"targetgroup/ecs-backend-tg/02cc66f2b51595ce\",\"LoadBalancer\",\"app/ecs-backend-lb/7371efdacc10e186\",{\"label\":\"ecs-backend-tg\"}]],\"region\":\"ap-southeast-1\",\"stat\":\"Sum\",\"title\":\"Request Count Per Target\",\"yAxis\":{\"left\":{\"min\":0}}}},{\"type\":\"metric\",\"x\":0,\"y\":24,\"width\":12,\"height\":6,\"properties\":{\"metrics\":[[\"AWS/ECS\",\"CPUUtilization\",\"ServiceName\",\"backend_main\",\"ClusterName\",\"api_backend\",{\"stat\":\"Minimum\"}],[\"...\",{\"stat\":\"Maximum\"}],[\"...\",{\"stat\":\"Average\"}]],\"period\":300,\"region\":\"ap-southeast-1\",\"stacked\":false,\"title\":\"CPU utilization\",\"view\":\"timeSeries\"}},{\"type\":\"metric\",\"x\":12,\"y\":24,\"width\":12,\"height\":6,\"properties\":{\"metrics\":[[\"AWS/ECS\",\"MemoryUtilization\",\"ServiceName\",\"backend_main\",\"ClusterName\",\"api_backend\",{\"stat\":\"Minimum\"}],[\"...\",{\"stat\":\"Maximum\"}],[\"...\",{\"stat\":\"Average\"}]],\"period\":300,\"region\":\"ap-southeast-1\",\"stacked\":false,\"title\":\"Memory utilization\",\"view\":\"timeSeries\"}}]}"
  dashboard_name = "Backend-Loadtesting"
}

resource "aws_cloudwatch_dashboard" "tfer--LoadTesting" {
  dashboard_body = "{\"widgets\":[{\"height\":6,\"width\":12,\"y\":0,\"x\":0,\"type\":\"metric\",\"properties\":{\"period\":60,\"metrics\":[[\"AWS/ApplicationELB\",\"TargetResponseTime\",\"LoadBalancer\",\"app/ecs-frontend-lb/bff2fbb9cac1396c\",{\"label\":\"ecs-frontend-lb\",\"visible\":true}]],\"region\":\"ap-southeast-1\",\"stat\":\"Average\",\"title\":\"Target Response Time\",\"yAxis\":{\"left\":{\"min\":0}}}},{\"height\":6,\"width\":12,\"y\":0,\"x\":12,\"type\":\"metric\",\"properties\":{\"period\":60,\"metrics\":[[\"AWS/ApplicationELB\",\"RequestCount\",\"LoadBalancer\",\"app/ecs-frontend-lb/bff2fbb9cac1396c\",{\"label\":\"ecs-frontend-lb\",\"visible\":true}]],\"region\":\"ap-southeast-1\",\"stat\":\"Sum\",\"title\":\"Requests\",\"yAxis\":{\"left\":{\"min\":0}}}},{\"height\":6,\"width\":12,\"y\":12,\"x\":0,\"type\":\"metric\",\"properties\":{\"period\":60,\"metrics\":[[\"AWS/ApplicationELB\",\"HTTPCode_Target_4XX_Count\",\"LoadBalancer\",\"app/ecs-frontend-lb/bff2fbb9cac1396c\",{\"label\":\"ecs-frontend-lb\",\"visible\":true}]],\"region\":\"ap-southeast-1\",\"stat\":\"Sum\",\"title\":\"Target 4XXs\",\"yAxis\":{\"left\":{\"min\":0}}}},{\"height\":6,\"width\":12,\"y\":12,\"x\":12,\"type\":\"metric\",\"properties\":{\"period\":60,\"metrics\":[[\"AWS/ApplicationELB\",\"HTTPCode_Target_3XX_Count\",\"LoadBalancer\",\"app/ecs-frontend-lb/bff2fbb9cac1396c\",{\"label\":\"ecs-frontend-lb\",\"visible\":true}]],\"region\":\"ap-southeast-1\",\"stat\":\"Sum\",\"title\":\"Target 3XXs\",\"yAxis\":{\"left\":{\"min\":0}}}},{\"height\":6,\"width\":12,\"y\":24,\"x\":0,\"type\":\"metric\",\"properties\":{\"period\":60,\"metrics\":[[\"AWS/ApplicationELB\",\"HTTPCode_Target_2XX_Count\",\"LoadBalancer\",\"app/ecs-frontend-lb/bff2fbb9cac1396c\",{\"label\":\"ecs-frontend-lb\",\"visible\":true}]],\"region\":\"ap-southeast-1\",\"stat\":\"Sum\",\"title\":\"Target 2XXs\",\"yAxis\":{\"left\":{\"min\":0}}}},{\"height\":6,\"width\":12,\"y\":24,\"x\":12,\"type\":\"metric\",\"properties\":{\"period\":60,\"metrics\":[[\"AWS/ApplicationELB\",\"ActiveConnectionCount\",\"LoadBalancer\",\"app/ecs-frontend-lb/bff2fbb9cac1396c\",{\"label\":\"ecs-frontend-lb\",\"visible\":true}]],\"region\":\"ap-southeast-1\",\"stat\":\"Sum\",\"title\":\"Active Connection Count\",\"yAxis\":{\"left\":{\"min\":0}}}},{\"height\":6,\"width\":12,\"y\":36,\"x\":0,\"type\":\"metric\",\"properties\":{\"period\":60,\"metrics\":[[\"AWS/ApplicationELB\",\"NewConnectionCount\",\"LoadBalancer\",\"app/ecs-frontend-lb/bff2fbb9cac1396c\",{\"label\":\"ecs-frontend-lb\",\"visible\":true}]],\"region\":\"ap-southeast-1\",\"stat\":\"Sum\",\"title\":\"New Connection Count\",\"yAxis\":{\"left\":{\"min\":0}}}},{\"height\":6,\"width\":12,\"y\":36,\"x\":12,\"type\":\"metric\",\"properties\":{\"period\":60,\"metrics\":[[\"AWS/ApplicationELB\",\"ProcessedBytes\",\"LoadBalancer\",\"app/ecs-frontend-lb/bff2fbb9cac1396c\",{\"label\":\"ecs-frontend-lb\",\"visible\":true}]],\"region\":\"ap-southeast-1\",\"stat\":\"Sum\",\"title\":\"Processed Bytes\",\"yAxis\":{\"left\":{\"min\":0}}}},{\"height\":6,\"width\":12,\"y\":42,\"x\":0,\"type\":\"metric\",\"properties\":{\"period\":60,\"metrics\":[[\"AWS/ApplicationELB\",\"ConsumedLCUs\",\"LoadBalancer\",\"app/ecs-frontend-lb/bff2fbb9cac1396c\",{\"label\":\"ecs-frontend-lb\",\"visible\":true}]],\"region\":\"ap-southeast-1\",\"stat\":\"Sum\",\"title\":\"Consumed Load Balancer Capacity Units\",\"yAxis\":{\"left\":{\"min\":0}}}},{\"type\":\"metric\",\"x\":0,\"y\":6,\"width\":12,\"height\":6,\"properties\":{\"period\":60,\"metrics\":[[\"AWS/ApplicationELB\",\"UnHealthyHostCount\",\"TargetGroup\",\"targetgroup/ecs-frontend-tg/d9f5d8e3c271bce4\",\"LoadBalancer\",\"app/ecs-frontend-lb/bff2fbb9cac1396c\",{\"label\":\"ecs-frontend-tg\"}]],\"region\":\"ap-southeast-1\",\"stat\":\"Maximum\",\"title\":\"Unhealthy Hosts (Maximum)\",\"yAxis\":{\"left\":{\"min\":0}}}},{\"type\":\"metric\",\"x\":12,\"y\":6,\"width\":12,\"height\":6,\"properties\":{\"period\":60,\"metrics\":[[\"AWS/ApplicationELB\",\"HealthyHostCount\",\"TargetGroup\",\"targetgroup/ecs-frontend-tg/d9f5d8e3c271bce4\",\"LoadBalancer\",\"app/ecs-frontend-lb/bff2fbb9cac1396c\",{\"label\":\"ecs-frontend-tg\"}]],\"region\":\"ap-southeast-1\",\"stat\":\"Minimum\",\"title\":\"Healthy Hosts (Minimum)\",\"yAxis\":{\"left\":{\"min\":0}}}},{\"type\":\"metric\",\"x\":0,\"y\":18,\"width\":12,\"height\":6,\"properties\":{\"period\":60,\"metrics\":[[\"AWS/ApplicationELB\",\"UnHealthyHostCount\",\"TargetGroup\",\"targetgroup/ecs-frontend-tg/d9f5d8e3c271bce4\",\"LoadBalancer\",\"app/ecs-frontend-lb/bff2fbb9cac1396c\",{\"label\":\"ecs-frontend-tg\"}]],\"region\":\"ap-southeast-1\",\"stat\":\"Average\",\"title\":\"Unhealthy Hosts (Average)\",\"yAxis\":{\"left\":{\"min\":0}}}},{\"type\":\"metric\",\"x\":12,\"y\":18,\"width\":12,\"height\":6,\"properties\":{\"period\":60,\"metrics\":[[\"AWS/ApplicationELB\",\"HealthyHostCount\",\"TargetGroup\",\"targetgroup/ecs-frontend-tg/d9f5d8e3c271bce4\",\"LoadBalancer\",\"app/ecs-frontend-lb/bff2fbb9cac1396c\",{\"label\":\"ecs-frontend-tg\"}]],\"region\":\"ap-southeast-1\",\"stat\":\"Average\",\"title\":\"Healthy Hosts (Average)\",\"yAxis\":{\"left\":{\"min\":0}}}},{\"type\":\"metric\",\"x\":0,\"y\":30,\"width\":12,\"height\":6,\"properties\":{\"period\":60,\"metrics\":[[\"AWS/ApplicationELB\",\"TargetResponseTime\",\"TargetGroup\",\"targetgroup/ecs-frontend-tg/d9f5d8e3c271bce4\",\"LoadBalancer\",\"app/ecs-frontend-lb/bff2fbb9cac1396c\",{\"label\":\"ecs-frontend-tg\"}]],\"region\":\"ap-southeast-1\",\"stat\":\"Average\",\"title\":\"Target Response Time\",\"yAxis\":{\"left\":{\"min\":0}}}},{\"type\":\"metric\",\"x\":12,\"y\":30,\"width\":12,\"height\":6,\"properties\":{\"period\":60,\"metrics\":[[\"AWS/ApplicationELB\",\"RequestCount\",\"TargetGroup\",\"targetgroup/ecs-frontend-tg/d9f5d8e3c271bce4\",\"LoadBalancer\",\"app/ecs-frontend-lb/bff2fbb9cac1396c\",{\"label\":\"ecs-frontend-tg\"}]],\"region\":\"ap-southeast-1\",\"stat\":\"Sum\",\"title\":\"Requests\",\"yAxis\":{\"left\":{\"min\":0}}}},{\"type\":\"metric\",\"x\":12,\"y\":42,\"width\":12,\"height\":6,\"properties\":{\"period\":60,\"metrics\":[[\"AWS/ApplicationELB\",\"HTTPCode_Target_4XX_Count\",\"TargetGroup\",\"targetgroup/ecs-frontend-tg/d9f5d8e3c271bce4\",\"LoadBalancer\",\"app/ecs-frontend-lb/bff2fbb9cac1396c\",{\"label\":\"ecs-frontend-tg\"}]],\"region\":\"ap-southeast-1\",\"stat\":\"Sum\",\"title\":\"Target 4XXs\",\"yAxis\":{\"left\":{\"min\":0}}}},{\"type\":\"metric\",\"x\":12,\"y\":48,\"width\":12,\"height\":6,\"properties\":{\"period\":60,\"metrics\":[[\"AWS/ApplicationELB\",\"HTTPCode_Target_2XX_Count\",\"TargetGroup\",\"targetgroup/ecs-frontend-tg/d9f5d8e3c271bce4\",\"LoadBalancer\",\"app/ecs-frontend-lb/bff2fbb9cac1396c\",{\"label\":\"ecs-frontend-tg\"}]],\"region\":\"ap-southeast-1\",\"stat\":\"Sum\",\"title\":\"Target 2XXs\",\"yAxis\":{\"left\":{\"min\":0}}}},{\"type\":\"metric\",\"x\":0,\"y\":48,\"width\":12,\"height\":6,\"properties\":{\"period\":60,\"metrics\":[[\"AWS/ApplicationELB\",\"RequestCountPerTarget\",\"TargetGroup\",\"targetgroup/ecs-frontend-tg/d9f5d8e3c271bce4\",\"LoadBalancer\",\"app/ecs-frontend-lb/bff2fbb9cac1396c\",{\"label\":\"ecs-frontend-tg\"}]],\"region\":\"ap-southeast-1\",\"stat\":\"Sum\",\"title\":\"Request Count Per Target\",\"yAxis\":{\"left\":{\"min\":0}}}}]}"
  dashboard_name = "LoadTesting"
}
