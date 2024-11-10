resource "aws_ecs_cluster" "tfer--api_backend" {
  name = "api_backend"

  service_connect_defaults {
    namespace = "arn:aws:servicediscovery:ap-southeast-1:381491878469:namespace/ns-izvmeeklivt6jxmu"
  }

  setting {
    name  = "containerInsights"
    value = "disabled"
  }
}

resource "aws_ecs_cluster" "tfer--web_frontend" {
  name = "web_frontend"

  service_connect_defaults {
    namespace = "arn:aws:servicediscovery:ap-southeast-1:381491878469:namespace/ns-4i6bfq35xhuyv2ux"
  }

  setting {
    name  = "containerInsights"
    value = "disabled"
  }
}
