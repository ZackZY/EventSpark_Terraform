resource "aws_lb" "tfer--ecs-backend-lb" {
  client_keep_alive = "3600"

  desync_mitigation_mode                      = "defensive"
  drop_invalid_header_fields                  = "false"
  enable_cross_zone_load_balancing            = "true"
  enable_deletion_protection                  = "false"
  enable_http2                                = "true"
  enable_tls_version_and_cipher_suite_headers = "false"
  enable_waf_fail_open                        = "false"
  enable_xff_client_port                      = "false"
  idle_timeout                                = "60"
  internal                                    = "false"
  ip_address_type                             = "ipv4"
  load_balancer_type                          = "application"
  name                                        = "ecs-backend-lb"
  preserve_host_header                        = "false"
  security_groups                             = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ecs-api-sg_sg-05e3805b32851ecaf_id}"]

  subnet_mapping {
    subnet_id = "subnet-068f17dc224e47b3d"
  }

  subnet_mapping {
    subnet_id = "subnet-087ee7407ca83fcac"
  }

  subnets                    = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-068f17dc224e47b3d_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-087ee7407ca83fcac_id}"]
  xff_header_processing_mode = "append"
}

resource "aws_lb" "tfer--ecs-frontend-lb" {
  client_keep_alive = "3600"

  desync_mitigation_mode                      = "defensive"
  drop_invalid_header_fields                  = "false"
  enable_cross_zone_load_balancing            = "true"
  enable_deletion_protection                  = "false"
  enable_http2                                = "true"
  enable_tls_version_and_cipher_suite_headers = "false"
  enable_waf_fail_open                        = "false"
  enable_xff_client_port                      = "false"
  idle_timeout                                = "60"
  internal                                    = "false"
  ip_address_type                             = "ipv4"
  load_balancer_type                          = "application"
  name                                        = "ecs-frontend-lb"
  preserve_host_header                        = "false"
  security_groups                             = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ecs-web-sg_sg-038cfef2c5f97a66f_id}"]

  subnet_mapping {
    subnet_id = "subnet-068f17dc224e47b3d"
  }

  subnet_mapping {
    subnet_id = "subnet-087ee7407ca83fcac"
  }

  subnets                    = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-068f17dc224e47b3d_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-087ee7407ca83fcac_id}"]
  xff_header_processing_mode = "append"
}
