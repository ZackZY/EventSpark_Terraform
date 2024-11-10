data "terraform_remote_state" "alb" {
  backend = "local"
}

data "terraform_remote_state" "sg" {
  backend = "local"
}

data "terraform_remote_state" "subnet" {
  backend = "local"
}
