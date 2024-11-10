resource "aws_network_interface" "tfer--eni-0340f3cdd5416a789" {
  description        = "AWS Lambda VPC ENI-eventspark-microservice-stg-verify-1be1c686-f365-429b-8aa3-19c234a81233"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.19.29"
  private_ip_list    = ["172.31.19.29"]
  private_ips        = ["172.31.19.29"]
  private_ips_count  = "0"
  security_groups    = ["sg-0b10a4ed0054ac5d1"]
  source_dest_check  = "true"
  subnet_id          = "subnet-068f17dc224e47b3d"
}

resource "aws_network_interface" "tfer--eni-03f3796f311407874" {
  description        = "ENI managed by APIGateway"
  interface_type     = "api_gateway_managed"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.38.144"
  private_ip_list    = ["172.31.38.144"]
  private_ips        = ["172.31.38.144"]
  private_ips_count  = "0"
  security_groups    = ["sg-05e3805b32851ecaf"]
  source_dest_check  = "true"
  subnet_id          = "subnet-087ee7407ca83fcac"

  tags = {
    Owner     = "ops.apigateway.amazonaws.com"
    VpcLinkId = "lc3let"
  }

  tags_all = {
    Owner     = "ops.apigateway.amazonaws.com"
    VpcLinkId = "lc3let"
  }
}

resource "aws_network_interface" "tfer--eni-04b2e0ae80e130b88" {
  description        = "ELB app/ecs-frontend-lb/bff2fbb9cac1396c"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.25.6"
  private_ip_list    = ["172.31.25.6"]
  private_ips        = ["172.31.25.6"]
  private_ips_count  = "0"
  security_groups    = ["sg-038cfef2c5f97a66f"]
  source_dest_check  = "true"
  subnet_id          = "subnet-068f17dc224e47b3d"
}

resource "aws_network_interface" "tfer--eni-0517c2ff1dee508d1" {
  description        = "AWS Lambda VPC ENI-eventspark-microservice-stg-verify-357fa9ee-f993-4a17-9937-59a1667ead0d"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.43.109"
  private_ip_list    = ["172.31.43.109"]
  private_ips        = ["172.31.43.109"]
  private_ips_count  = "0"
  security_groups    = ["sg-0b10a4ed0054ac5d1"]
  source_dest_check  = "true"
  subnet_id          = "subnet-087ee7407ca83fcac"
}

resource "aws_network_interface" "tfer--eni-05fd515d8e9c58665" {
  description        = "ENI managed by APIGateway"
  interface_type     = "api_gateway_managed"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.19.100"
  private_ip_list    = ["172.31.19.100"]
  private_ips        = ["172.31.19.100"]
  private_ips_count  = "0"
  security_groups    = ["sg-05e3805b32851ecaf"]
  source_dest_check  = "true"
  subnet_id          = "subnet-068f17dc224e47b3d"

  tags = {
    Owner     = "ops.apigateway.amazonaws.com"
    VpcLinkId = "lc3let"
  }

  tags_all = {
    Owner     = "ops.apigateway.amazonaws.com"
    VpcLinkId = "lc3let"
  }
}

resource "aws_network_interface" "tfer--eni-0771ca03be857829f" {
  description        = "arn:aws:ecs:ap-southeast-1:381491878469:attachment/74d3b1a8-01b2-454c-a3eb-5dd9c30fa357"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.37.69"
  private_ip_list    = ["172.31.37.69"]
  private_ips        = ["172.31.37.69"]
  private_ips_count  = "0"
  security_groups    = ["sg-0af41f9727ce25a31"]
  source_dest_check  = "true"
  subnet_id          = "subnet-087ee7407ca83fcac"
}

resource "aws_network_interface" "tfer--eni-0840c14797ba351c1" {
  description        = "arn:aws:ecs:ap-southeast-1:381491878469:attachment/ab418b40-8205-42de-a3f1-8eb875462014"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.44.73"
  private_ip_list    = ["172.31.44.73"]
  private_ips        = ["172.31.44.73"]
  private_ips_count  = "0"
  security_groups    = ["sg-0845271e14b6308b3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-087ee7407ca83fcac"
}

resource "aws_network_interface" "tfer--eni-08e11321aa7e12e88" {
  description        = "ELB app/ecs-backend-lb/7371efdacc10e186"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.39.75"
  private_ip_list    = ["172.31.39.75"]
  private_ips        = ["172.31.39.75"]
  private_ips_count  = "0"
  security_groups    = ["sg-05e3805b32851ecaf"]
  source_dest_check  = "true"
  subnet_id          = "subnet-087ee7407ca83fcac"
}

resource "aws_network_interface" "tfer--eni-0a0f764e80368924a" {
  attachment {
    device_index = "0"
    instance     = "i-09b635cf6fa17b674"
  }

  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.16.94"
  private_ip_list    = ["172.31.16.94"]
  private_ips        = ["172.31.16.94"]
  private_ips_count  = "0"
  security_groups    = ["sg-0a644cffa6173f516"]
  source_dest_check  = "true"
  subnet_id          = "subnet-068f17dc224e47b3d"
}

resource "aws_network_interface" "tfer--eni-0b339b608ec42e608" {
  description        = "RDSNetworkInterface"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.2.119"
  private_ip_list    = ["172.31.2.119"]
  private_ips        = ["172.31.2.119"]
  private_ips_count  = "0"
  security_groups    = ["sg-060de1b7d03e054e8"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0fc1be298e42b436d"
}

resource "aws_network_interface" "tfer--eni-0c6ae7e3866593422" {
  description        = "ELB app/ecs-backend-lb/7371efdacc10e186"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.29.152"
  private_ip_list    = ["172.31.29.152"]
  private_ips        = ["172.31.29.152"]
  private_ips_count  = "0"
  security_groups    = ["sg-05e3805b32851ecaf"]
  source_dest_check  = "true"
  subnet_id          = "subnet-068f17dc224e47b3d"
}

resource "aws_network_interface" "tfer--eni-0d79e9cae81d74c60" {
  description        = "ELB app/ecs-frontend-lb/bff2fbb9cac1396c"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.32.45"
  private_ip_list    = ["172.31.32.45"]
  private_ips        = ["172.31.32.45"]
  private_ips_count  = "0"
  security_groups    = ["sg-038cfef2c5f97a66f"]
  source_dest_check  = "true"
  subnet_id          = "subnet-087ee7407ca83fcac"
}
