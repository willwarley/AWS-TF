# Create an SQS queue
resource "aws_sqs_queue" "sqs_queue" {
  name = var.sqs_queue_name

  tags = var.tags
}