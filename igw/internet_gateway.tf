resource "aws_internet_gateway" "tfer--igw-06b8add132e56b95e" {
  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0d14a27454a1907b9_id}"
}
