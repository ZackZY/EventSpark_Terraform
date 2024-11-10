resource "aws_route_table" "tfer--rtb-0a7607e7f8e7093f6" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-06b8add132e56b95e"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0d14a27454a1907b9_id}"
}
