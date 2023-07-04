# Create an AWS Fargate service
resource "aws_ecs_service" "fargate_service" {
  name            = var.fargate_service_name
  cluster         = aws_ecs_cluster.ecs_cluster.id
  task_definition = var.fargate_task_definition_arn
  desired_count   = var.fargate_desired_count

  tags = var.tags
}