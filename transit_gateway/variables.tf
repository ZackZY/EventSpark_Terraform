data "terraform_remote_state" "subnet" {
  backend = "local"
}

data "terraform_remote_state" "transit_gateway" {
  backend = "local"
}

data "terraform_remote_state" "vpc" {
  backend = "local"
}

data "terraform_remote_state" "vpn_connection" {
  backend = "local"
}
