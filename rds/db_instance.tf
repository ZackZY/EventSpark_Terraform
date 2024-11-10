resource "aws_db_instance" "tfer--eventspark" {
  allocated_storage                     = "20"
  auto_minor_version_upgrade            = "true"
  availability_zone                     = "ap-southeast-1c"
  backup_retention_period               = "0"
  backup_target                         = "region"
  backup_window                         = "21:09-21:39"
  ca_cert_identifier                    = "rds-ca-rsa2048-g1"
  copy_tags_to_snapshot                 = "true"
  customer_owned_ip_enabled             = "false"
  db_subnet_group_name                  = "${aws_db_subnet_group.tfer--default-vpc-0d14a27454a1907b9.name}"
  dedicated_log_volume                  = "false"
  deletion_protection                   = "false"
  enabled_cloudwatch_logs_exports       = ["audit", "error", "general", "slowquery"]
  engine                                = "mysql"
  engine_lifecycle_support              = "open-source-rds-extended-support-disabled"
  engine_version                        = "8.0.39"
  iam_database_authentication_enabled   = "false"
  identifier                            = "eventspark"
  instance_class                        = "db.t3.micro"
  iops                                  = "0"
  kms_key_id                            = "arn:aws:kms:ap-southeast-1:381491878469:key/7f109f77-7839-4fb0-b3d5-52d0160a00bc"
  license_model                         = "general-public-license"
  maintenance_window                    = "fri:17:05-fri:17:35"
  max_allocated_storage                 = "0"
  monitoring_interval                   = "0"
  multi_az                              = "false"
  network_type                          = "IPV4"
  option_group_name                     = "default:mysql-8-0"
  parameter_group_name                  = "default.mysql8.0"
  performance_insights_enabled          = "false"
  performance_insights_retention_period = "0"
  port                                  = "3306"
  publicly_accessible                   = "true"
  storage_encrypted                     = "true"
  storage_throughput                    = "0"
  storage_type                          = "gp2"
  username                              = "root"
  vpc_security_group_ids                = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--DB_internet_sg-060de1b7d03e054e8_id}"]
}
