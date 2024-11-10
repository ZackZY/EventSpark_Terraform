data "terraform_remote_state" "route_table" {
  backend = "local"
}

data "terraform_remote_state" "subnet" {
  backend = "local"
}

data "terraform_remote_state" "vpc" {
  backend = "local"
}
