resource "aws_iam_user" "tfer--AIDAVRUVQDJC5JRB6JUPV" {
  force_destroy = "false"
  name          = "yeeying"
  path          = "/"
}

resource "aws_iam_user" "tfer--AIDAVRUVQDJC5W46CXSCW" {
  force_destroy = "false"
  name          = "iac_terraform"
  path          = "/"

  tags = {
    AKIAVRUVQDJC33XCQZXL = "ec2"
    AKIAVRUVQDJCRBV43LHI = "terraform"
    AKIAVRUVQDJCSVCD63TA = "terraform"
  }

  tags_all = {
    AKIAVRUVQDJC33XCQZXL = "ec2"
    AKIAVRUVQDJCRBV43LHI = "terraform"
    AKIAVRUVQDJCSVCD63TA = "terraform"
  }
}

resource "aws_iam_user" "tfer--AIDAVRUVQDJC7DOTAIOJA" {
  force_destroy = "false"
  name          = "ecr_ecs_user"
  path          = "/"

  tags = {
    AKIAVRUVQDJC3W7547LH = "ECS_Pipeline"
    AKIAVRUVQDJCSJ2ZBD55 = "ECS_Pipeline"
    AKIAVRUVQDJCT7RENPPX = "ECS_backend_pipeline"
    AKIAVRUVQDJCX5JJJ3WX = "ECS"
  }

  tags_all = {
    AKIAVRUVQDJC3W7547LH = "ECS_Pipeline"
    AKIAVRUVQDJCSJ2ZBD55 = "ECS_Pipeline"
    AKIAVRUVQDJCT7RENPPX = "ECS_backend_pipeline"
    AKIAVRUVQDJCX5JJJ3WX = "ECS"
  }
}

resource "aws_iam_user" "tfer--AIDAVRUVQDJCR42PZLAXS" {
  force_destroy = "false"
  name          = "jeth"
  path          = "/"
}

resource "aws_iam_user" "tfer--AIDAVRUVQDJCRD2BWE3LR" {
  force_destroy = "false"
  name          = "ses_user"
  path          = "/"

  tags = {
    AKIAVRUVQDJCRX4RP4TE = "SES"
  }

  tags_all = {
    AKIAVRUVQDJCRX4RP4TE = "SES"
  }
}

resource "aws_iam_user" "tfer--AIDAVRUVQDJCWM65QJFPA" {
  force_destroy = "false"
  name          = "backend_user"
  path          = "/"

  tags = {
    AKIAVRUVQDJCSQUOBZKL = "backend_pipeline"
  }

  tags_all = {
    AKIAVRUVQDJCSQUOBZKL = "backend_pipeline"
  }
}

resource "aws_iam_user" "tfer--AIDAVRUVQDJCYFC4YMIS6" {
  force_destroy = "false"
  name          = "serverless_user"
  path          = "/"

  tags = {
    AKIAVRUVQDJCQA75E5HJ = "serverless"
  }

  tags_all = {
    AKIAVRUVQDJCQA75E5HJ = "serverless"
  }
}

resource "aws_iam_user" "tfer--AIDAVRUVQDJCYKP5RSPEV" {
  force_destroy = "false"
  name          = "liran"
  path          = "/"
}

resource "aws_iam_user" "tfer--AIDAVRUVQDJCZTRCHF3SH" {
  force_destroy = "false"
  name          = "randy"
  path          = "/"

  tags = {
    AKIAVRUVQDJC3TQHCKZR = "terraform"
  }

  tags_all = {
    AKIAVRUVQDJC3TQHCKZR = "terraform"
  }
}
