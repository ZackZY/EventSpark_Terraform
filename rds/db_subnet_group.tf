resource "aws_db_subnet_group" "tfer--default-vpc-0d14a27454a1907b9" {
  description = "Created from the RDS Management Console"
  name        = "default-vpc-0d14a27454a1907b9"
  subnet_ids  = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-068f17dc224e47b3d_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-087ee7407ca83fcac_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0fc1be298e42b436d_id}"]
}

resource "aws_db_subnet_group" "tfer--default-vpc-0eee787b3a925dffa" {
  description = "Created from the RDS Management Console"
  name        = "default-vpc-0eee787b3a925dffa"
  subnet_ids  = ["subnet-0709d94957b90bda4", "subnet-08dc0888c9ecb5010", "subnet-0e9c4c42f91d85623"]
}
