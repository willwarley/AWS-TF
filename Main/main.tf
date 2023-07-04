# main.tf

module "s3" {
  source = "./modules/s3"

  bucket_name                   = var.s3_bucket_name
  prevent_destroy               = var.s3_prevent_destroy
  versioning_enabled            = var.s3_versioning_enabled
  logging_bucket                = var.s3_logging_bucket
  logging_prefix                = var.s3_logging_prefix
  server_side_encryption_algorithm = var.s3_server_side_encryption_algorithm
  tags                          = var.s3_tags
}



# Provider configuration for AWS
provider "aws" {
  region = var.aws_region
}

# Output the EKS cluster endpoint
output "eks_cluster_endpoint" {
  value       = aws_eks_cluster.eks_cluster.endpoint
  description = "The endpoint URL for the EKS cluster"
}

# Output the SNS topic ARN
output "sns_topic_arn" {
  value       = aws_sns_topic.sns_topic.arn
  description = "The ARN of the SNS topic"
}

# Output the SQS queue URL
output "sqs_queue_url" {
  value       = aws_sqs_queue.sqs_queue.id
  description = "The URL of the SQS queue"
}

# Output the DynamoDB table name
output "dynamodb_table_name" {
  value       = aws_dynamodb_table.dynamodb_table.name
  description = "The name of the DynamoDB table"
}

# Output the Aurora cluster endpoint
output "aurora_cluster_endpoint" {
  value       = aws_rds_cluster.aurora_cluster.endpoint
  description = "The endpoint URL for the Aurora cluster"
}

# Output the Lambda function ARN
output "lambda_function_arn" {
  value       = aws_lambda_function.lambda_function.arn
  description = "The ARN of the Lambda function"
}

# Output the Step Functions state machine ARN
output "step_functions_state_machine_arn" {
  value       = aws_sfn_state_machine.step_functions_state_machine.id
  description = "The ARN of the Step Functions state machine"
}

# Output the ECS cluster ARN
output "ecs_cluster_arn" {
  value       = aws_ecs_cluster.ecs_cluster.arn
  description = "The ARN of the ECS cluster"
}

# Output the EC2 instance ID
output "ec2_instance_id" {
  value       = aws_instance.ec2_instance.id
  description = "The ID of the EC2 instance"
}

# Output the Fargate service ARN
output "fargate_service_arn" {
  value       = aws_ecs_service.fargate_service.id
  description = "The ARN of the Fargate service"
}

# Output the RDS PostgreSQL endpoint
output "rds_postgresql_endpoint" {
  value       = aws_db_instance.rds_postgresql.endpoint
  description = "The endpoint URL for the RDS PostgreSQL database"
}
