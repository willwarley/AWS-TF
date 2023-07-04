# Create an Aurora cluster
resource "aws_rds_cluster" "aurora_cluster" {
  cluster_identifier = var.aurora_cluster_identifier
  engine             = var.aurora_engine
  engine_version     = var.aurora_engine_version
  database_name      = var.aurora_database_name
  master_username    = var.aurora_master_username
  master_password    = var.aurora_master_password
  port               = var.aurora_port

  vpc_security_group_ids = var.aurora_security_group_ids
  db_subnet_group_name   = var.aurora_subnet_group_name

  tags = var.tags
}