resource "aws_iam_access_key" "tfer--AKIAVRUVQDJC33XCQZXL" {
  depends_on = ["aws_iam_user.tfer--AIDAVRUVQDJC5W46CXSCW"]
  status     = "Active"
  user       = "iac_terraform"
}

resource "aws_iam_access_key" "tfer--AKIAVRUVQDJC3TQHCKZR" {
  depends_on = ["aws_iam_user.tfer--AIDAVRUVQDJCZTRCHF3SH"]
  status     = "Active"
  user       = "randy"
}

resource "aws_iam_access_key" "tfer--AKIAVRUVQDJC3W7547LH" {
  depends_on = ["aws_iam_user.tfer--AIDAVRUVQDJC7DOTAIOJA"]
  status     = "Active"
  user       = "ecr_ecs_user"
}

resource "aws_iam_access_key" "tfer--AKIAVRUVQDJCQA75E5HJ" {
  depends_on = ["aws_iam_user.tfer--AIDAVRUVQDJCYFC4YMIS6"]
  status     = "Active"
  user       = "serverless_user"
}

resource "aws_iam_access_key" "tfer--AKIAVRUVQDJCRBV43LHI" {
  depends_on = ["aws_iam_user.tfer--AIDAVRUVQDJC5W46CXSCW"]
  status     = "Active"
  user       = "iac_terraform"
}

resource "aws_iam_access_key" "tfer--AKIAVRUVQDJCRX4RP4TE" {
  depends_on = ["aws_iam_user.tfer--AIDAVRUVQDJCRD2BWE3LR"]
  status     = "Active"
  user       = "ses_user"
}

resource "aws_iam_access_key" "tfer--AKIAVRUVQDJCSQUOBZKL" {
  depends_on = ["aws_iam_user.tfer--AIDAVRUVQDJCWM65QJFPA"]
  status     = "Active"
  user       = "backend_user"
}
