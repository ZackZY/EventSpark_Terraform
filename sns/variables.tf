data "terraform_remote_state" "sns" {
  backend = "local"
}

data "terraform_remote_state" "sqs" {
  backend = "local"
}
