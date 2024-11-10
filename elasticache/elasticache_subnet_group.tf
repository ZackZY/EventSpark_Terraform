resource "aws_elasticache_subnet_group" "tfer--sg-1728055214783" {
  description = "Created from RDS create flow"
  name        = "sg-1728055214783"
  subnet_ids  = ["subnet-0709d94957b90bda4", "subnet-08dc0888c9ecb5010", "subnet-0e9c4c42f91d85623"]
}
