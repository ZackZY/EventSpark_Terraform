resource "aws_ecs_task_definition" "tfer--task-definition-002F-api_task" {
  container_definitions    = "[{\"environment\":[],\"essential\":true,\"image\":\"public.ecr.aws/i5e8y5s3/backend:35a470329f2b75df57b0cff4b7ce27e5660b4689\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-create-group\":\"true\",\"max-buffer-size\":\"25m\",\"awslogs-region\":\"ap-southeast-1\",\"awslogs-stream-prefix\":\"ecs\",\"awslogs-group\":\"/ecs/api_task\",\"mode\":\"non-blocking\"}},\"mountPoints\":[],\"name\":\"backend\",\"portMappings\":[{\"appProtocol\":\"http\",\"containerPort\":3001,\"hostPort\":3001,\"name\":\"backend-3001-tcp\",\"protocol\":\"tcp\"}],\"systemControls\":[],\"volumesFrom\":[]}]"
  cpu                      = "512"
  execution_role_arn       = "arn:aws:iam::381491878469:role/ecsTaskExecutionRole"
  family                   = "api_task"
  memory                   = "1024"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }

  task_role_arn = "arn:aws:iam::381491878469:role/ecsTaskExecutionRole"
  track_latest  = "false"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-frontend" {
  container_definitions    = "[{\"environment\":[],\"essential\":true,\"image\":\"public.ecr.aws/i5e8y5s3/frontend:4f8d5224f35d92e86548b04d3be0ef62a65f3123\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"mode\":\"non-blocking\",\"awslogs-create-group\":\"true\",\"max-buffer-size\":\"25m\",\"awslogs-region\":\"ap-southeast-1\",\"awslogs-stream-prefix\":\"ecs\",\"awslogs-group\":\"/ecs/frontend\"}},\"mountPoints\":[],\"name\":\"frontend\",\"portMappings\":[{\"appProtocol\":\"http\",\"containerPort\":3000,\"hostPort\":3000,\"name\":\"3000\",\"protocol\":\"tcp\"}],\"systemControls\":[],\"volumesFrom\":[]}]"
  cpu                      = "512"
  execution_role_arn       = "arn:aws:iam::381491878469:role/ecsTaskExecutionRole"
  family                   = "frontend"
  memory                   = "1024"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }

  track_latest = "false"
}
