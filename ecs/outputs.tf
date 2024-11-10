output "aws_ecs_cluster_tfer--api_backend_id" {
  value = "${aws_ecs_cluster.tfer--api_backend.id}"
}

output "aws_ecs_cluster_tfer--web_frontend_id" {
  value = "${aws_ecs_cluster.tfer--web_frontend.id}"
}

output "aws_ecs_service_tfer--api_backend_backend_main_id" {
  value = "${aws_ecs_service.tfer--api_backend_backend_main.id}"
}

output "aws_ecs_service_tfer--web_frontend_frontend_main_id" {
  value = "${aws_ecs_service.tfer--web_frontend_frontend_main.id}"
}

output "aws_ecs_task_definition_tfer--task-definition-002F-api_task_id" {
  value = "${aws_ecs_task_definition.tfer--task-definition-002F-api_task.id}"
}

output "aws_ecs_task_definition_tfer--task-definition-002F-frontend_id" {
  value = "${aws_ecs_task_definition.tfer--task-definition-002F-frontend.id}"
}
