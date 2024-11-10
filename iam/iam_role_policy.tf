resource "aws_iam_role_policy" "tfer--backend_pipeline_assume_role_backend_pipeline" {
  name = "backend_pipeline"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "rds:DescribeDBInstances",
        "sts:AssumeRole"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "backend_pipeline_assume_role"
}

resource "aws_iam_role_policy" "tfer--ecr_ecs_assume_role_DockerPipeline" {
  name = "DockerPipeline"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr-public:BatchCheckLayerAvailability",
        "ecr-public:CompleteLayerUpload",
        "ecr-public:InitiateLayerUpload",
        "ecr-public:PutImage",
        "ecr-public:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "AllowDockerPush"
    },
    {
      "Action": [
        "ecr-public:GetAuthorizationToken",
        "sts:GetServiceBearerToken",
        "sts:TagSession"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "PublicECRLogin"
    },
    {
      "Action": [
        "ecs:*",
        "ec2:*"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "ECSDeploy"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "ecr_ecs_assume_role"
}

resource "aws_iam_role_policy" "tfer--ecr_ecs_assume_role_GithubActionsPassRole" {
  name = "GithubActionsPassRole"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "iam:PassRole",
      "Condition": {
        "StringLike": {
          "iam:PassedToService": "ecs-tasks.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "PassRole"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "ecr_ecs_assume_role"
}

resource "aws_iam_role_policy" "tfer--ecr_ecs_assume_role_logs" {
  name = "logs"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:*",
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "ecr_ecs_assume_role"
}

resource "aws_iam_role_policy" "tfer--eventspark-microservice-stg-ap-southeast-1-lambdaRole_eventspark-microservice-stg-lambda" {
  name = "eventspark-microservice-stg-lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:CreateLogGroup",
        "logs:TagResource"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:ap-southeast-1:381491878469:log-group:/aws/lambda/eventspark-microservice-stg*:*"
      ]
    },
    {
      "Action": [
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:ap-southeast-1:381491878469:log-group:/aws/lambda/eventspark-microservice-stg*:*:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "eventspark-microservice-stg-ap-southeast-1-lambdaRole"
}
