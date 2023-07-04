# Create an RDS PostgreSQL database
resource "aws_db_instance" "rds_postgresql" {
  identifier               = var.rds_postgresql_identifier
  engine                   = "postgres"
  engine_version           = var.rds_postgresql_engine_version
  instance_class           = var.rds_postgresql_instance_class
  username                 = var.rds_postgresql_username
  password                 = var.rds_postgresql_password
  allocated_storage        = var.rds_postgresql_allocated_storage
  storage_type             = var.rds_postgresql_storage_type
  multi_az                 = var.rds_postgresql_multi_az
  publicly_accessible      = var.rds_postgresql_publicly_accessible
  vpc_security_group_ids   = var.rds_postgresql_security_group_ids
  db_subnet_group_name     = var.rds_postgresql_subnet_group_name
  parameter_group_name     = var.rds_postgresql_parameter_group_name
  backup_retention_period  = var.rds_postgresql_backup_retention_period
  skip_final_snapshot      = var.rds_postgresql_skip_final_snapshot
  deletion_protection      = var.rds_postgresql_deletion_protection

  tags = var.tags
}