# variables.tf

variable "aws_region" {
  description = "The AWS region"
  type        = string
}

# EKS

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "cluster_role_arn" {
  description = "The ARN of the IAM role for the EKS cluster"
  type        = string
}

variable "cluster_version" {
  description = "The version of the EKS cluster"
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs for the EKS cluster"
  type        = list(string)
}

variable "security_group_ids" {
  description = "A list of security group IDs for the EKS cluster"
  type        = list(string)
}

# SNS

variable "sns_topic_name" {
  description = "The name of the SNS topic"
  type        = string
}

# SQS

variable "sqs_queue_name" {
  description = "The name of the SQS queue"
  type        = string
}

# DynamoDB

variable "dynamodb_table_name" {
  description = "The name of the DynamoDB table"
  type        = string
}

variable "dynamodb_billing_mode" {
  description = "The billing mode for DynamoDB (PROVISIONED, PAY_PER_REQUEST)"
  type        = string
  default     = "PAY_PER_REQUEST"
}


# Aurora


variable "aurora_cluster_identifier" {
  description = "The identifier for the Aurora cluster"
  type        = string
}

variable "aurora_engine" {
  description = "The database engine for the Aurora cluster"
  type        = string
  default     = "aurora-postgresql"
}

variable "aurora_engine_version" {
  description = "The engine version for the Aurora cluster"
  type        = string
  default     = "10.12"
}

variable "aurora_database_name" {
  description = "The name of the Aurora database"
  type        = string
}

variable "aurora_master_username" {
  description = "The master username for the Aurora cluster"
  type        = string
}

variable "aurora_master_password" {
  description = "The master password for the Aurora cluster"
  type        = string
}

variable "aurora_port" {
  description = "The port number for the Aurora cluster"
  type        = number
  default     = 5432
}

variable "aurora_security_group_ids" {
  description = "A list of security group IDs for the Aurora cluster"
  type        = list(string)
}

variable "aurora_subnet_group_name" {
  description = "The name of the subnet group for the Aurora cluster"
  type        = string
}


# Lambda

variable "lambda_function_name" {
  description = "The name of the Lambda function"
  type        = string
}

variable "lambda_runtime" {
  description = "The runtime for the Lambda function"
  type        = string
  default     = "nodejs14.x"
}

variable "lambda_handler" {
  description = "The handler for the Lambda function"
  type        = string
}

variable "lambda_role_arn" {
  description = "The ARN of the IAM role for the Lambda function"
  type        = string
}

variable "lambda_timeout" {
  description = "The timeout for the Lambda function (in seconds)"
  type        = number
  default     = 10
}

# Step Functions

variable "step_functions_state_machine_name" {
  description = "The name of the Step Functions state machine"
  type        = string
}

variable "step_functions_role_arn" {
  description = "The ARN of the IAM role for the Step Functions state machine"
  type        = string
}

# ECS

variable "ecs_cluster_name" {
  description = "The name of the ECS cluster"
  type        = string
}

# EC2


variable "ec2_ami" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "ec2_instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

# Fargate


variable "fargate_service_name" {
  description = "The name of the Fargate service"
  type        = string
}

variable "fargate_task_definition_arn" {
  description = "The ARN of the task definition for the Fargate service"
  type        = string
}

variable "fargate_desired_count" {
  description = "The desired count for the Fargate service"
  type        = number
  default     = 1
}


# RDS Postgresql


variable "rds_postgresql_identifier" {
  description = "The identifier for the RDS PostgreSQL database"
  type        = string
}

variable "rds_postgresql_engine_version" {
  description = "The engine version for the RDS PostgreSQL database"
  type        = string
  default     = "12.7"
}

variable "rds_postgresql_instance_class" {
  description = "The instance class for the RDS PostgreSQL database"
  type        = string
  default     = "db.t3.micro"
}

variable "rds_postgresql_username" {
  description = "The master username for the RDS PostgreSQL database"
  type        = string
}

variable "rds_postgresql_password" {
  description = "The master password for the RDS PostgreSQL database"
  type        = string
}

variable "rds_postgresql_allocated_storage" {
  description = "The allocated storage for the RDS PostgreSQL database (in GB)"
  type        = number
  default     = 20
}

variable "rds_postgresql_storage_type" {
  description = "The storage type for the RDS PostgreSQL database"
  type        = string
  default     = "gp2"
}

variable "rds_postgresql_multi_az" {
  description = "Enable multi-AZ deployment for the RDS PostgreSQL database"
  type        = bool
  default     = false
}

variable "rds_postgresql_publicly_accessible" {
  description = "Enable public accessibility for the RDS PostgreSQL database"
  type        = bool
  default     = false
}

variable "rds_postgresql_security_group_ids" {
  description = "A list of security group IDs for the RDS PostgreSQL database"
  type        = list(string)
}

variable "rds_postgresql_subnet_group_name" {
  description = "The name of the subnet group for the RDS PostgreSQL database"
  type        = string
}

variable "rds_postgresql_parameter_group_name" {
  description = "The name of the parameter group for the RDS PostgreSQL database"
  type        = string
}

variable "rds_postgresql_backup_retention_period" {
  description = "The backup retention period for the RDS PostgreSQL database (in days)"
  type        = number
  default     = 7
}

variable "rds_postgresql_skip_final_snapshot" {
  description = "Skip the final snapshot for the RDS PostgreSQL database"
  type        = bool
  default     = true
}

variable "rds_postgresql_deletion_protection" {
  description = "Enable deletion protection for the RDS PostgreSQL database"
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to assign to AWS resources"
  type        = map(string)
  default     = {}
}

#s3 variables

variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "s3_prevent_destroy" {
  description = "Prevent the S3 bucket from being destroyed"
  type        = bool
  default     = false
}

variable "s3_versioning_enabled" {
  description = "Enable versioning for the S3 bucket"
  type        = bool
  default     = false
}

variable "s3_logging_bucket" {
  description = "The S3 bucket where access logs are stored"
  type        = string
}

variable "s3_logging_prefix" {
  description = "The prefix to be used for access logs"
  type        = string
  default     = ""
}

variable "s3_server_side_encryption_algorithm" {
  description = "The server-side encryption algorithm for the S3 bucket"
  type        = string
  default     = "AES256"
}

variable "s3_tags" {
  description = "A map of tags to assign to the S3 bucket"
  type        = map(string)
  default     = {}
}

