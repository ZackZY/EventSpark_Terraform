resource "aws_ecs_service" "tfer--api_backend_backend_main" {

  capacity_provider_strategy {
    base              = "0"
    capacity_provider = "FARGATE"
    weight            = "1"
  }

  cluster = "api_backend"

  deployment_circuit_breaker {
    enable   = "true"
    rollback = "true"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  desired_count                      = "1"
  enable_ecs_managed_tags            = "false"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "0"

  load_balancer {
    container_name   = "backend"
    container_port   = "3001"
    target_group_arn = "arn:aws:elasticloadbalancing:ap-southeast-1:381491878469:targetgroup/ecs-backend-tg/02cc66f2b51595ce"
  }

  name = "backend_main"

  network_configuration {
    assign_public_ip = "true"
    security_groups  = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ecs-api-entry-sg_sg-0af41f9727ce25a31_id}"]
    subnets          = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-068f17dc224e47b3d_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-087ee7407ca83fcac_id}"]
  }

  platform_version    = "LATEST"
  scheduling_strategy = "REPLICA"
  task_definition     = "arn:aws:ecs:ap-southeast-1:381491878469:task-definition/api_task:42"
}

resource "aws_ecs_service" "tfer--web_frontend_frontend_main" {
  capacity_provider_strategy {
    base              = "0"
    capacity_provider = "FARGATE"
    weight            = "1"
  }

  cluster = "web_frontend"

  deployment_circuit_breaker {
    enable   = "true"
    rollback = "true"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  desired_count                      = "1"
  enable_ecs_managed_tags            = "false"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "30"

  load_balancer {
    container_name   = "frontend"
    container_port   = "3000"
    target_group_arn = "arn:aws:elasticloadbalancing:ap-southeast-1:381491878469:targetgroup/ecs-frontend-tg/d9f5d8e3c271bce4"
  }

  name = "frontend_main"

  network_configuration {
    assign_public_ip = "true"
    security_groups  = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ecs-web-entry-sg_sg-0845271e14b6308b3_id}"]
    subnets          = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-068f17dc224e47b3d_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-087ee7407ca83fcac_id}"]
  }

  platform_version    = "LATEST"
  scheduling_strategy = "REPLICA"
  task_definition     = "arn:aws:ecs:ap-southeast-1:381491878469:task-definition/frontend:60"
}
