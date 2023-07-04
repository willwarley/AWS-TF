# Create a DynamoDB table
resource "aws_dynamodb_table" "dynamodb_table" {
  name         = var.dynamodb_table_name
  billing_mode = var.dynamodb_billing_mode

  attribute {
    name = "id"
    type = "S"
  }

  key {
    attribute_name = "id"
    attribute_type = "S"
  }

  tags = var.tags
}