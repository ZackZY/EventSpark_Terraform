resource "aws_s3_bucket_policy" "tfer--eventspark-microservice-s-serverlessdeploymentbuck-muoszzwmfrtx" {
  bucket = "eventspark-microservice-s-serverlessdeploymentbuck-muoszzwmfrtx"
  policy = "{\"Statement\":[{\"Action\":\"s3:*\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":\"false\"}},\"Effect\":\"Deny\",\"Principal\":\"*\",\"Resource\":[\"arn:aws:s3:::eventspark-microservice-s-serverlessdeploymentbuck-muoszzwmfrtx/*\",\"arn:aws:s3:::eventspark-microservice-s-serverlessdeploymentbuck-muoszzwmfrtx\"]}],\"Version\":\"2008-10-17\"}"
}

resource "aws_s3_bucket_policy" "tfer--eventsparkqr" {
  bucket = "eventsparkqr"
  policy = "{\"Statement\":[{\"Action\":\"s3:GetObject\",\"Effect\":\"Allow\",\"Principal\":\"*\",\"Resource\":\"arn:aws:s3:::eventsparkqr/*\",\"Sid\":\"PublicReadGetObject\"},{\"Action\":\"s3:PutObject\",\"Effect\":\"Allow\",\"Principal\":\"*\",\"Resource\":\"arn:aws:s3:::eventsparkqr/*\",\"Sid\":\"AllowPutObject\"}],\"Version\":\"2012-10-17\"}"
}
