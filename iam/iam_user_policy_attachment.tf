resource "aws_iam_user_policy_attachment" "tfer--backend_user_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  user       = "backend_user"
}

resource "aws_iam_user_policy_attachment" "tfer--backend_user_AmazonSESFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSESFullAccess"
  user       = "backend_user"
}

resource "aws_iam_user_policy_attachment" "tfer--ecr_ecs_user_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  user       = "ecr_ecs_user"
}

resource "aws_iam_user_policy_attachment" "tfer--ecr_ecs_user_AmazonSESFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSESFullAccess"
  user       = "ecr_ecs_user"
}

resource "aws_iam_user_policy_attachment" "tfer--iac_terraform_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = "iac_terraform"
}

resource "aws_iam_user_policy_attachment" "tfer--jeth_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = "jeth"
}

resource "aws_iam_user_policy_attachment" "tfer--liran_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = "liran"
}

resource "aws_iam_user_policy_attachment" "tfer--randy_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = "randy"
}

resource "aws_iam_user_policy_attachment" "tfer--serverless_user_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = "serverless_user"
}

resource "aws_iam_user_policy_attachment" "tfer--ses_user_AmazonSESFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSESFullAccess"
  user       = "ses_user"
}

resource "aws_iam_user_policy_attachment" "tfer--yeeying_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = "yeeying"
}
