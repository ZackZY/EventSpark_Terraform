resource "aws_launch_template" "tfer--ecs_api_instance_template" {
  default_version         = "1"
  description             = "EventSpark API"
  disable_api_stop        = "false"
  disable_api_termination = "false"
  image_id                = "ami-08b2a7e4ea6cbcaff"
  instance_type           = "t2.micro"
  key_name                = "ec2_keyPair"
  name                    = "ecs_api_instance_template"
  user_data               = "IyEvYmluL2Jhc2gKZWNobyBFQ1NfQ0xVU1RFUj1hcGlfYmFja2VuZCA+PiAvZXRjL2Vjcy9lY3MuY29uZmlnOw=="
  vpc_security_group_ids  = ["sg-0af41f9727ce25a31"]
}

resource "aws_launch_template" "tfer--ecs_instance_template" {
  default_version         = "1"
  description             = "EC2 template for ECS services"
  disable_api_stop        = "false"
  disable_api_termination = "false"

  iam_instance_profile {
    arn = "arn:aws:iam::381491878469:instance-profile/ecsInstanceRole"
  }

  image_id               = "ami-08b2a7e4ea6cbcaff"
  instance_type          = "t2.micro"
  key_name               = "ec2_keyPair"
  name                   = "ecs_instance_template"
  user_data              = "IyEvYmluL2Jhc2gKZWNobyBFQ1NfQ0xVU1RFUj13ZWJfZnJvbnRlbmQgPj4gL2V0Yy9lY3MvZWNzLmNvbmZpZzs="
  vpc_security_group_ids = ["sg-0845271e14b6308b3"]
}
