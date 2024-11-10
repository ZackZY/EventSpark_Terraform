resource "aws_s3_bucket" "tfer--eventspark-microservice-s-serverlessdeploymentbuck-muoszzwmfrtx" {
  bucket        = "eventspark-microservice-s-serverlessdeploymentbuck-muoszzwmfrtx"
  force_destroy = "false"

  grant {
    id          = "fc0f41c2287716507938cf5684155074b4ceb03d80e2d87506c4c5b0445f50bf"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:*",
      "Condition": {
        "Bool": {
          "aws:SecureTransport": "false"
        }
      },
      "Effect": "Deny",
      "Principal": "*",
      "Resource": [
        "arn:aws:s3:::eventspark-microservice-s-serverlessdeploymentbuck-muoszzwmfrtx/*",
        "arn:aws:s3:::eventspark-microservice-s-serverlessdeploymentbuck-muoszzwmfrtx"
      ]
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  tags = {
    STAGE = "stg"
  }

  tags_all = {
    STAGE = "stg"
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--eventsparkqr" {
  bucket        = "eventsparkqr"
  force_destroy = "false"

  grant {
    id          = "fc0f41c2287716507938cf5684155074b4ceb03d80e2d87506c4c5b0445f50bf"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Principal": "*",
      "Resource": "arn:aws:s3:::eventsparkqr/*",
      "Sid": "PublicReadGetObject"
    },
    {
      "Action": "s3:PutObject",
      "Effect": "Allow",
      "Principal": "*",
      "Resource": "arn:aws:s3:::eventsparkqr/*",
      "Sid": "AllowPutObject"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "true"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}
