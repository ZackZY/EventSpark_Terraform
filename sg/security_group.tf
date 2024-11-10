resource "aws_security_group" "tfer--DB_internet_sg-060de1b7d03e054e8" {
  description = "Allows DB to be accessible via internet"

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name   = "DB_internet"
  vpc_id = "vpc-0d14a27454a1907b9"
}

resource "aws_security_group" "tfer--EventSpark-Backend_sg-0d94df4b657c8b37b" {
  description = "Allow Api Access"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.0.0.0/16"]
    description = "Allow Health Checks"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  name   = "EventSpark-Backend"
  vpc_id = "vpc-0d14a27454a1907b9"
}

resource "aws_security_group" "tfer--default_sg-0778950b360144f95" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name   = "default"
  vpc_id = "vpc-0d14a27454a1907b9"
}

resource "aws_security_group" "tfer--ecs-api-entry-sg_sg-0af41f9727ce25a31" {
  description = "EventSpark api entry"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port       = "3001"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ecs-api-sg_sg-05e3805b32851ecaf_id}"]
    self            = "false"
    to_port         = "3001"
  }

  name   = "ecs-api-entry-sg"
  vpc_id = "vpc-0d14a27454a1907b9"
}

resource "aws_security_group" "tfer--ecs-api-sg_sg-05e3805b32851ecaf" {
  description = "Security Group for EventSpark backend API"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name   = "ecs-api-sg"
  vpc_id = "vpc-0d14a27454a1907b9"
}

resource "aws_security_group" "tfer--ecs-web-entry-sg_sg-0845271e14b6308b3" {
  description = "Security Group for public access"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port       = "3000"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ecs-web-sg_sg-038cfef2c5f97a66f_id}"]
    self            = "false"
    to_port         = "3000"
  }

  name   = "ecs-web-entry-sg"
  vpc_id = "vpc-0d14a27454a1907b9"
}

resource "aws_security_group" "tfer--ecs-web-sg_sg-038cfef2c5f97a66f" {
  description = "Security Group for ECS"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name   = "ecs-web-sg"
  vpc_id = "vpc-0d14a27454a1907b9"
}

resource "aws_security_group" "tfer--lambda_entrance_sg-0b10a4ed0054ac5d1" {
  description = "For AWS Lambda"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name   = "lambda_entrance"
  vpc_id = "vpc-0d14a27454a1907b9"
}

resource "aws_security_group" "tfer--launch-wizard-1_sg-0a644cffa6173f516" {
  description = "launch-wizard-1 created 2024-11-10T07:56:03.480Z"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "launch-wizard-1"
  vpc_id = "vpc-0d14a27454a1907b9"
}
