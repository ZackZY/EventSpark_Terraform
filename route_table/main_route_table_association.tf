resource "aws_main_route_table_association" "tfer--vpc-0d14a27454a1907b9" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-0a7607e7f8e7093f6_id}"
  vpc_id         = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0d14a27454a1907b9_id}"
}
